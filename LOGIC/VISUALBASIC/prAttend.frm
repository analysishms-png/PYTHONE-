VERSION 5.00
Begin VB.Form prAttend
  Caption = "Leave"
  BackColor = &HD0C7BB&
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
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11160
  ClientHeight = 6450
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
  Begin TextBox Txt
    Index = 5
    ForeColor = &HFF0000&
    Left = 4950
    Top = 1260
    Width = 1725
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin DataGrid DGEmployee
    Left = 8145
    Top = 4800
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11160
    Height = 450
    TabIndex = 22
  End
  Begin PictureBox Picture3
    Picture = "prAttend.frx":0
    Left = 13770
    Top = 2265
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin Frame FramePrint
    BackColor = &HC0C0C0&
    Left = 870
    Top = 5775
    Width = 4680
    Height = 1635
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin CommandButton CmdPrint
      Caption = "&Print"
      Index = 0
      BackColor = &HFFFF&
      Left = 960
      Top = 1035
      Width = 1410
      Height = 375
      TabIndex = 18
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdPrint
      Caption = "&Close"
      Index = 1
      BackColor = &HFFFF&
      Left = 2370
      Top = 1035
      Width = 1425
      Height = 375
      TabIndex = 19
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxtDate
      Left = 1800
      Top = 345
      Width = 1590
      Height = 360
      TabIndex = 17
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin Shape Shape1
      BorderColor = &H4000&
      Left = 915
      Top = 990
      Width = 2925
      Height = 465
      Shape = 4
      BorderWidth = 2
      FillStyle = 0
    End
    Begin Label Label2
      Caption = "Date :"
      Left = 1035
      Top = 375
      Width = 765
      Height = 300
      TabIndex = 16
      BackStyle = 0 'Transparent
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2685
    Top = 1575
    Width = 3990
    Height = 285
    TabIndex = 2
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
  Begin Frame FrmList
    Left = 6000
    Top = 4830
    Width = 2010
    Height = 1725
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 15
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 13
    End
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2685
    Top = 1260
    Width = 1785
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
    ForeColor = &HFF0000&
    Left = 2685
    Top = 1890
    Width = 1785
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 7
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
    ForeColor = &HFF0000&
    Left = 2685
    Top = 2520
    Width = 795
    Height = 285
    Visible = 0   'False
    TabIndex = 3
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 2685
    Top = 2205
    Width = 1785
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 7
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
    Left = 9015
    Top = 2820
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 20
  End
  Begin Label Label1
    Caption = "To"
    Index = 5
    ForeColor = &HFF0000&
    Left = 4590
    Top = 1275
    Width = 240
    Height = 240
    TabIndex = 28
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
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6780
    Top = 1575
    Width = 105
    Height = 270
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
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
    Left = 3375
    Top = 3870
    Width = 2790
    Height = 285
    TabIndex = 25
    Alignment = 2 'Center
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
    Left = 0
    Top = 3870
    Width = 2880
    Height = 255
    TabIndex = 24
    Alignment = 2 'Center
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
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 23
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
    Caption = "Employee Name"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &HFF0000&
    Left = 1005
    Top = 1590
    Width = 1560
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
    Caption = "First Shift"
    Index = 3
    ForeColor = &HFF0000&
    Left = 1005
    Top = 1905
    Width = 900
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC0&
    Left = 1935
    Top = 1275
    Width = 705
    Height = 240
    TabIndex = 10
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
    Caption = "Second Shift"
    Index = 4
    ForeColor = &HFF0000&
    Left = 1005
    Top = 2220
    Width = 1215
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
  Begin Label Label3
    Caption = "Address1"
    BackColor = &HC0FFFF&
    ForeColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 855
    Height = 255
    TabIndex = 8
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "Out Door Duty"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1005
    Top = 2535
    Width = 1320
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Date From"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1005
    Top = 1275
    Width = 990
    Height = 240
    TabIndex = 6
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

Attribute VB_Name = "prAttend"


