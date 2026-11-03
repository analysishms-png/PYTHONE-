VERSION 5.00
Begin VB.Form PrLoan
  Caption = "Advance/Loan"
  BackColor = &HD0C7BB&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 9480
  ClientHeight = 5475
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin DataGrid DGEmployee
    Left = 9885
    Top = 4050
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DBGrid1
    Left = 330
    Top = 3705
    Width = 9315
    Height = 2745
    TabIndex = 16
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9480
    Height = 450
    TabIndex = 30
  End
  Begin PictureBox Picture1
    Picture = "PrLoan.frx":0
    Left = 14940
    Top = 2040
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 29
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture3
    Picture = "PrLoan.frx":34E
    Left = 14985
    Top = 2505
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 28
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &H80000004&
    Left = 6375
    Top = 30
    Width = 2235
    Height = 255
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 5265
    Top = 1110
    Width = 1035
    Height = 285
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 10
    Locked = -1  'True
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
    ForeColor = &HC00000&
    Left = 7845
    Top = 1110
    Width = 1020
    Height = 285
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 20
    Locked = -1  'True
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
    Left = 9915
    Top = 6855
    Width = 2520
    Height = 1875
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 19
    End
  End
  Begin DataGrid DGAcName
    Left = 13590
    Top = 3300
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 5265
    Top = 1425
    Width = 3600
    Height = 285
    TabIndex = 3
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
    ForeColor = &HC00000&
    Left = 1170
    Top = 2055
    Width = 2880
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 1170
    Top = 1425
    Width = 1410
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 1170
    Top = 1110
    Width = 1410
    Height = 285
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC00000&
    Left = 5265
    Top = 1740
    Width = 3600
    Height = 780
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
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
    ForeColor = &HC00000&
    Left = 3120
    Top = 2370
    Width = 930
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 10
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
    ForeColor = &HC00000&
    Left = 1170
    Top = 2370
    Width = 825
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 10
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
    ForeColor = &HC00000&
    Left = 1170
    Top = 1740
    Width = 1410
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
    Left = 12705
    Top = 7125
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 27
  End
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 1215
    Top = 2700
    Width = 105
    Height = 270
    TabIndex = 35
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
    Top = 6885
    Width = 2790
    Height = 285
    TabIndex = 33
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
    Top = 6885
    Width = 2880
    Height = 255
    TabIndex = 32
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
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 31
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
  Begin Label Bal
    Caption = "Previous Balance -->"
    ForeColor = &HC00000&
    Left = 3165
    Top = 2400
    Width = 1965
    Height = 240
    Visible = 0   'False
    TabIndex = 26
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC0&
    Left = 2595
    Top = 1695
    Width = 705
    Height = 240
    TabIndex = 25
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
    Caption = "Prev.Loan"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 4170
    Top = 1110
    Width = 975
    Height = 240
    Visible = 0   'False
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Prev.Inst."
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6660
    Top = 1110
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Post in A/c"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 4170
    Top = 1425
    Width = 1005
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Type"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 1425
    Width = 465
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Employee"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 2055
    Width = 945
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Remark"
    Index = 7
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 4170
    Top = 1740
    Width = 735
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Installment"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 2040
    Top = 2400
    Width = 1050
    Height = 240
    TabIndex = 11
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Amount"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 2370
    Width = 735
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Serial No."
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 1740
    Width = 945
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 1110
    Width = 435
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "PrLoan"

Private global_54 As Integer
Private global_56 As Recordset15

