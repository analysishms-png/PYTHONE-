VERSION 5.00
Begin VB.Form FrmForExRec
  Caption = "Forex Receive Entry"
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
  ClientWidth = 7725
  ClientHeight = 2595
  LockControls = -1  'True
  Begin Frame frmprint
    Caption = "frmPrint"
    Left = 870
    Top = 600
    Width = 5580
    Height = 2130
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    Begin CommandButton CmdExit
      Caption = "&Exit"
      Left = 3000
      Top = 885
      Width = 1470
      Height = 390
      TabIndex = 29
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
    Begin CommandButton CmdPrint
      Caption = "&Print"
      Left = 1515
      Top = 885
      Width = 1470
      Height = 390
      TabIndex = 28
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
      Index = 9
      Left = 2295
      Top = 450
      Width = 1500
      Height = 255
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 21
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
      Index = 8
      Left = 2295
      Top = 105
      Width = 1500
      Height = 255
      TabIndex = 26
      BorderStyle = 0 'None
      MaxLength = 21
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
    Begin Label Label3
      Caption = "To Date"
      ForeColor = &HC00000&
      Left = 705
      Top = 510
      Width = 750
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
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
    Begin Label Label2
      Caption = "From Date"
      ForeColor = &HC00000&
      Left = 705
      Top = 135
      Width = 990
      Height = 240
      TabIndex = 24
      AutoSize = -1  'True
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
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2250
    Top = 1530
    Width = 4200
    Height = 1050
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7725
    Height = 435
    TabIndex = 30
  End
  Begin PictureBox Picture3
    Picture = "FrmForExRec.frx":0
    Left = 3780
    Top = 975
    Width = 300
    Height = 270
    TabIndex = 22
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGHelp
    Left = 5340
    Top = 3330
    Width = 2520
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 5040
    Top = 1260
    Width = 1155
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2250
    Top = 990
    Width = 1500
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 1
    Left = 2250
    Top = 720
    Width = 720
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 5040
    Top = 720
    Width = 1155
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 0
    Left = 7200
    Top = 480
    Width = 420
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 21
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
    Index = 7
    BackColor = &HFFFFFF&
    Left = 7875
    Top = 720
    Width = 1830
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 10
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 5040
    Top = 990
    Width = 1155
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 2250
    Top = 1260
    Width = 1830
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin Frame FrmList
    Left = 5085
    Top = 2970
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 11
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 2310
    Top = 3075
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 21
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1155
    Top = 5790
    Width = 2880
    Height = 255
    TabIndex = 33
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
    Left = 4530
    Top = 5790
    Width = 2790
    Height = 285
    TabIndex = 32
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
  Begin Label LblName
    Caption = "Remaks"
    Index = 0
    ForeColor = &HC00000&
    Left = 885
    Top = 1545
    Width = 675
    Height = 240
    TabIndex = 31
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
  Begin Label LblName
    Caption = "Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 4290
    Top = 1260
    Width = 660
    Height = 240
    TabIndex = 19
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 4275
    Top = 720
    Width = 390
    Height = 240
    TabIndex = 18
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC00000&
    Left = 3210
    Top = 735
    Width = 600
    Height = 240
    TabIndex = 17
    Alignment = 1 'Right Justify
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
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 885
    Top = 720
    Width = 480
    Height = 240
    TabIndex = 16
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &HC00000&
    Left = 6495
    Top = 495
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
  Begin Label LblName
    Caption = "PayMode"
    Index = 7
    ForeColor = &HC00000&
    Left = 6825
    Top = 735
    Width = 765
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
  Begin Label LblName
    Caption = "Rate"
    Index = 5
    ForeColor = &HC00000&
    Left = 4290
    Top = 990
    Width = 390
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
  Begin Label LblName
    Caption = "Qty"
    Index = 4
    ForeColor = &HC00000&
    Left = 885
    Top = 1260
    Width = 285
    Height = 240
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Currency"
    Index = 3
    ForeColor = &HC00000&
    Left = 885
    Top = 990
    Width = 765
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmForExRec"

Private global_72 As Variant
Private global_68 As Recordset15
Private MasterFormExit As Integer