Private Sub CmdPrint_Click(Index As Integer) '117A990
  'Data Table: 4B2E24
  Dim var_9C As Integer
  Dim var_BC As Variant
  Dim var_EC As String
  Dim var_FC As Variant
  Dim var_10C As String
  Dim var_170 As String
  Dim unk_4B2E2B As Connection15
  Dim var_98 As Recordset15
  Dim var_1A2 As Integer
  Dim var_194 As Frame
  loc_117A5EC: If (Index = 0) Then
  loc_117A5F3:   Set var_198 = Me.TxtDate
  loc_117A605:   var_CC = "yyyy"
  loc_117A615:   var_DC = Format(CVar(var_198), var_CC)
  loc_117A625:   Proc_6_7_F25D88(var_13C, CVar(Me.TxtDate), 1)
  loc_117A637:   var_EC = " Select A.V_Date,A.V_Prefix as [Year] ,E.Name As EmployeeName,A.FirstShift,A.SecondShift From Attend A left join Employee E on A.Emp_Code = E.Code Where A.V_Prefix='"
  loc_117A63F:   var_FC = var_EC & var_DC 
  loc_117A643:   var_10C = "' And A.V_Date="
  loc_117A666:   unk_4B2E2B.Execute CStr(var_FC & var_10C & var_13C & " order by A.V_Date"), var_190, -1
  loc_117A671:   Set var_98 = var_194
  loc_117A69B:   var_19C = var_98.RecordCount
  loc_117A6A9:   If (var_19C <= 0) Then
  loc_117A6C5:     MsgBox("No Record to Print", 0, var_CC, var_DC, var_FC)
  loc_117A6D5:     Exit Sub
  loc_117A6D6:   End If
  loc_117A6EC:   Set var_194 = var_98 
  loc_117A6F8:   var_1A2 = CreateFieldDefFile(var_194, MemVar_1F920B4 & "\PAttend.ttx", &HFF)
  loc_117A702:   Set var_98 = var_194
  loc_117A708:   var_BC = CVar(var_1A2) 'Integer
  loc_117A70B:   var_94 = var_BC 'Variant
  loc_117A727:   var_170 = MemVar_1F920B4 & "\PAttend.RPT"
  loc_117A730:   Call 0.Method_arg_1C (var_170, var_BC, var_194, var_1A2)
  loc_117A73B:   MemVar_1F921E4 = var_194
  loc_117A756:   Call 0.Method_arg_90 (var_194, var_19C, var_9A, 1)
  loc_117A75E:   Call 0.Method_arg_24 (var_194, 1)
  loc_117A76A:   For var_1A6 =  To CInt(var_19C): var_9C = var_1A6 'Integer
  loc_117A783:     Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117A78B:     Call 0.Method_arg_20 (var_198)
  loc_117A793:     Call 0.Method_arg_30 (var_170)
  loc_117A79B:     var_1AC = var_170
  loc_117A7AD:     If (var_1AC = "Title") Then
  loc_117A7C3:       Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117A7CB:       Call 0.Method_arg_20 (var_198)
  loc_117A7D3:       Call 0.Method_arg_38 ("'Attendance Details'")
  loc_117A7E2:     Else
  loc_117A7EA:       If (var_1AC = "comp_name") Then
  loc_117A80E:         Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117A816:         Call 0.Method_arg_20 (var_198)
  loc_117A81E:         Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_117A834:       Else
  loc_117A83C:         If (var_1AC = "comp_add1") Then
  loc_117A860:           Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117A868:           Call 0.Method_arg_20 (var_198)
  loc_117A870:           Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_117A886:         Else
  loc_117A88E:           If (var_1AC = "comp_city") Then
  loc_117A898:             var_170 = "'" & MemVar_1F9213C
  loc_117A8B2:             Call 0.Method_arg_90 (var_194, CLng(var_9A))
  loc_117A8BA:             Call 0.Method_arg_20 (var_198)
  loc_117A8C2:             Call 0.Method_arg_38 (var_170 & "'")
  loc_117A8D5:           End If
  loc_117A8D5:         End If
  loc_117A8D5:       End If
  loc_117A8D5:     End If
  loc_117A8D8:   Next var_1A6 'Integer
  loc_117A8F6:   Call 0.Method_arg_64 (var_194, CVar(var_98))
  loc_117A8FE:   Call 0.Method_arg_2C (var_EC)
  loc_117A90C:   Call 0.Method_arg_150 (var_10C)
  loc_117A917:   Call 0.Method_arg_50 (var_170)
  loc_117A921:   Set var_198 = Nothing
  loc_117A93B:   Set var_194 = MemVar_1F921E4 
  loc_117A947:   Proc_6_99_1483714(var_194, 0, var_170)
  loc_117A952:   MemVar_1F921E4 = var_194
  loc_117A965:   Set var_98 = Nothing
  loc_117A96B: Else
  loc_117A971:   If (Index = 1) Then
  loc_117A980:     Me.FramePrint.Visible = False
  loc_117A988:   End If
  loc_117A988: End If
  loc_117A988: Exit Sub
  loc_117A989: Proc_6_60_E62BC4(&HFF)
  loc_117A98E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11D8C60
  'Data Table: 4B2E24
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim Me As Variant
  Dim var_B8 As String
  Dim var_90 As Variant
  loc_11D880A: Set var_88 = Me.Txt
  loc_11D8810: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11D881E: Proc_6_74_E226B0(var_8C)
  loc_11D882A: Call Proc_306_34_EB7A9C(var_8C)
  loc_11D8832: var_92 = Index
  loc_11D883D: If Not (var_92 = CInt(3)) Then
  loc_11D8848:   If Not (var_92 = CInt(4)) Then
  loc_11D8853:     If Not (var_92 = CInt(0)) Then
  loc_11D885E:       If (var_92 = CInt(5)) Then
  loc_11D8861:       End If
  loc_11D8861:     End If
  loc_11D8861:   End If
  loc_11D8870:   Set var_88 = Me.Txt
  loc_11D8876:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D887E:   var_8C.SelStart = 0
  loc_11D8897:   Set var_88 = Me.Txt
  loc_11D889D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D88A5:   var_98 = var_8C.Text
  loc_11D88B8:   Set var_90 = Me.Txt
  loc_11D88BE:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_11D88C6:   var_9C.SelLength = Len(var_98)
  loc_11D88D9: End If
  loc_11D88DC: var_9E = Index
  loc_11D88E7: If (var_9E = CInt(1)) Then
  loc_11D8901:   If (Me.RecordCount > 0) Then
  loc_11D890F:     Set var_8C = Me.FGPoint
  loc_11D8927:     Proc_6_137_1193554(Me.DGEmployee, global_52, Index)
  loc_11D8935:   End If
  loc_11D8983:   Set var_88 = Me.Txt
  loc_11D8989:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11D8991:   var_8C = var_8C.Text
  loc_11D89A9:   If (var_9E Or (var_98 = vbNullString)) Then
  loc_11D89AC:     Exit Sub
  loc_11D89AD:   End If
  loc_11D89BA:   Set var_88 = Me.Txt
  loc_11D89C0:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D89C8:   var_98 = var_8C.Text
  loc_11D89DA:   var_B8 = "Name"
  loc_11D8A15:   If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_11D8A1E:     Me.MoveFirst
  loc_11D8A41:     Set var_88 = Me.Txt
  loc_11D8A47:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11D8A4F:     0 = var_8C.Text
  loc_11D8A68:     Me.Find 1 & var_98 & "'", var_B8, var_92
  loc_11D8A7D:   End If
  loc_11D8A80: Else
  loc_11D8A88:   If Not (var_9E = CInt(3)) Then
  loc_11D8A93:     If (var_9E = CInt(4)) Then
  loc_11D8A96:     End If
  loc_11D8AA3:     ReDim var_F4(0 To 5)
  loc_11D8ABA:     var_F4(0) = "Absent"
  loc_11D8AC9:     var_F4(1) = "Casual"
  loc_11D8AD8:     var_F4(2) = "Earned"
  loc_11D8AE7:     var_F4(3) = "Holiday"
  loc_11D8AF6:     var_F4(4) = "Leave"
  loc_11D8B05:     var_F4(5) = "Present"
  loc_11D8B1C:     global_72 = Array(var_F4)
  loc_11D8B27:     Set var_9C = Me.ListView
  loc_11D8B42:     Set var_8C = Me.Txt
  loc_11D8B5C:     Set global_88 = Proc_6_66_EFF8FC(var_9C, var_8C, Index)
  loc_11D8B7A:     Set var_88 = Me.Txt
  loc_11D8B80:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11D8B88:     global_72 = var_8C.Text
  loc_11D8B9A:     Set var_90 = Me.Txt
  loc_11D8BA0:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_11D8BA8:     var_9C.Tag = 6
  loc_11D8BC8:     Set var_88 = Me.Txt
  loc_11D8BCE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D8BE8:     Me.FrmList.Left = var_8C.Left
  loc_11D8C03:     Set var_90 = Me.Txt
  loc_11D8C09:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_11D8C23:     Set var_88 = Me.Txt
  loc_11D8C29:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11D8C4C:     Me.FrmList.Top = ((var_8C.Top + var_9C.Height) + CDbl(&H1E))
  loc_11D8C5E:   End If
  loc_11D8C5E: End If
  loc_11D8C5E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1188B3C
  'Data Table: 4B2E24
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Frame
  loc_1188783: var_86 = Shift
  loc_1188790: If (CLng(Shift) = &H1B) Then
  loc_1188793:   Call Proc_306_34_EB7A9C(var_86)
  loc_1188798:   Exit Sub
  loc_1188799: End If
  loc_118879C: var_88 = KeyCode
  loc_11887A7: If (var_88 = CInt(0)) Then
  loc_11887AA:   GoTo loc_11889CE
  loc_11887AD: End If
  loc_11887B5: If (var_88 = CInt(1)) Then
  loc_11887C3:   Set var_AC = Me.Txt
  loc_11887D5:   Set var_A0 = Me.FGPoint
  loc_11887E0:   Set var_9C = Nothing
  loc_1188812:   Proc_6_69_134A198(Me.DGEmployee, var_AC, CInt(1), global_52, Shift, 0)
  loc_1188831:   var_B4 = Me.RecordCount
  loc_1188881:   If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1188888:     Set var_9C = Me.DGEmployee
  loc_118888F:     Set var_90 = Me.FGPoint
  loc_11888A7:     Proc_6_138_106D6F8(var_9C, global_52, KeyCode, var_90, 1)
  loc_11888B5:   End If
  loc_11888B8: Else
  loc_11888C0:   If Not (var_88 = CInt(3)) Then
  loc_11888CB:     If (var_88 = CInt(4)) Then
  loc_11888CE:     End If
  loc_11888F0:     Set var_8C = Me.Txt
  loc_11888F6:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_9C)
  loc_11888FE:     var_A0 = var_90.Left
  loc_1188910:     Set var_9C = Me.Txt
  loc_1188916:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_118891E:     0 = var_A0.Top
  loc_1188930:     Set var_A8 = Me.Txt
  loc_1188936:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_118893E:     var_BC = var_AC.Height
  loc_1188950:     Set var_B0 = Me.Txt
  loc_1188956:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_118895E:     var_C4 = var_C0.Width
  loc_11889AA:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11889CE:   End If
  loc_11889CE:   ' Referenced from: 11887AA
  loc_11889CE: End If
  loc_1188A07: If ((Me.FrmList.Visible = 0) And (CBool(Me.DGEmployee.Visible) = 0)) Then
  loc_1188A28:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_1188A31:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_B4), CInt(((var_B8 + var_BC) + CDbl(&H19))))
  loc_1188A36:   End If
  loc_1188A54:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_1188A8E:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_1188A91:       Call TopCtrl1_UnknownEvent_16()
  loc_1188A96:     End If
  loc_1188A96:     Exit Sub
  loc_1188A97:   End If
  loc_1188A9B:   Set var_8C = Me.TopCtrl1
  loc_1188AA1:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CInt(var_C4))
  loc_1188AC3:   If ((CStr(1560) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1188ADB:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1188AE4:       Proc_6_76_E52838(Shift, arg_14)
  loc_1188AE9:     End If
  loc_1188AE9:   End If
  loc_1188AED:   Set var_8C = Me.TopCtrl1
  loc_1188AF3:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_88)
  loc_1188B15:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1188B2D:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1188B36:       Proc_6_76_E52838(Shift)
  loc_1188B3B:     End If
  loc_1188B3B:   End If
  loc_1188B3B: End If
  loc_1188B3B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ECAD14
  'Data Table: 4B2E24
  loc_ECAC73: Proc_6_58_E054C0(arg_10)
  loc_ECAC86: If (KeyAscii = CInt(1)) Then
  loc_ECACA5:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_ECACB7:     var_A0 = "Name"
  loc_ECACD2:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10)
  loc_ECAD04:     Proc_6_138_106D6F8(Me.DGEmployee, global_52, KeyAscii, Me.FGPoint)
  loc_ECAD12:   End If
  loc_ECAD12: End If
  loc_ECAD12: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F19DE0
  'Data Table: 4B2E24
  Dim var_86 As Integer
  loc_F19CF3: var_86 = KeyCode
  loc_F19CFE: If (var_86 = CInt(1)) Then
  loc_F19D1D:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F19D31:     var_A8 = "Name"
  loc_F19D59:     Proc_6_68_129FB34(Me.DGEmployee, Me.Txt, CInt(1), global_52)
  loc_F19D6C:   End If
  loc_F19D6F: Else
  loc_F19D77:   If Not (var_86 = CInt(3)) Then
  loc_F19D82:     If (var_86 = CInt(4)) Then
  loc_F19D85:     End If
  loc_F19DA0:     If (Me.FrmList.Visible = &HFF) Then
  loc_F19DCF:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F19DDF:     End If
  loc_F19DDF:   End If
  loc_F19DDF: End If
  loc_F19DDF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4758C
  'Data Table: 4B2E24
  loc_E4756A: Set var_88 = Me.Txt
  loc_E47570: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4757E: Proc_6_73_E22704(var_8C)
  loc_E4758A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1370AD4
  'Data Table: 4B2E24
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_B4 As Variant
  Dim var_118 As Variant
  Dim var_11C As Variant
  Dim var_13C As Integer
  Dim var_108 As Variant
  Dim unk_4B2E2B As Connection15
  Dim var_144 As TextBox
  Dim var_21C As Integer
  Dim var_208 As Recordset15
  Dim var_20C As Fields15
  Dim var_220 As Field20
  Dim var_228 As TextBox
  Dim var_274 As TextBox
  Dim arg_10 As Integer
  loc_13702C7: var_8A = Cancel
  loc_13702D2: If (var_8A = CInt(1)) Then
  loc_1370323:   Set var_98 = Me.Txt
  loc_1370329:   Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1370331:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_1370349:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_137034C:     Exit Sub
  loc_137034D:   End If
  loc_1370388:   Set var_B4 = Me.Txt
  loc_137038E:   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1370396:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13703E7:   Set var_B4 = Me.Txt
  loc_13703ED:   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_13703F5:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1370438:   var_D8 = " - "
  loc_137043D:   var_E8 = (Me.Fields.Item("Department").Value + var_D8)
  loc_137045E:   var_B8 = Me.Fields.Item("Designation")
  loc_137046E:   var_118 = (var_E8 + var_B8.Value)
  loc_1370480:   Me.LblEmpRef.Caption = CStr(var_118)
  loc_13704BD:   var_9C = Me.Fields.Item("Code")
  loc_13704FA:   var_13C = 0
  loc_1370518:   var_E8 = "Select joining_Date from Employee where code='" & var_9C.Value 
  loc_1370521:   var_108 = var_E8 & "'" 
  loc_137052F:   unk_4B2E2B.Execute CStr(var_108), var_118, -1
  loc_1370537:   var_B4 = var_B4.Fields
  loc_137053F:   var_13C = var_B8.Item(var_B8)
  loc_1370547:   var_11C = var_11C.Value
  loc_137055D:   Set var_140 = Me.Txt
  loc_1370563:   Call 0.Method_Txt_Validate0 (CInt(0), var_144, var_148)
  loc_1370584:   var_21C = 0
  loc_13705B9:   unk_4B2E2B.Execute CStr("Select Resign_Date from Employee where code='" & Me.Fields.Item("Code").Value & "'"), var_204, -1
  loc_13705C1:   var_208 = var_208.Fields
  loc_13705C9:   var_21C = var_20C.Item(var_20C)
  loc_13705D1:   var_220 = var_220.Value
  loc_13705E7:   Set var_224 = Me.Txt
  loc_13705ED:   Call 0.Method_Txt_Validate0 (CInt(0), var_228, var_22C)
  loc_137061A:   Set var_270 = Me.Txt
  loc_1370620:   Call 0.Method_Txt_Validate0 (CInt(0), var_274)
  loc_1370689:   If CBool((var_144.Text > CDate(CDate(var_148))) Or (var_228.Text < CDate(CDate(var_22C))) Or (CDate(var_274.Text) > MemVar_1F920EC)) Then
  loc_13706A5:     MsgBox(" Invalid Date For This Employee", &H40, var_E8, var_108, var_118)
  loc_13706B7:     arg_10 = &HFF
  loc_13706BA:   End If
  loc_13706BD: Else
  loc_13706C5:   If Not (var_8A = CInt(0)) Then
  loc_13706D0:     If (var_8A = CInt(5)) Then
  loc_13706D3:     End If
  loc_13706E0:     Set var_98 = Me.Txt
  loc_13706E6:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137071E:     If (Len(Trim(CVar(var_9C.Text))) = 0) Then
  loc_1370733:       Set var_98 = Me.Txt
  loc_1370739:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1370741:       var_9C.Text = CStr(MemVar_1F920EC)
  loc_137075A:       Set var_98 = Me.Txt
  loc_1370760:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137079A:       Me.LblVPrefix.Caption = CStr(Format(CVar(var_9C), "yyyy"))
  loc_13707B5:     Else
  loc_13707BF:       Set var_98 = Me.Txt
  loc_13707C5:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, 1)
  loc_13707E5:       Set var_B8 = Me.Txt
  loc_13707EB:       Call 0.Method_Txt_Validate0 (Cancel, var_11C)
  loc_13707F3:       var_11C.Text = Proc_6_33_1512840(var_9C, 1)
  loc_1370810:       Set var_98 = Me.Txt
  loc_1370816:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137082A:       var_E8 = "yyyy"
  loc_137083A:       var_108 = Format(CVar(var_9C), var_E8)
  loc_1370842:       var_A0 = CStr(var_108)
  loc_1370850:       Me.LblVPrefix.Caption = var_A0
  loc_1370868:     End If
  loc_1370875:     Set var_98 = Me.Txt
  loc_137087B:     Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1370883:     1 = var_9C.Text
  loc_137089B:     If (CDate(var_A0) > MemVar_1F920EC) Then
  loc_13708B7:       MsgBox(" Invalid Date ", &H40, var_E8, var_108, var_118)
  loc_13708C9:       arg_10 = &HFF
  loc_13708CC:     End If
  loc_13708CF:   Else
  loc_13708D7:     If (var_8A = CInt(3)) Then
  loc_13708E5:       Set var_98 = Me.Txt
  loc_13708EB:       Call 0.Method_Txt_Validate0 (CInt(3), var_9C, arg_10)
  loc_13708F3:       var_A0 = "First Shift"
  loc_1370914:       If (Proc_6_27_EA565C(var_9C, var_A0) = 0) Then
  loc_1370921:         Set var_98 = Me.Txt
  loc_1370927:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_137092F:         var_9C.SetFocus
  loc_137093D:         arg_10 = &HFF
  loc_1370940:         Exit Sub
  loc_1370941:       End If
  loc_137094E:       Set var_98 = Me.Txt
  loc_1370954:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_137095C:       arg_10 = var_9C.Text
  loc_1370973:       If (var_A0 <> vbNullString) Then
  loc_137098E:         Set var_9C = Me.ListView.SelectedItem
  loc_13709A6:         Set var_B4 = Me.Txt
  loc_13709AC:         Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_9C.Text)
  loc_13709B4:         var_B8.Text = 1
  loc_13709CA:       End If
  loc_13709CD:     Else
  loc_13709D5:       If (var_8A = CInt(4)) Then
  loc_13709E3:         Set var_98 = Me.Txt
  loc_13709E9:         Call 0.Method_Txt_Validate0 (CInt(4), var_9C)
  loc_13709F1:         var_A0 = "Second Shift"
  loc_1370A12:         If (Proc_6_27_EA565C(var_9C, var_A0) = 0) Then
  loc_1370A1F:           Set var_98 = Me.Txt
  loc_1370A25:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1370A2D:           var_9C.SetFocus
  loc_1370A3B:           arg_10 = &HFF
  loc_1370A3E:           Exit Sub
  loc_1370A3F:         End If
  loc_1370A4C:         Set var_98 = Me.Txt
  loc_1370A52:         Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1370A5A:         arg_10 = var_9C.Text
  loc_1370A71:         If (var_A0 <> vbNullString) Then
  loc_1370AA4:           Set var_B4 = Me.Txt
  loc_1370AAA:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1370AB2:           var_B8.Text = Me.ListView.SelectedItem.Text
  loc_1370AC8:         End If
  loc_1370AC8:       End If
  loc_1370AC8:     End If
  loc_1370AC8:   End If
  loc_1370AC8: End If
  loc_1370ACD: Set var_88 = Nothing
  loc_1370AD0: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F569E4
  'Data Table: 4B2E24
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F56906: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5690D:   Set var_A8 = Me.ListView
  loc_F56957:   Set var_C0 = Me.Txt
  loc_F5695D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F56965:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F56985: End If
  loc_F56991: Me.FrmList.Visible = False
  loc_F569C1: Set var_9C = Me.Txt
  loc_F569C7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F569CF: var_A8.SetFocus
  loc_F569E3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3CB54
  'Data Table: 4B2E24
  loc_E3CB48: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E3CB4B:   Call DGEmployee_UnknownEvent_9()
  loc_E3CB50: End If
  loc_E3CB50: Exit Sub