Private Sub Txt_GotFocus(Index As Integer) '1247098
  'Data Table: 4C1960
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_EC As Variant
  Dim var_90 As Fields15
  Dim var_C8 As String
  loc_1246B72: Set var_88 = Me.Txt
  loc_1246B78: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1246B86: Proc_6_74_E226B0(var_8C)
  loc_1246B92: Call Proc_308_39_EF38F8(var_8C)
  loc_1246B9A: var_92 = Index
  loc_1246BA5: If (var_92 = CInt(7)) Then
  loc_1246BBF:   If (Me.RecordCount > 0) Then
  loc_1246BCD:     Set var_8C = Me.FGPoint
  loc_1246BE5:     Proc_6_137_1193554(Me.DGEmployee, global_64, Index)
  loc_1246BF3:   End If
  loc_1246C41:   Set var_88 = Me.Txt
  loc_1246C47:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1246C4F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1246C67:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1246C6A:     Exit Sub
  loc_1246C6B:   End If
  loc_1246C79:   Set var_90 = Me.Txt
  loc_1246C7F:   Call 0.Method_Txt_GotFocus0 (CInt(7), var_A4)
  loc_1246C9A:   Set var_88 = Me.Txt
  loc_1246CA0:   Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C)
  loc_1246CB4:   var_B8 = CVar((var_8C.Top + var_A4.Height)) 'Single
  loc_1246CC3:   Me.DGEmployee.Top = var_B8
  loc_1246CE2:   Set var_88 = Me.Txt
  loc_1246CE8:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1246CF0:   var_A0 = var_8C.Text
  loc_1246CF8:   var_EC = CVar(var_A0) 'String
  loc_1246D19:   var_A4 = Me.Fields.Item("Name")
  loc_1246D3D:   If CBool(var_EC <> var_A4.Value) Then
  loc_1246D46:     Me.MoveFirst
  loc_1246D6B:     Set var_88 = Me.Txt
  loc_1246D71:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1246D79:     0 = var_8C.Text
  loc_1246D87:     Proc_6_17_EAA2B0(var_EC, CVar(var_A0), 1)
  loc_1246D9D:     Me.Find CStr(var_C8 & var_EC), var_92, 
  loc_1246DB5:   End If
  loc_1246DB8: Else
  loc_1246DC0:   If (var_92 = CInt(8)) Then
  loc_1246DDA:     If (Me.RecordCount > 0) Then
  loc_1246DE8:       Set var_8C = Me.FGPoint
  loc_1246E00:       Proc_6_137_1193554(Me.DGAcName, global_60)
  loc_1246E0E:     End If
  loc_1246E5C:     Set var_88 = Me.Txt
  loc_1246E62:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1246E6A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1246E82:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1246E85:       Exit Sub
  loc_1246E86:     End If
  loc_1246E94:     Set var_90 = Me.Txt
  loc_1246E9A:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_A4)
  loc_1246EB5:     Set var_88 = Me.Txt
  loc_1246EBB:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1246ECF:     var_B8 = CVar((var_8C.Top + var_A4.Height)) 'Single
  loc_1246EDE:     Me.DGAcName.Top = "Name ="
  loc_1246EFD:     Set var_88 = Me.Txt
  loc_1246F03:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1246F0B:     var_A0 = var_8C.Text
  loc_1246F13:     var_EC = CVar(var_A0) 'String
  loc_1246F58:     If CBool(var_EC <> Me.Fields.Item("Name").Value) Then
  loc_1246F61:       Me.MoveFirst
  loc_1246F86:       Set var_88 = Me.Txt
  loc_1246F8C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1246F94:       0 = var_8C.Text
  loc_1246FA2:       Proc_6_17_EAA2B0(var_EC, CVar(var_A0), 1)
  loc_1246FB8:       Me.Find CStr(var_C8 & var_EC), var_8C, 
  loc_1246FD0:     End If
  loc_1246FD3:   Else
  loc_1246FDB:     If (var_92 = CInt(2)) Then
  loc_1246FEB:       ReDim var_104(0 To 3)
  loc_1247002:       var_104(0) = "Advance"
  loc_1247011:       var_104(1) = "Loan"
  loc_1247020:       var_104(2) = "Advance Return"
  loc_124702F:       var_104(3) = "Loan Return"
  loc_1247046:       global_68 = Array(var_104)
  loc_1247086:       Set global_84 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index)
  loc_1247097:     End If
  loc_1247097:   End If
  loc_1247097: End If
  loc_1247097: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12180C4
  'Data Table: 4C1960
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A4 As TextBox
  Dim var_B0 As TextBox
  Dim var_BC As TextBox
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_98 As Frame
  loc_1217C0F: var_88 = Shift
  loc_1217C1C: If (CLng(Shift) = &H1B) Then
  loc_1217C1F:   Call Proc_308_39_EF38F8(var_88)
  loc_1217C24:   Exit Sub
  loc_1217C25: End If
  loc_1217C28: var_8A = KeyCode
  loc_1217C31: If Not (var_8A = 3) Then
  loc_1217C3A:   If (var_8A = 4) Then
  loc_1217C3D:   End If
  loc_1217C47:   Set var_90 = Me.Txt
  loc_1217C4D:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1217C68:   Proc_6_41_FA0BA4(var_94, Shift, 8)
  loc_1217C77: Else
  loc_1217C7D:   If Not (var_8A = 5) Then
  loc_1217C86:     If (var_8A = 6) Then
  loc_1217C89:     End If
  loc_1217C93:     Set var_90 = Me.Txt
  loc_1217C99:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1217CB4:     Proc_6_41_FA0BA4(var_94, Shift, 7)
  loc_1217CC3:   Else
  loc_1217CCB:     If (var_8A = CInt(2)) Then
  loc_1217CF0:       Set var_90 = Me.Txt
  loc_1217CF6:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_A0)
  loc_1217CFE:       2 = var_94.Left
  loc_1217D10:       Set var_98 = Me.Txt
  loc_1217D16:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_A8)
  loc_1217D1E:       0 = var_A4.Top
  loc_1217D30:       Set var_AC = Me.Txt
  loc_1217D36:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0)
  loc_1217D3E:       var_B4 = var_B0.Height
  loc_1217D50:       Set var_B8 = Me.Txt
  loc_1217D56:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_1217D5E:       var_C0 = var_BC.Width
  loc_1217DAA:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1217DD1:     Else
  loc_1217DD9:       If (var_8A = CInt(7)) Then
  loc_1217E36:         Proc_6_69_134A198(Me.DGEmployee, Me.Txt, CInt(7), global_64, Shift, 0, 1, Nothing)
  loc_1217EA5:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1217ECB:           Proc_6_138_106D6F8(Me.DGEmployee, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1217ED9:         End If
  loc_1217EDC:       Else
  loc_1217EE4:         If (var_8A = CInt(8)) Then
  loc_1217F41:           Proc_6_69_134A198(Me.DGAcName, Me.Txt, CInt(8), global_60, Shift, 0, 1, Nothing)
  loc_1217F60:           var_A0 = Me.RecordCount
  loc_1217FB0:           If ((var_A0 > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1217FD6:             Proc_6_138_106D6F8(Me.DGAcName, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1217FE4:           End If
  loc_1217FE4:         End If
  loc_1217FE4:       End If
  loc_1217FE4:     End If
  loc_1217FE4:   End If
  loc_1217FE4: End If
  loc_121803A: If (((CBool(Me.DGEmployee.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_121805B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_1218064:     Call Txt_Validate(KeyCode)
  loc_121806F:     If (var_86 = &HFF) Then
  loc_1218072:       Exit Sub
  loc_1218073:     End If
  loc_1218076:     Call Proc_308_37_E7F0B4(KeyCode, var_86, CInt(var_A0), CInt(((var_A8 + var_B4) + CDbl(&H19))))
  loc_121807B:     Exit Sub
  loc_121807C:   End If
  loc_1218091:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_121809A:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_C0))
  loc_121809F:   End If
  loc_12180A7:   If (KeyCode <> CInt(0)) Then
  loc_12180B4:     If (CLng(Shift) = &H26) Then
  loc_12180BD:       Proc_6_76_E52838(Shift, arg_14)
  loc_12180C2:     End If
  loc_12180C2:   End If
  loc_12180C2: End If
  loc_12180C2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FE4160
  'Data Table: 4C1960
  Dim arg_10 As Integer
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FE3F86: If (arg_10 = &HD) Then
  loc_FE3F8B:   arg_10 = 0
  loc_FE3F8E: End If
  loc_FE3F91: Proc_6_58_E054C0(arg_10)
  loc_FE3F99: var_86 = KeyAscii
  loc_FE3FA2: If Not (var_86 = 3) Then
  loc_FE3FAB:   If (var_86 = 4) Then
  loc_FE3FAE:   End If
  loc_FE3FB8:   Set var_8C = Me.Txt
  loc_FE3FBE:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FE3FD9:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_FE3FE8: Else
  loc_FE3FEE:   If Not (var_86 = 5) Then
  loc_FE3FF7:     If (var_86 = 6) Then
  loc_FE3FFA:     End If
  loc_FE4004:     Set var_8C = Me.Txt
  loc_FE400A:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 0)
  loc_FE4025:     Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_FE4034:   Else
  loc_FE403C:     If (var_86 = CInt(7)) Then
  loc_FE405B:       If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_FE4088:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FE40BA:         Proc_6_138_106D6F8(Me.DGEmployee, global_64, KeyAscii, Me.FGPoint)
  loc_FE40C8:       End If
  loc_FE40CB:     Else
  loc_FE40D3:       If (var_86 = CInt(8)) Then
  loc_FE40F2:         If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_FE411F:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_FE4151:           Proc_6_138_106D6F8(Me.DGAcName, global_60, KeyAscii, Me.FGPoint, 0)
  loc_FE415F:         End If
  loc_FE415F:       End If
  loc_FE415F:     End If
  loc_FE415F:   End If
  loc_FE415F: End If
  loc_FE415F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F88F50
  'Data Table: 4C1960
  Dim var_86 As Integer
  loc_F88DFB: var_86 = KeyCode
  loc_F88E06: If (var_86 = CInt(7)) Then
  loc_F88E25:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F88E39:     var_A4 = "Name"
  loc_F88E5D:     Proc_6_68_129FB34(Me.DGEmployee, Me.Txt, KeyCode, global_64)
  loc_F88E70:   End If
  loc_F88E73: Else
  loc_F88E7B:   If (var_86 = CInt(8)) Then
  loc_F88E9A:     If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F88EAE:       var_A4 = "Name"
  loc_F88ED2:       Proc_6_68_129FB34(Me.DGAcName, Me.Txt, KeyCode, global_60, Shift)
  loc_F88EE5:     End If
  loc_F88EE8:   Else
  loc_F88EF0:     If (var_86 = CInt(2)) Then
  loc_F88F0E:       If (Me.FrmList.Visible = &HFF) Then
  loc_F88F3D:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_84)
  loc_F88F4D:       End If
  loc_F88F4D:     End If
  loc_F88F4D:   End If
  loc_F88F4D: End If
  loc_F88F4D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E460D4
  'Data Table: 4C1960
  loc_E460B2: Set var_88 = Me.Txt
  loc_E460B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E460C6: Proc_6_73_E22704(var_8C)
  loc_E460D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18A8AB4
  'Data Table: 4C1960
  Dim var_8E As Integer
  Dim var_A8 As Variant
  Dim var_E4 As String
  Dim var_E0 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_13C As TextBox
  Dim var_124 As String
  Dim unk_4C1968 As Connection15
  Dim var_130 As Variant
  Dim var_D8 As Variant
  Dim var_170 As Variant
  Dim var_144 As String
  Dim var_148 As String
  Dim var_15C As Recordset15
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_17C As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim arg_10 As Integer
  Dim var_158 As Integer
  Dim var_140 As String
  Dim var_190 As Variant
  Dim var_1E0 As Variant
  Dim var_134 As String
  Dim var_180 As String
  Dim var_270 As Double
  Dim var_208 As String
  Dim var_224 As String
  Dim var_238 As Recordset15
  Dim var_23C As Fields15
  Dim var_240 As Variant
  Dim var_278 As Double
  Dim var_258 As Variant
  Dim var_260 As String
  Dim var_268 As Variant
  Dim var_1D0 As Variant
  Dim var_12C As Variant
  Dim var_178 As Fields15
  Dim var_204 As String
  Dim var_210 As TextBox
  Dim var_25C As String
  Dim var_284 As Double
  loc_18A6328: On Error Goto loc_18A8A6E
  loc_18A632E: var_8E = Cancel
  loc_18A6337: If Not (var_8E = 3) Then
  loc_18A6340:   If Not (var_8E = 5) Then
  loc_18A6349:     If (var_8E = 6) Then
  loc_18A634C:     End If
  loc_18A634C:   End If
  loc_18A6356:   Set var_94 = Me.Txt
  loc_18A635C:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A6388:   var_E4 = CStr(Format(CVar(var_98), "0.00"))
  loc_18A6396:   Set var_DC = Me.Txt
  loc_18A639C:   Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4)
  loc_18A63A4:   var_E0.Text = 1
  loc_18A63C1: Else
  loc_18A63C9:   If (var_8E = CInt(8)) Then
  loc_18A641B:     Set var_94 = Me.Txt
  loc_18A6421:     Call 0.Method_Txt_Validate0 (CInt(8), var_98, var_E4)
  loc_18A6429:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_18A6441:     If (1 Or (var_E4 = vbNullString)) Then
  loc_18A6444:       Exit Sub
  loc_18A6445:     End If
  loc_18A6481:     Set var_DC = Me.Txt
  loc_18A6487:     Call 0.Method_Txt_Validate0 (CInt(8), var_E0)
  loc_18A648F:     var_E0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18A64C2:     var_98 = Me.Fields.Item("Code")
  loc_18A64D3:     var_E4 = CStr(var_98.Value)
  loc_18A64E1:     Set var_DC = Me.Txt
  loc_18A64E7:     Call 0.Method_Txt_Validate0 (CInt(8), var_E0)
  loc_18A64EF:     var_E0.Tag = var_E4
  loc_18A6508:   Else
  loc_18A6510:     If (var_8E = CInt(7)) Then
  loc_18A6547:       var_EC = Me.BOF
  loc_18A6562:       Set var_94 = Me.Txt
  loc_18A6568:       Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A6570:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (var_EC = &HFF))) = var_98.Text
  loc_18A6588:       If (var_8E Or (var_E4 = vbNullString)) Then
  loc_18A658B:         Exit Sub
  loc_18A658C:       End If
  loc_18A65C8:       Set var_DC = Me.Txt
  loc_18A65CE:       Call 0.Method_Txt_Validate0 (CInt(7), var_E0)
  loc_18A65D6:       var_E0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18A6628:       Set var_DC = Me.Txt
  loc_18A662E:       Call 0.Method_Txt_Validate0 (CInt(7), var_E0)
  loc_18A6636:       var_E0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_18A6669:       var_98 = Me.Fields.Item("Department")
  loc_18A6671:       var_A8 = var_98.Value
  loc_18A6679:       var_FC = " - "
  loc_18A667E:       var_C8 = (var_A8 + var_FC)
  loc_18A669F:       var_E0 = Me.Fields.Item("Designation")
  loc_18A66AF:       var_11C = ("0.00" + var_E0.Value)
  loc_18A66C1:       Me.LblEmpRef.Caption = CStr(var_11C)
  loc_18A66EF:       Set var_94 = Me.Txt
  loc_18A66F5:       Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_18A6710:       Set var_138 = Me.Txt
  loc_18A6716:       Call 0.Method_Txt_Validate0 (CInt(7), var_13C)
  loc_18A6729:       var_FC = 0
  loc_18A6756:       unk_4C1968.Execute "Select Joining_date from employee where code='" & var_98.Tag & "'", var_A8, -1
  loc_18A675E:       var_DC = var_DC.Fields
  loc_18A6766:       var_FC = var_E0.Item(var_E0)
  loc_18A676E:       var_120 = var_120.Value
  loc_18A6784:       Set var_12C = Me.Txt
  loc_18A678A:       Call 0.Method_Txt_Validate0 (CInt(1), var_130, var_134)
  loc_18A6792:       var_C8 = var_130.Text
  loc_18A67A1:       var_D8 = (var_C8 > CDate(CDate(var_134)))
  loc_18A67AB:       var_170 = 0
  loc_18A67D8:       unk_4C1968.Execute "Select Resign_date from employee where code='" & var_13C.Tag & "'", var_11C, -1
  loc_18A67E0:       var_15C = var_15C.Fields
  loc_18A67E8:       var_170 = var_160.Item(var_160)
  loc_18A67F0:       var_174 = var_174.Value
  loc_18A6806:       Set var_178 = Me.Txt
  loc_18A680C:       Call 0.Method_Txt_Validate0 (CInt(1), var_17C, var_180)
  loc_18A6823:       var_1B0 = (var_17C.Text < CDate(CDate(var_180)))
  loc_18A6827:       var_1C0 = var_D8 Or var_1B0
  loc_18A686A:       If CBool(var_1C0) Then
  loc_18A6880:         var_A8 = "Invalid Date For This Employee"
  loc_18A6886:         MsgBox(var_A8, &H40, var_C8, var_D8, var_11C)
  loc_18A6898:         arg_10 = &HFF
  loc_18A689B:       End If
  loc_18A68A3:       If (MemVar_1F923AC = "A") Then
  loc_18A68B4:         Set var_94 = Me.Txt
  loc_18A68BA:         Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_18A68C2:         var_E4 = var_98.Tag
  loc_18A68CD:         var_FC = 0
  loc_18A68FA:         unk_4C1968.Execute "SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A6902:         var_DC = var_DC.Fields
  loc_18A690A:         var_FC = var_E0.Item(var_E0)
  loc_18A6912:         var_120 = var_120.Value
  loc_18A6925:         Set var_12C = Me.Txt
  loc_18A692B:         Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_134)
  loc_18A6943:         Set var_138 = Me.Txt
  loc_18A6949:         Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A6958:         Proc_6_7_F25D88(var_D8, CVar(var_13C))
  loc_18A6963:         var_158 = 0
  loc_18A6987:         var_11C = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_134 & "' and v_date<= ") 'String
  loc_18A699B:         unk_4C1968.Execute CStr(var_11C & var_D8), var_1B0, -1
  loc_18A69A3:         var_15C = var_15C.Fields
  loc_18A69AB:         var_158 = var_160.Item(var_160)
  loc_18A69B3:         var_174 = var_174.Value
  loc_18A69D3:         var_1E0 = (var_130.Tag + var_1C0)
  loc_18A69F1:         Set var_178 = Me.Txt
  loc_18A69F7:         Call 0.Method_Txt_Validate0 (CInt(3), var_17C, CStr(Format(var_1E0, "0.00")), 1)
  loc_18A69FF:         var_17C.Text = 1
  loc_18A6A4E:       Else
  loc_18A6A56:         If (MemVar_1F923AC = "S") Then
  loc_18A6A67:           Set var_94 = Me.Txt
  loc_18A6A6D:           Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A6A80:           var_FC = 0
  loc_18A6AAD:           unk_4C1968.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A6AB5:           var_DC = var_DC.Fields
  loc_18A6ABD:           var_FC = var_E0.Item(var_E0)
  loc_18A6AC5:           var_120 = var_120.Value
  loc_18A6AD8:           Set var_12C = Me.Txt
  loc_18A6ADE:           Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_134)
  loc_18A6AE6:           var_1D0 = var_130.Tag
  loc_18A6AF6:           Set var_138 = Me.Txt
  loc_18A6AFC:           Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A6B0B:           Proc_6_7_F25D88(var_D8, CVar(var_13C))
  loc_18A6B16:           var_158 = 0
  loc_18A6B3A:           var_11C = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_134 & "' and v_date<= ") 'String
  loc_18A6B4E:           unk_4C1968.Execute CStr(var_11C & var_D8), var_1B0, -1
  loc_18A6B56:           var_15C = var_15C.Fields
  loc_18A6B5E:           var_158 = var_160.Item(var_160)
  loc_18A6B66:           var_174 = var_174.Value
  loc_18A6B7A:           var_1F0 = "0.00"
  loc_18A6B86:           var_1E0 = (var_1D0 + var_98.Tag)
  loc_18A6BA4:           Set var_178 = Me.Txt
  loc_18A6BAA:           Call 0.Method_Txt_Validate0 (CInt(3), var_17C, CStr(Format(var_1E0, var_1F0)), 1)
  loc_18A6BB2:           var_17C.Text = 1
  loc_18A6BFE:         End If
  loc_18A6BFE:       End If
  loc_18A6C06:       If (MemVar_1F923AC = "A") Then
  loc_18A6C17:         Set var_94 = Me.Txt
  loc_18A6C1D:         Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A6C25:         var_1C0 = var_98.Tag
  loc_18A6C2D:         var_FC = 0
  loc_18A6C5A:         unk_4C1968.Execute "SELECT IIF(ISNULL(OP_Inst),0,OP_Inst) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A6C62:         var_DC = var_DC.Fields
  loc_18A6C6A:         var_FC = var_E0.Item(var_E0)
  loc_18A6CA5:         Set var_12C = Me.Txt
  loc_18A6CAB:         Call 0.Method_Txt_Validate0 (CInt(5), var_130, CStr(Format(CVar(var_120), "0.00")), 1)
  loc_18A6CB3:         var_130.Text = 1
  loc_18A6CE0:       Else
  loc_18A6CE8:         If (MemVar_1F923AC = "S") Then
  loc_18A6CF9:           Set var_94 = Me.Txt
  loc_18A6CFF:           Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A6D0F:           var_FC = 0
  loc_18A6D3C:           unk_4C1968.Execute "SELECT ISNULL(OP_Inst,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A6D44:           var_DC = var_DC.Fields
  loc_18A6D4C:           var_FC = var_E0.Item(var_E0)
  loc_18A6D69:           var_C8 = CVar(var_98.Tag) 'Address
  loc_18A6D70:           var_11C = Format(var_C8, "0.00")
  loc_18A6D87:           Set var_12C = Me.Txt
  loc_18A6D8D:           Call 0.Method_Txt_Validate0 (CInt(5), var_130, CStr(var_11C), 1)
  loc_18A6D95:           var_130.Text = 1
  loc_18A6DBF:         End If
  loc_18A6DBF:       End If
  loc_18A6DCC:       Me.Bal.Caption = "Previous Balance -->"
  loc_18A6DE2:       Set var_94 = Me.Txt
  loc_18A6DE8:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4)
  loc_18A6DF0:       var_120 = var_98.Text
  loc_18A6E07:       If (var_E4 = "Loan Return") Then
  loc_18A6E25:         If (Me.Bal.Visible = 0) Then
  loc_18A6E34:           Me.Bal.Visible = True
  loc_18A6E3C:         End If
  loc_18A6E44:         If (MemVar_1F923AC = "A") Then
  loc_18A6E55:           Set var_94 = Me.Txt
  loc_18A6E5B:           Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_18A6E63:           var_E4 = var_98.Tag
  loc_18A6E76:           Set var_12C = Me.Txt
  loc_18A6E7C:           Call 0.Method_Txt_Validate0 (CInt(7), var_130)
  loc_18A6E84:           var_140 = var_130.Tag
  loc_18A6E94:           Set var_138 = Me.Txt
  loc_18A6E9A:           Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A6EA9:           Proc_6_7_F25D88(var_11C, CVar(var_13C))
  loc_18A6EB4:           var_158 = 0
  loc_18A6ED8:           var_190 = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_140 & "' and v_date<= ") 'String
  loc_18A6EEC:           unk_4C1968.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A6EF4:           var_15C = var_15C.Fields
  loc_18A6EFC:           var_158 = var_160.Item(var_160)
  loc_18A6F04:           var_174 = var_174.Value
  loc_18A6F15:           var_270 = Val(CStr(var_1D0))
  loc_18A6F26:           Set var_178 = Me.Txt
  loc_18A6F2C:           Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204)
  loc_18A6F44:           Set var_20C = Me.Txt
  loc_18A6F4A:           Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A6F59:           Proc_6_7_F25D88(var_1F0, CVar(var_210))
  loc_18A6F64:           var_1A0 = 0
  loc_18A6F81:           var_208 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_204
  loc_18A6F9C:           unk_4C1968.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A6FA4:           var_238 = var_238.Fields
  loc_18A6FAC:           var_1A0 = var_23C.Item(var_23C)
  loc_18A6FB4:           var_240 = var_240.Value
  loc_18A6FD5:           var_25C = Me.Bal.Caption
  loc_18A6FE3:           var_FC = 0
  loc_18A7010:           unk_4C1968.Execute "SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A7018:           var_DC = var_DC.Fields
  loc_18A7020:           var_FC = var_E0.Item(var_E0)
  loc_18A7028:           var_120 = var_120.Value
  loc_18A7043:           var_260 = CStr(((Val(CStr(var_C8)) + var_17C.Tag) - Val(CStr(var_250))))
  loc_18A7054:           Me.Bal.Caption = var_C8 & var_260
  loc_18A70C5:         Else
  loc_18A70CD:           If (MemVar_1F923AC = "S") Then
  loc_18A70DE:             Set var_94 = Me.Txt
  loc_18A70E4:             Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4, var_25C)
  loc_18A70EC:             var_278 = var_98.Tag
  loc_18A70FF:             Set var_12C = Me.Txt
  loc_18A7105:             Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_140)
  loc_18A711D:             Set var_138 = Me.Txt
  loc_18A7123:             Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A7132:             Proc_6_7_F25D88(var_11C, CVar(var_13C))
  loc_18A713D:             var_158 = 0
  loc_18A7161:             var_190 = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_140 & "' and v_date<= ") 'String
  loc_18A7175:             unk_4C1968.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A717D:             var_15C = var_15C.Fields
  loc_18A7185:             var_158 = var_160.Item(var_160)
  loc_18A718D:             var_174 = var_174.Value
  loc_18A719E:             var_270 = Val(CStr(var_1D0))
  loc_18A71AF:             Set var_178 = Me.Txt
  loc_18A71B5:             Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204, var_270)
  loc_18A71BD:             var_1D0 = var_17C.Tag
  loc_18A71CD:             Set var_20C = Me.Txt
  loc_18A71D3:             Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A71E2:             Proc_6_7_F25D88(var_1F0, CVar(var_210))
  loc_18A71ED:             var_1A0 = 0
  loc_18A720A:             var_208 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_204
  loc_18A7225:             unk_4C1968.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A722D:             var_238 = var_238.Fields
  loc_18A7235:             var_1A0 = var_23C.Item(var_23C)
  loc_18A723D:             var_240 = var_240.Value
  loc_18A725E:             var_25C = Me.Bal.Caption
  loc_18A726C:             var_FC = 0
  loc_18A7299:             unk_4C1968.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A72A1:             var_DC = var_DC.Fields
  loc_18A72A9:             var_FC = var_E0.Item(var_E0)
  loc_18A72B1:             var_120 = var_120.Value
  loc_18A72CC:             var_260 = CStr(((Val(CStr(var_C8)) + var_270) - Val(CStr(var_130.Tag))))
  loc_18A72DD:             Me.Bal.Caption = var_C8 & var_260
  loc_18A734B:           End If
  loc_18A734B:         End If
  loc_18A734E:       Else
  loc_18A735C:         Set var_94 = Me.Txt
  loc_18A7362:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4, var_25C)
  loc_18A736A:         var_278 = var_98.Text
  loc_18A7381:         If (var_E4 = "Advance Return") Then
  loc_18A739F:           If (Me.Bal.Visible = 0) Then
  loc_18A73AE:             Me.Bal.Visible = True
  loc_18A73B6:           End If
  loc_18A73BE:           If (MemVar_1F923AC = "A") Then
  loc_18A73CF:             Set var_94 = Me.Txt
  loc_18A73D5:             Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A73F0:             Set var_12C = Me.Txt
  loc_18A73F6:             Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_140)
  loc_18A73FE:             var_1D0 = var_130.Tag
  loc_18A740E:             Set var_138 = Me.Txt
  loc_18A7414:             Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A7423:             Proc_6_7_F25D88(var_11C, CVar(var_13C))
  loc_18A742E:             var_158 = 0
  loc_18A7452:             var_190 = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_140 & "' and v_date<= ") 'String
  loc_18A7466:             unk_4C1968.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A746E:             var_15C = var_15C.Fields
  loc_18A7476:             var_158 = var_160.Item(var_160)
  loc_18A747E:             var_174 = var_174.Value
  loc_18A748F:             var_270 = Val(CStr(var_1D0))
  loc_18A74A0:             Set var_178 = Me.Txt
  loc_18A74A6:             Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204)
  loc_18A74BE:             Set var_20C = Me.Txt
  loc_18A74C4:             Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A74D3:             Proc_6_7_F25D88(var_1F0, CVar(var_210))
  loc_18A74DE:             var_1A0 = 0
  loc_18A74FB:             var_208 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_204
  loc_18A7516:             unk_4C1968.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A751E:             var_238 = var_238.Fields
  loc_18A7526:             var_1A0 = var_23C.Item(var_23C)
  loc_18A752E:             var_240 = var_240.Value
  loc_18A754F:             var_25C = Me.Bal.Caption
  loc_18A755D:             var_FC = 0
  loc_18A758A:             unk_4C1968.Execute "SELECT IIF(ISNULL(OP_ADVANCE),0,OP_aDVANCE) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A7592:             var_DC = var_DC.Fields
  loc_18A759A:             var_FC = var_E0.Item(var_E0)
  loc_18A75A2:             var_120 = var_120.Value
  loc_18A75BD:             var_260 = CStr(((Val(CStr(var_C8)) + var_17C.Tag) - Val(CStr(var_98.Tag))))
  loc_18A75CE:             Me.Bal.Caption = var_C8 & var_260
  loc_18A763F:           Else
  loc_18A7647:             If (MemVar_1F923AC = "S") Then
  loc_18A7658:               Set var_94 = Me.Txt
  loc_18A765E:               Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4, var_25C)
  loc_18A7666:               var_278 = var_98.Tag
  loc_18A7679:               Set var_12C = Me.Txt
  loc_18A767F:               Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_140)
  loc_18A7687:               var_250 = var_130.Tag
  loc_18A7697:               Set var_138 = Me.Txt
  loc_18A769D:               Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A76AC:               Proc_6_7_F25D88(var_11C, CVar(var_13C))
  loc_18A76B7:               var_158 = 0
  loc_18A76D4:               var_144 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_140
  loc_18A76EF:               unk_4C1968.Execute CStr(CVar(var_144 & "' and v_date<= ") & var_11C), var_1C0, -1
  loc_18A76F7:               var_15C = var_15C.Fields
  loc_18A76FF:               var_158 = var_160.Item(var_160)
  loc_18A7707:               var_174 = var_174.Value
  loc_18A7718:               var_270 = Val(CStr(var_1D0))
  loc_18A7729:               Set var_178 = Me.Txt
  loc_18A772F:               Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204, var_270)
  loc_18A7737:               var_1D0 = var_17C.Tag
  loc_18A7747:               Set var_20C = Me.Txt
  loc_18A774D:               Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A775C:               Proc_6_7_F25D88(var_1F0, CVar(var_210))
  loc_18A7767:               var_1A0 = 0
  loc_18A7784:               var_208 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_204
  loc_18A779F:               unk_4C1968.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A77A7:               var_238 = var_238.Fields
  loc_18A77AF:               var_1A0 = var_23C.Item(var_23C)
  loc_18A77B7:               var_240 = var_240.Value
  loc_18A77D2:               Set var_258 = Me.Bal
  loc_18A77D8:               var_25C = var_258.Caption
  loc_18A77E6:               var_FC = 0
  loc_18A7813:               unk_4C1968.Execute "SELECT ISNULL(OP_ADVANCE,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A781B:               var_DC = var_DC.Fields
  loc_18A7823:               var_FC = var_E0.Item(var_E0)
  loc_18A782B:               var_120 = var_120.Value
  loc_18A7846:               var_260 = CStr(((Val(CStr(var_C8)) + var_270) - Val(CStr(var_250))))
  loc_18A7857:               Me.Bal.Caption = var_C8 & var_260
  loc_18A78C5:             End If
  loc_18A78C5:           End If
  loc_18A78C5:         End If
  loc_18A78C5:       End If
  loc_18A78C8:     Else
  loc_18A78D0:       If (var_8E = CInt(2)) Then
  loc_18A78E0:         Set var_94 = Me.Txt
  loc_18A78E6:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_E4, var_25C)
  loc_18A78EE:         var_278 = var_98.Text
  loc_18A7905:         If (var_E4 <> vbNullString) Then
  loc_18A7920:           Set var_98 = Me.ListView.SelectedItem
  loc_18A7926:           var_E4 = var_98.Text
  loc_18A7938:           Set var_DC = Me.Txt
  loc_18A793E:           Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4)
  loc_18A7946:           var_E0.Text = var_250
  loc_18A795C:         End If
  loc_18A7966:         Set var_94 = Me.Txt
  loc_18A796C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A7997:         Set var_DC = Me.Txt
  loc_18A799D:         Call 0.Method_Txt_Validate0 (Cancel, var_E0, (Trim(CVar(var_98)) = "Advance"))
  loc_18A79A5:         var_11C = CVar(var_E0) 'Address
  loc_18A79BE:         var_1C0 = var_1D0 Or (Trim(var_11C) = "Advance Return")
  loc_18A79CD:         Set var_120 = Me.Txt
  loc_18A79D3:         Call 0.Method_Txt_Validate0 (CInt(2), var_12C)
  loc_18A79DB:         var_1D0 = CVar(var_12C) 'Address
  loc_18A7A12:         If CBool(var_1C0 Or (Trim(var_1D0) = "Loan Return")) Then
  loc_18A7A23:           Set var_94 = Me.Txt
  loc_18A7A29:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A7A4A:           Set var_DC = Me.Txt
  loc_18A7A50:           Call 0.Method_Txt_Validate0 (CInt(5), var_E0, var_EC)
  loc_18A7A58:           (var_98.Visible = &HFF) = var_E0.Visible
  loc_18A7A72:           Set var_120 = Me.Txt
  loc_18A7A78:           Call 0.Method_Txt_Validate0 (CInt(6), var_12C)
  loc_18A7A9B:           If ((arg_10 Or (var_EC = &HFF)) Or (var_12C.Visible = &HFF)) Then
  loc_18A7AAB:             Set var_94 = Me.Txt
  loc_18A7AB1:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_18A7AB9:             var_98.Visible = False
  loc_18A7AD2:             Set var_94 = Me.Txt
  loc_18A7AD8:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A7AE0:             var_98.Visible = False
  loc_18A7AF9:             Set var_94 = Me.Txt
  loc_18A7AFF:             Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_18A7B07:             var_98.Visible = False
  loc_18A7B1E:             Set var_94 = Me.Label1
  loc_18A7B24:             Call 0.Method_Txt_Validate0 (3, var_98)
  loc_18A7B2C:             var_98.Visible = False
  loc_18A7B43:             Set var_94 = Me.Label1
  loc_18A7B49:             Call 0.Method_Txt_Validate0 (4, var_98)
  loc_18A7B51:             var_98.Visible = False
  loc_18A7B68:             Set var_94 = Me.Label1
  loc_18A7B6E:             Call 0.Method_Txt_Validate0 (6, var_98)
  loc_18A7B76:             var_98.Visible = False
  loc_18A7B82:           End If
  loc_18A7B85:         Else
  loc_18A7B8F:           Set var_94 = Me.Txt
  loc_18A7B95:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_18A7BBE:           If (Trim(CVar(var_98)) = "Loan") Then
  loc_18A7BCF:             Set var_94 = Me.Txt
  loc_18A7BD5:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A7BEF:             If (var_98.Visible = 0) Then
  loc_18A7BFF:               Set var_94 = Me.Txt
  loc_18A7C05:               Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_18A7C0D:               var_98.Visible = True
  loc_18A7C26:               Set var_94 = Me.Txt
  loc_18A7C2C:               Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A7C34:               var_98.Visible = True
  loc_18A7C4D:               Set var_94 = Me.Txt
  loc_18A7C53:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_18A7C5B:               var_98.Visible = True
  loc_18A7C72:               Set var_94 = Me.Label1
  loc_18A7C78:               Call 0.Method_Txt_Validate0 (3, var_98)
  loc_18A7C80:               var_98.Visible = True
  loc_18A7C97:               Set var_94 = Me.Label1
  loc_18A7C9D:               Call 0.Method_Txt_Validate0 (4, var_98)
  loc_18A7CA5:               var_98.Visible = True
  loc_18A7CBC:               Set var_94 = Me.Label1
  loc_18A7CC2:               Call 0.Method_Txt_Validate0 (6, var_98)
  loc_18A7CCA:               var_98.Visible = True
  loc_18A7CD6:             End If
  loc_18A7CD9:           Else
  loc_18A7CDB:             arg_10 = &HFF
  loc_18A7CDE:           End If
  loc_18A7CDE:         End If
  loc_18A7CE4:         Call Proc_308_40_11AED20(MemVar_1F92044, var_E4)
  loc_18A7CEF:       Else
  loc_18A7CF7:         If (var_8E = CInt(1)) Then
  loc_18A7D07:           Set var_94 = Me.Txt
  loc_18A7D0D:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_E4)
  loc_18A7D15:           arg_10 = var_98.Text
  loc_18A7D2C:           If (var_E4 = vbNullString) Then
  loc_18A7D41:             Set var_94 = Me.Txt
  loc_18A7D47:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A7D4F:             var_98.Text = CStr(MemVar_1F920EC)
  loc_18A7D61:           Else
  loc_18A7D6C:             Set var_94 = Me.Txt
  loc_18A7D72:             Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_18A7D93:             Set var_E0 = Me.Txt
  loc_18A7D99:             Call 0.Method_Txt_Validate0 (CInt(1), var_120)
  loc_18A7DA1:             var_120.Text = Proc_6_33_1512840(var_98)
  loc_18A7DB4:           End If
  loc_18A7DC2:           Set var_94 = Me.Txt
  loc_18A7DC8:           Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_18A7DD0:           var_E4 = var_98.Text
  loc_18A7DFD:           If (Proc_6_95_EF4E30(CDate(var_E4), "Date") = 0) Then
  loc_18A7E02:             arg_10 = &HFF
  loc_18A7E05:           End If
  loc_18A7E0B:           Call Proc_308_40_11AED20(MemVar_1F92044, var_E4)
  loc_18A7E16:         Else
  loc_18A7E1E:           If (var_8E = CInt(4)) Then
  loc_18A7E2B:             Set var_94 = Me.Txt
  loc_18A7E31:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A7E45:             var_C8 = "0.00"
  loc_18A7E4E:             var_A8 = CVar(var_98) 'Address
  loc_18A7E5D:             var_E4 = CStr(Format(var_A8, var_C8))
  loc_18A7E6B:             Set var_DC = Me.Txt
  loc_18A7E71:             Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4, 1)
  loc_18A7E79:             var_E0.Text = 1
  loc_18A7EA1:             Set var_94 = Me.Txt
  loc_18A7EA7:             Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4)
  loc_18A7EAF:             arg_10 = var_98.Text
  loc_18A7EC6:             If (var_E4 = "Loan Return") Then
  loc_18A7ED1:               If (MemVar_1F923AC = "A") Then
  loc_18A7EE2:                 Set var_DC = Me.Txt
  loc_18A7EE8:                 Call 0.Method_Txt_Validate0 (CInt(7), var_E0)
  loc_18A7EF0:                 var_124 = var_E0.Tag
  loc_18A7EFB:                 var_FC = 0
  loc_18A7F28:                 unk_4C1968.Execute "SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A7F30:                 var_120 = var_120.Fields
  loc_18A7F38:                 var_FC = var_12C.Item(var_12C)
  loc_18A7F40:                 var_130 = var_130.Value
  loc_18A7F51:                 var_270 = Val(CStr(var_C8))
  loc_18A7F62:                 Set var_138 = Me.Txt
  loc_18A7F68:                 Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144)
  loc_18A7F80:                 Set var_15C = Me.Txt
  loc_18A7F86:                 Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A7F8E:                 var_D8 = CVar(var_160) 'Address
  loc_18A7F95:                 Proc_6_7_F25D88(var_11C, var_D8)
  loc_18A7FA0:                 var_158 = 0
  loc_18A7FC4:                 var_190 = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_144 & "' and v_date<= ") 'String
  loc_18A7FD8:                 unk_4C1968.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A7FE0:                 var_174 = var_174.Fields
  loc_18A7FE8:                 var_158 = var_178.Item(var_178)
  loc_18A7FF0:                 var_17C = var_17C.Value
  loc_18A8001:                 var_278 = Val(CStr(var_1D0))
  loc_18A8012:                 Set var_20C = Me.Txt
  loc_18A8018:                 Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A8020:                 var_1D0 = var_210.Tag
  loc_18A8030:                 Set var_238 = Me.Txt
  loc_18A8036:                 Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A8045:                 Proc_6_7_F25D88(var_1F0, CVar(var_23C))
  loc_18A8050:                 var_1A0 = 0
  loc_18A806D:                 var_224 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_208
  loc_18A8088:                 unk_4C1968.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A8090:                 var_240 = var_240.Fields
  loc_18A8098:                 var_1A0 = var_258.Item(var_258)
  loc_18A80A0:                 var_268 = var_268.Value
  loc_18A80B1:                 var_284 = Val(CStr(var_250))
  loc_18A80C2:                 Set var_94 = Me.Txt
  loc_18A80C8:                 Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A80D0:                 var_250 = var_98.Text
  loc_18A8150:                 If (CDbl(Val(var_E4)) > CDbl(((var_13C.Tag + var_278) - var_284))) Then
  loc_18A8166:                   var_A8 = "Loan Return Amount is Greater than Actual Return Amount "
  loc_18A816C:                   MsgBox(var_A8, &H40, var_C8, var_D8, var_11C)
  loc_18A817E:                   arg_10 = &HFF
  loc_18A8181:                 End If
  loc_18A8184:               Else
  loc_18A818C:                 If (MemVar_1F923AC = "S") Then
  loc_18A819D:                   Set var_DC = Me.Txt
  loc_18A81A3:                   Call 0.Method_Txt_Validate0 (CInt(7), var_E0, var_124)
  loc_18A81AB:                   arg_10 = var_E0.Tag
  loc_18A81B6:                   var_FC = 0
  loc_18A81E3:                   unk_4C1968.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A81EB:                   var_120 = var_120.Fields
  loc_18A81F3:                   var_FC = var_12C.Item(var_12C)
  loc_18A81FB:                   var_130 = var_130.Value
  loc_18A820C:                   var_270 = Val(CStr(var_C8))
  loc_18A821D:                   Set var_138 = Me.Txt
  loc_18A8223:                   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144, var_270)
  loc_18A822B:                   var_C8 = var_13C.Tag
  loc_18A823B:                   Set var_15C = Me.Txt
  loc_18A8241:                   Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A8249:                   var_D8 = CVar(var_160) 'Address
  loc_18A8250:                   Proc_6_7_F25D88(var_11C, var_D8)
  loc_18A825B:                   var_158 = 0
  loc_18A827F:                   var_190 = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_144 & "' and v_date<= ") 'String
  loc_18A8293:                   unk_4C1968.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A829B:                   var_174 = var_174.Fields
  loc_18A82A3:                   var_158 = var_178.Item(var_178)
  loc_18A82AB:                   var_17C = var_17C.Value
  loc_18A82BC:                   var_278 = Val(CStr(var_1D0))
  loc_18A82CD:                   Set var_20C = Me.Txt
  loc_18A82D3:                   Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A82DB:                   var_1D0 = var_210.Tag
  loc_18A82EB:                   Set var_238 = Me.Txt
  loc_18A82F1:                   Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A8300:                   Proc_6_7_F25D88(var_1F0, CVar(var_23C))
  loc_18A830B:                   var_1A0 = 0
  loc_18A8328:                   var_224 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_208
  loc_18A8343:                   unk_4C1968.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A834B:                   var_240 = var_240.Fields
  loc_18A8353:                   var_1A0 = var_258.Item(var_258)
  loc_18A835B:                   var_268 = var_268.Value
  loc_18A836C:                   var_284 = Val(CStr(var_250))
  loc_18A837D:                   Set var_94 = Me.Txt
  loc_18A8383:                   Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A838B:                   var_250 = var_98.Text
  loc_18A840B:                   If (CDbl(Val(var_E4)) > CDbl(((var_270 + var_278) - var_284))) Then
  loc_18A8426:                     var_A8 = "Loan Return Amount is Greater than Actual Return Amount "
  loc_18A842C:                     MsgBox(var_A8, &H40, &H40, var_D8, var_11C)
  loc_18A843E:                     arg_10 = &HFF
  loc_18A8441:                   End If
  loc_18A8441:                 End If
  loc_18A8441:               End If
  loc_18A8444:             Else
  loc_18A8452:               Set var_94 = Me.Txt
  loc_18A8458:               Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4)
  loc_18A8460:               arg_10 = var_98.Text
  loc_18A8477:               If (var_E4 = "Advance Return") Then
  loc_18A8482:                 If (MemVar_1F923AC = "A") Then
  loc_18A8493:                   Set var_DC = Me.Txt
  loc_18A8499:                   Call 0.Method_Txt_Validate0 (CInt(7), var_E0, var_124)
  loc_18A84A1:                   var_C8 = var_E0.Tag
  loc_18A84AC:                   var_FC = 0
  loc_18A84D9:                   unk_4C1968.Execute "SELECT IIF(ISNULL(OP_ADVANCE),0,OP_aDVANCE) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A84E1:                   var_120 = var_120.Fields
  loc_18A84E9:                   var_FC = var_12C.Item(var_12C)
  loc_18A84F1:                   var_130 = var_130.Value
  loc_18A8502:                   var_270 = Val(CStr(var_C8))
  loc_18A8513:                   Set var_138 = Me.Txt
  loc_18A8519:                   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144)
  loc_18A8531:                   Set var_15C = Me.Txt
  loc_18A8537:                   Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A853F:                   var_D8 = CVar(var_160) 'Address
  loc_18A8546:                   Proc_6_7_F25D88(var_11C, var_D8)
  loc_18A8551:                   var_158 = 0
  loc_18A856E:                   var_148 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_144
  loc_18A8589:                   unk_4C1968.Execute CStr(CVar(var_148 & "' and v_date<= ") & var_11C), var_1C0, -1
  loc_18A8591:                   var_174 = var_174.Fields
  loc_18A8599:                   var_158 = var_178.Item(var_178)
  loc_18A85A1:                   var_17C = var_17C.Value
  loc_18A85B2:                   var_278 = Val(CStr(var_1D0))
  loc_18A85C3:                   Set var_20C = Me.Txt
  loc_18A85C9:                   Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A85D1:                   var_1D0 = var_210.Tag
  loc_18A85E1:                   Set var_238 = Me.Txt
  loc_18A85E7:                   Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A85F6:                   Proc_6_7_F25D88(var_1F0, CVar(var_23C))
  loc_18A8601:                   var_1A0 = 0
  loc_18A861E:                   var_224 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_208
  loc_18A8639:                   unk_4C1968.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A8641:                   var_240 = var_240.Fields
  loc_18A8649:                   var_1A0 = var_258.Item(var_258)
  loc_18A8651:                   var_268 = var_268.Value
  loc_18A8662:                   var_284 = Val(CStr(var_250))
  loc_18A8673:                   Set var_94 = Me.Txt
  loc_18A8679:                   Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A8681:                   var_250 = var_98.Text
  loc_18A8701:                   If (CDbl(Val(var_E4)) > CDbl(((var_13C.Tag + var_278) - var_284))) Then
  loc_18A8717:                     var_A8 = "Advance Return Amount is Greater than Actual Return Amount"
  loc_18A871D:                     MsgBox(var_A8, &H40, var_C8, var_D8, var_11C)
  loc_18A872F:                     arg_10 = &HFF
  loc_18A8732:                   End If
  loc_18A8735:                 Else
  loc_18A873D:                   If (MemVar_1F923AC = "S") Then
  loc_18A874E:                     Set var_DC = Me.Txt
  loc_18A8754:                     Call 0.Method_Txt_Validate0 (CInt(7), var_E0, var_124)
  loc_18A875C:                     arg_10 = var_E0.Tag
  loc_18A8767:                     var_FC = 0
  loc_18A8794:                     unk_4C1968.Execute "SELECT ISNULL(OP_ADVANCE,0) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A879C:                     var_120 = var_120.Fields
  loc_18A87A4:                     var_FC = var_12C.Item(var_12C)
  loc_18A87AC:                     var_130 = var_130.Value
  loc_18A87BD:                     var_270 = Val(CStr(var_C8))
  loc_18A87CE:                     Set var_138 = Me.Txt
  loc_18A87D4:                     Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144, var_270)
  loc_18A87EC:                     Set var_15C = Me.Txt
  loc_18A87F2:                     Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A87FA:                     var_D8 = CVar(var_160) 'Address
  loc_18A8801:                     Proc_6_7_F25D88(var_11C, var_D8)
  loc_18A880C:                     var_158 = 0
  loc_18A8830:                     var_190 = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_144 & "' and v_date<= ") 'String
  loc_18A8844:                     unk_4C1968.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A884C:                     var_174 = var_174.Fields
  loc_18A8854:                     var_158 = var_178.Item(var_178)
  loc_18A885C:                     var_17C = var_17C.Value
  loc_18A886D:                     var_278 = Val(CStr(var_1D0))
  loc_18A887E:                     Set var_20C = Me.Txt
  loc_18A8884:                     Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A888C:                     var_1D0 = var_210.Tag
  loc_18A889C:                     Set var_238 = Me.Txt
  loc_18A88A2:                     Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A88B1:                     Proc_6_7_F25D88(var_1F0, CVar(var_23C))
  loc_18A88BC:                     var_1A0 = 0
  loc_18A88D9:                     var_224 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_208
  loc_18A88F4:                     unk_4C1968.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A88FC:                     var_240 = var_240.Fields
  loc_18A8904:                     var_1A0 = var_258.Item(var_258)
  loc_18A890C:                     var_268 = var_268.Value
  loc_18A891D:                     var_284 = Val(CStr(var_250))
  loc_18A892E:                     Set var_94 = Me.Txt
  loc_18A8934:                     Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A893C:                     var_250 = var_98.Text
  loc_18A89BC:                     If (CDbl(Val(var_E4)) > CDbl(((var_270 + var_278) - var_284))) Then
  loc_18A89D8:                       MsgBox("Advance Return Amount is Greater than Actual Return Amount", &H40, var_13C.Tag, var_D8, var_11C)
  loc_18A89EA:                       arg_10 = &HFF
  loc_18A89ED:                     End If
  loc_18A89ED:                   End If
  loc_18A89ED:                 End If
  loc_18A89ED:               End If
  loc_18A89ED:             End If
  loc_18A89F0:           Else
  loc_18A89F8:             If (var_8E = CInt(6)) Then
  loc_18A8A05:               Set var_94 = Me.Txt
  loc_18A8A0B:               Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_18A8A1F:               var_C8 = "0.00"
  loc_18A8A2F:               var_D8 = Format(CVar(var_98), var_C8)
  loc_18A8A37:               var_E4 = CStr(var_D8)
  loc_18A8A45:               Set var_DC = Me.Txt
  loc_18A8A4B:               Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4, 1)
  loc_18A8A53:               var_E0.Text = 1
  loc_18A8A6D:             End If
  loc_18A8A6D:           End If
  loc_18A8A6D:         End If
  loc_18A8A6D:       End If
  loc_18A8A6D:     End If
  loc_18A8A6D:   End If
  loc_18A8A6D: End If
  loc_18A8A6D: Exit Sub
  loc_18A8A6E: ' Referenced from: 18A6328
  loc_18A8A76: Set var_94 = Err()
  loc_18A8A7C: Call 0.Method_arg_2C (var_E4, var_C8)
  loc_18A8A9D: MsgBox(CVar(var_E4), &H10, "Information", var_D8, var_11C)
  loc_18A8AB0: Exit Sub
  loc_18A8AB1: Exit Sub