Private Sub Txt_GotFocus(Index As Integer) '1113ED4
  'Data Table: 4A64FC
  Dim var_92 As Integer
  Dim var_B0 As String
  Dim var_8C As TextBox
  Dim var_E4 As Variant
  Dim var_90 As Fields15
  loc_1113BA6: Set var_88 = Me.Txt
  loc_1113BAC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1113BBA: Proc_6_74_E226B0(var_8C)
  loc_1113BC6: Call Proc_322_31_EB8594(var_8C)
  loc_1113BCE: var_92 = Index
  loc_1113BD9: If Not (var_92 = CInt(1)) Then
  loc_1113BE4:   If Not (var_92 = CInt(2)) Then
  loc_1113BEF:     If Not (var_92 = CInt(4)) Then
  loc_1113BFA:       If (var_92 = CInt(5)) Then
  loc_1113BFD:       End If
  loc_1113BFD:     End If
  loc_1113BFD:   End If
  loc_1113C05:   var_98 = "{Home}+{End}"
  loc_1113C0B:   Proc_303_0_FB9B68(var_98, 0)
  loc_1113C16: Else
  loc_1113C1E:   If (var_92 = CInt(7)) Then
  loc_1113C2E:     ReDim var_A0(0 To 2)
  loc_1113C45:     var_A0(0) = "Cash"
  loc_1113C54:     var_A0(1) = "T.C."
  loc_1113C63:     var_A0(2) = "CreditCard"
  loc_1113C7A:     global_72 = Array(var_A0)
  loc_1113C85:     Set var_E4 = Me.ListView
  loc_1113CA0:     Set var_8C = Me.Txt
  loc_1113CBA:     Set global_88 = Proc_6_66_EFF8FC(var_E4, var_8C, Index, global_72)
  loc_1113CD8:     Set var_88 = Me.Txt
  loc_1113CDE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1113CE6:     3 = var_8C.Text
  loc_1113CF8:     Set var_90 = Me.Txt
  loc_1113CFE:     Call 0.Method_Txt_GotFocus0 (Index, var_E4, var_98)
  loc_1113D06:     var_E4.Tag = global_72
  loc_1113D1C:   Else
  loc_1113D24:     If (var_92 = CInt(3)) Then
  loc_1113D41:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1113D4F:         Set var_8C = Me.FGPoint
  loc_1113D6B:         Proc_6_137_1193554(Me.DGHelp, global_68, Index)
  loc_1113D79:       End If
  loc_1113DD0:       Set var_88 = Me.Txt
  loc_1113DD6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1113DDE:       ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1113DF6:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_1113DF9:         Exit Sub
  loc_1113DFA:       End If
  loc_1113E07:       Set var_88 = Me.Txt
  loc_1113E0D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1113E15:       var_98 = var_8C.Text
  loc_1113E27:       var_B0 = "Name"
  loc_1113E65:       If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B0).Value) Then
  loc_1113E71:         Me.Recordset15.MoveFirst
  loc_1113E94:         Set var_88 = Me.Txt
  loc_1113E9A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1113EA2:         0 = var_8C.Text
  loc_1113EBE:         Me.Recordset15.Find 1 & var_98 & "'", var_B0, var_92
  loc_1113ED3:       End If
  loc_1113ED3:     End If
  loc_1113ED3:   End If
  loc_1113ED3: End If
  loc_1113ED3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D5CA4
  'Data Table: 4A64FC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_8C As DataGrid
  Dim var_DC As String
  loc_11D585B: var_86 = Shift
  loc_11D5868: If (CLng(Shift) = &H1B) Then
  loc_11D586B:   Call Proc_322_31_EB8594(var_86)
  loc_11D5870:   Exit Sub
  loc_11D5871: End If
  loc_11D5874: var_88 = KeyCode
  loc_11D587F: If (var_88 = CInt(7)) Then
  loc_11D58A4:   Set var_8C = Me.Txt
  loc_11D58AA:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11D58B2:   var_94 = var_90.Left
  loc_11D58C4:   Set var_98 = Me.Txt
  loc_11D58CA:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D58D2:   var_A0 = var_9C.Top
  loc_11D58E4:   Set var_A4 = Me.Txt
  loc_11D58EA:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11D58F2:   var_AC = var_A8.Height
  loc_11D5904:   Set var_B0 = Me.Txt
  loc_11D590A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_11D5912:   var_B8 = var_B4.Width
  loc_11D595A:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D5981: Else
  loc_11D5989:   If (var_88 = CInt(3)) Then
  loc_11D59A9:     Set var_9C = Me.FGPoint
  loc_11D59EA:     Proc_6_69_134A198(Me.DGHelp, Me.Txt, CInt(3), global_68, Shift, 0, 1, Nothing)
  loc_11D5A0C:     var_94 = Me.FGPoint.RecordCount
  loc_11D5A5C:     If ((var_94 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11D5A6A:       Set var_90 = Me.FGPoint
  loc_11D5A86:       Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, var_90, var_9C, 0)
  loc_11D5A94:     End If
  loc_11D5A97:   Else
  loc_11D5A9F:     If (var_88 = CInt(&HA)) Then
  loc_11D5AAC:       If (CLng(Shift) = &H2D) Then
  loc_11D5ABC:         Set var_8C = Me.Txt
  loc_11D5AC2:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_94))
  loc_11D5ACA:         CInt((var_A0 + var_AC)) = var_90.Text
  loc_11D5AD5:         Call Proc_322_34_EE31B8(var_DC, var_E0, CInt(var_B8))
  loc_11D5AEB:         Set var_98 = Me.Txt
  loc_11D5AF1:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D5AF9:         var_9C.Text = 780 & var_DC
  loc_11D5B1F:         Set var_8C = Me.Txt
  loc_11D5B25:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11D5B40:         Set var_98 = Me.Txt
  loc_11D5B46:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11D5B4E:         var_9C.SelStart = Len(var_90.Text)
  loc_11D5B61:         Exit Sub
  loc_11D5B62:       End If
  loc_11D5B62:     End If
  loc_11D5B62:   End If
  loc_11D5B62: End If
  loc_11D5B9B: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11D5BBC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_11D5BC5:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11D5BCA:   End If
  loc_11D5BCE:   Set var_8C = Me.TopCtrl1
  loc_11D5BD4:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_11D5BFF:   If (((CStr() = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11D5C17:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11D5C20:       Proc_6_76_E52838(Shift)
  loc_11D5C25:     End If
  loc_11D5C28:   Else
  loc_11D5C2C:     Set var_8C = Me.TopCtrl1
  loc_11D5C32:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_11D5C54:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11D5C6C:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11D5C75:         Proc_6_76_E52838(Shift)
  loc_11D5C7A:       End If
  loc_11D5C7A:     End If
  loc_11D5C7A:   End If
  loc_11D5C98:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_11D5C9E:     Call Proc_322_32_E902C0(KeyCode)
  loc_11D5CA3:   End If
  loc_11D5CA3: End If
  loc_11D5CA3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FD3838
  'Data Table: 4A64FC
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FD366C: On Error Goto loc_FD3832
  loc_FD3672: Proc_6_58_E054C0(arg_10)
  loc_FD367A: var_86 = KeyAscii
  loc_FD3685: If (var_86 = CInt(1)) Then
  loc_FD3692:   Set var_8C = Me.Txt
  loc_FD3698:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FD36B3:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_FD36C2: Else
  loc_FD36CA:   If (var_86 = CInt(4)) Then
  loc_FD36D7:     Set var_8C = Me.Txt
  loc_FD36DD:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FD36F8:     Proc_6_42_129A86C(var_90, arg_10, 4)
  loc_FD3707:   Else
  loc_FD370F:     If (var_86 = CInt(5)) Then
  loc_FD371C:       Set var_8C = Me.Txt
  loc_FD3722:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 0)
  loc_FD373D:       Proc_6_42_129A86C(var_90, arg_10, 6)
  loc_FD374C:     Else
  loc_FD3754:       If (var_86 = CInt(6)) Then
  loc_FD3761:         Set var_8C = Me.Txt
  loc_FD3767:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 2)
  loc_FD3782:         Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_FD3791:       Else
  loc_FD3799:         If (var_86 = CInt(3)) Then
  loc_FD37B8:           If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FD37ED:             Proc_6_89_146F1AC(Me.Txt, CInt(3), global_68, arg_10, "Name")
  loc_FD3823:             Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyAscii, Me.FGPoint)
  loc_FD3831:           End If
  loc_FD3831:         End If
  loc_FD3831:       End If
  loc_FD3831:     End If
  loc_FD3831:   End If
  loc_FD3831: End If
  loc_FD3831: Exit Sub
  loc_FD3832: ' Referenced from: FD366C
  loc_FD3832: Proc_6_60_E62BC4(0, 2)
  loc_FD3837: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F10DAC
  'Data Table: 4A64FC
  Dim var_86 As Integer
  loc_F10CC3: var_86 = KeyCode
  loc_F10CCE: If (var_86 = CInt(7)) Then
  loc_F10CEC:   If (Me.FrmList.Visible = &HFF) Then
  loc_F10D1B:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_F10D2B:   End If
  loc_F10D2E: Else
  loc_F10D36:   If (var_86 = CInt(3)) Then
  loc_F10D55:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F10D69:       var_B0 = "Name"
  loc_F10D95:       Proc_6_68_129FB34(Me.DGHelp, Me.Txt, CInt(3), global_68, Shift)
  loc_F10DA8:     End If
  loc_F10DA8:   End If
  loc_F10DA8: End If
  loc_F10DA8: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A374
  'Data Table: 4A64FC
  loc_E4A352: Set var_88 = Me.Txt
  loc_E4A358: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A366: Proc_6_73_E22704(var_8C)
  loc_E4A372: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1363954
  'Data Table: 4A64FC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_11C As String
  Dim unk_4A6503 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_12C As TextBox
  Dim var_8C As Variant
  loc_1363113: var_86 = Cancel
  loc_136311E: If (var_86 = CInt(1)) Then
  loc_136312C:   Set var_8C = Me.Txt
  loc_1363132:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_136313A:   var_98 = "Vr No"
  loc_136315B:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_1363169:     Set var_8C = Me.Txt
  loc_136316F:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1363177:     var_90.SetFocus
  loc_1363185:     arg_10 = &HFF
  loc_1363188:     Exit Sub
  loc_1363189:   End If
  loc_1363197:   Set var_8C = Me.Txt
  loc_136319D:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_13631A5:   arg_10 = var_90.Text
  loc_13631BD:   If (CDbl(var_98) = CDbl(0)) Then
  loc_13631D3:     var_B8 = "Vr. No. Can Not Be 0"
  loc_13631D9:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_13631F3:     Set var_8C = Me.Txt
  loc_13631F9:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363201:     var_90.SetFocus
  loc_136320F:     arg_10 = &HFF
  loc_1363212:     Exit Sub
  loc_1363213:   End If
  loc_1363217:   Set var_8C = Me.TopCtrl1
  loc_136321D:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1363225:   var_98 = CStr(var_86)
  loc_1363236:   If (var_98 = "Add") Then
  loc_136323F:     Call Proc_322_33_115E0B8(MemVar_1F92044)
  loc_1363252:     Set var_8C = Me.Txt
  loc_1363258:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1363260:     var_90.Text = var_98
  loc_136326F:   End If
  loc_1363273:   Set var_8C = Me.TopCtrl1
  loc_1363279:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1363281:   var_98 = CStr()
  loc_1363292:   If (var_98 = "Add") Then
  loc_13632C2:     Set var_8C = Me.Txt
  loc_13632C8:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_13632D9:     var_11C = var_124 & var_98
  loc_13632E9:     unk_4A6503.Execute var_11C & "'", 0, var_128
  loc_13632F9:      = var_124.Item()
  loc_1363301:      = var_128.Value
  loc_136332E:     If (var_90.Text.Fields > 0) Then
  loc_1363337:       Call 0.Method_arg_50 (var_98)
  loc_1363358:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_136336E:       Call Proc_322_33_115E0B8(MemVar_1F92044)
  loc_136337E:       If (var_98 = vbNullString) Then
  loc_136338B:         Set var_8C = Me.Txt
  loc_1363391:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363399:         var_90.SetFocus
  loc_13633A7:         arg_10 = &HFF
  loc_13633AA:         Exit Sub
  loc_13633AB:       End If
  loc_13633B1:       Call Proc_322_33_115E0B8(MemVar_1F92044, var_98)
  loc_13633C4:       Set var_8C = Me.Txt
  loc_13633CA:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_13633D2:       var_90.Text = arg_10
  loc_13633E3:       arg_10 = &HFF
  loc_13633E6:       Exit Sub
  loc_13633E7:     End If
  loc_13633E7:   End If
  loc_13633EA: Else
  loc_13633F2:   If (var_86 = CInt(2)) Then
  loc_1363403:     Set var_8C = Me.Txt
  loc_1363409:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1363411:     arg_10 = var_90.Text
  loc_1363441:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_1363457:       Set var_8C = Me.Txt
  loc_136345D:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1363465:       var_90.Text = CStr(MemVar_1F920EC)
  loc_1363477:     Else
  loc_1363481:       Set var_8C = Me.Txt
  loc_1363487:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_136349A:       var_98 = Proc_6_33_1512840(var_90)
  loc_13634A7:       Set var_124 = Me.Txt
  loc_13634AD:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_13634B5:       var_128.Text = var_98
  loc_13634C8:     End If
  loc_13634CC:     Set var_8C = Me.TopCtrl1
  loc_13634D2:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_13634DA:     var_98 = CStr()
  loc_13634EB:     If (var_98 = "Add") Then
  loc_13634F4:       Call Proc_322_33_115E0B8(MemVar_1F92044)
  loc_1363504:       If (var_98 = vbNullString) Then
  loc_1363511:         Set var_8C = Me.Txt
  loc_1363517:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_136351F:         var_90.SetFocus
  loc_136352D:         arg_10 = &HFF
  loc_1363530:         Exit Sub
  loc_1363531:       End If
  loc_1363537:       Call Proc_322_33_115E0B8(MemVar_1F92044, var_98)
  loc_136354A:       Set var_8C = Me.Txt
  loc_1363550:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1363558:       var_90.Text = arg_10
  loc_1363567:     End If
  loc_136356A:   Else
  loc_1363572:     If (var_86 = CInt(4)) Then
  loc_1363583:       Set var_8C = Me.Txt
  loc_1363589:       Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_136359E:       var_134 = Val(var_90.Text)
  loc_13635AF:       Set var_94 = Me.Txt
  loc_13635B5:       Call 0.Method_Txt_Validate0 (CInt(5), var_124, var_11C)
  loc_13635CA:       var_13C = Val(var_11C)
  loc_13635DC:       var_D8 = "0.00"
  loc_1363607:       Set var_128 = Me.Txt
  loc_136360D:       Call 0.Method_Txt_Validate0 (CInt(6), var_12C, CStr(Format(CVar((var_124.Text * var_13C)), var_D8)), 1)
  loc_1363615:       var_12C.Text = 1
  loc_136363E:     Else
  loc_1363646:       If (var_86 = CInt(3)) Then
  loc_1363663:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1363683:           var_90 = Me.Recordset15.Fields.Item("Rate")
  loc_1363692:           Proc_6_39_E7C810(var_D8, CVar(var_90))
  loc_13636A9:           Set var_94 = Me.Txt
  loc_13636AF:           Call 0.Method_Txt_Validate0 (CInt(5), var_124, CStr(var_D8))
  loc_13636B7:           var_124.Text = var_13C
  loc_13636CF:         End If
  loc_13636D2:       Else
  loc_13636DA:         If (var_86 = CInt(5)) Then
  loc_13636E7:           Set var_8C = Me.Txt
  loc_13636ED:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363719:           var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_1363728:           Set var_94 = Me.Txt
  loc_136372E:           Call 0.Method_Txt_Validate0 (CInt(5), var_124, var_98)
  loc_136375E:           Set var_8C = Me.Txt
  loc_1363764:           Call 0.Method_Txt_Validate0 (CInt(4), var_90, var_98)
  loc_136376C:           1 = var_90.Text
  loc_1363779:           var_134 = Val(var_98)
  loc_136378A:           Set var_94 = Me.Txt
  loc_1363790:           Call 0.Method_Txt_Validate0 (CInt(5), var_124, var_11C)
  loc_13637E2:           Set var_128 = Me.Txt
  loc_13637E8:           Call 0.Method_Txt_Validate0 (CInt(6), var_12C, CStr(Format(CVar((1 * Val(var_11C))), "0.00")), 1)
  loc_13637F0:           var_12C.Text = 1
  loc_1363819:         Else
  loc_1363821:           If (var_86 = CInt(7)) Then
  loc_1363831:             Set var_8C = Me.Txt
  loc_1363837:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_136383F:             var_13C = var_90.Text
  loc_1363856:             If (var_98 <> vbNullString) Then
  loc_1363871:               Set var_90 = Me.ListView.SelectedItem
  loc_1363889:               Set var_94 = Me.Txt
  loc_136388F:               Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1363897:               var_124.Text = var_90.Text
  loc_13638AD:             End If
  loc_13638B0:           Else
  loc_13638B8:             If Not (var_86 = CInt(8)) Then
  loc_13638C3:               If (var_86 = CInt(9)) Then
  loc_13638C6:               End If
  loc_13638D0:               Set var_8C = Me.Txt
  loc_13638D6:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13638F6:               Set var_124 = Me.Txt
  loc_13638FC:               Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1363904:               var_128.Text = Proc_6_33_1512840(var_90)
  loc_1363924:               Set var_8C = Me.Txt
  loc_136392A:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1363949:               If (var_90.Text = vbNullString) Then
  loc_136394E:                 arg_10 = 0
  loc_1363951:               End If
  loc_1363951:             End If
  loc_1363951:           End If
  loc_1363951:         End If
  loc_1363951:       End If
  loc_1363951:     End If
  loc_1363951:   End If
  loc_1363951: End If
  loc_1363951: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E19738
  'Data Table: 4A64FC
  loc_E1972C: Me.frmprint.Visible = False
  loc_E19734: Exit Sub