End Sub

Private Sub Form_Load() '100E550
  'Data Table: 4B2E24
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As Label
  loc_100E344: On Error Goto loc_100E547
  loc_100E351: Set var_A8 = Me.TopCtrl1
  loc_100E357: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_100E365: Call 0.Method_arg_50 (var_AC)
  loc_100E375: Set var_A8 = Me.TopCtrl1
  loc_100E37B: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(CVar(var_AC))
  loc_100E386: Call Proc_306_36_F04D58()
  loc_100E3A7: Me.TopCtrl1.CursorLocation = 3
  loc_100E3CA: var_AC = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where (Employee.LOGSITE_CODE='" & MemVar_1F92078
  loc_100E3D1: var_BC = CVar(var_AC & "' or Employee.LOGSITE_CODE='HO') Order by Employee.Name") 'String
  loc_100E3EF: CVarUnk
  loc_100E3F4: VerifyVarObj
  loc_100E400: LateIdStAd
  loc_100E42A: Me.DGEmployee.CursorLocation = 3
  loc_100E43A: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, Me.DGEmployee)
  loc_100E44A: Proc_6_7_F25D88(var_10C, MemVar_1F920FC, New)
  loc_100E466: var_A4 = "Select (V_Prefix+'-'+ LTRIM(RTRIM(CONVERT(Varchar(11), A.V_Date, 103)))+'-'+Emp_Code) as SearchCode, A.* , E.Name as EmployeeName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Attend A Left Join Employee E on A.Emp_Code = E.Code Left Join Depart On Depart.Code=E.Department Left Join Desig on Desig.Code=E.Designation Where A.V_Date between "
  loc_100E492: r_BC, CVar(MemVar_1F92044), 2 var_A4 & var_BC & " and " & var_10C & " order by V_Date", CVar(MemVar_1F92044), 2
  loc_100E4C9: Call Proc_306_33_F1BA3C(Proc_5_1_100CB50("INI", Me, New, 3), -1)
  loc_100E4D4: Call Proc_306_36_F04D58(3)
  loc_100E4D9: Call Proc_306_32_1411B18(-1)
  loc_100E4ED: Me.LblUser.Left = CDbl(13500)
  loc_100E504: Me.LblUser.Top = CDbl(7800)
  loc_100E51B: Me.LblLDt.Top = CDbl(8160)
  loc_100E532: Me.LblLDt.Left = CDbl(13500)
  loc_100E541: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_100E546: Exit Sub
  loc_100E547: ' Referenced from: 100E344
  loc_100E547: Proc_6_60_E62BC4()
  loc_100E54C: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8CF8
  'Data Table: 4B2E24
  Dim var_8C As Label
  loc_ED8C56: Call 0.Method_arg_50 (var_88)
  loc_ED8C68: Me.LblFormCaption.Caption = var_88
  loc_ED8C81: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8C8D: Set var_A0 = Me.TopCtrl1
  loc_ED8C93: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010006()
  loc_ED8CA0: Set var_8C = Me.TopCtrl1
  loc_ED8CA6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010004()
  loc_ED8CC0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8CDB: Call 0.Method_arg_100 (var_B8)
  loc_ED8CED: Me.LblFormCaption.Width = var_B8
  loc_ED8CF5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28AE8
  'Data Table: 4B2E24
  loc_E28ACB: Set global_56 = Nothing
  loc_E28ADD: Set global_52 = Nothing
  loc_E28AE4: Exit Sub
  loc_E28AE5: var_CC = 
End Sub