End Sub

Private Sub Form_Load() '104882C
  'Data Table: 4C1960
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim unk_4C1968 As Connection15
  Dim var_AC As Label
  loc_10485C8: On Error Goto loc_1048825
  loc_10485D5: Set var_AC = Me.TopCtrl1
  loc_10485DB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10485E9: Call 0.Method_arg_50 (var_B0)
  loc_10485F9: Set var_AC = Me.TopCtrl1
  loc_10485FF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_1048614: Set global_56 = New 
  loc_1048629: Me.TopCtrl1.CursorLocation = 3
  loc_104864C: var_B0 = "SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.*,Employee.Name as EmpName,SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM ((LOAN Left join Employee on Employee.Code=Loan.Emp_Code) Left Join SubGroup SG on SG.SubCode=Loan.AC_Code) Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation WHERE Loan.site_code='" & MemVar_1F92070
  loc_1048653: var_C0 = CVar(var_B0 & "' and MTH_YEAR IS NULL OR MTH_YEAR=' ' ORDER BY SR_NO") 'String
  loc_1048660: Me.Recordset15.Open var_C0, CVar(MemVar_1F92044), 2
  loc_1048677: CVarUnk
  loc_104867C: VerifyVarObj
  loc_1048688: LateIdStAd
  loc_10486AC: unk_4C1968.Execute "SELECT SUBCODE as Code, NAME FROM SUBGROUP WHERE NATURE IN ('Cash','Bank') ORDER BY NAME", var_C0, -1
  loc_10486D4: CVarUnk
  loc_10486D9: VerifyVarObj
  loc_10486E5: LateIdStAd
  loc_1048707: var_B0 = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where Employee.Site_Code='" & MemVar_1F92078
  loc_1048717: unk_4C1968.Execute var_B0 & "' Order by Employee.Name", var_C0, -1
  loc_1048746: CVarUnk
  loc_104874B: VerifyVarObj
  loc_1048751: Set var_AC = Me.DGEmployee
  loc_1048757: LateIdStAd
  loc_104878C: Call Proc_308_36_EC7904(Proc_5_1_100CB50("INI", Me, global_56, Me, Me.DGAcName, Me, Me), Me.DBGrid1, Me, Me)
  loc_1048797: Call Proc_308_38_F8C054(global_56, 3)
  loc_104879C: Call Proc_308_35_15DDA40(-1)
  loc_10487B0: Me.LblUser.Left = CDbl(13500)
  loc_10487C7: Me.LblUser.Top = CDbl(7800)
  loc_10487DE: Me.LblLDt.Top = CDbl(8160)
  loc_10487F5: Me.LblLDt.Left = CDbl(13500)
  loc_1048804: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_104880D: var_98 = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_1048816: Set var_AC = Me.DBGrid1
  loc_1048824: Exit Sub
  loc_1048825: ' Referenced from: 10485C8
  loc_1048825: Proc_6_60_E62BC4(DBGrid1.DispID_FFFFFE0B)
  loc_104882A: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2B78
  'Data Table: 4C1960
  Dim var_8C As Label
  loc_ED2AD6: Call 0.Method_arg_50 (var_88)
  loc_ED2AE8: Me.LblFormCaption.Caption = var_88
  loc_ED2B01: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2B0D: Set var_A0 = Me.TopCtrl1
  loc_ED2B13: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2B20: Set var_8C = Me.TopCtrl1
  loc_ED2B26: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2B40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED2B5B: Call 0.Method_arg_100 (var_B8)
  loc_ED2B6D: Me.LblFormCaption.Width = var_B8
  loc_ED2B75: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52F64
  'Data Table: 4C1960
  loc_E52F37: Set global_56 = Nothing
  loc_E52F49: Set global_60 = Nothing
  loc_E52F5B: Set global_64 = Nothing
  loc_E52F62: Exit Sub