End Sub

Private Sub Form_Load() '1027F38
  'Data Table: 4A64FC
  Dim var_88 As Label
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim unk_4A6503 As Connection15
  Dim var_B4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  loc_1027D0C: On Error Goto loc_1027F30
  loc_1027D16: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1027D2A: Me.LblUser.Left = CDbl(13500)
  loc_1027D41: Me.LblUser.Top = CDbl(7800)
  loc_1027D58: Me.LblLDt.Top = CDbl(8160)
  loc_1027D69: Set var_88 = Me.LblLDt
  loc_1027D6F: var_88.Left = CDbl(13500)
  loc_1027D93: Me.Recordset15.CursorLocation = 3
  loc_1027DBD: var_9C = CVar("Select DocID as SearchCode,DocID,logsite_code,site_code From ForExTrans where  LOGSITE_CODE='" & MemVar_1F92078 & "' Order by DocID") 'String
  loc_1027DC7: Me.Open var_9C, CVar(MemVar_1F92044), 2
  loc_1027DD8: global_60 = "HTFEX"
  loc_1027E00: unk_4A6503.Execute "SELECT Code,Name,Rate FROM ForEx where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_9C, -1
  loc_1027E11: Set global_68 = var_88
  loc_1027E32: CVarUnk
  loc_1027E37: VerifyVarObj
  loc_1027E3D: Set var_88 = Me.DGHelp
  loc_1027E43: LateIdStAd
  loc_1027E65: Call 0.Method_Form_Load0 (CInt(3), var_B4, var_B8, Me.Txt)
  loc_1027E6D: global_68 = var_B4.Left
  loc_1027E84: Me.DGHelp.Left = CVar(var_B8)
  loc_1027EA0: Set var_CC = Me.Txt
  loc_1027EA6: Call 0.Method_Form_Load0 (CInt(3), var_D0, var_D4)
  loc_1027EAE: var_88 = var_D0.Height
  loc_1027EC1: Set var_88 = Me.Txt
  loc_1027EC7: Call 0.Method_Form_Load0 (CInt(3), var_B4, var_B8)
  loc_1027ECF: 3 = var_B4.Top
  loc_1027EDB: var_AC = CVar((var_B8 + var_D4)) 'Single
  loc_1027EEA: Me.DGHelp.Top = CVar(var_B8)
  loc_1027F1F: Call Proc_322_30_F8D90C(Proc_5_1_100CB50("INI", Me), New)
  loc_1027F2A: Call Proc_322_28_EB89CC(-1)
  loc_1027F2F: Exit Sub
  loc_1027F30: ' Referenced from: 1027D0C
  loc_1027F30: Proc_6_60_E62BC4()
  loc_1027F35: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1FE50
  'Data Table: 4A64FC
  loc_E1FE3F: Set global_64 = Nothing
  loc_E1FE4B: MasterFormExit = 0
  loc_E1FE4E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24624
  'Data Table: 4A64FC
  loc_E24609: If (MasterFormExit = &HFF) Then
  loc_E24619:   Me.Global.Unload Me
  loc_E24621: End If
  loc_E24621: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26EE0
  'Data Table: 4A64FC
  loc_E26EB8: On Error Goto loc_E26ED8
  loc_E26ECF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26ED7: Exit Sub
  loc_E26ED8: ' Referenced from: E26EB8
  loc_E26ED8: Proc_6_60_E62BC4(Shift)
  loc_E26EDD: Exit Sub
  loc_E26EDE: CExtInstUnk