Private Sub Form_Activate() 'E3CDF4
  'Data Table: 4B2E24
  loc_E3CDD0: Set var_88 = Me.TopCtrl1
  loc_E3CDD6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030000()
  loc_E3CDEB: If (CLng(CInt()) = &H2D) Then
  loc_E3CDEE:   Call TopCtrl1_UnknownEvent_15()
  loc_E3CDF3: End If
  loc_E3CDF3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28A8C
  'Data Table: 4B2E24
  loc_E28A64: On Error Goto loc_E28A84
  loc_E28A7B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28A83: Exit Sub
  loc_E28A84: ' Referenced from: E28A64
  loc_E28A84: Proc_6_60_E62BC4(Shift)
  loc_E28A89: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F4D3C4
  'Data Table: 4B2E24
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4D2BB: Me.DGEmployee.Visible = False
  loc_F4D2DA: If (Me.RecordCount > 0) Then
  loc_F4D319:   Set var_B4 = Me.Txt
  loc_F4D31F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4D327:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4D35A:   var_B0 = Me.Fields.Item("Name")
  loc_F4D379:   Set var_B4 = Me.Txt
  loc_F4D37F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4D387:   var_B8.Text = CStr(var_B0.Value)
  loc_F4D39D: End If
  loc_F4D3A8: Set var_A8 = Me.Txt
  loc_F4D3AE: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(1))
  loc_F4D3B6: var_B0.SetFocus
  loc_F4D3C2: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E73354
  'Data Table: 4B2E24
  loc_E73312: Proc_6_153_E91194(Me.DGEmployee, arg_14)
  loc_E73329: Set var_8C = Me.FGPoint
  loc_E73345: Proc_6_138_106D6F8(Me.DGEmployee, global_52, CInt(1))
  loc_E73353: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FCC3E8
  'Data Table: 4B2E24
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_FCC230: On Error Goto loc_FCC3E2
  loc_FCC256: Call Proc_306_33_F1BA3C(Proc_5_1_100CB50("ADD", Me))
  loc_FCC26E: Me.LblUser.Caption = vbNullString
  loc_FCC283: Me.LblLDt.Caption = vbNullString
  loc_FCC28B: Call Proc_306_31_EDA0F8(global_56)
  loc_FCC2A3: Set var_8C = Me.Txt
  loc_FCC2A9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_FCC2B1: var_94.Text = CStr(MemVar_1F920EC)
  loc_FCC2D3: Set var_8C = Me.Txt
  loc_FCC2D9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_FCC2E1: var_94.Text = CStr(MemVar_1F920EC)
  loc_FCC2FB: Set var_8C = Me.Txt
  loc_FCC301: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_FCC309: var_94.SetFocus
  loc_FCC319: Set var_94 = Me.TxtDate
  loc_FCC351: Me.LblVPrefix.Caption = CStr(Format(CVar(var_94), "yyyy"))
  loc_FCC377: Set var_8C = Me.Txt
  loc_FCC37D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94, "No")
  loc_FCC385: var_94.Text = 1
  loc_FCC39F: Set var_8C = Me.Txt
  loc_FCC3A5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_94, "Absent")
  loc_FCC3AD: var_94.Text = 1
  loc_FCC3C7: Set var_8C = Me.Txt
  loc_FCC3CD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_94)
  loc_FCC3D5: var_94.Text = "Absent"
  loc_FCC3E1: Exit Sub
  loc_FCC3E2: ' Referenced from: FCC230
  loc_FCC3E2: Proc_6_60_E62BC4(var_94)
  loc_FCC3E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9A0C8
  'Data Table: 4B2E24
  loc_E9A050: On Error Goto loc_E9A0C1
  loc_E9A08A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9A0B0:   Call Proc_306_33_F1BA3C(Proc_5_1_100CB50("INI", Me))
  loc_E9A0BB:   Call Proc_306_32_1411B18(global_56)
  loc_E9A0C0: End If
  loc_E9A0C0: Exit Sub
  loc_E9A0C1: ' Referenced from: E9A050
  loc_E9A0C1: Proc_6_60_E62BC4()
  loc_E9A0C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13211E4
  'Data Table: 4B2E24
  Dim var_C4 As Variant
  Dim var_10C As Variant
  Dim var_14C As Variant
  Dim var_160 As String
  Dim var_B4 As TextBox
  Dim unk_4B2E2B As Connection15
  Dim var_A0 As Recordset15
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_164 As String
  Dim var_13C As Variant
  Dim var_B0 As Fields15
  Dim var_22C As Double
  Dim var_F8 As Fields15
  Dim var_15C As Variant
  Dim var_234 As Double
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_FC As TextBox
  Dim var_F4 As Variant
  loc_1320ACC: On Error Goto loc_1321194
  loc_1320ADA: Set var_B0 = Me.Txt
  loc_1320AE0: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0))
  loc_1320AF0: Set var_F8 = Me.Txt
  loc_1320AF6: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_FC)
  loc_1320B13: var_C4 = CVar(var_B4) 'Address
  loc_1320B1A: var_F4 = Format(var_C4, "MMM")
  loc_1320B3A: var_10C = CVar(var_FC) 'Address
  loc_1320B49: var_14C = (1 + Format(var_10C, "YYYY"))
  loc_1320BA2: Set var_B0 = Me.Txt
  loc_1320BA8: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_B4, var_164, "Select * From Salary Where site_code='" & MemVar_1F92070 & "' and Emp_Code='", var_C4, -1)
  loc_1320BD7: unk_4B2E2B.Execute 1 & var_164 & "' and Mth_Year='" & CStr(Ucase(var_14C)) & "'", var_F4, 1
  loc_1320C08: var_17C = var_B4.Tag.RecordCount
  loc_1320C16: If (var_17C > 0) Then
  loc_1320C1F:   Call 0.Method_arg_50 (var_164, 1)
  loc_1320C46:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Delete Record ..."), &H40, CVar(var_164), var_F4, var_10C)
  loc_1320C59:   Exit Sub
  loc_1320C5A: End If
  loc_1320C91: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_10C) = 6) Then
  loc_1320C9D:   unk_4B2E2B.BeginTrans var_17C
  loc_1320CB3:   var_94 = Me.Bookmark 'Variant
  loc_1320CC5:   Set var_B0 = Me.Txt
  loc_1320CCB:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_B4)
  loc_1320CE3:   Set var_F8 = Me.Txt
  loc_1320CE9:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_FC)
  loc_1320D3C:   var_13C = CVar("Select * from attendence where Emp_Code='" & var_B4.Tag & "' and mth_Year='") & Format(CVar(var_FC), "MMMyyyy") & "'" 
  loc_1320D4A:   unk_4B2E2B.Execute CStr(var_13C), var_14C, -1
  loc_1320D55:   Set var_AC = var_1A0
  loc_1320D94:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1320DB1:     var_B4 = Me.Recordset15.Fields.Item("ATTN_STR")
  loc_1320DD6:     Set var_B0 = Me.Txt
  loc_1320DDC:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B4)
  loc_1320E11:     var_22C = Val(CStr(Format(CVar(var_B4), "dd")))
  loc_1320E2E:     var_FC = Me.Txt.Fields.Item("ATTN_STR")
  loc_1320E4D:     Set var_1A0 = Me.Txt
  loc_1320E53:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_1A4, 1)
  loc_1320E77:     Set var_1A8 = Me.Txt
  loc_1320E7D:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_1AC)
  loc_1320EA1:     Set var_1D0 = Me.Txt
  loc_1320EA7:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1D4)
  loc_1320ED3:     var_164 = CStr(Format(CVar(var_1D4), "dd"))
  loc_1320EDC:     var_234 = Val(var_164)
  loc_1320EF6:     var_10C = Left(Proc_6_38_E68A98(CVar(var_B4), var_1A0, 1), CLng(((CDbl(2) * var_22C) - CDbl(2))))
  loc_1320F1D:     var_1CC = (Left(CVar(var_1A4), 1) + Left(CVar(var_1AC), 1))
  loc_1320F30:     var_214 = CVar(Replace(Proc_6_38_E68A98(CVar(var_FC), var_22C, 1), CStr(var_1CC), "PP", CLng(((CDbl(2) * var_234) - CDbl(1))), 1, 1)) 'String
  loc_1320F33:     var_224 = (CVar("Select * from attendence where Emp_Code='" & var_B4.Tag & "' and mth_Year='") + var_214)
  loc_1320F38:     var_A8 = CStr(var_224)
  loc_1320F76:   End If
  loc_1320F81:   Set var_B0 = Me.Txt
  loc_1320F87:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B4, var_234, 1)
  loc_1320F9B:   var_E4 = "MMMyyyy"
  loc_1320FBE:   Set var_F8 = Me.Txt
  loc_1320FC4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_FC, var_164, 1)
  loc_1320FCC:   1 = var_FC.Tag
  loc_1320FE5:   var_160 = "Update Attendence set Attn_Str='" & var_A8
  loc_1321005:   var_15C = CVar(var_160 & "' Where mth_Year='") & Format(CVar(var_B4), var_E4) & "' And Emp_Code='" & CVar(var_164) 
  loc_132101C:   unk_4B2E2B.Execute CStr(var_15C & "'"), var_1CC, -1
  loc_1321067:   Set var_B0 = Me.Txt
  loc_132106D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B4, "Delete From Attend Where V_Date=", var_15C, -1)
  loc_132107C:   Proc_6_7_F25D88(var_E4, CVar(var_B4), var_1A0, var_1A0)
  loc_1321084:   var_F4 = 1 & var_E4 
  loc_132108D:   var_10C = var_F4 & " And Emp_Code='" 
  loc_132109F:   Set var_F8 = Me.Txt
  loc_13210A5:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_FC, var_160)
  loc_13210AD:   var_10C = var_FC.Tag
  loc_13210CF:   unk_4B2E2B.Execute CStr(1 & CVar(var_160) & "'"), var_B4, 
  loc_13210FB:   unk_4B2E2B.CommitTrans
  loc_132110B:   Me.Requery -1
  loc_132112B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1321138:     Me.Bookmark = var_94
  loc_1321140:   Else
  loc_1321154:     If (Me.EOF = 0) Then
  loc_132115D:       Me.MoveLast
  loc_1321162:     End If
  loc_1321162:   End If
  loc_1321162:   Call Proc_306_32_1411B18()
  loc_1321183:   Proc_5_0_110649C(&HFF, Me)
  loc_132118B: End If
  loc_1321190: Set var_A0 = Nothing
  loc_1321193: Exit Sub
  loc_1321194: ' Referenced from: 1320ACC
  loc_132119A: unk_4B2E2B.RollbackTrans
  loc_13211A7: Set var_B0 = Err()
  loc_13211AD: Call 0.Method_arg_2C (var_160, global_56)
  loc_13211CE: MsgBox(CVar(var_160), &H10, " Deletion Message", var_F4, var_10C)
  loc_13211E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1040BB8
  'Data Table: 4B2E24
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_94 As TextBox
  Dim unk_4B2E2B As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Label
  loc_104099C: On Error Goto loc_1040BB0
  loc_10409AA: Set var_90 = Me.Txt
  loc_10409B0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0))
  loc_10409C0: Set var_D8 = Me.Txt
  loc_10409C6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_DC)
  loc_10409E3: var_A4 = CVar(var_94) 'Address
  loc_10409EA: var_D4 = Format(var_A4, "MMM")
  loc_1040A0A: var_EC = CVar(var_DC) 'Address
  loc_1040A19: var_12C = (1 + Format(var_EC, "YYYY"))
  loc_1040A72: Set var_90 = Me.Txt
  loc_1040A78: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94, var_144, "Select * From Salary Where site_code='" & MemVar_1F92070 & "' and Emp_Code='", var_A4, -1)
  loc_1040AA7: unk_4B2E2B.Execute 1 & var_144 & "' and Mth_Year='" & CStr(Ucase(var_12C)) & "'", var_D4, 1
  loc_1040AE6: If (var_94.Tag.RecordCount > 0) Then
  loc_1040AEF:   Call 0.Method_arg_50 (var_144, 1)
  loc_1040B16:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Edit Record ..."), &H40, CVar(var_144), var_D4, var_EC)
  loc_1040B29:   Exit Sub
  loc_1040B2A: End If
  loc_1040B4D: Call Proc_306_33_F1BA3C(Proc_5_1_100CB50("EDIT", Me), global_56)
  loc_1040B63: Set var_90 = Me.Txt
  loc_1040B69: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_1040B71: var_94.SetFocus
  loc_1040B82: Set var_88 = Nothing
  loc_1040B92: Me.LblUser.Caption = vbNullString
  loc_1040BA7: Me.LblLDt.Caption = vbNullString
  loc_1040BAF: Exit Sub
  loc_1040BB0: ' Referenced from: 104099C
  loc_1040BB0: Proc_6_60_E62BC4(var_94)
  loc_1040BB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B95C
  'Data Table: 4B2E24
  loc_E1B951: Me.Global.Unload Me
  loc_E1B959: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F20AA0
  'Data Table: 4B2E24
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  loc_F209AC: On Error Goto loc_F20A99
  loc_F209C6: If (Me.RecordCount <= 0) Then
  loc_F209E4:   var_A8 = "No Records To Search."
  loc_F209EA:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F209FA:   Exit Sub
  loc_F209FB: End If
  loc_F20A02: var_10C = "Select (V_Prefix+'-'+ LTRIM(RTRIM(CONVERT(Varchar(11), A.V_Date, 103)))+'-'+Emp_Code) as SearchCode,Convert(Varchar(11),A.V_Date,103) As AttnDate,E.Name As EmployeeName,FirstShift=(Convert(Varchar(15),Case A.FirstShift When 'P' Then 'Present' When 'A' Then 'Absent' When 'L' Then 'Leave' When 'C' Then 'Casual' When 'E' Then 'Earned' End)),SecondShift=(Convert(Varchar(15),Case A.SecondShift When 'P' Then 'Present' When 'A' Then 'Absent' When 'L' Then 'Leave' When 'C' Then 'Casual' When 'E' Then 'Earned' End)) From Attend A left join Employee E on A.Emp_Code = E.Code Where A.site_code='" & MemVar_1F92070
  loc_F20A17: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F20A23: var_B8 = " and "
  loc_F20A37: Proc_6_7_F25D88(var_11C, MemVar_1F920FC)
  loc_F20A4D: MemVar_1F920E4 = CStr(CVar(var_10C & "' AND A.V_Date between ") & var_A8 & var_B8 & var_11C & " order by A.V_Date,E.Name")
  loc_F20A6E: Proc_6_126_F1BCC0("2000,3000,2000,2000")
  loc_F20A7C: MemVar_1F92120 = Me
  loc_F20A93: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F20A98: Exit Sub
  loc_F20A99: ' Referenced from: F209AC
  loc_F20A99: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F20A9E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C318
  'Data Table: 4B2E24
  loc_E3C308: Proc_5_0_110649C(&HFF, Me)
  loc_E3C310: Call Proc_306_32_1411B18(global_56)
  loc_E3C315: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C2B8
  'Data Table: 4B2E24
  loc_E3C2A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C2B0: Call Proc_306_32_1411B18(global_56)
  loc_E3C2B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3BAD8
  'Data Table: 4B2E24
  loc_E3BAC8: Proc_5_0_110649C(&HFF, Me)
  loc_E3BAD0: Call Proc_306_32_1411B18(global_56)
  loc_E3BAD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B658
  'Data Table: 4B2E24
  loc_E3B648: Proc_5_0_110649C(&HFF, Me)
  loc_E3B650: Call Proc_306_32_1411B18(global_56)
  loc_E3B655: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E591B4
  'Data Table: 4B2E24
  Dim Me As Recordset15
  loc_E59187: If (Me.RecordCount <= 0) Then
  loc_E5918A:   Exit Sub
  loc_E5918B: End If
  loc_E59197: Me.FramePrint.Visible = True
  loc_E591A9: Me.TxtDate.SetFocus
  loc_E591B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09C88
  'Data Table: 4B2E24
  Dim Me As Recordset15
  loc_E09C7F: Me.Requery -1
  loc_E09C84: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15B7B5C
  'Data Table: 4B2E24
  Dim var_DC As Variant
  Dim var_C4 As Double
  Dim var_CC As Double
  Dim var_124 As Variant
  Dim var_E4 As String
  Dim var_D4 As Double
  Dim var_D8 As Variant
  Dim var_184 As Variant
  Dim var_E0 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_188 As String
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1AC As String
  Dim unk_4B2E2B As Connection15
  Dim var_8C As Recordset15
  Dim var_1B8 As Variant
  Dim var_144 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Field20
  Dim var_1E0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_1F0 As Variant
  Dim var_104 As Variant
  Dim var_204 As TextBox
  Dim var_264 As Variant
  Dim var_1D0 As Variant
  Dim var_250 As Recordset15
  Dim var_254 As Fields15
  Dim var_268 As Field20
  Dim var_270 As TextBox
  Dim var_2B4 As Variant
  Dim var_8E As Integer
  Dim var_304 As Variant
  Dim var_274 As String
  Dim var_284 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_3E4 As Variant
  Dim var_424 As Variant
  Dim var_88 As Recordset15
  Dim var_314 As Variant
  loc_15B6960: On Error Goto loc_15B7B3E
  loc_15B696E: Set var_D8 = Me.Txt
  loc_15B6974: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15B699D: If (Proc_6_27_EA565C(var_DC, "V Date") = 0) Then
  loc_15B69A0:   Exit Sub
  loc_15B69A1: End If
  loc_15B69AC: Set var_D8 = Me.Txt
  loc_15B69B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_DC)
  loc_15B69DB: If (Proc_6_27_EA565C(var_DC, "Date To") = 0) Then
  loc_15B69DE:   Exit Sub
  loc_15B69DF: End If
  loc_15B69EA: Set var_D8 = Me.Txt
  loc_15B69F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_DC)
  loc_15B6A01: Set var_E0 = var_DC
  loc_15B6A19: If (Proc_6_27_EA565C(var_E0, "Employee Name") = 0) Then
  loc_15B6A1C:   Exit Sub
  loc_15B6A1D: End If
  loc_15B6A2B: Set var_D8 = Me.Txt
  loc_15B6A31: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_DC)
  loc_15B6A39: var_E4 = var_DC.Text
  loc_15B6A5C: var_C4 = CDate(LTrim(RTrim(CVar(var_E4))))
  loc_15B6A7F: Set var_D8 = Me.Txt
  loc_15B6A85: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_DC, var_E4)
  loc_15B6A8D: var_C4 = var_DC.Text
  loc_15B6A9B: var_104 = RTrim(CVar(var_E4))
  loc_15B6AA6: var_114 = LTrim(var_104)
  loc_15B6AB0: var_CC = CDate(var_114)
  loc_15B6ACC: If (var_C4 > var_CC) Then
  loc_15B6AE8:   MsgBox("Date From is greater than Date To", &H10, var_104, var_114, var_164)
  loc_15B6AF8:   Exit Sub
  loc_15B6AF9: End If
  loc_15B6AFD: Set var_D8 = Me.TopCtrl1
  loc_15B6B03: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000C(var_CC)
  loc_15B6B1C: If (CStr(var_DC) = "Add") Then
  loc_15B6B22:   var_D4 = var_C4
  loc_15B6B25:   ' Referenced from: 15B6E35
  loc_15B6B2C:   If (var_D4 <= var_CC) Then
  loc_15B6B55:     var_114 = RTrim(LTrim(CVar(Me.LblVPrefix.Caption)))
  loc_15B6B85:     var_184 = (1 + Format(var_D4, "dd/MMM/yyyy"))
  loc_15B6B97:     Set var_DC = Me.Txt
  loc_15B6B9D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E0, var_188, var_184)
  loc_15B6BA5:     1 = var_E0.Tag
  loc_15B6BB0:     var_1A8 = (var_114 + CVar(var_188))
  loc_15B6BB5:     var_B8 = CStr(var_1A8)
  loc_15B6BE2:     Set var_D8 = Me.Txt
  loc_15B6BE8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_DC)
  loc_15B6BF0:     var_E4 = var_DC.Tag
  loc_15B6C20:     Proc_6_7_F25D88(var_114, Format(var_D4, "dd/MMM/yyyy"), 1)
  loc_15B6C39:     var_188 = "Select V_prefix,V_date,Emp_Code,Site_Code from Attend Where Emp_Code='" & var_E4
  loc_15B6C54:     unk_4B2E2B.Execute CStr(CVar(var_188 & "' And V_date=") & var_114), var_184, -1
  loc_15B6C5F:     Set var_8C = var_E0
  loc_15B6C89:     var_1B0 = var_8C.RecordCount
  loc_15B6C97:     If (var_1B0 > 0) Then
  loc_15B6C9A:       ' Referenced from: 15B6E10
  loc_15B6CA9:       If Not(var_8C.EOF) Then
  loc_15B6CC3:         var_DC = var_8C.Fields.Item("v_Prefix")
  loc_15B6CFF:         var_1B8 = var_8C.Fields.Item("V_DATE")
  loc_15B6D07:         var_164 = var_1B8.Value
  loc_15B6D11:         var_174 = CVar(CStr(var_164)) 'String
  loc_15B6D17:         var_184 = RTrim(var_174)
  loc_15B6D2A:         var_1A8 = (RTrim(LTrim(CVar(var_DC))) + LTrim(var_184))
  loc_15B6D58:         var_1E0 = (var_1A8 + var_8C.Fields.Item("Emp_Code").Value)
  loc_15B6D8C:         If (var_B8 = CStr(var_1E0)) Then
  loc_15B6DCA:           var_114 = ("Duplicate Record ! Dated : " + Format(var_D4, "dd/MMM/yyyy"))
  loc_15B6DCE:           MsgBox(RTrim(LTrim(CVar(var_DC))), &H40, var_164, var_174, var_184)
  loc_15B6DED:           Set var_D8 = Me.Txt
  loc_15B6DF3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_DC, 1, 1)
  loc_15B6DFB:           var_DC.SetFocus
  loc_15B6E07:           Exit Sub
  loc_15B6E08:         End If
  loc_15B6E0B:         var_8C.MoveNext
  loc_15B6E10:         GoTo loc_15B6C9A
  loc_15B6E13:       End If
  loc_15B6E13:     End If
  loc_15B6E2F:     var_D4 = CDate(DateAdd("d", CDbl(1), var_D4))
  loc_15B6E35:     GoTo loc_15B6B25
  loc_15B6E38:   End If
  loc_15B6E38: End If
  loc_15B6E46: Set var_D8 = Me.Txt
  loc_15B6E4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC, var_E4, var_D4)
  loc_15B6E54: var_E0 = var_DC.Text
  loc_15B6E6B: If (var_E4 = "Present") Then
  loc_15B6E71:   var_B0 = "P"
  loc_15B6E77: Else
  loc_15B6E85:   Set var_D8 = Me.Txt
  loc_15B6E8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC, var_E4)
  loc_15B6E93:   1 = var_DC.Text
  loc_15B6EAA:   If (var_E4 = "Absent") Then
  loc_15B6EB0:     var_B0 = "A"
  loc_15B6EB6:   Else
  loc_15B6EC4:     Set var_D8 = Me.Txt
  loc_15B6ECA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B6EE9:     If (var_DC.Text = "Leave") Then
  loc_15B6EEF:       var_B0 = "L"
  loc_15B6EF5:     Else
  loc_15B6F03:       Set var_D8 = Me.Txt
  loc_15B6F09:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B6F28:       If (var_DC.Text = "Casual") Then
  loc_15B6F2E:         var_B0 = "C"
  loc_15B6F34:       Else
  loc_15B6F42:         Set var_D8 = Me.Txt
  loc_15B6F48:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B6F67:         If (var_DC.Text = "Earned") Then
  loc_15B6F6D:           var_B0 = "E"
  loc_15B6F73:         Else
  loc_15B6F81:           Set var_D8 = Me.Txt
  loc_15B6F87:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_DC)
  loc_15B6FA6:           If (var_DC.Text = "Holiday") Then
  loc_15B6FAC:             var_B0 = "H"
  loc_15B6FAF:           End If
  loc_15B6FAF:         End If
  loc_15B6FAF:       End If
  loc_15B6FAF:     End If
  loc_15B6FAF:   End If
  loc_15B6FAF: End If
  loc_15B6FBD: Set var_D8 = Me.Txt
  loc_15B6FC3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B6FE2: If (var_DC.Text = "Present") Then
  loc_15B6FE8:   var_B4 = "P"
  loc_15B6FEE: Else
  loc_15B6FFC:   Set var_D8 = Me.Txt
  loc_15B7002:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7021:   If (var_DC.Text = "Absent") Then
  loc_15B7027:     var_B4 = "A"
  loc_15B702D:   Else
  loc_15B703B:     Set var_D8 = Me.Txt
  loc_15B7041:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B7060:     If (var_DC.Text = "Leave") Then
  loc_15B7066:       var_B4 = "L"
  loc_15B706C:     Else
  loc_15B707A:       Set var_D8 = Me.Txt
  loc_15B7080:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B709F:       If (var_DC.Text = "Casual") Then
  loc_15B70A5:         var_B4 = "C"
  loc_15B70AB:       Else
  loc_15B70B9:         Set var_D8 = Me.Txt
  loc_15B70BF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B70DE:         If (var_DC.Text = "Earned") Then
  loc_15B70E4:           var_B4 = "E"
  loc_15B70EA:         Else
  loc_15B70F8:           Set var_D8 = Me.Txt
  loc_15B70FE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_DC)
  loc_15B711D:           If (var_DC.Text = "Holiday") Then
  loc_15B7123:             var_B4 = "H"
  loc_15B7126:           End If
  loc_15B7126:         End If
  loc_15B7126:       End If
  loc_15B7126:     End If
  loc_15B7126:   End If
  loc_15B7126: End If
  loc_15B7180: var_1F0 = 0
  loc_15B719E: var_104 = "Select joining_Date from Employee where code='" & Me.Fields.Item("Code").Value 
  loc_15B71A7: var_114 = var_104 & "'" 
  loc_15B71B5: unk_4B2E2B.Execute CStr(var_114), var_164, -1
  loc_15B71BD: var_E0 = var_E0.Fields
  loc_15B71C5: var_1F0 = var_1B8.Item(var_1B8)
  loc_15B71CD: var_1BC = var_1BC.Value
  loc_15B71E3: Set var_1C0 = Me.Txt
  loc_15B71E9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_204, var_188)
  loc_15B720A: var_264 = 0
  loc_15B7235: var_1AC = CStr("Select Resign_Date from Employee where code='" & Me.Fields.Item("Code").Value & "'")
  loc_15B723F: unk_4B2E2B.Execute var_1AC, var_1E0, -1
  loc_15B7247: var_250 = var_250.Fields
  loc_15B724F: var_264 = var_254.Item(var_254)
  loc_15B7257: var_268 = var_268.Value
  loc_15B726D: Set var_26C = Me.Txt
  loc_15B7273: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_270, var_274, var_284)
  loc_15B727B: var_284 = var_270.Text
  loc_15B72D5: If CBool(var_D4 Or ((var_204.Text > CDate(CDate(var_188))) < CDate(CDate(var_274)))) Then
  loc_15B72F1:   MsgBox(" Invalid Date For This Employee", &H40, var_104, var_114, var_164)
  loc_15B7301:   Exit Sub
  loc_15B7302: End If
  loc_15B730B: unk_4B2E2B.BeginTrans var_1B0
  loc_15B7319: Set var_D8 = Me.TopCtrl1
  loc_15B731F: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000C(&HFF)
  loc_15B7338: If (CStr() = "Add") Then
  loc_15B733E:   var_D4 = var_C4
  loc_15B7341:   ' Referenced from: 15B76E5
  loc_15B7348:   If (var_D4 <= var_CC) Then
  loc_15B7352:     Set var_D8 = Me.LblVPrefix
  loc_15B7388:     Proc_6_7_F25D88(var_114, Format(var_D4, "dd/MMM/yyyy"), 1)
  loc_15B739B:     Set var_DC = Me.Txt
  loc_15B73A1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E0, var_1AC)
  loc_15B73A9:     1 = var_E0.Tag
  loc_15B73B3:     var_304 = CVar(Proc_6_14_EF349C(var_D4)) 'String
  loc_15B73B9:     Proc_6_8_EB0DE4(var_314)
  loc_15B73C2:     Set var_1B8 = Me.TopCtrl1
  loc_15B73C8:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000C(var_304)
  loc_15B7413:     var_188 = "Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D8.Caption
  loc_15B7430:     var_198 = CVar(var_1AC) 'String
  loc_15B7433:     var_1A8 = CVar(var_188 & "',") & var_114 & ",'" & var_198 
  loc_15B743C:     var_1D0 = var_1A8 & "','" 
  loc_15B748F:     var_324 = var_1D0 & CVar(var_B0) & "','" & CVar(var_B4) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_314 
  loc_15B7498:     var_344 = var_324 & ",'" 
  loc_15B74BB:     var_424 = var_344 & IIf((CStr(var_354) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')" 
  loc_15B74C9:     unk_4B2E2B.Execute CStr(var_424), var_448, -1
  loc_15B7552:     Proc_6_7_F25D88(var_114, Format(var_D4, "dd/MMM/yyyy"), 1)
  loc_15B756B:     var_E4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15B7591:     var_164 = CVar(var_E4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_104 & "' And VP.Date_From <=") 'String
  loc_15B75A0:     var_184 = var_164 & var_114 & " Order By VP.Date_From DESC" 
  loc_15B75AE:     unk_4B2E2B.Execute CStr(var_184), var_198, -1
  loc_15B75B9:     Set var_88 = var_D8
  loc_15B75F3:     If (var_88.RecordCount > 0) Then
  loc_15B760A:       var_E4 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15B7611:       var_188 = var_E4 & "' AND VP.LOGSITE_CODE='"
  loc_15B761F:       var_104 = CVar(var_188 & MemVar_1F92078 & "') and V_Type='") 'String
  loc_15B7634:       var_D8 = var_88.Fields
  loc_15B763C:       var_DC = var_D8.Item("V_Type")
  loc_15B7670:       var_1B8 = var_88.Fields.Item("Date_From")
  loc_15B767F:       Proc_6_7_F25D88(var_184, CVar(var_1B8), var_104 & var_DC.Value & "' and Date_From=", var_1A8, -1)
  loc_15B7695:       unk_4B2E2B.Execute CStr(var_1BC & var_184), var_D8, 1
  loc_15B76C3:     End If
  loc_15B76DF:     var_D4 = CDate(DateAdd("d", CDbl(1), var_D4))
  loc_15B76E5:     GoTo loc_15B7341
  loc_15B76E8:   End If
  loc_15B76E8: End If
  loc_15B76EC: Set var_D8 = Me.TopCtrl1
  loc_15B76F2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000C(var_D4)
  loc_15B770B: If (CStr(var_1BC) = "Edit") Then
  loc_15B7737:   Set var_D8 = Me.Txt
  loc_15B773D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_DC, CVar("Delete From Attend Where site_code='" & MemVar_1F92070 & "' and V_Date="))
  loc_15B774C:   Proc_6_7_F25D88(var_104, CVar(var_DC), var_1D0)
  loc_15B7754:   var_164 = -1 & var_104 
  loc_15B775D:   var_174 = var_104 & var_DC.Value & "' and Date_From=" & " And Emp_Code='" 
  loc_15B776F:   Set var_E0 = Me.Txt
  loc_15B7775:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B8, var_188)
  loc_15B777D:   var_174 = var_1B8.Tag
  loc_15B779F:   unk_4B2E2B.Execute CStr(var_1BC & CVar(var_188) & "'"), , 
  loc_15B77E8:   Set var_DC = Me.Txt
  loc_15B77EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15B77FD:   Proc_6_7_F25D88(var_104, CVar(var_E0))
  loc_15B7810:   Set var_1B8 = Me.Txt
  loc_15B7816:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1BC)
  loc_15B782E:   Proc_6_8_EB0DE4(var_304)
  loc_15B7837:   Set var_1C0 = Me.TopCtrl1
  loc_15B783D:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000C(CVar(Proc_6_14_EF349C(var_E0)))
  loc_15B7888:   var_188 = "Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & Me.LblVPrefix.Caption
  loc_15B78E1:   var_2B4 = CVar(var_188 & "',") & var_104 & ",'" & CVar(var_1BC.Tag) & "','" & CVar(var_B0) & "','" & CVar(var_B4) & "','" & CVar(MemVar_1F92070) 
  loc_15B7927:   var_3E4 = var_2B4 & "','" & CVar(MemVar_1F920C8) & "'," & var_304 & ",'" & IIf((CStr(var_344) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_15B793E:   unk_4B2E2B.Execute CStr(var_3E4 & "')"), var_424, -1
  loc_15B799C: End If
  loc_15B79A2: unk_4B2E2B.CommitTrans
  loc_15B79A9: var_8E = 0
  loc_15B79B7: Set var_DC = Me.Txt
  loc_15B79BD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_15B79F0: var_124 = "-"
  loc_15B79F5: var_164 = (RTrim(LTrim(CVar(Me.LblVPrefix.Caption))) + ",'")
  loc_15B7A36: var_1E0 = (1 + LTrim(RTrim(Format(CVar(var_E0), "dd/MM/yyyy"))))
  loc_15B7A3A: var_144 = "-"
  loc_15B7A3F: var_284 = (CVar(var_188 & "',") & LTrim(CVar(Me.LblVPrefix.Caption)) & ",'" & CVar(var_1BC.Tag) & "','" & CVar(var_B0) & "','" + CVar(var_B0))
  loc_15B7A51: Set var_1B8 = Me.Txt
  loc_15B7A57: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1BC, var_188, CVar(var_188 & "',") & LTrim(CVar(Me.LblVPrefix.Caption)) & ",'" & CVar(var_1BC.Tag) & "','" & CVar(var_B0) & "','" & CVar(var_B4))
  loc_15B7A5F: 1 = var_1BC.Tag
  loc_15B7A6A: var_2B4 = (CVar(var_188 & "',") & LTrim(CVar(Me.LblVPrefix.Caption)) + CVar(var_188))
  loc_15B7AA5: Me.Requery -1
  loc_15B7ACF: Me.Find "SearchCode ='" & CStr(var_2B4) & "'", 0, 1
  loc_15B7ADF: Set var_D8 = Me.TopCtrl1
  loc_15B7AE5: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_6803000C(",'")
  loc_15B7AFE: If (CStr(var_8E) = "Add") Then
  loc_15B7B01:   Call TopCtrl1_UnknownEvent_A()
  loc_15B7B06:   Exit Sub
  loc_15B7B07: End If
  loc_15B7B2A: Call Proc_306_33_F1BA3C(Proc_5_1_100CB50("INI", Me), global_56)
  loc_15B7B3A: Set var_88 = Nothing
  loc_15B7B3D: Exit Sub
  loc_15B7B3E: ' Referenced from: 15B6960
  loc_15B7B44: If (var_8E = &HFF) Then
  loc_15B7B4D:   unk_4B2E2B.RollbackTrans
  loc_15B7B52: End If
  loc_15B7B52: Proc_6_60_E62BC4(var_204)
  loc_15B7B57: Exit Sub
  loc_15B7B58: Exit Sub
End Sub

Private Sub TxtDate_Validate(Cancel As Boolean) 'F4AA84
  'Data Table: 4B2E24
  loc_F4A98C: If (Me.TxtDate.Text = vbNullString) Then
  loc_F4A9A1:   Me.TxtDate.Text = CStr(MemVar_1F920EC)
  loc_F4A9E8:   Me.LblVPrefix.Caption = CStr(Format(CVar(Me.TxtDate), "yyyy"))
  loc_F4AA03: Else
  loc_F4AA1F:   Me.TxtDate.Text = Proc_6_33_1512840(Me.TxtDate, 1)
  loc_F4AA6A:   Me.LblVPrefix.Caption = CStr(Format(CVar(Me.TxtDate), "yyyy"))
  loc_F4AA82: End If
  loc_F4AA82: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E953B8
  'Data Table: 4B2E24
  Dim Me As Recordset15
  loc_E95346: On Error Goto loc_E953AF
  loc_E9534F: Me.MoveFirst
  loc_E95379: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E953A1: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E953A9: Call Proc_306_32_1411B18(0)
  loc_E953AE: Exit Sub
  loc_E953AF: ' Referenced from: E95346
  loc_E953AF: Proc_6_60_E62BC4(var_A0)
  loc_E953B4: Exit Sub
End Sub

Public Sub Proc_306_31_EDA0F8
  'Data Table: 4B2E24
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EDA042: global_60 = vbNullString
  loc_EDA054: Set var_8C = Me.Txt
  loc_EDA05A: Call 0.Method_Proc_306_31_EDA0F8C (var_8E, var_86)
  loc_EDA06A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDA080:   Set var_8C = Me.Txt
  loc_EDA086:   Call 0.Method_Proc_306_31_EDA0F80 (CInt(var_86), var_98)
  loc_EDA08E:   var_98.Text = vbNullString
  loc_EDA0AA:   Set var_8C = Me.Txt
  loc_EDA0B0:   Call 0.Method_Proc_306_31_EDA0F80 (CInt(var_86), var_98)
  loc_EDA0B8:   var_98.Tag = vbNullString
  loc_EDA0C7: Next var_92 'Byte
  loc_EDA0DA: Me.LblVPrefix.Caption = vbNullString
  loc_EDA0EF: Me.LblEmpRef.Caption = vbNullString
  loc_EDA0F7: Exit Sub
End Sub

Public Sub Proc_306_32_1411B18
  'Data Table: 4B2E24
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_C8 As String
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_A0 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  loc_14110CC: On Error Goto loc_1411B0F
  loc_14110E6: If (Me.RecordCount > 0) Then
  loc_1411192:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14111DA:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_141125A:   var_CC = Me.Fields.Item("U_AE")
  loc_14112BB:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), "Last Update : ", "entdt : "))
  loc_1411303:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1411376:   Me.LblVPrefix.Caption = CStr(Me.Fields.Item("v_Prefix").Value)
  loc_14113C6:   Set var_B8 = Me.Txt
  loc_14113CC:   Call 0.Method_Proc_306_32_1411B180 (CInt(0), var_CC)
  loc_14113D4:   var_CC.Text = CStr(Me.Fields.Item("V_DATE").Value)
  loc_1411426:   Set var_B8 = Me.Txt
  loc_141142C:   Call 0.Method_Proc_306_32_1411B180 (CInt(5), var_CC)
  loc_1411434:   var_CC.Text = CStr(Me.Fields.Item("V_DATE").Value)
  loc_1411483:   Set var_B8 = Me.Txt
  loc_1411489:   Call 0.Method_Proc_306_32_1411B180 (CInt(1), var_CC)
  loc_1411491:   var_CC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Emp_Code")))
  loc_14114DE:   Set var_B8 = Me.Txt
  loc_14114E4:   Call 0.Method_Proc_306_32_1411B180 (CInt(1), var_CC)
  loc_14114EC:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("EmployeeName")))
  loc_141152D:   var_C8 = " - "
  loc_1411532:   var_DC = (Me.Fields.Item("Department").Value + "U_AE")
  loc_1411563:   var_130 = (CVar(Me.Fields.Item("Designation")) + Me.Fields.Item("Designation").Value)
  loc_1411575:   Me.LblEmpRef.Caption = CStr("entdt : ")
  loc_14115B2:   var_A0 = Me.Fields.Item("FirstShift")
  loc_14115D4:   If (var_A0.Value = "P") Then
  loc_14115E5:     Set var_8C = Me.Txt
  loc_14115EB:     Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_14115F3:     var_A0.Text = "Present"
  loc_1411602:   Else
  loc_141161F:     var_A0 = Me.Fields.Item("FirstShift")
  loc_1411641:     If (var_A0.Value = "A") Then
  loc_1411652:       Set var_8C = Me.Txt
  loc_1411658:       Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_1411660:       var_A0.Text = "Absent"
  loc_141166F:     Else
  loc_141168C:       var_A0 = Me.Fields.Item("FirstShift")
  loc_14116AE:       If (var_A0.Value = "L") Then
  loc_14116BF:         Set var_8C = Me.Txt
  loc_14116C5:         Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_14116CD:         var_A0.Text = "Leave"
  loc_14116DC:       Else
  loc_14116F9:         var_A0 = Me.Fields.Item("FirstShift")
  loc_141171B:         If (var_A0.Value = "C") Then
  loc_141172C:           Set var_8C = Me.Txt
  loc_1411732:           Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_141173A:           var_A0.Text = "Casual"
  loc_1411749:         Else
  loc_1411766:           var_A0 = Me.Fields.Item("FirstShift")
  loc_1411788:           If (var_A0.Value = "E") Then
  loc_1411799:             Set var_8C = Me.Txt
  loc_141179F:             Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_14117A7:             var_A0.Text = "Earned"
  loc_14117B6:           Else
  loc_14117D3:             var_A0 = Me.Fields.Item("FirstShift")
  loc_14117F5:             If (var_A0.Value = "H") Then
  loc_1411806:               Set var_8C = Me.Txt
  loc_141180C:               Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_1411814:               var_A0.Text = "Holiday"
  loc_1411823:             Else
  loc_1411831:               Set var_8C = Me.Txt
  loc_1411837:               Call 0.Method_Proc_306_32_1411B180 (CInt(3), var_A0)
  loc_141183F:               var_A0.Text = vbNullString
  loc_141184B:             End If
  loc_141184B:           End If
  loc_141184B:         End If
  loc_141184B:       End If
  loc_141184B:     End If
  loc_141184B:   End If
  loc_1411868:   var_A0 = Me.Fields.Item("SecondShift")
  loc_141188A:   If (var_A0.Value = "P") Then
  loc_141189B:     Set var_8C = Me.Txt
  loc_14118A1:     Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_14118A9:     var_A0.Text = "Present"
  loc_14118B8:   Else
  loc_14118D5:     var_A0 = Me.Fields.Item("SecondShift")
  loc_14118F7:     If (var_A0.Value = "A") Then
  loc_1411908:       Set var_8C = Me.Txt
  loc_141190E:       Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_1411916:       var_A0.Text = "Absent"
  loc_1411925:     Else
  loc_1411942:       var_A0 = Me.Fields.Item("SecondShift")
  loc_1411964:       If (var_A0.Value = "L") Then
  loc_1411975:         Set var_8C = Me.Txt
  loc_141197B:         Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_1411983:         var_A0.Text = "Leave"
  loc_1411992:       Else
  loc_14119AF:         var_A0 = Me.Fields.Item("SecondShift")
  loc_14119D1:         If (var_A0.Value = "C") Then
  loc_14119E2:           Set var_8C = Me.Txt
  loc_14119E8:           Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_14119F0:           var_A0.Text = "Casual"
  loc_14119FF:         Else
  loc_1411A1C:           var_A0 = Me.Fields.Item("SecondShift")
  loc_1411A3E:           If (var_A0.Value = "E") Then
  loc_1411A4F:             Set var_8C = Me.Txt
  loc_1411A55:             Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_1411A5D:             var_A0.Text = "Earned"
  loc_1411A6C:           Else
  loc_1411A89:             var_A0 = Me.Fields.Item("SecondShift")
  loc_1411AAB:             If (var_A0.Value = "H") Then
  loc_1411ABC:               Set var_8C = Me.Txt
  loc_1411AC2:               Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_1411ACA:               var_A0.Text = "Holiday"
  loc_1411AD9:             Else
  loc_1411AE7:               Set var_8C = Me.Txt
  loc_1411AED:               Call 0.Method_Proc_306_32_1411B180 (CInt(4), var_A0)
  loc_1411AF5:               var_A0.Text = vbNullString
  loc_1411B01:             End If
  loc_1411B01:           End If
  loc_1411B01:         End If
  loc_1411B01:       End If
  loc_1411B01:     End If
  loc_1411B01:   End If
  loc_1411B04: Else
  loc_1411B04:   Call Proc_306_31_EDA0F8()
  loc_1411B09: End If
  loc_1411B09: Call Proc_306_34_EB7A9C()
  loc_1411B0E: Exit Sub
  loc_1411B0F: ' Referenced from: 14110CC
  loc_1411B0F: Proc_6_60_E62BC4()
  loc_1411B14: Exit Sub