End Sub

Private Sub Form_Activate() 'E0F290
  'Data Table: 4C1960
  loc_E0F281: If (global_54 = &HFF) Then
  loc_E0F289:   global_54 = 0
  loc_E0F28C: End If
  loc_E0F28C: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E006E0
  'Data Table: 4C1960
  loc_E006D9: global_54 = &HFF
  loc_E006DC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29104
  'Data Table: 4C1960
  loc_E290DC: On Error Goto loc_E290FC
  loc_E290F3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E290FB: Exit Sub
  loc_E290FC: ' Referenced from: E290DC
  loc_E290FC: Proc_6_60_E62BC4(Shift)
  loc_E29101: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F890DC
  'Data Table: 4C1960
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F88F98: On Error Goto loc_F89076
  loc_F88F9F: Set var_A4 = Me.ListView
  loc_F88FE9: Set var_BC = Me.Txt
  loc_F88FEF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F88FF7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F89023: Me.FrmList.Visible = False
  loc_F8903D: var_A0 = CStr(Me.ListView.Tag)
  loc_F89045: var_C8 = Val(var_A0)
  loc_F89053: Set var_9C = Me.Txt
  loc_F89059: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F89061: var_A4.SetFocus
  loc_F89075: Exit Sub
  loc_F89076: ' Referenced from: F88F98
  loc_F8907E: Set var_88 = Err()
  loc_F89084: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89095: If (var_CC <> 0) Then
  loc_F890A0:   Set var_88 = Err()
  loc_F890A6:   Call 0.Method_arg_2C (var_A0)
  loc_F890C7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F890DA: End If
  loc_F890DA: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F44624
  'Data Table: 4C1960
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4451B: Me.DGEmployee.Visible = False
  loc_F4453A: If (Me.RecordCount > 0) Then
  loc_F44579:   Set var_B4 = Me.Txt
  loc_F4457F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(7), var_B8)
  loc_F44587:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F445BA:   var_B0 = Me.Fields.Item("Name")
  loc_F445D9:   Set var_B4 = Me.Txt
  loc_F445DF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(7), var_B8)
  loc_F445E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F445FD: End If
  loc_F44608: Set var_A8 = Me.Txt
  loc_F4460E: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(7))
  loc_F44616: var_B0.SetFocus
  loc_F44622: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E735A4
  'Data Table: 4C1960
  loc_E73562: Proc_6_153_E91194(Me.DGEmployee, arg_14)
  loc_E73579: Set var_8C = Me.FGPoint
  loc_E73595: Proc_6_138_106D6F8(Me.DGEmployee, global_64, CInt(7))
  loc_E735A3: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1A 'F67A2C
  'Data Table: 4C1960
  Dim var_8C As String
  Dim unk_4C1968 As Connection15
  loc_F67918: On Error Goto loc_F679E5
  loc_F67935: If (Me.Recordset15.RecordCount > 0) Then
  loc_F6794C:   var_8C = "SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.*,Employee.Name as EmpName,SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM ((LOAN Left join Employee on Employee.Code=Loan.Emp_Code) Left Join SubGroup SG on SG.SubCode=Loan.AC_Code) Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation WHERE Loan.site_code='" & MemVar_1F92070
  loc_F67967:   Set var_90 = Me.DBGrid1
  loc_F67998:   unk_4C1968.Execute var_8C & "' and MTH_YEAR IS NULL OR MTH_YEAR=' ' ORDER BY " & DBGrid1.DispID_69.Item(CVar(KeyCode)).DataField, var_E4, -1
  loc_F679A9:   Set global_56 = var_E8
  loc_F679DA:   Me.Recordset15.Requery -1
  loc_F679DF:   Call Proc_308_35_15DDA40(var_E8)
  loc_F679E4: End If
  loc_F679E4: Exit Sub
  loc_F679E5: ' Referenced from: F67918
  loc_F679ED: Set var_90 = Err()
  loc_F679F3: Call 0.Method_arg_2C (var_8C)
  loc_F67A14: MsgBox(CVar(var_8C), &H10, "Information", var_FC, var_11C)
  loc_F67A27: Exit Sub
  loc_F67A28: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1D 'E0CC50
  'Data Table: 4C1960
  loc_E0CC45: If ((KeyCode = &H26) Or (KeyCode = &H28)) Then
  loc_E0CC48:   Call Proc_308_35_15DDA40()
  loc_E0CC4D: End If
  loc_E0CC4D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EE24CC
  'Data Table: 4C1960
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EE240C: On Error Goto loc_EE24C6
  loc_EE2436: Call Proc_308_36_EC7904(Proc_5_1_100CB50("ADD", Me))
  loc_EE244E: Me.LblUser.Caption = vbNullString
  loc_EE2463: Me.LblLDt.Caption = vbNullString
  loc_EE246B: Call Proc_308_34_ECFEC0(global_56)
  loc_EE2483: Set var_8C = Me.Txt
  loc_EE2489: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_EE2491: var_94.Text = CStr(MemVar_1F920EC)
  loc_EE24AB: Set var_8C = Me.Txt
  loc_EE24B1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EE24B9: var_94.SetFocus
  loc_EE24C5: Exit Sub
  loc_EE24C6: ' Referenced from: EE240C
  loc_EE24C6: Proc_6_60_E62BC4(var_94)
  loc_EE24CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAA5D0
  'Data Table: 4C1960
  loc_EAA550: On Error Goto loc_EAA5CA
  loc_EAA58A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EAA58D:   Call Proc_308_39_EF38F8()
  loc_EAA5B9:   Call Proc_308_36_EC7904(Proc_5_1_100CB50("INI", Me))
  loc_EAA5C4:   Call Proc_308_35_15DDA40(global_56)
  loc_EAA5C9: End If
  loc_EAA5C9: Exit Sub
  loc_EAA5CA: ' Referenced from: EAA550
  loc_EAA5CA: Proc_6_60_E62BC4()
  loc_EAA5CF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '108A4BC
  'Data Table: 4C1960
  Dim unk_4C1968 As Connection15
  Dim var_12C As TextBox
  Dim var_134 As String
  Dim var_130 As String
  Dim var_140 As String
  Dim var_13C As Fields15
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_C0 As Variant
  loc_108A240: On Error Goto loc_108A46C
  loc_108A27A: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_108A286:   unk_4C1968.BeginTrans var_124
  loc_108A29F:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_108A2C1:   Set var_128 = Me.Txt
  loc_108A2C7:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_12C, var_130, "DELETE FROM LEDGER WHERE DOCID='")
  loc_108A2CF:   var_C0 = var_12C.Text
  loc_108A2D8:   var_134 = -1 & var_130
  loc_108A2E8:   unk_4C1968.Execute var_134 & "'", var_13C, 
  loc_108A316:   var_130 = "DELETE FROM LOAN WHERE site_code='" & MemVar_1F92070
  loc_108A32E:   Set var_128 = Me.Txt
  loc_108A334:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_12C, var_134, var_130 & "' and Sr_No=")
  loc_108A33C:   var_158 = var_12C.Text
  loc_108A345:   var_140 = -1 & var_134
  loc_108A37F:   var_100 = CVar(var_140 & " AND V_Type='") & Me.Recordset15.Fields.Item("V_Type").Value 
  loc_108A388:   var_120 = var_100 & "'" 
  loc_108A396:   unk_4C1968.Execute CStr(var_120), var_15C, 
  loc_108A3C8:   unk_4C1968.CommitTrans
  loc_108A3DB:   Me.Recordset15.Requery -1
  loc_108A3FE:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_108A40E:     Me.Recordset15.Bookmark = var_94
  loc_108A416:   Else
  loc_108A42D:     If (global_56.EOF = 0) Then
  loc_108A439:       Me.Recordset15.MoveLast
  loc_108A43E:     End If
  loc_108A43E:   End If
  loc_108A43E:   Call Proc_308_35_15DDA40()
  loc_108A463:   Proc_5_0_110649C(&HFF, Me)
  loc_108A46B: End If
  loc_108A46B: Exit Sub
  loc_108A46C: ' Referenced from: 108A240
  loc_108A472: unk_4C1968.RollbackTrans
  loc_108A47F: Set var_128 = Err()
  loc_108A485: Call 0.Method_arg_2C (var_130, global_56)
  loc_108A4A6: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_108A4B9: Exit Sub
  loc_108A4BA: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2E870
  'Data Table: 4C1960
  Dim var_8C As Variant
  Dim var_B4 As TextBox
  loc_F2E758: On Error Goto loc_F2E869
  loc_F2E782: Call Proc_308_36_EC7904(Proc_5_1_100CB50("EDIT", Me))
  loc_F2E79C: Me.DBGrid1.Enabled = False
  loc_F2E7B1: Set var_8C = Me.Txt
  loc_F2E7B7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B4)
  loc_F2E7BF: var_B4.Enabled = False
  loc_F2E7D8: Set var_8C = Me.Txt
  loc_F2E7DE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B4)
  loc_F2E7E6: var_B4.Enabled = False
  loc_F2E7FF: Set var_8C = Me.Txt
  loc_F2E805: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B4)
  loc_F2E80D: var_B4.Enabled = False
  loc_F2E824: Set var_8C = Me.Txt
  loc_F2E82A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_B4)
  loc_F2E832: var_B4.SetFocus
  loc_F2E84B: Me.LblUser.Caption = vbNullString
  loc_F2E860: Me.LblLDt.Caption = vbNullString
  loc_F2E868: Exit Sub
  loc_F2E869: ' Referenced from: F2E758
  loc_F2E869: Proc_6_60_E62BC4(global_56)
  loc_F2E86E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BD38
  'Data Table: 4C1960
  loc_E1BD2D: Me.Global.Unload Me
  loc_E1BD35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F03A28
  'Data Table: 4C1960
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F03950: On Error Goto loc_F039EB
  loc_F0396D: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F03976:   var_B8 = "Information"
  loc_F0397B:   var_C8 = var_B8
  loc_F03991:   MsgBox("No Records To Search.", &H40, var_C8, var_E8, var_108)
  loc_F039A1:   Exit Sub
  loc_F039A2: End If
  loc_F039A9: var_10C = "SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.SR_NO AS SRNO,LOAN.V_TYPE AS VTYPE,cast(LOAN.V_DATE as VarChar(11)) as V_Date ,EMPLOYEE.NAME AS ENAME,cast(LOAN.AMOUNT as VarChar(11)) AS AMOUNT,cast(LOAN.INSTALLMENT as Varchar(11)) as Installment ,LOAN.REMARK FROM LOAN LEFT JOIN EMPLOYEE ON LOAN.EMP_CODE=EMPLOYEE.CODE WHERE Loan.site_code='" & MemVar_1F92070
  loc_F039B0: MemVar_1F920E4 = var_10C & "' and MTH_YEAR IS NULL OR MTH_YEAR=' '"
  loc_F039BD: MemVar_1F92120 = Me
  loc_F039C4: var_10C = "2000,2000,2000,2000"
  loc_F039CA: Proc_6_126_F1BCC0(var_10C)
  loc_F039E5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F039EA: Exit Sub
  loc_F039EB: ' Referenced from: F03950
  loc_F039F3: Set var_110 = Err()
  loc_F039F9: Call 0.Method_arg_2C (var_10C)
  loc_F03A12: MsgBox(CVar(var_10C), &H10, var_C8, var_E8, var_108)
  loc_F03A25: Exit Sub
  loc_F03A26: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E43BA8
  'Data Table: 4C1960
  loc_E43B98: Proc_5_0_110649C(&HFF, Me)
  loc_E43BA0: Call Proc_308_35_15DDA40(global_56)
  loc_E43BA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E43B44
  'Data Table: 4C1960
  loc_E43B34: Proc_5_0_110649C(&HFF, Me)
  loc_E43B3C: Call Proc_308_35_15DDA40(global_56)
  loc_E43B41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E43AE0
  'Data Table: 4C1960
  loc_E43AD0: Proc_5_0_110649C(&HFF, Me)
  loc_E43AD8: Call Proc_308_35_15DDA40(global_56)
  loc_E43ADD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E43A7C
  'Data Table: 4C1960
  loc_E43A6C: Proc_5_0_110649C(&HFF, Me)
  loc_E43A74: Call Proc_308_35_15DDA40(global_56)
  loc_E43A79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E727C4
  'Data Table: 4C1960
  loc_E72783: Call 0.Method_arg_1C (MemVar_1F923B0 & "\HRLoanRect.RPT", var_98)
  loc_E7279B: Set var_A0 = var_9C 
  loc_E727AC: Call Proc_308_33_1048AA4(Me, var_A0)
  loc_E727B7: MemVar_1F921E4 = var_A0
  loc_E727C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1998028
  'Data Table: 4C1960
  Dim var_B4 As Variant
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_8C As Integer
  Dim unk_4C1968 As Connection15
  Dim var_B8 As String
  Dim var_A8 As Fields15
  Dim var_C0 As String
  Dim var_158 As String
  Dim var_238 As Double
  Dim var_168 As TextBox
  Dim var_174 As Variant
  Dim var_15C As String
  Dim var_208 As Variant
  Dim var_164 As String
  Dim var_100 As Variant
  Dim var_E0 As Variant
  Dim var_140 As Variant
  Dim var_1D8 As Variant
  Dim var_BC As Label
  Dim var_258 As Variant
  Dim var_230 As TextBox
  Dim var_298 As Variant
  Dim var_2D0 As TextBox
  Dim var_314 As Variant
  Dim var_380 As TextBox
  Dim var_3A8 As String
  Dim var_438 As Variant
  Dim var_88 As Recordset15
  Dim var_47C As Fields15
  Dim var_490 As Field20
  Dim var_120 As Variant
  Dim var_198 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_22C As Variant
  Dim var_2F0 As Variant
  Dim var_3C8 As Variant
  Dim var_4B0 As Variant
  Dim var_528 As Variant
  Dim var_328 As TextBox
  Dim var_4D4 As TextBox
  Dim var_178 As String
  Dim var_570 As TextBox
  Dim var_56C As Variant
  Dim var_268 As Variant
  Dim var_2A8 As Variant
  Dim var_348 As Variant
  Dim var_5A8 As Variant
  Dim var_16C As String
  Dim var_B0 As Label
  Dim var_574 As String
  loc_199521C: On Error Goto loc_199800D
  loc_199522A: Set var_A8 = Me.Txt
  loc_1995230: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1995243: Set var_B0 = Me.Label1
  loc_1995249: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_199527C: If (Proc_6_27_EA565C(var_AC, var_B4.Caption) = 0) Then
  loc_199527F:   Exit Sub
  loc_1995280: End If
  loc_199528B: Set var_A8 = Me.Txt
  loc_1995291: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_19952A4: Set var_B0 = Me.Label1
  loc_19952AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_19952DD: If (Proc_6_27_EA565C(var_AC, var_B4.Caption) = 0) Then
  loc_19952E0:   Exit Sub
  loc_19952E1: End If
  loc_19952EC: Set var_A8 = Me.Txt
  loc_19952F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1995305: Set var_B0 = Me.Label1
  loc_199530B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_199533E: If (Proc_6_27_EA565C(var_AC, var_B4.Caption) = 0) Then
  loc_1995341:   Exit Sub
  loc_1995342: End If
  loc_199534D: Set var_A8 = Me.Txt
  loc_1995353: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_1995366: Set var_B0 = Me.Label1
  loc_199536C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_B4)
  loc_199539F: If (Proc_6_27_EA565C(var_AC, var_B4.Caption) = 0) Then
  loc_19953A2:   Exit Sub
  loc_19953A3: End If
  loc_19953AE: Set var_A8 = Me.Txt
  loc_19953B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_19953C7: Set var_B0 = Me.Label1
  loc_19953CD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B4)
  loc_1995400: If (Proc_6_27_EA565C(var_AC, var_B4.Caption) = 0) Then
  loc_1995403:   Exit Sub
  loc_1995404: End If
  loc_1995412: Set var_A8 = Me.Txt
  loc_1995418: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_199543C: If (CDbl(Val(var_AC.Text)) <= CDbl(0)) Then
  loc_1995458:   MsgBox("Nil Details Can't Be Saved", &H40, var_100, var_120, var_140)
  loc_1995468:   Exit Sub
  loc_1995469: End If
  loc_1995477: unk_4C1968.BeginTrans var_144
  loc_1995480: Set var_A8 = Me.TopCtrl1
  loc_1995486: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HFF)
  loc_199548E: var_B8 = CStr(var_AC)
  loc_199549F: If (var_B8 <> "Add") Then
  loc_19954C2:   var_AC = Me.TopCtrl1.Fields.Item("V_Type")
  loc_19954D2:   var_154 = var_AC.Value 'Variant
  loc_19954E8:   If (var_154 = "ADE") Then
  loc_19954EE:     var_98 = "ADE"
  loc_19954F4:   Else
  loc_19954FF:     If (var_154 = "LO") Then
  loc_1995505:       var_98 = "LO"
  loc_199550B:     Else
  loc_1995516:       If (var_154 = "AR1") Then
  loc_199551C:         var_98 = "AR1"
  loc_1995522:       Else
  loc_199552D:         If (var_154 = "LR") Then
  loc_1995533:           var_98 = "LR"
  loc_1995536:         End If
  loc_1995536:       End If
  loc_1995536:     End If
  loc_1995536:   End If
  loc_1995554:   Set var_A8 = Me.Txt
  loc_199555A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, "DELETE FROM LEDGER WHERE dOCID= '")
  loc_1995562:   var_E0 = var_AC.Text
  loc_199556B:   var_C0 = -1 & var_B8
  loc_199557B:   unk_4C1968.Execute var_C0 & "'", var_B0, 
  loc_19955A3:   Set var_A8 = Me.Txt
  loc_19955A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_19955BE:   var_238 = Val(var_AC.Text)
  loc_19955CF:   Set var_B0 = Me.Txt
  loc_19955D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_19955F0:   Set var_BC = Me.Txt
  loc_19955F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1995611:   Set var_170 = Me.Txt
  loc_1995617:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_199561F:   var_178 = var_174.Text
  loc_1995649:   var_120 = IIf((var_178 = "Advance Return"), "AR1", "LR")
  loc_1995656:   var_140 = "LO"
  loc_1995698:   Proc_6_17_EAA2B0(var_1E8, IIf((var_B4.Text = "Advance"), "ADE", IIf((var_168.Text = "Loan"), var_140, var_120)))
  loc_19956B1:   var_B8 = "DELETE FROM LOAN WHERE site_code='" & MemVar_1F92070
  loc_19956B8:   var_158 = var_B8 & "' and Sr_No="
  loc_19956DF:   unk_4C1968.Execute CStr(CVar(var_158 & CStr(var_238) & " AND V_Type=") & var_1E8), var_22C, -1
  loc_199572D: End If
  loc_199573B: Set var_A8 = Me.Txt
  loc_1995741: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC, var_B8)
  loc_1995749: var_230 = var_AC.Text
  loc_1995765: If (CDbl(Val(var_B8)) > CDbl(0)) Then
  loc_1995786:   Set var_A8 = Me.Txt
  loc_199578C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC, var_B8, "UPDATE EMPLOYEE SET OP_Inst=")
  loc_1995794:   var_E0 = var_AC.Text
  loc_199579D:   var_C0 = -1 & var_B8
  loc_19957A4:   var_15C = var_AC.Text & " WHERE CODE='"
  loc_19957B5:   Set var_B0 = Me.Txt
  loc_19957BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B4, var_158)
  loc_19957C3:   var_15C = var_B4.Tag
  loc_19957DC:   unk_4C1968.Execute var_BC & var_158 & "'", var_238, 
  loc_1995800: End If
  loc_199581D: Proc_6_17_EAA2B0(var_E0, MemVar_1F92078, "Select AdvanceAc,Loan_Ac from Enviro WHERE LOGSITE_CODE=")
  loc_1995825: var_100 = var_120 & var_E0 
  loc_1995833: unk_4C1968.Execute CStr(var_100), -1, var_A8
  loc_199583E: Set var_A4 = var_A8
  loc_199586A: var_AC = Me.Recordset15.Fields.Item("AdvanceAc")
  loc_199587B: var_B8 = Proc_6_38_E68A98(CVar(var_AC))
  loc_199588C: If (var_B8 = vbNullString) Then
  loc_19958A8:   MsgBox("Set Advance A/C in Enviro", &H40, var_100, var_120, var_140)
  loc_19958B8:   Exit Sub
  loc_19958B9: End If
  loc_19958D7: Set var_A8 = Me.Txt
  loc_19958DD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, var_B8, "SELECT CODE,AC_CODE,LoanAc FROM EMPLOYEE WHERE CODE='")
  loc_19958E5: var_E0 = var_AC.Tag
  loc_19958EE: var_C0 = -1 & var_B8
  loc_19958FE: unk_4C1968.Execute var_AC.Text & "'", var_B0, 
  loc_1995909: Set var_88 = var_B0
  loc_199592F: Set var_A8 = Me.Txt
  loc_1995935: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1995950: Set var_B0 = Me.Txt
  loc_1995956: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_1995971: Set var_BC = Me.Txt
  loc_1995977: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_19959ED: var_1D8 = IIf((var_AC.Text = "Advance"), "ADE", IIf((var_B4.Text = "Loan"), "LO", IIf((var_168.Text = "Advance Return"), "AR1", "LR")))
  loc_19959F6: var_98 = CStr(var_1D8)
  loc_1995A33: Set var_A8 = Me.Txt
  loc_1995A39: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1995A48: var_100 = Trim(CVar(var_AC))
  loc_1995A65: Set var_B0 = Me.Txt
  loc_1995A6B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_1995AA4: If CBool((var_100 = "Advance") Or (Trim(CVar(var_B4)) = "Loan")) Then
  loc_1995AB5:   Set var_A8 = Me.Txt
  loc_1995ABB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1995ADA:   If (var_AC.Text = "Loan") Then
  loc_1995AEB:     Set var_A8 = Me.Txt
  loc_1995AF1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC)
  loc_1995AF9:     var_B8 = var_AC.Text
  loc_1995B09:     Set var_B0 = Me.Txt
  loc_1995B0F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1995B1E:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_1995B40:     Set var_168 = Me.Txt
  loc_1995B46:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1995B55:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_1995B68:     Set var_174 = Me.Txt
  loc_1995B6E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230)
  loc_1995B76:     var_164 = var_230.Tag
  loc_1995B84:     Proc_6_17_EAA2B0(var_2A8, CVar(var_164))
  loc_1995B97:     Set var_2CC = Me.Txt
  loc_1995B9D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1995BA5:     var_16C = var_2D0.Text
  loc_1995BB2:     var_238 = Val(var_16C)
  loc_1995BCF:     var_328 = Me.Recordset15.Fields.Item("Loan_AC")
  loc_1995BDE:     Proc_6_17_EAA2B0(var_348, CVar(var_328))
  loc_1995BF1:     Set var_37C = Me.Txt
  loc_1995BF7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_1995C32:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1995C66:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1995C6E:     var_438 = CVar(Proc_6_14_EF349C(var_AC)) 'String
  loc_1995C74:     Proc_183_8_EB0AA4(var_448)
  loc_1995CAB:     Set var_4D4 = Me.Txt
  loc_1995CB1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1995CEE:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1995D38:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_1995D99:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_380.Text) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_1995DDC:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1995DF3:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1995EA3:     Set var_A8 = Me.Txt
  loc_1995EA9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1995EB1:     1 = var_AC.Text
  loc_1995EC1:     Set var_B0 = Me.Txt
  loc_1995EC7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1995ED6:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_1995EF8:     Set var_168 = Me.Txt
  loc_1995EFE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1995F0D:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_1995F2C:     var_230 = Me.Txt.Fields.Item("Loan_AC")
  loc_1995F3B:     Proc_6_17_EAA2B0(var_2A8, CVar(var_230))
  loc_1995F4E:     Set var_2CC = Me.Txt
  loc_1995F54:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0, var_164)
  loc_1995F5C:     1 = var_2D0.Text
  loc_1995F69:     var_238 = Val(var_164)
  loc_1995F7A:     Set var_314 = Me.Txt
  loc_1995F80:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1995F96:     Proc_6_17_EAA2B0(var_348, CVar(var_16C))
  loc_1995FA9:     Set var_37C = Me.Txt
  loc_1995FAF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_1995FB7:     var_178 = var_380.Text
  loc_1995FEA:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_199601E:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1996026:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_199602C:     Proc_183_8_EB0AA4(var_448)
  loc_1996063:     Set var_4D4 = Me.Txt
  loc_1996069:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_19960A6:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_19960F0:     var_208 = CVar(var_C0 & "',2,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_1996151:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_328.Tag) & "," & var_348 & ",'" & CVar(var_578) 
  loc_1996194:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_19961AB:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1996250:   Else
  loc_199625E:     Set var_A8 = Me.Txt
  loc_1996264:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_199626C:     1 = var_AC.Text
  loc_199627C:     Set var_B0 = Me.Txt
  loc_1996282:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1996291:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_19962B3:     Set var_168 = Me.Txt
  loc_19962B9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_19962C8:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_19962DB:     Set var_174 = Me.Txt
  loc_19962E1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230, var_164)
  loc_19962E9:     1 = var_230.Tag
  loc_19962F7:     Proc_6_17_EAA2B0(var_2A8, CVar(var_164))
  loc_199630A:     Set var_2CC = Me.Txt
  loc_1996310:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1996318:     var_16C = var_2D0.Text
  loc_1996325:     var_238 = Val(var_16C)
  loc_1996342:     var_328 = Me.Recordset15.Fields.Item("AdvanceAc")
  loc_1996351:     Proc_6_17_EAA2B0(var_348, CVar(var_328))
  loc_1996364:     Set var_37C = Me.Txt
  loc_199636A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_19963A5:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_19963D9:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_19963E1:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_19963E7:     Proc_183_8_EB0AA4(var_448)
  loc_199641E:     Set var_4D4 = Me.Txt
  loc_1996424:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1996461:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_19964AB:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_199650C:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_380.Text) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_199654F:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1996566:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1996616:     Set var_A8 = Me.Txt
  loc_199661C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1996624:     1 = var_AC.Text
  loc_1996634:     Set var_B0 = Me.Txt
  loc_199663A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1996649:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_199666B:     Set var_168 = Me.Txt
  loc_1996671:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1996680:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_19966AE:     Proc_6_17_EAA2B0(var_2A8, CVar(Me.Txt.Fields.Item("AdvanceAc")))
  loc_19966C1:     Set var_2CC = Me.Txt
  loc_19966C7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0, var_164)
  loc_19966CF:     1 = var_2D0.Text
  loc_19966DC:     var_238 = Val(var_164)
  loc_19966ED:     Set var_314 = Me.Txt
  loc_19966F3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1996709:     Proc_6_17_EAA2B0(var_348, CVar(var_16C))
  loc_199671C:     Set var_37C = Me.Txt
  loc_1996722:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_199675D:     var_574 = Replace(var_380.Text, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1996791:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1996799:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_199679F:     Proc_183_8_EB0AA4(var_448)
  loc_19967D6:     Set var_4D4 = Me.Txt
  loc_19967DC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1996819:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1996863:     var_208 = CVar(var_C0 & "',2,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_19968C4:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_328.Tag) & "," & var_348 & ",'" & CVar(var_578) 
  loc_1996907:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_199691E:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_19969C0:   End If
  loc_19969C3: Else
  loc_19969D1:   Set var_A8 = Me.Txt
  loc_19969D7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC, var_B8, var_570)
  loc_19969DF:   1 = var_AC.Text
  loc_19969F6:   If (var_B8 = "Loan Return") Then
  loc_1996A07:     Set var_A8 = Me.Txt
  loc_1996A0D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8)
  loc_1996A15:     1 = var_AC.Text
  loc_1996A25:     Set var_B0 = Me.Txt
  loc_1996A2B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1996A3A:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_1996A5C:     Set var_168 = Me.Txt
  loc_1996A62:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1996A71:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_1996A90:     var_230 = Me.Txt.Fields.Item("Loan_AC")
  loc_1996A9F:     Proc_6_17_EAA2B0(var_2A8, CVar(var_230))
  loc_1996AB2:     Set var_2CC = Me.Txt
  loc_1996AB8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1996AC0:     var_164 = var_2D0.Text
  loc_1996ACD:     var_238 = Val(var_164)
  loc_1996ADE:     Set var_314 = Me.Txt
  loc_1996AE4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1996AFA:     Proc_6_17_EAA2B0(var_348, CVar(var_16C))
  loc_1996B0D:     Set var_37C = Me.Txt
  loc_1996B13:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_1996B1B:     var_178 = var_380.Text
  loc_1996B4E:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1996B82:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1996B8A:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_1996B90:     Proc_183_8_EB0AA4(var_448)
  loc_1996BC7:     Set var_4D4 = Me.Txt
  loc_1996BCD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1996C0A:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1996C54:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_1996CB5:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_328.Tag) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_1996CF8:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1996D0F:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1996DBF:     Set var_A8 = Me.Txt
  loc_1996DC5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1996DCD:     1 = var_AC.Text
  loc_1996DDD:     Set var_B0 = Me.Txt
  loc_1996DE3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1996DF2:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_1996E14:     Set var_168 = Me.Txt
  loc_1996E1A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1996E29:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_1996E3C:     Set var_174 = Me.Txt
  loc_1996E42:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230, var_164)
  loc_1996E4A:     1 = var_230.Tag
  loc_1996E58:     Proc_6_17_EAA2B0(var_2A8, CVar(var_164))
  loc_1996E6B:     Set var_2CC = Me.Txt
  loc_1996E71:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1996E79:     var_16C = var_2D0.Text
  loc_1996E86:     var_238 = Val(var_16C)
  loc_1996EA3:     var_328 = Me.Recordset15.Fields.Item("Loan_AC")
  loc_1996EB2:     Proc_6_17_EAA2B0(var_348, CVar(var_328))
  loc_1996EC5:     Set var_37C = Me.Txt
  loc_1996ECB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_1996F06:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1996F3A:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1996F42:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_1996F48:     Proc_183_8_EB0AA4(var_448)
  loc_1996F7F:     Set var_4D4 = Me.Txt
  loc_1996F85:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1996FC2:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_199700C:     var_208 = CVar(var_C0 & "',2,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_199706D:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_380.Text) & "," & var_348 & ",'" & CVar(var_578) 
  loc_19970B0:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_19970C7:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_199716C:   Else
  loc_199717A:     Set var_A8 = Me.Txt
  loc_1997180:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1997188:     1 = var_AC.Text
  loc_1997198:     Set var_B0 = Me.Txt
  loc_199719E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_19971AD:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_19971CF:     Set var_168 = Me.Txt
  loc_19971D5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_19971E4:     Proc_6_7_F25D88(var_268, CVar(var_170))
  loc_1997203:     var_230 = Me.Txt.Fields.Item("AdvanceAc")
  loc_1997212:     Proc_6_17_EAA2B0(var_2A8, CVar(var_230))
  loc_1997225:     Set var_2CC = Me.Txt
  loc_199722B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0, var_164)
  loc_1997233:     1 = var_2D0.Text
  loc_1997240:     var_238 = Val(var_164)
  loc_1997251:     Set var_314 = Me.Txt
  loc_1997257:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_199726D:     Proc_6_17_EAA2B0(var_348, CVar(var_16C))
  loc_1997280:     Set var_37C = Me.Txt
  loc_1997286:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_199728E:     var_178 = var_380.Text
  loc_19972C1:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_19972F5:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_19972FD:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_1997303:     Proc_183_8_EB0AA4(var_448)
  loc_199733A:     Set var_4D4 = Me.Txt
  loc_1997340:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_199737D:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_19973C7:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_1997428:     var_3C8 = var_208 & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_328.Tag) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_199746B:     var_528 = var_3C8 & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1997482:     unk_4C1968.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1997532:     Set var_A8 = Me.Txt
  loc_1997538:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1997540:     1 = var_AC.Text
  loc_1997550:     Set var_B0 = Me.Txt
  loc_1997556:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1997565:     Proc_6_39_E7C810(var_100, CVar(var_B4))
  loc_1997587:     Set var_168 = Me.Txt
  loc_199758D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1997595:     var_258 = CVar(var_170) 'Address
  loc_199759C:     Proc_6_7_F25D88(var_268, var_258)
  loc_19975AF:     Set var_174 = Me.Txt
  loc_19975B5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230, var_164)
  loc_19975BD:     1 = var_230.Tag
  loc_19975C5:     var_298 = CVar(var_164) 'String
  loc_19975CB:     Proc_6_17_EAA2B0(var_2A8, var_298)
  loc_19975DE:     Set var_2CC = Me.Txt
  loc_19975E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_19975EC:     var_16C = var_2D0.Text
  loc_19975F9:     var_238 = Val(var_16C)
  loc_199760E:     var_314 = Me.Recordset15.Fields
  loc_1997625:     Proc_6_17_EAA2B0(var_348, CVar(var_314.Item("AdvanceAc")))
  loc_1997638:     Set var_37C = Me.Txt
  loc_199763E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_1997653:     var_390 = Chr(&HA)
  loc_1997679:     var_574 = Replace(var_178, CStr(var_390), vbNullString, 1, -1, 0)
  loc_199769E:     var_3A8 = CStr(Chr(&HD))
  loc_19976AD:     var_578 = Replace(var_574, var_3A8, vbNullString, 1, -1, 0)
  loc_19976B5:     var_438 = CVar(Proc_6_14_EF349C(var_438)) 'String
  loc_19976BB:     Proc_183_8_EB0AA4(var_448)
  loc_19976D2:     var_47C = var_88.Fields
  loc_19976F2:     Set var_4D4 = Me.Txt
  loc_19976F8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1997735:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_199773C:     var_158 = var_C0 & "',2,'"
  loc_199776C:     var_1E8 = CVar(var_158 & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_19977BD:     var_2F0 = var_1E8 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_380.Text) 
  loc_1997813:     var_4B0 = var_2F0 & "," & var_348 & ",'" & CVar(var_578) & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & var_47C.Item("Code").Value 
  loc_199783A:     unk_4C1968.Execute CStr(var_4B0 & "','" & Format(CVar(var_4D8), "MMMyyyy") & "')"), var_56C, -1
  loc_19978DC:   End If
  loc_19978DC: End If
  loc_19978EA: Set var_A8 = Me.Txt
  loc_19978F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B8, var_570)
  loc_19978F8: 1 = var_AC.Text
  loc_199790B: Set var_B0 = Me.Txt
  loc_1997911: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4, var_158)
  loc_1997919: 1 = var_B4.Text
  loc_199792C: Set var_BC = Me.Txt
  loc_1997932: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_199794D: Set var_170 = Me.Txt
  loc_1997953: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_1997965: var_100 = "LR"
  loc_19979C9: var_1D8 = IIf((var_158 = "Advance"), "ADE", IIf((var_168.Text = "Loan"), "LO", IIf((var_174.Text = "Advance Return"), "AR1", var_100)))
  loc_19979D4: Proc_6_17_EAA2B0(var_1E8, var_1D8)
  loc_19979E4: Set var_230 = Me.Txt
  loc_19979EA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2CC)
  loc_19979F9: Proc_6_7_F25D88(var_258, CVar(var_2CC))
  loc_1997A0C: Set var_2D0 = Me.Txt
  loc_1997A12: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_314)
  loc_1997A1A: var_164 = var_314.Tag
  loc_1997A28: Proc_6_17_EAA2B0(var_298, CVar(var_164))
  loc_1997A38: Set var_328 = Me.Txt
  loc_1997A3E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_37C)
  loc_1997A4D: Proc_6_39_E7C810(var_2F0, CVar(var_37C))
  loc_1997A7D: Set var_380 = Me.Txt
  loc_1997A83: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_47C, 1)
  loc_1997A92: Proc_6_39_E7C810(var_390, CVar(var_47C))
  loc_1997AC5: Set var_490 = Me.Txt
  loc_1997ACB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_4D4, var_16C, 1)
  loc_1997AD3: 1 = var_4D4.Text
  loc_1997B06: var_574 = Replace(var_16C, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1997B3A: var_438 = CVar(Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)) 'String
  loc_1997B40: Proc_6_17_EAA2B0(var_448, var_438)
  loc_1997B53: Set var_4D8 = Me.Txt
  loc_1997B59: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_570, var_3A8)
  loc_1997B61: 1 = var_570.Tag
  loc_1997B6F: Proc_6_17_EAA2B0(var_4B0, CVar(var_3A8))
  loc_1997B7F: Proc_183_8_EB0AA4(var_588)
  loc_1997B98: var_C0 = "INSERT INTO LOAN (Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (" & var_B8
  loc_1997BE5: var_3C8 = CVar(var_C0 & ",") & var_1E8 & "," & var_258 & "," & var_298 & "," & Format(var_2F0, "0.00") & "," & Format(var_390, "0.00") 
  loc_1997C44: var_5A8 = var_3C8 & "," & var_448 & "," & var_4B0 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_588 & ",'A','" 
  loc_1997C65: unk_4C1968.Execute CStr(var_5A8 & CVar(MemVar_1F92078) & "')"), var_608, -1
  loc_1997D1F: Set var_A8 = Me.TopCtrl1
  loc_1997D25: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_60C)
  loc_1997D3E: If (CStr(CVar(Proc_6_14_EF349C(var_438))) = "Add") Then
  loc_1997D55:   var_B8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1997D89:   Set var_A8 = Me.Txt
  loc_1997D8F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_164, CVar(var_B8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & var_98 & "' And VP.Date_From<="))
  loc_1997D97:   var_1C8 = var_AC.Text
  loc_1997DA5:   Proc_6_7_F25D88(var_100, CVar(var_164))
  loc_1997DAD:   var_140 = -1 & var_100 
  loc_1997DB6:   var_198 = "LO" & " Order By VP.Date_From DESC" 
  loc_1997DC4:   unk_4C1968.Execute CStr(var_198), var_B0, 
  loc_1997DCF:   Set var_88 = var_B0
  loc_1997E0D:   If (var_88.RecordCount > 0) Then
  loc_1997E1E:     Set var_A8 = Me.Txt
  loc_1997E24:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1997E2C:     var_B8 = var_AC.Text
  loc_1997E39:     var_238 = Val(var_B8)
  loc_1997E51:     var_D0 = "Date_From"
  loc_1997E74:     Proc_6_7_F25D88(var_100, CVar(var_88.Fields.Item(var_D0)))
  loc_1997EA7:     var_164 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_238) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1997ED1:     var_120 = CVar(var_164 & MemVar_1F92078 & "') and PREFIX='" & Me.LblVPrefix.Caption & "' AND V_Type='" & var_98 & "' and Date_From=") 'String
  loc_1997EE5:     unk_4C1968.Execute CStr(var_120 & var_100), var_198, -1
  loc_1997F21:   End If
  loc_1997F21: End If
  loc_1997F27: unk_4C1968.CommitTrans
  loc_1997F3A: Set var_A8 = Me.Txt
  loc_1997F40: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B8)
  loc_1997F48: var_168 = var_AC.Text
  loc_1997F5C: var_8C = 0
  loc_1997F6D: Me.Recordset15.Requery -1
  loc_1997F9A: Me.Recordset15.Find "SearchCode ='" & "SearchCode ='" & var_B8 & "'", 0, 1
  loc_1997FAA: Set var_A8 = Me.TopCtrl1
  loc_1997FB0: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_D0)
  loc_1997FC9: If (CStr(var_8C) = "Add") Then
  loc_1997FCC:   Call TopCtrl1_UnknownEvent_A()
  loc_1997FD1:   Exit Sub
  loc_1997FD2: End If
  loc_1997FF9: Call Proc_308_36_EC7904(Proc_5_1_100CB50("INI", Me), global_56)
  loc_1998009: Set var_88 = Nothing
  loc_199800C: Exit Sub
  loc_199800D: ' Referenced from: 199521C
  loc_1998013: If (var_8C = &HFF) Then
  loc_199801C:   unk_4C1968.RollbackTrans
  loc_1998021: End If
  loc_1998021: Proc_6_60_E62BC4(var_238)
  loc_1998026: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F44E64
  'Data Table: 4C1960
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44D5B: Me.DGAcName.Visible = False
  loc_F44D7A: If (Me.RecordCount > 0) Then
  loc_F44DB9:   Set var_B4 = Me.Txt
  loc_F44DBF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(8), var_B8)
  loc_F44DC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F44DFA:   var_B0 = Me.Fields.Item("Name")
  loc_F44E19:   Set var_B4 = Me.Txt
  loc_F44E1F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(8), var_B8)
  loc_F44E27:   var_B8.Text = CStr(var_B0.Value)
  loc_F44E3D: End If
  loc_F44E48: Set var_A8 = Me.Txt
  loc_F44E4E: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(8))
  loc_F44E56: var_B0.SetFocus
  loc_F44E62: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E766C8
  'Data Table: 4C1960
  loc_E76686: Proc_6_153_E91194(Me.DGAcName, arg_14)
  loc_E7669D: Set var_8C = Me.FGPoint
  loc_E766B9: Proc_6_138_106D6F8(Me.DGAcName, global_60, CInt(8))
  loc_E766C7: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64C44
  'Data Table: 4C1960
  loc_E64C14: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E64C17:   Call DGEmployee_UnknownEvent_9()
  loc_E64C1C: End If
  loc_E64C38: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_E64C3B:   Call DGAcName_UnknownEvent_9()
  loc_E64C40: End If
  loc_E64C40: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E99D10
  'Data Table: 4C1960
  loc_E99C96: On Error Goto loc_E99D09
  loc_E99CA2: Me.Recordset15.MoveFirst
  loc_E99CCF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E99CFB: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E99D03: Call Proc_308_35_15DDA40(0)
  loc_E99D08: Exit Sub
  loc_E99D09: ' Referenced from: E99C96
  loc_E99D09: Proc_6_60_E62BC4(var_A0)
  loc_E99D0E: Exit Sub