End Sub

Private Sub ListView_UnknownEvent_13 'F5B19C
  'Data Table: 4A64FC
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B0BE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B0C5:   Set var_A8 = Me.ListView
  loc_F5B10F:   Set var_C0 = Me.Txt
  loc_F5B115:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B11D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B13D: End If
  loc_F5B149: Me.FrmList.Visible = False
  loc_F5B179: Set var_9C = Me.Txt
  loc_F5B17F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5B187: var_A8.SetFocus
  loc_F5B19B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F97160
  'Data Table: 4A64FC
  Dim var_8C As Label
  Dim var_88 As String
  Dim var_B4 As TextBox
  loc_F96FE8: On Error Goto loc_F97158
  loc_F9700E: Call Proc_322_30_F8D90C(Proc_5_1_100CB50("ADD", Me))
  loc_F97022: Set var_8C = Me.TopCtrl1
  loc_F97028: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F97039: Set var_8C = Me.TopCtrl1
  loc_F9703F: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F97050: Set var_8C = Me.TopCtrl1
  loc_F97056: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F97067: Set var_8C = Me.TopCtrl1
  loc_F9706D: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F97075: Call Proc_322_28_EB89CC(global_64)
  loc_F97087: Me.LblUser.Caption = vbNullString
  loc_F9709C: Me.LblLDt.Caption = vbNullString
  loc_F970A9: var_88 = CStr(MemVar_1F920EC)
  loc_F970B7: Set var_8C = Me.Txt
  loc_F970BD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_B4)
  loc_F970C5: var_B4.Text = var_88
  loc_F970E2: Set var_8C = Me.Txt
  loc_F970E8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_B4)
  loc_F970F0: var_B4.Text = "Cash"
  loc_F97102: Call Proc_322_33_115E0B8(MemVar_1F92044)
  loc_F97115: Set var_8C = Me.Txt
  loc_F9711B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B4)
  loc_F97123: var_B4.Text = var_88
  loc_F9713D: Set var_8C = Me.Txt
  loc_F97143: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B4)
  loc_F9714B: var_B4.SetFocus
  loc_F97157: Exit Sub
  loc_F97158: ' Referenced from: F96FE8
  loc_F97158: Proc_6_60_E62BC4(var_88)
  loc_F9715D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F048C8
  'Data Table: 4A64FC
  loc_F047F0: On Error Goto loc_F048C2
  loc_F0482A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F04850:   Call Proc_322_30_F8D90C(Proc_5_1_100CB50("INI", Me))
  loc_F04864:   Set var_10C = Me.TopCtrl1
  loc_F0486A:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F0487B:   Set var_10C = Me.TopCtrl1
  loc_F04881:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F04892:   Set var_10C = Me.TopCtrl1
  loc_F04898:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F048A9:   Set var_10C = Me.TopCtrl1
  loc_F048AF:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F048B7:   Call Proc_322_31_EB8594(global_64)
  loc_F048BC:   Call Proc_322_28_EB89CC()
  loc_F048C1: End If
  loc_F048C1: Exit Sub
  loc_F048C2: ' Referenced from: F047F0
  loc_F048C2: Proc_6_60_E62BC4()
  loc_F048C7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11016A8
  'Data Table: 4A64FC
  Dim var_96 As Integer
  Dim unk_4A6503 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_11013A0: On Error Goto loc_1101650
  loc_11013B1: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_11013B4:   Exit Sub
  loc_11013B5: End If
  loc_11013EC: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_11013FD:   unk_4A6503.BeginTrans var_11C
  loc_1101413:   var_94 = Me.Bookmark 'Variant
  loc_1101435:   Set var_120 = Me.Txt
  loc_110143B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From ForExTrans Where DocID='")
  loc_1101443:   var_B8 = var_124.Text
  loc_110144C:   var_12C = -1 & var_128
  loc_110145C:   unk_4A6503.Execute var_12C & "'", var_134, &HFF
  loc_1101484:   Set var_120 = Me.Txt
  loc_110148A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_110149C:   var_168 = 0
  loc_11014AF:   var_160 = 0
  loc_11014BA:   var_15C = 0
  loc_11014CD:   var_154 = 0
  loc_11014D8:   var_150 = 0
  loc_11014EB:   var_148 = 0
  loc_110152A:   var_128 = "ForExTrans"
  loc_1101533:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_110155E:   unk_4A6503.CommitTrans
  loc_1101565:   var_96 = 0
  loc_1101573:   Me.Requery -1
  loc_1101593:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11015A0:     Me.Bookmark = var_94
  loc_11015A8:   Else
  loc_11015BC:     If (Me.EOF = 0) Then
  loc_11015C5:       Me.MoveLast
  loc_11015CA:     End If
  loc_11015CA:   End If
  loc_11015CA:   Call Proc_322_28_EB89CC(var_96, var_148, 0, var_150, var_154)
  loc_11015EB:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_11015FC:   Set var_120 = Me.TopCtrl1
  loc_1101602:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1101613:   Set var_120 = Me.TopCtrl1
  loc_1101619:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_110162A:   Set var_120 = Me.TopCtrl1
  loc_1101630:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1101641:   Set var_120 = Me.TopCtrl1
  loc_1101647:   Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_110164F: End If
  loc_110164F: Exit Sub
  loc_1101650: ' Referenced from: 11013A0
  loc_1101656: If (var_96 = &HFF) Then
  loc_110165F:   unk_4A6503.RollbackTrans
  loc_1101664: End If
  loc_110166C: Set var_120 = Err()
  loc_1101672: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_1101693: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_11016A6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F642DC
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F641B8: On Error Goto loc_F64296
  loc_F641C9: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F641CC:   Exit Sub
  loc_F641CD: End If
  loc_F641E4: If (Me.RecordCount > 0) Then
  loc_F641FC:   var_8C = "EDIT"
  loc_F6420A:   Call Proc_322_30_F8D90C(Proc_5_1_100CB50(var_8C, Me))
  loc_F64222:   Set var_90 = Me.Txt
  loc_F64228:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F64230:   var_98.Enabled = False
  loc_F64247:   Set var_90 = Me.Txt
  loc_F6424D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_F64255:   var_98.SetFocus
  loc_F64264: Else
  loc_F64285:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F64295: End If
  loc_F64295: Exit Sub
  loc_F64296: ' Referenced from: F641B8
  loc_F6429E: Set var_90 = Err()
  loc_F642A4: Call 0.Method_arg_2C (var_8C)
  loc_F642C5: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F642D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19608
  'Data Table: 4A64FC
  loc_E195FD: Me.Global.Unload Me
  loc_E19605: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB33AC
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB331C: On Error Goto loc_EB33A6
  loc_EB3336: If (Me.RecordCount <= 0) Then
  loc_EB333F:   var_B8 = "Information"
  loc_EB335A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB336A:   Exit Sub
  loc_EB336B: End If
  loc_EB336E: MemVar_1F920E4 = "Select DocID as SearchCode,VNo,cast(VDate as Varchar(11)) as Vdate,ForExCode,cast(Qty as char(9)) As Qty,cast(Rate as char(9)) As Rate,Cast(Amount as char(12)) As Amount,Remarks From ForExTrans Order by DocID,VNo"
  loc_EB337B: Proc_6_126_F1BCC0("500,2000,2000,1500,1500,1500,3000")
  loc_EB3389: MemVar_1F92120 = Me
  loc_EB33A0: Call 0.Method_arg_2B0 (1)
  loc_EB33A5: Exit Sub
  loc_EB33A6: ' Referenced from: EB331C
  loc_EB33A6: Proc_6_60_E62BC4(var_B8)
  loc_EB33AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E4E4E4
  'Data Table: 4A64FC
  loc_E4E4CB: If (Me.frmprint.Visible = 0) Then
  loc_E4E4DA:   Me.frmprint.Visible = True
  loc_E4E4E2: End If
  loc_E4E4E2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14518E8
  'Data Table: 4A64FC
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim unk_4A6503 As Connection15
  Dim var_98 As Recordset15
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_F4 As Fields15
  Dim var_F8 As Variant
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_86 As Integer
  Dim var_138 As String
  Dim var_168 As String
  Dim var_118 As Variant
  Dim var_B8 As Variant
  Dim var_128 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1E4 As TextBox
  Dim var_230 As TextBox
  Dim var_274 As Variant
  Dim var_27C As TextBox
  Dim var_420 As Variant
  Dim var_8C As Recordset15
  Dim var_510 As Double
  Dim Me As Recordset15
  loc_1450EA4: On Error Goto loc_14518CC
  loc_1450EB2: Set var_98 = Me.Txt
  loc_1450EB8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1450EE1: If (Proc_6_27_EA565C(var_9C, "Date") = 0) Then
  loc_1450EE4:   Exit Sub
  loc_1450EE5: End If
  loc_1450EF0: Set var_98 = Me.Txt
  loc_1450EF6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_1450F1F: If (Proc_6_27_EA565C(var_9C, "Vr No") = 0) Then
  loc_1450F22:   Exit Sub
  loc_1450F23: End If
  loc_1450F2E: Set var_98 = Me.Txt
  loc_1450F34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_1450F5D: If (Proc_6_27_EA565C(var_9C, "Foreign Currency") = 0) Then
  loc_1450F60:   Exit Sub
  loc_1450F61: End If
  loc_1450F64: Call Proc_322_27_F8D73C(var_A6)
  loc_1450F6F: If (var_A6 = 0) Then
  loc_1450F72:   Exit Sub
  loc_1450F73: End If
  loc_1450F77: Set var_98 = Me.TopCtrl1
  loc_1450F7D: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1450F96: If (CStr() = "Add") Then
  loc_1450F9F:   var_DC = 0
  loc_1450FBC:   var_A4 = "Select ncur from enviro where LOGsite_code='" & MemVar_1F92078
  loc_1450FCC:   unk_4A6503.Execute var_A4 & "'", var_B8, -1
  loc_1450FD4:   var_98 = var_98.Fields
  loc_1450FDC:   var_DC = var_9C.Item(var_9C)
  loc_1450FE4:   var_A0 = var_A0.Value
  loc_145100E:   Call Proc_322_33_115E0B8(MemVar_1F92044, var_A4)
  loc_1451021:   Set var_98 = Me.Txt
  loc_1451027:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_145106B:   Set var_98 = Me.Txt
  loc_1451071:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_1451079:   var_A0 = CDate(var_EC)
  loc_1451092:   unk_4A6503.Execute var_F4 & var_A4 & "'", 0, var_F8
  loc_145109A:   var_EC = var_A0.Fields
  loc_14510A2:    = var_F4.Item(var_EC)
  loc_14510AA:    = var_F8.Value
  loc_14510D7:   If (var_EC > 0) Then
  loc_14510E0:     Call 0.Method_arg_50 (var_A4)
  loc_14510EE:     var_EC = CVar(var_A4) 'String
  loc_14510FB:     var_B8 = "Duplicate Vr. No."
  loc_1451101:     MsgBox(var_B8, &H40, var_EC, var_118, var_128)
  loc_1451117:     Call Proc_322_33_115E0B8(MemVar_1F92044)
  loc_1451127:     If (var_A4 = vbNullString) Then
  loc_145112A:       Exit Sub
  loc_145112B:     End If
  loc_1451131:     Call Proc_322_33_115E0B8(MemVar_1F92044, var_A4)
  loc_1451144:     Set var_98 = Me.Txt
  loc_145114A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_1451152:     var_9C.Text = var_A4
  loc_1451161:     Exit Sub
  loc_1451162:   End If
  loc_1451162: End If
  loc_1451170: unk_4A6503.BeginTrans var_12C
  loc_1451193: Set var_98 = Me.Txt
  loc_1451199: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Delete From ForExTrans Where DocID='", var_B8)
  loc_14511A1: -1 = var_9C.Text
  loc_14511BA: unk_4A6503.Execute var_A0 & var_A4 & "'", &HFF, var_A4
  loc_14511D8: Set var_424 = Me.TopCtrl1
  loc_14511DE: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14511FC: var_F0 = "Insert Into ForExTrans(" & "DocID,VType,VPrefix,Site_Code,VNo,VDate," & "ForExCode,Qty,Rate,Amount,PayMode,Remarks," & "U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_145120A: var_138 = var_F0 & " Values(" & "'"
  loc_145121B: Set var_98 = Me.Txt
  loc_1451221: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_1451254: Set var_A0 = Me.LblVPrefix
  loc_1451289: Set var_F4 = Me.Txt
  loc_145128F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F8)
  loc_14512AA: var_168 = var_138 & var_9C.Text & "','" & global_60 & "','" & var_A0.Caption & "','" & MemVar_1F92070 & "'," & CStr(Val(var_F8.Text))
  loc_14512BF: Set var_16C = Me.Txt
  loc_14512C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_170)
  loc_14512CD: var_B8 = CVar(var_170) 'Address
  loc_14512D4: Proc_6_7_F25D88(var_EC, var_B8)
  loc_1451300: Set var_194 = Me.Txt
  loc_1451306: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_198)
  loc_145131C: Proc_6_17_EAA2B0(var_1BC, CVar(var_198.Tag))
  loc_145133F: Set var_1E0 = Me.Txt
  loc_1451345: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1E4)
  loc_1451379: Set var_22C = Me.Txt
  loc_145137F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_14513A1: var_274 = CVar(var_168 & ",") & var_EC & "," & vbNullString & var_1BC & "," & CVar(Val(var_1E4.Text)) & "," & CVar(Val(var_230.Text)) & "," 
  loc_14513B3: Set var_278 = Me.Txt
  loc_14513B9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_27C)
  loc_14513EA: Set var_2C4 = Me.Txt
  loc_14513F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2C8)
  loc_14513FF: Proc_6_17_EAA2B0(var_2E8, CVar(var_2C8))
  loc_145141F: Set var_31C = Me.Txt
  loc_1451425: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_320)
  loc_1451434: Proc_6_17_EAA2B0(var_340, CVar(var_320))
  loc_1451473: Proc_6_7_F25D88(var_3F0, Date)
  loc_1451484: var_420 = var_274 & CVar(Val(var_27C.Text)) & "," & var_2E8 & "," & var_340 & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_3F0 & ",'" 
  loc_145159A: unk_4A6503.Execute CStr(var_420 & IIf((CStr(var_434) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_B8, -1
  loc_14515AF: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_14515C8: If (CStr() = "Add") Then
  loc_14515DF:   var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1451605:   var_118 = CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_1451616:   Set var_98 = Me.Txt
  loc_145161C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, var_138, var_118)
  loc_1451624:   var_190 = var_9C.Text
  loc_1451632:   Proc_6_7_F25D88(var_EC, CVar(var_138))
  loc_145163A:   var_128 = -1 & var_EC 
  loc_1451643:   var_180 = CVar(var_168 & ",") & var_EC & " Order By VP.Date_From DESC" 
  loc_1451651:   unk_4A6503.Execute CStr(var_180), var_A0, 
  loc_145165C:   Set var_8C = var_A0
  loc_145169A:   If (var_8C.RecordCount > 0) Then
  loc_14516AB:     Set var_98 = Me.Txt
  loc_14516B1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_14516B9:     var_A4 = var_9C.Text
  loc_14516C6:     var_510 = Val(var_A4)
  loc_14516CC:     var_CC = "Date_From"
  loc_14516EF:     Proc_6_7_F25D88(var_EC, CVar(var_8C.Fields.Item(var_CC)))
  loc_1451722:     var_138 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_510) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1451755:     unk_4A6503.Execute CStr(CVar(var_138 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_EC), var_180, -1
  loc_1451789:   End If
  loc_1451789: End If
  loc_145178F: unk_4A6503.CommitTrans
  loc_14517A2: Set var_98 = Me.Txt
  loc_14517A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_14517B0: var_F8 = var_9C.Text
  loc_14517C4: var_86 = 0
  loc_14517D2: Me.Requery -1
  loc_14517FC: Me.Find "SearchCode ='" & "SearchCode ='" & var_A4 & "'", 0, 1
  loc_145180C: Set var_98 = Me.TopCtrl1
  loc_1451812: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_CC)
  loc_145182B: If (CStr(var_86) = "Add") Then
  loc_145182E:   Call TopCtrl1_UnknownEvent_A()
  loc_1451833:   Exit Sub
  loc_1451834: End If
  loc_1451857: Call Proc_322_30_F8D90C(Proc_5_1_100CB50("INI", Me), global_64)
  loc_145186B: Set var_98 = Me.TopCtrl1
  loc_1451871: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1451882: Set var_98 = Me.TopCtrl1
  loc_1451888: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_1451899: Set var_98 = Me.TopCtrl1
  loc_145189F: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_14518B0: Set var_98 = Me.TopCtrl1
  loc_14518B6: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_14518BE: Call Proc_322_28_EB89CC(var_510)
  loc_14518C8: Set var_8C = Nothing
  loc_14518CB: Exit Sub
  loc_14518CC: ' Referenced from: 1450EA4
  loc_14518D2: If (var_86 = &HFF) Then
  loc_14518DB:   unk_4A6503.RollbackTrans
  loc_14518E0: End If
  loc_14518E0: Proc_6_60_E62BC4()
  loc_14518E5: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E33FD4
  'Data Table: 4A64FC
  loc_E33FC8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E33FCB:   Call DGHelp_UnknownEvent_9()
  loc_E33FD0: End If
  loc_E33FD0: Exit Sub
End Sub

Private Sub CmdPrint_Click() '111304C
  'Data Table: 4A64FC
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_14C As String
  Dim var_160 As String
  Dim unk_4A6503 As Connection15
  Dim var_88 As Recordset15
  Dim var_18E As Integer
  Dim var_A0 As Frame
  Dim var_C4 As Variant
  loc_1112D2C: On Error Goto loc_1113002
  loc_1112D4C: Set var_A0 = Me.Txt
  loc_1112D52: Call 0.Method_CmdPrint_Click0 (CInt(8), var_A4, "SELECT * FROM ForExTrans Left Join ForEx on Forex.Code=ForexTrans.ForexCode where Vdate Between ")
  loc_1112D61: Proc_6_7_F25D88(var_C4, CVar(var_A4), var_180)
  loc_1112D69: var_E4 = -1 & var_C4 
  loc_1112D6D: var_F4 = " and "
  loc_1112D72: var_104 = var_E4 & var_F4 
  loc_1112D81: Set var_108 = Me.Txt
  loc_1112D87: Call 0.Method_CmdPrint_Click0 (CInt(9), var_10C)
  loc_1112D96: Proc_6_7_F25D88(var_12C, CVar(var_10C))
  loc_1112DA2: var_14C = " ORDER BY Forex.Name"
  loc_1112DB5: unk_4A6503.Execute CStr(var_104 & var_12C & var_14C), var_184, 
  loc_1112DC0: Set var_88 = var_184
  loc_1112DEA: var_188 = var_88.RecordCount
  loc_1112DF8: If (var_188 = 0) Then
  loc_1112E14:   MsgBox("No Record Present For Printing", 0, var_C4, var_E4, var_104)
  loc_1112E24:   Exit Sub
  loc_1112E25: End If
  loc_1112E34: var_18C = MemVar_1F920B4 & "\ForExRec.ttx"
  loc_1112E3B: Set var_A0 = var_88 
  loc_1112E47: var_18E = CreateFieldDefFile(var_A0, var_18C)
  loc_1112E51: Set var_88 = var_A0
  loc_1112E57: var_D4 = CVar(var_18E) 'Integer
  loc_1112E5A: var_98 = var_D4 'Variant
  loc_1112E76: var_160 = MemVar_1F920B4 & "\ForExRec.RPT"
  loc_1112E7F: Call 0.Method_arg_1C (var_160, var_D4, var_A0)
  loc_1112E8A: MemVar_1F921E4 = var_A0
  loc_1112EA5: Call 0.Method_arg_90 (var_A0, var_188, var_9A)
  loc_1112EAD: Call 0.Method_arg_24 (1, var_18E)
  loc_1112EB9: For var_192 =  To CInt(var_188): &HFF = var_192 'Integer
  loc_1112ED2:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1112EDA:   Call 0.Method_arg_20 (var_A4)
  loc_1112EE2:   Call 0.Method_arg_30 (var_160)
  loc_1112F28:   If (Ucase(CVar(var_160)) = Ucase("Title")) Then
  loc_1112F3E:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1112F46:     Call 0.Method_arg_20 (var_A4)
  loc_1112F4E:     Call 0.Method_arg_38 ("'Forex Recieve Report'")
  loc_1112F5A:   End If
  loc_1112F5D: Next var_192 'Integer
  loc_1112F7B: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_1112F83: Call 0.Method_arg_2C (var_F4)
  loc_1112F91: Call 0.Method_arg_150 (var_14C)
  loc_1112F9C: Call 0.Method_arg_50 (var_160)
  loc_1112FA6: Set var_A4 = Nothing
  loc_1112FC0: Set var_A0 = MemVar_1F921E4 
  loc_1112FCC: Proc_6_99_1483714(var_A0, 0, var_160)
  loc_1112FD7: MemVar_1F921E4 = var_A0
  loc_1112FEA: Set var_88 = Nothing
  loc_1112FF9: Me.frmprint.Visible = False
  loc_1113001: Exit Sub
  loc_1113002: ' Referenced from: 1112D2C
  loc_111300A: Set var_A0 = Err()
  loc_1113010: Call 0.Method_arg_2C (var_160, &HFF)
  loc_111301B: Call 0.Method_arg_50 (var_18C)
  loc_1113037: MsgBox(CVar(var_160), &H10, CVar(var_18C), var_E4, var_104)
  loc_111304A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F58778
  'Data Table: 4A64FC
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F58661: Set var_A8 = Me.DGHelp
  loc_F58667: var_A8.Visible = False
  loc_F58689: If (Me.var_A8.RecordCount > 0) Then
  loc_F586CB:   Set var_B4 = Me.Txt
  loc_F586D1:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F586D9:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5870F:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F5872E:   Set var_B4 = Me.Txt
  loc_F58734:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5873C:   var_B8.Text = CStr(var_B0.Value)
  loc_F58752: End If
  loc_F5875D: Set var_A8 = Me.Txt
  loc_F58763: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3))
  loc_F5876B: var_B0.SetFocus
  loc_F58777: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A73B4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A73C3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EF6268
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_A0 As Boolean
  loc_EF619A: On Error Goto loc_EF625F
  loc_EF61A3: Me.MoveFirst
  loc_EF61CD: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EF61F5: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_EF6206: Set var_A8 = Me.TopCtrl1
  loc_EF620C: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_EF621D: Set var_A8 = Me.TopCtrl1
  loc_EF6223: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_EF6234: Set var_A8 = Me.TopCtrl1
  loc_EF623A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_EF6242: var_A0 = False
  loc_EF624B: Set var_A8 = Me.TopCtrl1
  loc_EF6251: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030012(var_A0)
  loc_EF6259: Call Proc_322_29_131CBA4(0)
  loc_EF625E: Exit Sub
  loc_EF625F: ' Referenced from: EF619A
  loc_EF625F: Proc_6_60_E62BC4(var_A0)
  loc_EF6264: Exit Sub
  loc_EF6265: CExtInstUnk