End Sub

Public Sub Proc_306_33_F1BA3C(arg_C) 'F1BA3C
  'Data Table: 4B2E24
  Dim var_98 As TextBox
  Dim var_1B8 As Variant
  loc_F1B94E: Set var_8C = Me.Txt
  loc_F1B954: Call 0.Method_Proc_306_33_F1BA3CC (var_8E, var_86)
  loc_F1B964: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1B97A:   Set var_8C = Me.Txt
  loc_F1B980:   Call 0.Method_Proc_306_33_F1BA3C0 (CInt(var_86), var_98)
  loc_F1B988:   var_98.Enabled = arg_C
  loc_F1B997: Next var_92 'Byte
  loc_F1B9A1: Set var_8C = Me.TopCtrl1
  loc_F1B9A7: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_F1B9C0: If (CStr() = "Edit") Then
  loc_F1B9D0:   Set var_8C = Me.Txt
  loc_F1B9D6:   Call 0.Method_Proc_306_33_F1BA3C0 (CInt(0), var_98)
  loc_F1B9DE:   var_98.Enabled = False
  loc_F1B9F7:   Set var_8C = Me.Txt
  loc_F1B9FD:   Call 0.Method_Proc_306_33_F1BA3C0 (CInt(5), var_98)
  loc_F1BA05:   var_98.Enabled = False
  loc_F1BA1E:   Set var_8C = Me.Txt
  loc_F1BA24:   Call 0.Method_Proc_306_33_F1BA3C0 (CInt(1), var_98)
  loc_F1BA2C:   var_98.Enabled = False
  loc_F1BA38: End If
  loc_F1BA38: Exit Sub
  loc_F1BA39: var_1B8 = CVar() 'String