End Sub

Public Sub Proc_308_33_1048AA4
  'Data Table: 4C1960
  Dim var_E0 As String
  Dim var_AC As Fields15
  Dim var_C0 As Field20
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_16C As String
  Dim unk_4C19B1 As Connection15
  Dim var_94 As Recordset15
  Dim var_19A As Integer
  loc_1048870: On Error Goto loc_1048A5F
  loc_1048880: var_E0 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGERM.DocId,LEDGERM.v_Prefix,LEDGER.U_NAME UserName FROM ((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)  WHERE LEDGER.V_TYPE='"
  loc_10488B9: var_100 = "' AND LEDGER.V_NO="
  loc_10488BE: var_110 = var_E0 & Me.Recordset15.Fields.Item("V_Type").Value & var_100 
  loc_10488EA: var_138 = Me.Recordset15.Fields.Item("SearchCode").Value
  loc_1048909: unk_4C19B1.Execute CStr(var_110 & var_138 & " order by ledger.v_no,LEDGER.V_SNo"), var_18C, -1
  loc_1048914: Set var_94 = var_190
  loc_104894C: If (var_94.RecordCount = 0) Then
  loc_1048952:   var_F0 = .CAPTION
  loc_1048972:   MsgBox("No record found to Print", &H40, var_F0, var_110, var_138)
  loc_1048982:   Exit Sub
  loc_1048983: End If
  loc_104898C: var_16C = MemVar_1F923B0 & "\HRLoanRect.TTX"
  loc_1048999: Set var_AC = var_94 
  loc_10489A5: var_19A = CreateFieldDefFile(var_AC, var_16C, &HFF)
  loc_10489B8: var_A8 = CVar(var_19A) 'Variant
  loc_10489E9: Call 0.Method_arg_64 (var_AC, CVar(var_AC), var_E0, var_100)
  loc_10489F1: Call 0.Method_arg_2C (var_19A, var_F0)
  loc_10489FF: Call 0.Method_arg_150 (var_190)
  loc_1048A13: Set var_C0 = Nothing
  loc_1048A2E: Set var_AC = arg_10 
  loc_1048A3A: Proc_6_99_1483714(var_AC, 0, CStr(.CAPTION))
  loc_1048A45: MemVar_1F921E4 = var_AC
  loc_1048A5B: Set var_94 = Nothing
  loc_1048A5E: Exit Sub
  loc_1048A5F: ' Referenced from: 1048870
  loc_1048A67: Set var_AC = Err()
  loc_1048A6D: Call 0.Method_arg_2C (var_16C, &HFF)
  loc_1048A90: MsgBox(CVar(var_16C), &H10, .CAPTION, var_110, var_138)
  loc_1048AA3: Exit Sub
End Sub

Public Sub Proc_308_34_ECFEC0
  'Data Table: 4C1960
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_ECFE1A: Set var_8C = Me.Txt
  loc_ECFE20: Call 0.Method_Proc_308_34_ECFEC0C (var_8E, var_86)
  loc_ECFE30: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECFE46:   Set var_8C = Me.Txt
  loc_ECFE4C:   Call 0.Method_Proc_308_34_ECFEC00 (CInt(var_86), var_98)
  loc_ECFE54:   var_98.Text = vbNullString
  loc_ECFE70:   Set var_8C = Me.Txt
  loc_ECFE76:   Call 0.Method_Proc_308_34_ECFEC00 (CInt(var_86), var_98)
  loc_ECFE7E:   var_98.Tag = vbNullString
  loc_ECFE8D: Next var_92 'Byte
  loc_ECFEA0: Me.LblVPrefix.Caption = vbNullString
  loc_ECFEB5: Me.LblEmpRef.Caption = vbNullString
  loc_ECFEBD: Exit Sub
End Sub

Public Sub Proc_308_35_15DDA40
  'Data Table: 4C1960
  Dim var_90 As Variant
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_EC As String
  Dim var_C0 As String
  Dim var_190 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1DC As Variant
  Dim var_AC As Variant
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_1E0 As String
  Dim var_1E4 As String
  Dim var_14C As Variant
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim unk_4C1968 As Connection15
  Dim var_8C As Recordset15
  Dim var_1A4 As Variant
  Dim var_1F8 As Variant
  Dim var_220 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_24C As TextBox
  Dim var_20C As Variant
  Dim var_210 As Fields15
  loc_15DC724: On Error Goto loc_15DDA38
  loc_15DC742: If (Me.Bal.Visible = &HFF) Then
  loc_15DC751:   Me.Bal.Visible = False
  loc_15DC759: End If
  loc_15DC773: If (global_56.RecordCount > 0) Then
  loc_15DC825:   var_18C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_15DC870:   Me.LblUser.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")))))
  loc_15DC8F6:   var_D8 = Me.Recordset15.Fields.Item("U_AE")
  loc_15DC957:   var_18C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_D8)) = "E"), "Last Update : ", "entdt : "))
  loc_15DC98D:   var_1C4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_EntDt")))) 'String
  loc_15DC9A2:   Me.LblLDt.Caption = CStr(var_18C & var_1C4)
  loc_15DCA0A:   var_1F4 = Me.Recordset15.Fields.Item("V_Type").Value 'Variant
  loc_15DCA20:   If (var_1F4 = "ADE") Then
  loc_15DCA26:     var_88 = "Advance"
  loc_15DCA2C:   Else
  loc_15DCA37:     If (var_1F4 = "LO") Then
  loc_15DCA3D:       var_88 = "Loan"
  loc_15DCA43:     Else
  loc_15DCA4E:       If (var_1F4 = "AR1") Then
  loc_15DCA54:         var_88 = "Advance Return"
  loc_15DCA5A:       Else
  loc_15DCA65:         If (var_1F4 = "LR") Then
  loc_15DCA6B:           var_88 = "Loan Return"
  loc_15DCA6E:         End If
  loc_15DCA6E:       End If
  loc_15DCA6E:     End If
  loc_15DCA6E:   End If
  loc_15DCAAD:   Set var_C4 = Me.Txt
  loc_15DCAB3:   Call 0.Method_Proc_308_35_15DDA400 (CInt(0), var_D8)
  loc_15DCABB:   var_D8.Text = CStr(Me.Recordset15.Fields.Item("SR_no").Value)
  loc_15DCAF1:   var_AC = Me.Recordset15.Fields.Item("V_DATE")
  loc_15DCB10:   Set var_C4 = Me.Txt
  loc_15DCB16:   Call 0.Method_Proc_308_35_15DDA400 (CInt(1), var_D8)
  loc_15DCB1E:   var_D8.Text = CStr(var_AC.Value)
  loc_15DCB42:   Set var_90 = Me.Txt
  loc_15DCB48:   Call 0.Method_Proc_308_35_15DDA400 (CInt(2), var_AC)
  loc_15DCB50:   var_AC.Text = var_88
  loc_15DCB8C:   var_D4 = " - "
  loc_15DCB91:   var_E8 = (Me.Recordset15.Fields.Item("Department").Value + "U_AE")
  loc_15DCBC5:   var_13C = (CVar(Me.Recordset15.Fields.Item("Designation")) + Me.Recordset15.Fields.Item("Designation").Value)
  loc_15DCBD7:   Me.LblEmpRef.Caption = CStr("entdt : ")
  loc_15DCC35:   var_C0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Site_Code")), "SELECT DOCID,V_PREFIX FROM LEDGER WHERE site_code='", var_20C)
  loc_15DCC39:   var_EC = -1 & var_C0
  loc_15DCC60:   var_D8 = Me.Recordset15.Fields.Item("V_Type")
  loc_15DCC75:   var_1E4 = var_210 & Proc_6_38_E68A98(CVar(var_D8), Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Designation"))) & "' And V_Type='")
  loc_15DCC94:   var_190 = Me.Recordset15.Fields
  loc_15DCCAB:   Proc_6_7_F25D88("entdt : ", CVar(var_190.Item("V_DATE")))
  loc_15DCCB3:   var_17C = CVar(var_1E4 & "' and V_DATE=") & "entdt : " 
  loc_15DCCDD:   var_1F8 = Me.Recordset15.Fields.Item("SR_no")
  loc_15DCCEC:   Proc_6_39_E7C810(var_1C4, CVar(var_1F8))
  loc_15DCD02:   unk_4C1968.Execute CStr(var_17C & " AND V_NO=" & var_1C4), , 
  loc_15DCD0D:   Set var_8C = var_210
  loc_15DCD59:   If (var_8C.RecordCount >= 1) Then
  loc_15DCD91:     Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("v_Prefix")))
  loc_15DCDD9:     Set var_C4 = Me.Txt
  loc_15DCDDF:     Call 0.Method_Proc_308_35_15DDA400 (CInt(&HA), var_D8)
  loc_15DCDE7:     var_D8.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")))
  loc_15DCDFE:   Else
  loc_15DCE12:     var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15DCE5A:     var_11C = CVar(var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='") & Me.Recordset15.Fields.Item("V_Type").Value 
  loc_15DCE93:     Proc_6_7_F25D88(var_17C, CVar(Me.Recordset15.Fields.Item("V_DATE")), var_11C & "' And VP.Date_From<=")
  loc_15DCEB2:     unk_4C1968.Execute CStr(var_1C4 & var_17C & " Order By VP.Date_From DESC"), -1, var_190
  loc_15DCEBD:     Set var_8C = var_190
  loc_15DCEFF:     If (var_8C.RecordCount > 0) Then
  loc_15DCF37:       Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Prefix")))
  loc_15DCF80:       var_AC = Me.Recordset15.Fields.Item("V_Type")
  loc_15DCF90:       var_11C = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) + var_AC.Value)
  loc_15DCFB9:       var_D8 = Me.Recordset15.Fields.Item("V_Type")
  loc_15DCFD3:       var_14C = Space((5 - Len(CStr(var_D8.Value))))
  loc_15DCFDB:       var_17C = (var_11C + CVar(Me.Recordset15.Fields.Item("V_DATE")))
  loc_15DCFFE:       var_18C = Space((5 - Len(Me.LblVPrefix.Caption)))
  loc_15DD006:       var_1B4 = (var_17C + var_1C4 & var_17C)
  loc_15DD011:       Set var_1A4 = Me.LblVPrefix
  loc_15DD017:       var_1E0 = var_1A4.Caption
  loc_15DD022:       var_1D4 = (CVar(var_1E0) & var_17C & " Order By VP.Date_From DESC" + CVar(var_1E0))
  loc_15DD039:       Set var_1DC = Me.Txt
  loc_15DD03F:       Call 0.Method_Proc_308_35_15DDA400 (CInt(0), var_1F8, var_1E4)
  loc_15DD047:       8 = var_1F8.Text
  loc_15DD054:       var_20C = Space((var_17C & " AND V_NO=" & CVar(var_1E0) - Len(var_1E4)))
  loc_15DD05C:       var_220 = ( + var_20C)
  loc_15DD06E:       Set var_210 = Me.Txt
  loc_15DD074:       Call 0.Method_Proc_308_35_15DDA400 (CInt(0), var_224)
  loc_15DD087:       var_244 = (var_220 + CVar(var_224.Text))
  loc_15DD09A:       Set var_248 = Me.Txt
  loc_15DD0A0:       Call 0.Method_Proc_308_35_15DDA400 (CInt(&HA), var_24C)
  loc_15DD0A8:       var_24C.Text = CStr(var_244)
  loc_15DD0F4:     End If
  loc_15DD0F4:   End If
  loc_15DD0FF:   Set var_90 = Me.Txt
  loc_15DD105:   Call 0.Method_Proc_308_35_15DDA400 (CInt(2))
  loc_15DD114:   var_E8 = Trim(CVar(var_AC))
  loc_15DD131:   Set var_C4 = Me.Txt
  loc_15DD137:   Call 0.Method_Proc_308_35_15DDA400 (CInt(2), var_D8)
  loc_15DD158:   var_18C = (var_E8 = "Advance") Or (Trim(CVar(var_D8)) = "Advance Return")
  loc_15DD167:   Set var_190 = Me.Txt
  loc_15DD16D:   Call 0.Method_Proc_308_35_15DDA400 (CInt(2), var_1A4)
  loc_15DD1AC:   If CBool(var_18C Or (Trim(CVar(var_1A4)) = "Loan Return")) Then
  loc_15DD1BD:     Set var_90 = Me.Txt
  loc_15DD1C3:     Call 0.Method_Proc_308_35_15DDA400 (CInt(3), var_AC)
  loc_15DD1E4:     Set var_C4 = Me.Txt
  loc_15DD1EA:     Call 0.Method_Proc_308_35_15DDA400 (CInt(5), var_D8, var_252)
  loc_15DD1F2:     (var_AC.Visible = &HFF) = var_D8.Visible
  loc_15DD20C:     Set var_190 = Me.Txt
  loc_15DD212:     Call 0.Method_Proc_308_35_15DDA400 (CInt(6), var_1A4)
  loc_15DD235:     If ((var_AC Or (var_252 = &HFF)) Or (var_1A4.Visible = &HFF)) Then
  loc_15DD245:       Set var_90 = Me.Txt
  loc_15DD24B:       Call 0.Method_Proc_308_35_15DDA400 (CInt(5), var_AC)
  loc_15DD253:       var_AC.Visible = False
  loc_15DD26C:       Set var_90 = Me.Txt
  loc_15DD272:       Call 0.Method_Proc_308_35_15DDA400 (CInt(3), var_AC)
  loc_15DD27A:       var_AC.Visible = False
  loc_15DD293:       Set var_90 = Me.Txt
  loc_15DD299:       Call 0.Method_Proc_308_35_15DDA400 (CInt(6), var_AC)
  loc_15DD2A1:       var_AC.Visible = False
  loc_15DD2B8:       Set var_90 = Me.Label1
  loc_15DD2BE:       Call 0.Method_Proc_308_35_15DDA400 (3, var_AC)
  loc_15DD2C6:       var_AC.Visible = False
  loc_15DD2DD:       Set var_90 = Me.Label1
  loc_15DD2E3:       Call 0.Method_Proc_308_35_15DDA400 (4, var_AC)
  loc_15DD2EB:       var_AC.Visible = False
  loc_15DD302:       Set var_90 = Me.Label1
  loc_15DD308:       Call 0.Method_Proc_308_35_15DDA400 (6, var_AC)
  loc_15DD310:       var_AC.Visible = False
  loc_15DD31C:     End If
  loc_15DD31F:   Else
  loc_15DD32D:     Set var_90 = Me.Txt
  loc_15DD333:     Call 0.Method_Proc_308_35_15DDA400 (CInt(2), var_AC)
  loc_15DD352:     If (var_AC.Text = "Loan") Then
  loc_15DD363:       Set var_90 = Me.Txt
  loc_15DD369:       Call 0.Method_Proc_308_35_15DDA400 (CInt(3), var_AC)
  loc_15DD383:       If (var_AC.Visible = 0) Then
  loc_15DD393:         Set var_90 = Me.Txt
  loc_15DD399:         Call 0.Method_Proc_308_35_15DDA400 (CInt(5), var_AC)
  loc_15DD3A1:         var_AC.Visible = True
  loc_15DD3BA:         Set var_90 = Me.Txt
  loc_15DD3C0:         Call 0.Method_Proc_308_35_15DDA400 (CInt(3), var_AC)
  loc_15DD3C8:         var_AC.Visible = True
  loc_15DD3E1:         Set var_90 = Me.Txt
  loc_15DD3E7:         Call 0.Method_Proc_308_35_15DDA400 (CInt(6), var_AC)
  loc_15DD3EF:         var_AC.Visible = True
  loc_15DD406:         Set var_90 = Me.Label1
  loc_15DD40C:         Call 0.Method_Proc_308_35_15DDA400 (3, var_AC)
  loc_15DD414:         var_AC.Visible = True
  loc_15DD42B:         Set var_90 = Me.Label1
  loc_15DD431:         Call 0.Method_Proc_308_35_15DDA400 (4, var_AC)
  loc_15DD439:         var_AC.Visible = True
  loc_15DD450:         Set var_90 = Me.Label1
  loc_15DD456:         Call 0.Method_Proc_308_35_15DDA400 (6, var_AC)
  loc_15DD45E:         var_AC.Visible = True
  loc_15DD46A:       End If
  loc_15DD46A:     End If
  loc_15DD46A:   End If
  loc_15DD4A9:   Set var_C4 = Me.Txt
  loc_15DD4AF:   Call 0.Method_Proc_308_35_15DDA400 (CInt(7), var_D8)
  loc_15DD4B7:   var_D8.Text = CStr(Me.Recordset15.Fields.Item("EmpName").Value)
  loc_15DD50C:   Set var_C4 = Me.Txt
  loc_15DD512:   Call 0.Method_Proc_308_35_15DDA400 (CInt(7), var_D8)
  loc_15DD51A:   var_D8.Tag = CStr(Me.Recordset15.Fields.Item("Emp_Code").Value)
  loc_15DD56F:   Set var_C4 = Me.Txt
  loc_15DD575:   Call 0.Method_Proc_308_35_15DDA400 (CInt(8), var_D8)
  loc_15DD57D:   var_D8.Text = CStr(Me.Recordset15.Fields.Item("AcName").Value)
  loc_15DD5D2:   Set var_C4 = Me.Txt
  loc_15DD5D8:   Call 0.Method_Proc_308_35_15DDA400 (CInt(8), var_D8)
  loc_15DD5E0:   var_D8.Tag = CStr(Me.Recordset15.Fields.Item("Ac_Code").Value)
  loc_15DD61B:   var_BC = CVar(Me.Recordset15.Fields.Item("Amount")) 'Address
  loc_15DD622:   Proc_6_39_E7C810(var_E8)
  loc_15DD659:   Set var_C4 = Me.Txt
  loc_15DD65F:   Call 0.Method_Proc_308_35_15DDA400 (CInt(4), var_D8, CStr(Format(var_E8, "0.00")))
  loc_15DD667:   var_D8.Text = 1
  loc_15DD6AF:   Proc_6_39_E7C810(var_E8, CVar(Me.Recordset15.Fields.Item("Installment")))
  loc_15DD6C3:   var_11C = "0.00"
  loc_15DD6E6:   Set var_C4 = Me.Txt
  loc_15DD6EC:   Call 0.Method_Proc_308_35_15DDA400 (CInt(6), var_D8, CStr(Format(var_E8, var_11C)), 1)
  loc_15DD6F4:   var_D8.Text = 1
  loc_15DD72D:   var_AC = Me.Recordset15.Fields.Item("Remark")
  loc_15DD735:   var_BC = CVar(var_AC) 'Address
  loc_15DD757:   Set var_C4 = Me.Txt
  loc_15DD75D:   Call 0.Method_Proc_308_35_15DDA400 (CInt(9), var_D8)
  loc_15DD765:   var_D8.Text = Proc_6_38_E68A98(Trim(var_BC), 1)
  loc_15DD78B:   Set var_90 = Me.Txt
  loc_15DD791:   Call 0.Method_Proc_308_35_15DDA400 (CInt(7), var_AC)
  loc_15DD799:   var_C0 = var_AC.Tag
  loc_15DD7A4:   var_D4 = 0
  loc_15DD7D1:   unk_4C1968.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_C0 & "'", var_BC, -1
  loc_15DD7D9:   var_C4 = var_C4.Fields
  loc_15DD7E1:   var_D4 = var_D8.Item(var_D8)
  loc_15DD7E9:   var_190 = var_190.Value
  loc_15DD7FC:   Set var_1A4 = Me.Txt
  loc_15DD802:   Call 0.Method_Proc_308_35_15DDA400 (CInt(7), var_1DC, var_1E0)
  loc_15DD81D:   Proc_6_7_F25D88(var_11C, Now)
  loc_15DD828:   var_10C = 0
  loc_15DD84C:   var_13C = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_1E0 & "' and v_date<= ") 'String
  loc_15DD860:   unk_4C1968.Execute CStr(var_13C & var_11C), var_17C, -1
  loc_15DD868:   var_1F8 = var_1F8.Fields
  loc_15DD870:   var_10C = var_210.Item(var_210)
  loc_15DD878:   var_224 = var_224.Value
  loc_15DD898:   var_1C4 = (var_1DC.Tag + var_18C)
  loc_15DD8B6:   Set var_248 = Me.Txt
  loc_15DD8BC:   Call 0.Method_Proc_308_35_15DDA400 (CInt(3), var_24C, CStr(Format(Trim(CVar(var_1A4)), "0.00")), 1)
  loc_15DD8C4:   var_24C.Text = 1
  loc_15DD91C:   Set var_90 = Me.Txt
  loc_15DD922:   Call 0.Method_Proc_308_35_15DDA400 (CInt(7), var_AC, var_C0)
  loc_15DD92A:   var_18C = var_AC.Tag
  loc_15DD932:   var_D4 = 0
  loc_15DD95F:   unk_4C1968.Execute "SELECT ISNULL(OP_Inst,0) FROM EMPLOYEE WHERE CODE='" & var_C0 & "'", var_BC, -1
  loc_15DD967:   var_C4 = var_C4.Fields
  loc_15DD96F:   var_D4 = var_D8.Item(var_D8)
  loc_15DD9AA:   Set var_1A4 = Me.Txt
  loc_15DD9B0:   Call 0.Method_Proc_308_35_15DDA400 (CInt(5), var_1DC, CStr(Format(CVar(var_190), "0.00")), 1)
  loc_15DD9B8:   var_1DC.Text = 1
  loc_15DDA0A:   var_BC = Me.Recordset15.Fields.Item("V_Type").Value
  loc_15DDA24:   If (var_BC = "LO") Then
  loc_15DDA27:   End If
  loc_15DDA2A: Else
  loc_15DDA2A:   Call Proc_308_34_ECFEC0(var_190)
  loc_15DDA2F: End If
  loc_15DDA34: Set var_8C = Nothing
  loc_15DDA37: Exit Sub
  loc_15DDA38: ' Referenced from: 15DC724
  loc_15DDA38: Proc_6_60_E62BC4(var_BC)
  loc_15DDA3D: Exit Sub