End Sub

Public Sub Proc_322_26_DFB6B4
  'Data Table: 4A64FC
  loc_DFB6B0: Exit Sub
End Sub

Public Sub Proc_322_27_F8D73C
  'Data Table: 4A64FC
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4A6503 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8D5FD: Set var_8C = Me.TopCtrl1
  loc_F8D603: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8D60B: var_A0 = CStr()
  loc_F8D61C: If (var_A0 = "Add") Then
  loc_F8D64C:   Set var_8C = Me.Txt
  loc_F8D652:   Call 0.Method_Proc_322_27_F8D73C0 (CInt(0), var_A4, var_A0, "Select Count(*) From ForExTrans Where DocID='", var_9C, -1)
  loc_F8D673:   unk_4A6503.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8D683:    = var_C4.Item()
  loc_F8D68B:    = var_D8.Value
  loc_F8D6B8:   If (var_A4.Text.Fields > 0) Then
  loc_F8D6C1:     Call 0.Method_arg_50 (var_A0)
  loc_F8D6E2:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8D6F8:     Call Proc_322_33_115E0B8(MemVar_1F92044)
  loc_F8D70B:     Set var_8C = Me.Txt
  loc_F8D711:     Call 0.Method_Proc_322_27_F8D73C0 (CInt(0), var_A4)
  loc_F8D719:     var_A4.Text = var_A0
  loc_F8D72D:     Proc_322_27_F8D73C = 0
  loc_F8D733:   End If
  loc_F8D733: End If
  loc_F8D733: Proc_322_27_F8D73C = var_A0