End Sub

Public Sub Proc_306_34_EB7A9C
  'Data Table: 4B2E24
  loc_EB7A18: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EB7A2A:   Me.DGEmployee.Visible = False
  loc_EB7A32: End If
  loc_EB7A4D: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7A5C:   Me.FrmList.Visible = False
  loc_EB7A64: End If
  loc_EB7A80: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB7A92:   Me.FGPoint.Visible = False
  loc_EB7A9A: End If
  loc_EB7A9A: Exit Sub
End Sub

Public Sub Proc_306_35_F96A7C(arg_C) 'F96A7C
  'Data Table: 4B2E24
  Dim var_8C As TextBox
  loc_F96918: Call Proc_306_34_EB7A9C()
  loc_F96928: Set var_88 = Me.Txt
  loc_F9692E: Call 0.Method_Proc_306_35_F96A7C0 (CInt(0))
  loc_F96957: If (Proc_6_27_EA565C(var_8C, "V Date") = 0) Then
  loc_F9695A:   Exit Sub
  loc_F9695B: End If
  loc_F96966: Set var_88 = Me.Txt
  loc_F9696C: Call 0.Method_Proc_306_35_F96A7C0 (CInt(1), var_8C)
  loc_F96995: If (Proc_6_27_EA565C(var_8C, "Employee Name") = 0) Then
  loc_F96998:   Exit Sub
  loc_F96999: End If
  loc_F969A4: Set var_88 = Me.Txt
  loc_F969AA: Call 0.Method_Proc_306_35_F96A7C0 (CInt(3), var_8C)
  loc_F969D3: If (Proc_6_27_EA565C(var_8C, "First Shift") = 0) Then
  loc_F969D6:   Exit Sub
  loc_F969D7: End If
  loc_F969E2: Set var_88 = Me.Txt
  loc_F969E8: Call 0.Method_Proc_306_35_F96A7C0 (CInt(4), var_8C)
  loc_F96A11: If (Proc_6_27_EA565C(var_8C, "Second Shift") = 0) Then
  loc_F96A14:   Exit Sub
  loc_F96A15: End If
  loc_F96A4C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F96A4F:   Call TopCtrl1_UnknownEvent_16()
  loc_F96A57: Else
  loc_F96A61:   Set var_88 = Me.Txt
  loc_F96A67:   Call 0.Method_Proc_306_35_F96A7C0 (arg_C, var_8C)
  loc_F96A6F:   var_8C.SetFocus
  loc_F96A7B: End If
  loc_F96A7B: Exit Sub
End Sub

Public Sub Proc_306_36_F04D58
  'Data Table: 4B2E24
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As Frame
  loc_F04C86: Set var_88 = Me.Txt
  loc_F04C8C: Call 0.Method_Proc_306_36_F04D580 (CInt(1), var_8C)
  loc_F04CAB: Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_F04CC7: Set var_B4 = Me.Txt
  loc_F04CCD: Call 0.Method_Proc_306_36_F04D580 (CInt(1), var_B8)
  loc_F04CE8: Set var_88 = Me.Txt
  loc_F04CEE: Call 0.Method_Proc_306_36_F04D580 (CInt(1), var_8C)
  loc_F04D06: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F04D15: Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_F04D36: Me.FramePrint.Left = CDbl(1650)
  loc_F04D4D: Me.FramePrint.Top = CDbl(2685)
  loc_F04D55: Exit Sub
End Sub