End Sub

Public Sub Proc_308_36_EC7904(arg_C) 'EC7904
  'Data Table: 4C1960
  Dim var_98 As TextBox
  loc_EC7866: Set var_8C = Me.Txt
  loc_EC786C: Call 0.Method_Proc_308_36_EC7904C (var_8E, var_86)
  loc_EC787C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC7892:   Set var_8C = Me.Txt
  loc_EC7898:   Call 0.Method_Proc_308_36_EC79040 (CInt(var_86), var_98)
  loc_EC78A0:   var_98.Enabled = arg_C
  loc_EC78AF: Next var_92 'Byte
  loc_EC78C1: Set var_8C = Me.Txt
  loc_EC78C7: Call 0.Method_Proc_308_36_EC79040 (1, var_98)
  loc_EC78CF: var_98.Enabled = arg_C
  loc_EC78E7: Set var_8C = Me.Txt
  loc_EC78ED: Call 0.Method_Proc_308_36_EC79040 (2, var_98)
  loc_EC78F5: var_98.Enabled = arg_C
  loc_EC7901: Exit Sub
End Sub

Public Sub Proc_308_37_E7F0B4
  'Data Table: 4C1960
  loc_E7F08F: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7F092:   Call TopCtrl1_UnknownEvent_16()
  loc_E7F09A: Else
  loc_E7F0A0:   Call 0.Method_arg_1E8 (var_108)
  loc_E7F0A8:   Call var_108.SetFocus
  loc_E7F0B1: End If
  loc_E7F0B1: Exit Sub