End Sub

Public Sub Proc_322_28_EB89CC
  'Data Table: 4A64FC
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EB893A: Set var_8C = Me.Txt
  loc_EB8940: Call 0.Method_Proc_322_28_EB89CCC (var_8E, var_86)
  loc_EB8950: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB8966:   Set var_8C = Me.Txt
  loc_EB896C:   Call 0.Method_Proc_322_28_EB89CC0 (CInt(var_86), var_98)
  loc_EB8974:   var_98.Text = vbNullString
  loc_EB8990:   Set var_8C = Me.Txt
  loc_EB8996:   Call 0.Method_Proc_322_28_EB89CC0 (CInt(var_86), var_98)
  loc_EB899E:   var_98.Tag = vbNullString
  loc_EB89AD: Next var_92 'Byte
  loc_EB89C0: Me.LblVPrefix.Caption = vbNullString
  loc_EB89C8: Exit Sub
End Sub

Public Sub Proc_322_29_131CBA4
  'Data Table: 4A64FC
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_D8 As Variant
  Dim unk_4A6503 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_1E4 As Recordset15
  Dim var_124 As TextBox
  loc_131C46C: On Error Goto loc_131CB9E
  loc_131C486: If (Me.RecordCount > 0) Then
  loc_131C496:   var_C8 = "SELECT ForEx.Name as ForCurrency, ForExTrans.* FROM ForExTrans LEFT JOIN ForEx ON ForExTrans.ForExCode = ForEx.Code Where DocID='"
  loc_131C4DF:   unk_4A6503.Execute CStr(var_C8 & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_131C4EA:   Set var_88 = var_120
  loc_131C53E:   var_120 = var_88.Fields
  loc_131C5A7:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_131C5EC:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_131C666:   var_124 = var_88.Fields.Item("U_AE")
  loc_131C6C7:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124)) = "E"), "Last Update : ", "entdt : "))
  loc_131C70C:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_131C747:   Set var_1E4 = var_88 
  loc_131C784:   Set var_120 = Me.Txt
  loc_131C78A:   Call 0.Method_Proc_322_29_131CBA40 (CInt(0), var_124)
  loc_131C792:   var_124.Text = CStr(var_1E4.Fields.Item("DocID").Value)
  loc_131C7E0:   Me.LblVPrefix.Caption = CStr(var_1E4.Fields.Item("vPrefix").Value)
  loc_131C81F:   var_D8 = "dd/MMM/yyyy"
  loc_131C846:   Set var_120 = Me.Txt
  loc_131C84C:   Call 0.Method_Proc_322_29_131CBA40 (CInt(2), var_124, CStr(Format(CVar(var_1E4.Fields.Item("VDate")), var_D8)))
  loc_131C854:   var_124.Text = 1
  loc_131C8A7:   Set var_120 = Me.Txt
  loc_131C8AD:   Call 0.Method_Proc_322_29_131CBA40 (CInt(1), var_124)
  loc_131C8B5:   var_124.Text = CStr(var_1E4.Fields.Item("VNo").Value)
  loc_131C901:   Set var_120 = Me.Txt
  loc_131C907:   Call 0.Method_Proc_322_29_131CBA40 (CInt(3), var_124)
  loc_131C90F:   var_124.Tag = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("ForExCode")))
  loc_131C959:   Set var_120 = Me.Txt
  loc_131C95F:   Call 0.Method_Proc_322_29_131CBA40 (CInt(3), var_124)
  loc_131C967:   var_124.Text = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("ForCurrency")))
  loc_131C9A1:   Proc_6_39_E7C810(var_D8, CVar(var_1E4.Fields.Item("qty")))
  loc_131C9B8:   Set var_120 = Me.Txt
  loc_131C9BE:   Call 0.Method_Proc_322_29_131CBA40 (CInt(4), var_124)
  loc_131C9C6:   var_124.Text = CStr(var_D8)
  loc_131CA30:   Set var_120 = Me.Txt
  loc_131CA36:   Call 0.Method_Proc_322_29_131CBA40 (CInt(5), var_124, CStr(Format(CVar(var_1E4.Fields.Item("Rate")), "0.00")))
  loc_131CA3E:   var_124.Text = 1
  loc_131CAAA:   Set var_120 = Me.Txt
  loc_131CAB0:   Call 0.Method_Proc_322_29_131CBA40 (CInt(6), var_124, CStr(Format(CVar(var_1E4.Fields.Item("Amount")), "0.00")), 1)
  loc_131CAB8:   var_124.Text = 1
  loc_131CB08:   Set var_120 = Me.Txt
  loc_131CB0E:   Call 0.Method_Proc_322_29_131CBA40 (CInt(7), var_124)
  loc_131CB16:   var_124.Text = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("PayMode")), 1)
  loc_131CB60:   Set var_120 = Me.Txt
  loc_131CB66:   Call 0.Method_Proc_322_29_131CBA40 (CInt(&HA), var_124)
  loc_131CB6E:   var_124.Text = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("Remarks")))
  loc_131CB84:   Set var_1E4 = Nothing 
  loc_131CB8B: Else
  loc_131CB8B:   Call Proc_322_28_EB89CC(1)
  loc_131CB90: End If
  loc_131CB90: Call Proc_322_31_EB8594()
  loc_131CB9A: Set var_88 = Nothing
  loc_131CB9D: Exit Sub
  loc_131CB9E: ' Referenced from: 131C46C
  loc_131CB9E: Proc_6_60_E62BC4()
  loc_131CBA3: Exit Sub