End Sub

Public Sub Proc_308_38_F8C054
  'Data Table: 4C1960
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8BF02: Set var_88 = Me.Txt
  loc_F8BF08: Call 0.Method_Proc_308_38_F8C0540 (CInt(8), var_8C)
  loc_F8BF27: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_F8BF43: Set var_B4 = Me.Txt
  loc_F8BF49: Call 0.Method_Proc_308_38_F8C0540 (CInt(8), var_B8)
  loc_F8BF64: Set var_88 = Me.Txt
  loc_F8BF6A: Call 0.Method_Proc_308_38_F8C0540 (CInt(8), var_8C)
  loc_F8BF82: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8BF91: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_F8BFB1: Set var_88 = Me.Txt
  loc_F8BFB7: Call 0.Method_Proc_308_38_F8C0540 (CInt(7), var_8C)
  loc_F8BFD6: Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_F8BFF2: Set var_B4 = Me.Txt
  loc_F8BFF8: Call 0.Method_Proc_308_38_F8C0540 (CInt(7), var_B8)
  loc_F8C013: Set var_88 = Me.Txt
  loc_F8C019: Call 0.Method_Proc_308_38_F8C0540 (CInt(7), var_8C)
  loc_F8C031: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8C040: Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_F8C052: Exit Sub
End Sub