End Sub

Public Sub Proc_322_30_F8D90C(arg_C) 'F8D90C
  'Data Table: 4A64FC
  Dim var_98 As TextBox
  loc_F8D7AA: Set var_8C = Me.Txt
  loc_F8D7B0: Call 0.Method_Proc_322_30_F8D90CC (var_8E, var_86)
  loc_F8D7C0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F8D7D6:   Set var_8C = Me.Txt
  loc_F8D7DC:   Call 0.Method_Proc_322_30_F8D90C0 (CInt(var_86), var_98)
  loc_F8D7E4:   var_98.Enabled = arg_C
  loc_F8D7F3: Next var_92 'Byte
  loc_F8D806: Set var_8C = Me.Txt
  loc_F8D80C: Call 0.Method_Proc_322_30_F8D90C0 (CInt(0), var_98)
  loc_F8D814: var_98.Enabled = False
  loc_F8D82D: Set var_8C = Me.Txt
  loc_F8D833: Call 0.Method_Proc_322_30_F8D90C0 (CInt(1), var_98)
  loc_F8D83B: var_98.Enabled = False
  loc_F8D854: Set var_8C = Me.Txt
  loc_F8D85A: Call 0.Method_Proc_322_30_F8D90C0 (CInt(2), var_98)
  loc_F8D862: var_98.Enabled = False
  loc_F8D87B: Set var_8C = Me.Txt
  loc_F8D881: Call 0.Method_Proc_322_30_F8D90C0 (CInt(7), var_98)
  loc_F8D889: var_98.Enabled = False
  loc_F8D8A2: Set var_8C = Me.Txt
  loc_F8D8A8: Call 0.Method_Proc_322_30_F8D90C0 (CInt(6), var_98)
  loc_F8D8B0: var_98.Enabled = False
  loc_F8D8C9: Set var_8C = Me.Txt
  loc_F8D8CF: Call 0.Method_Proc_322_30_F8D90C0 (CInt(8), var_98)
  loc_F8D8D7: var_98.Enabled = True
  loc_F8D8F0: Set var_8C = Me.Txt
  loc_F8D8F6: Call 0.Method_Proc_322_30_F8D90C0 (CInt(9), var_98)
  loc_F8D8FE: var_98.Enabled = True
  loc_F8D90A: Exit Sub