Public Sub Proc_308_39_EF38F8
  'Data Table: 4C1960
  loc_EF383C: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EF384E:   Me.DGEmployee.Visible = False
  loc_EF3856: End If
  loc_EF3872: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EF3884:   Me.DGAcName.Visible = False
  loc_EF388C: End If
  loc_EF38A7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF38B6:   Me.FrmList.Visible = False
  loc_EF38BE: End If
  loc_EF38DA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF38EC:   Me.FGPoint.Visible = False
  loc_EF38F4: End If
  loc_EF38F4: Exit Sub
End Sub

Public Sub Proc_308_40_11AED20
  'Data Table: 4C1960
  Dim var_A8 As Variant
  Dim var_DC As String
  Dim var_EC As String
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_134 As Label
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_178 As TextBox
  Dim var_198 As Variant
  Dim var_1A0 As TextBox
  loc_11AE951: Set var_94 = Me.Txt
  loc_11AE957: Call 0.Method_Proc_308_40_11AED200 (CInt(2))
  loc_11AE980: If (Trim(CVar(var_98)) = "Loan") Then
  loc_11AE986:   var_90 = "LO"
  loc_11AE98C: Else
  loc_11AE997:   Set var_94 = Me.Txt
  loc_11AE99D:   Call 0.Method_Proc_308_40_11AED200 (CInt(2), var_98)
  loc_11AE9C6:   If (Trim(CVar(var_98)) = "Loan Return") Then
  loc_11AE9CC:     var_90 = "LR"
  loc_11AE9D2:   Else
  loc_11AE9DD:     Set var_94 = Me.Txt
  loc_11AE9E3:     Call 0.Method_Proc_308_40_11AED200 (CInt(2), var_98)
  loc_11AEA0C:     If (Trim(CVar(var_98)) = "Advance") Then
  loc_11AEA12:       var_90 = "ADE"
  loc_11AEA18:     Else
  loc_11AEA23:       Set var_94 = Me.Txt
  loc_11AEA29:       Call 0.Method_Proc_308_40_11AED200 (CInt(2), var_98)
  loc_11AEA38:       var_B8 = Trim(CVar(var_98))
  loc_11AEA52:       If (var_B8 = "Advance Return") Then
  loc_11AEA58:         var_90 = "AR1"
  loc_11AEA5B:       End If
  loc_11AEA5B:     End If
  loc_11AEA5B:   End If
  loc_11AEA5B: End If
  loc_11AEA6F: var_DC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11AEA8B: var_EC = var_DC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90
  loc_11AEAA0: Set var_94 = Me.Txt
  loc_11AEAA6: Call 0.Method_Proc_308_40_11AED200 (CInt(1), var_98, CVar(var_EC & "' And VP.Date_From<="), var_130)
  loc_11AEAB5: Proc_6_7_F25D88(var_B8, CVar(var_98), -1)
  loc_11AEAD1: Me.Execute CStr(var_134 & var_B8 & " Order By VP.Date_From DESC"), var_98, 
  loc_11AEADC: Set var_8C = var_134
  loc_11AEB18: If (var_8C.RecordCount > 0) Then
  loc_11AEB53:   Me.LblVPrefix.Caption = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11AEB96:   var_B8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_11AEBA9:   Set var_134 = Me.Txt
  loc_11AEBAF:   Call 0.Method_Proc_308_40_11AED200 (CInt(0), var_13C)
  loc_11AEBB7:   var_13C.Text = CStr(var_B8)
  loc_11AEBD1: End If
  loc_11AEBFC: var_A8 = Space((5 - Len(var_90)))
  loc_11AEC04: var_D8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_11AEC27: var_FC = Space((5 - Len(Me.LblVPrefix.Caption)))
  loc_11AEC2F: var_10C = (CVar(var_EC & "' And VP.Date_From<=") + var_134 & CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90))
  loc_11AEC4B: var_150 = (var_134 & CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) & " Order By VP.Date_From DESC" + CVar(Me.LblVPrefix.Caption))
  loc_11AEC62: Set var_134 = Me.Txt
  loc_11AEC68: Call 0.Method_Proc_308_40_11AED200 (CInt(0), var_13C, var_EC)
  loc_11AEC70: 8 = var_13C.Text
  loc_11AEC7D: var_160 = Space((var_150 - Len(var_EC)))
  loc_11AEC85: var_170 = ( + var_160)
  loc_11AEC97: Set var_174 = Me.Txt
  loc_11AEC9D: Call 0.Method_Proc_308_40_11AED200 (CInt(0), var_178)
  loc_11AECB0: var_198 = (var_170 + CVar(var_178.Text))
  loc_11AECC3: Set var_19C = Me.Txt
  loc_11AECC9: Call 0.Method_Proc_308_40_11AED200 (CInt(&HA), var_1A0)
  loc_11AECD1: var_1A0.Text = CStr(var_198)
  loc_11AED14: Set var_8C = Nothing
  loc_11AED17: Proc_308_40_11AED20 = 
End Sub