End Sub

Public Sub Proc_322_31_EB8594
  'Data Table: 4A64FC
  loc_EB850F: If (Me.FrmList.Visible = &HFF) Then
  loc_EB851E:   Me.FrmList.Visible = False
  loc_EB8526: End If
  loc_EB8542: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB8554:   Me.DGHelp.Visible = False
  loc_EB855C: End If
  loc_EB8578: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB858A:   Me.FGPoint.Visible = False
  loc_EB8592: End If
  loc_EB8592: Exit Sub
End Sub

Public Sub Proc_322_32_E902C0(arg_C) 'E902C0
  'Data Table: 4A64FC
  Dim var_10C As TextBox
  loc_E90254: Call Proc_322_31_EB8594()
  loc_E90290: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90293:   Call TopCtrl1_UnknownEvent_16()
  loc_E9029B: Else
  loc_E902A5:   Set var_108 = Me.Txt
  loc_E902AB:   Call 0.Method_Proc_322_32_E902C00 (arg_C)
  loc_E902B3:   var_10C.SetFocus
  loc_E902BF: End If
  loc_E902BF: Exit Sub
End Sub

Public Sub Proc_322_33_115E0B8
  'Data Table: 4A64FC
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115DD50: var_90 = global_60
  loc_115DD67: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115DD8A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115DD98: Set var_B4 = Me.Txt
  loc_115DD9E: Call 0.Method_Proc_322_33_115E0B80 (CInt(2), var_B8, var_E8)
  loc_115DDAD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115DDB5: var_F8 = -1 & var_D8 
  loc_115DDC9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115DDD4: Set var_8C = var_140
  loc_115DE10: If (var_8C.RecordCount <= 0) Then
  loc_115DE2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115DE3F:   var_88 = vbNullString
  loc_115DE42:   Proc_322_33_115E0B8 = 
  loc_115DE48: End If
  loc_115DE5C: If (var_8C.RecordCount > 0) Then
  loc_115DE9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115DEB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115DEC9:     var_9C = CStr(var_B8.Value)
  loc_115DEE4:     Set var_B4 = Me.Txt
  loc_115DEEA:     Call 0.Method_Proc_322_33_115E0B80 (CInt(1), var_B8)
  loc_115DF00:     var_94 = CLng(Val(var_B8.Text))
  loc_115DF10:   Else
  loc_115DF3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115DF62:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115DF77:     var_D8 = (var_B8.Value + 1)
  loc_115DF7D:     var_94 = CLng(var_D8)
  loc_115DF8E:   End If
  loc_115DF8E: End If
  loc_115DFB9: var_C8 = Space((5 - Len(var_90)))
  loc_115DFC1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115DFCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115DFDC: var_118 = Space((5 - Len(var_9C)))
  loc_115DFE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115DFFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115E002: var_188 = (var_13C + var_178)
  loc_115E00E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115E013: var_98 = CStr(var_1A8)
  loc_115E043: Me.LblVPrefix.Caption = var_9C
  loc_115E059: Set var_B4 = Me.Txt
  loc_115E05F: Call 0.Method_Proc_322_33_115E0B80 (CInt(0), var_B8)
  loc_115E067: var_B8.Text = var_98
  loc_115E086: Set var_B4 = Me.Txt
  loc_115E08C: Call 0.Method_Proc_322_33_115E0B80 (CInt(1), var_B8)
  loc_115E094: var_B8.Text = CStr(var_94)
  loc_115E0A6: var_88 = var_98
  loc_115E0AE: Set var_8C = Nothing
  loc_115E0B1: Proc_322_33_115E0B8 = var_94
End Sub

Public Sub Proc_322_34_EE31B8
  'Data Table: 4A64FC
  loc_EE3106: On Error Goto loc_EE314C
  loc_EE311E: Call 0.Method_arg_18C (var_8C)
  loc_EE3126: Call var_8C.Show
  loc_EE313B: Call 0.Method_arg_188 (var_B0)
  loc_EE3143: var_88 = var_B0
  loc_EE3146: Proc_322_34_EE31B8 = 1
  loc_EE314C: ' Referenced from: EE3106
  loc_EE3154: Set var_8C = Err()
  loc_EE315A: Call 0.Method_arg_1C (var_B4)
  loc_EE316B: If (var_B4 <> 0) Then
  loc_EE3176:   Set var_8C = Err()
  loc_EE317C:   Call 0.Method_arg_2C (var_B0)
  loc_EE319D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE31B0: End If
  loc_EE31B0: Proc_322_34_EE31B8 = 
End Sub
