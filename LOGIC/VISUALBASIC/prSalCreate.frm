VERSION 5.00
Begin VB.Form prSalCreate
  Caption = "Salary Creation"
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
  ClientWidth = 7590
  ClientHeight = 3600
  LockControls = -1  'True
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
  Begin DataGrid DGEmployee
    Left = 8640
    Top = 2475
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGDepartment
    Left = 8775
    Top = 1740
    Width = 4185
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin CheckBox ChkDepart
    Caption = "All Department"
    BackColor = &HD0C7BB&
    ForeColor = &HC00000&
    Left = 1980
    Top = 1575
    Width = 1755
    Height = 240
    TabIndex = 21
    Value = 1
    Alignment = 1 'Right Justify
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
    Index = 2
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1560
    Width = 3780
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7590
    Height = 450
    Visible = 0   'False
    TabIndex = 19
  End
  Begin PictureBox Picture3
    Picture = "prSalCreate.frx":0
    Left = 14205
    Top = 750
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 6105
    Top = 1245
    Width = 1470
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 3795
    Top = 1875
    Width = 3780
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin CheckBox ChkEmp
    Caption = "All Employee"
    BackColor = &HD0C7BB&
    ForeColor = &HC00000&
    Left = 1980
    Top = 1890
    Width = 1755
    Height = 240
    TabIndex = 4
    Value = 1
    Alignment = 1 'Right Justify
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1245
    Width = 975
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin CommandButton Command1z
    Caption = "&Exit"
    Index = 1
    BackColor = &HFFFF&
    Left = 6060
    Top = 6810
    Width = 1920
    Height = 450
    Visible = 0   'False
    TabIndex = 9
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
  Begin CommandButton Command1z
    Caption = "&Create Salary"
    Index = 0
    BackColor = &HFFFF&
    Left = 2100
    Top = 6810
    Width = 2010
    Height = 450
    Visible = 0   'False
    TabIndex = 8
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
  Begin CommandButton Command2z
    Caption = "&DeCreate Salary"
    BackColor = &HFFFF&
    Left = 4125
    Top = 6810
    Width = 1920
    Height = 450
    Visible = 0   'False
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
End
Begin DataGrid DGAgentName
  Left = 11085
  Top = 3585
  Width = 4230
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 11
End
Begin MSFlexGrid FGPoint
  Left = 12825
  Top = 6720
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 16
End
Begin BtnEnh Command1
  Left = 2085
  Top = 3555
  Width = 2310
  Height = 705
  TabIndex = 5
End
Begin BtnEnh Command2
  Left = 4455
  Top = 3555
  Width = 2310
  Height = 705
  TabIndex = 6
End
Begin BtnEnh CmdExit
  Left = 6825
  Top = 3555
  Width = 2310
  Height = 705
  TabIndex = 7
End
Begin Label LblEmpRef
  Caption = "."
  BackColor = &H80000005&
  ForeColor = &HFF0000&
  Left = 7695
  Top = 1860
  Width = 105
  Height = 270
  TabIndex = 20
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 18
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
  Caption = "Salary Date"
  Index = 1
  ForeColor = &HC00000&
  Left = 4905
  Top = 1245
  Width = 1110
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
Begin Shape Shape1
  Left = 2190
  Top = 5730
  Width = 5925
  Height = 525
  Visible = 0   'False
  FillStyle = 0
End
Begin Label Label1
  Caption = "For Month"
  Index = 0
  ForeColor = &HC00000&
  Left = 2670
  Top = 1260
  Width = 960
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
Begin Label LabelSal
  Caption = "Salary Creation"
  BackColor = &H80000005&
  ForeColor = &HFF&
  Left = 4290
  Top = 4635
  Width = 2085
  Height = 360
  TabIndex = 13
  Alignment = 2 'Center
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 13.5
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
End

Attribute VB_Name = "prSalCreate"


Private Sub Txt_GotFocus(Index As Integer) '12486FC
  'Data Table: 4C2D78
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  loc_12481C6: Set var_88 = Me.Txt
  loc_12481CC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12481DA: Proc_6_74_E226B0(var_8C)
  loc_12481E6: Call Proc_310_20_EBCBEC(var_8C)
  loc_12481EE: var_92 = Index
  loc_12481F9: If (var_92 = CInt(0)) Then
  loc_1248204:   var_98 = "{Home}+{End}"
  loc_124820A:   Proc_303_0_FB9B68(var_98, 0)
  loc_1248215: Else
  loc_124821D:   If (var_92 = CInt(2)) Then
  loc_124822D:     Set var_88 = Me.Txt
  loc_1248233:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124823B:     var_98 = var_8C.Text
  loc_1248246:     global_60 = var_98
  loc_1248261:     Set var_88 = Me.Txt
  loc_1248267:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1248286:     Me.DGDepartment.Left = CVar(var_8C.Left)
  loc_12482A1:     Set var_90 = Me.Txt
  loc_12482A7:     Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_12482C1:     Set var_88 = Me.Txt
  loc_12482C7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12482DB:     var_B0 = CVar((var_8C.Top + var_C4.Height)) 'Single
  loc_12482EA:     Me.DGDepartment.Top = CVar(var_8C.Left)
  loc_1248313:     If (Me.RecordCount > 0) Then
  loc_1248321:       Set var_8C = Me.FGPoint
  loc_1248339:       Proc_6_137_1193554(Me.DGDepartment, global_56, Index)
  loc_1248347:     End If
  loc_1248395:     Set var_88 = Me.Txt
  loc_124839B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12483A3:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12483BB:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_12483BE:       Exit Sub
  loc_12483BF:     End If
  loc_12483CC:     Set var_88 = Me.Txt
  loc_12483D2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12483DA:     var_98 = var_8C.Text
  loc_12483E2:     var_F0 = CVar(var_98) 'String
  loc_1248403:     var_C4 = Me.Fields.Item("Name")
  loc_1248427:     If CBool(var_F0 <> var_C4.Value) Then
  loc_1248430:       Me.MoveFirst
  loc_1248455:       Set var_88 = Me.Txt
  loc_124845B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name =")
  loc_1248463:       0 = var_8C.Text
  loc_1248471:       Proc_6_17_EAA2B0(var_F0, CVar(var_98), 1)
  loc_1248487:       Me.Find CStr(var_C0 & var_F0), var_92, 
  loc_124849F:     End If
  loc_12484A2:   Else
  loc_12484AA:     If (var_92 = CInt(3)) Then
  loc_12484BA:       Set var_88 = Me.Txt
  loc_12484C0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12484DF:       Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_12484FA:       Set var_90 = Me.Txt
  loc_1248500:       Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_124851A:       Set var_88 = Me.Txt
  loc_1248520:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1248534:       var_B0 = CVar((var_8C.Top + var_C4.Height)) 'Single
  loc_1248543:       Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_124856C:       If (Me.RecordCount > 0) Then
  loc_124857A:         Set var_8C = Me.FGPoint
  loc_1248592:         Proc_6_137_1193554(Me.DGEmployee, global_52)
  loc_12485A0:       End If
  loc_12485EE:       Set var_88 = Me.Txt
  loc_12485F4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12485FC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1248614:       If (Index Or (var_98 = vbNullString)) Then
  loc_1248617:         Exit Sub
  loc_1248618:       End If
  loc_1248625:       Set var_88 = Me.Txt
  loc_124862B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1248633:       var_98 = var_8C.Text
  loc_124863B:       var_F0 = CVar(var_98) 'String
  loc_1248680:       If CBool(var_F0 <> Me.Fields.Item("Name").Value) Then
  loc_1248689:         Me.MoveFirst
  loc_12486AE:         Set var_88 = Me.Txt
  loc_12486B4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name =")
  loc_12486BC:         0 = var_8C.Text
  loc_12486CA:         Proc_6_17_EAA2B0(var_F0, CVar(var_98), 1)
  loc_12486E0:         Me.Find CStr(var_C0 & var_F0), var_8C, 
  loc_12486F8:       End If
  loc_12486F8:     End If
  loc_12486F8:   End If
  loc_12486F8: End If
  loc_12486F8: Exit Sub
  loc_12486F9:  = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10E488C
  'Data Table: 4C2D78
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_10E4587: var_86 = Shift
  loc_10E4594: If (CLng(Shift) = &H1B) Then
  loc_10E4597:   Call Proc_310_20_EBCBEC(var_86)
  loc_10E459C:   Exit Sub
  loc_10E459D: End If
  loc_10E45A0: var_88 = KeyCode
  loc_10E45AB: If (var_88 = CInt(2)) Then
  loc_10E45CB:   Set var_9C = Me.FGPoint
  loc_10E45D6:   Set var_98 = Nothing
  loc_10E4604:   Proc_6_69_134A198(Me.DGDepartment, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10E4673:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10E4699:     Proc_6_138_106D6F8(Me.DGDepartment, global_56, KeyCode, Me.FGPoint, 1)
  loc_10E46A7:   End If
  loc_10E46AA: Else
  loc_10E46B2:   If (var_88 = CInt(3)) Then
  loc_10E46D2:     Set var_9C = Me.FGPoint
  loc_10E46DD:     Set var_98 = Nothing
  loc_10E470B:     Proc_6_69_134A198(Me.DGEmployee, Me.Txt, KeyCode, global_52, Shift, 0, 1)
  loc_10E477A:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10E4781:       Set var_98 = Me.DGEmployee
  loc_10E47A0:       Proc_6_138_106D6F8(var_98, global_52, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10E47AE:     End If
  loc_10E47AE:   End If
  loc_10E47AE: End If
  loc_10E47E9: If ((CBool(Me.DGDepartment.Visible) = 0) And (CBool(Me.DGEmployee.Visible) = 0)) Then
  loc_10E480A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(3))) Then
  loc_10E4813:     Proc_6_75_E527CC(Shift, arg_14, 0, var_98)
  loc_10E4818:   End If
  loc_10E481C:   Set var_8C = Me.TopCtrl1
  loc_10E4822:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000C(var_9C)
  loc_10E4844:   If ((CStr(0) = "Browse") And (KeyCode <> CInt(2))) Then
  loc_10E485C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10E4865:       Proc_6_76_E52838(Shift, arg_14)
  loc_10E486A:     End If
  loc_10E486A:   End If
  loc_10E4888:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10E488B:   End If
  loc_10E488B: End If
  loc_10E488B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F77234
  'Data Table: 4C2D78
  Dim var_86 As Integer
  loc_F770F0: On Error Goto loc_F7722D
  loc_F770F6: Proc_6_58_E054C0(arg_10)
  loc_F770FE: var_86 = KeyAscii
  loc_F77109: If (var_86 = CInt(2)) Then
  loc_F77128:   If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F7713A:     var_A0 = "Name"
  loc_F77155:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_F77187:     Proc_6_138_106D6F8(Me.DGDepartment, global_56, KeyAscii, Me.FGPoint)
  loc_F77195:   End If
  loc_F77198: Else
  loc_F771A0:   If (var_86 = CInt(3)) Then
  loc_F771BF:     If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F771D1:       var_A0 = "Name"
  loc_F771EC:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, var_A0)
  loc_F7721E:       Proc_6_138_106D6F8(Me.DGEmployee, global_52, KeyAscii, Me.FGPoint)
  loc_F7722C:     End If
  loc_F7722C:   End If
  loc_F7722C: End If
  loc_F7722C: Exit Sub
  loc_F7722D: ' Referenced from: F770F0
  loc_F7722D: Proc_6_60_E62BC4(0, var_A0)
  loc_F77232: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F14FE0
  'Data Table: 4C2D78
  Dim var_86 As Integer
  Dim MemVar_5F7EF8 As Currency
  loc_F14EF3: var_86 = KeyCode
  loc_F14EFE: If (var_86 = CInt(2)) Then
  loc_F14F1D:   If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F14F31:     var_A4 = "Name"
  loc_F14F55:     Proc_6_68_129FB34(Me.DGDepartment, Me.Txt, KeyCode, global_56)
  loc_F14F68:   End If
  loc_F14F6B: Else
  loc_F14F73:   If (var_86 = CInt(3)) Then
  loc_F14F92:     If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F14FA6:       var_A4 = "Name"
  loc_F14FCA:       Proc_6_68_129FB34(Me.DGEmployee, Me.Txt, KeyCode, global_52, Shift)
  loc_F14FDD:     End If
  loc_F14FDD:   End If
  loc_F14FDD: End If
  loc_F14FDD: Exit Sub
  loc_F14FDE: MemVar_5F7EF8 = var_A4
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E485CC
  'Data Table: 4C2D78
  loc_E485AA: Set var_88 = Me.Txt
  loc_E485B0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E485BE: Proc_6_73_E22704(var_8C)
  loc_E485CA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1318D78
  'Data Table: 4C2D78
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_E4 As Variant
  Dim var_EC As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_E8 As Fields15
  loc_1318620: On Error Goto loc_1318D70
  loc_1318626: var_86 = Cancel
  loc_1318631: If (var_86 = CInt(0)) Then
  loc_1318642:   Set var_8C = Me.Txt
  loc_1318648:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1318680:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1318695:     Set var_8C = Me.Txt
  loc_131869B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13186A3:     var_90.Text = CStr(MemVar_1F920EC)
  loc_13186BC:     Set var_8C = Me.Txt
  loc_13186C2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13186E2:     Set var_EC = Me.Txt
  loc_13186E8:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_13186F0:     var_F0.Text = Proc_6_120_133A1D8(var_90)
  loc_1318706:   Else
  loc_1318710:     Set var_8C = Me.Txt
  loc_1318716:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318736:     Set var_EC = Me.Txt
  loc_131873C:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_1318744:     var_F0.Text = Proc_6_120_133A1D8(var_90)
  loc_1318757:   End If
  loc_1318762:   Set var_8C = Me.Txt
  loc_1318768:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_131876D:   var_100 = "01/"
  loc_13187CB:   var_94 = CStr(CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(var_90), "mmm/yyyy")))))))
  loc_13187D9:   Set var_E8 = Me.Txt
  loc_13187DF:   Call 0.Method_Txt_Validate0 (CInt(1), var_EC, var_94)
  loc_13187E7:   var_EC.Text = 1
  loc_1318810: Else
  loc_1318818:   If (var_86 = CInt(1)) Then
  loc_1318828:     Set var_8C = Me.Txt
  loc_131882E:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1318836:     var_100 = var_90.Text
  loc_1318854:     Set var_E8 = Me.Txt
  loc_131885A:     Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318862:     var_EC.Text = Proc_6_34_14ECF20(var_94)
  loc_131887C:   Else
  loc_1318884:     If (var_86 = CInt(2)) Then
  loc_13188D5:       Set var_8C = Me.Txt
  loc_13188DB:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13188E3:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13188FB:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_131890B:         Set var_8C = Me.Txt
  loc_1318911:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318919:         var_90.Text = vbNullString
  loc_1318932:         Set var_8C = Me.Txt
  loc_1318938:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318940:         var_90.Tag = vbNullString
  loc_131895B:         Me.Filter = 0
  loc_131896B:         Me.Requery -1
  loc_1318973:       Else
  loc_13189AE:         Set var_E8 = Me.Txt
  loc_13189B4:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_13189BC:         var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13189EF:         var_90 = Me.Fields.Item("Code")
  loc_1318A0D:         Set var_E8 = Me.Txt
  loc_1318A13:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318A1B:         var_EC.Tag = CStr(var_90.Value)
  loc_1318A31:       End If
  loc_1318A44:       Set var_8C = Me.Txt
  loc_1318A4A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318A66:       If (global_60 <> var_90.Text) Then
  loc_1318A78:         Me.Filter = 0
  loc_1318A8E:         Set var_8C = Me.Txt
  loc_1318A94:         Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1318AB6:         Me.Filter = CVar("DepartCode='" & var_90.Tag & "'")
  loc_1318ADA:         Set var_8C = Me.Txt
  loc_1318AE0:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1318AE8:         var_90.Text = vbNullString
  loc_1318B02:         Set var_8C = Me.Txt
  loc_1318B08:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1318B10:         var_90.Tag = vbNullString
  loc_1318B29:         Me.LblEmpRef.Caption = vbNullString
  loc_1318B31:       End If
  loc_1318B34:     Else
  loc_1318B3C:       If (var_86 = CInt(3)) Then
  loc_1318B8D:         Set var_8C = Me.Txt
  loc_1318B93:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318BB3:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1318BC3:           Set var_8C = Me.Txt
  loc_1318BC9:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318BD1:           var_90.Text = vbNullString
  loc_1318BEA:           Set var_8C = Me.Txt
  loc_1318BF0:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1318BF8:           var_90.Tag = vbNullString
  loc_1318C11:           Me.LblEmpRef.Caption = vbNullString
  loc_1318C1C:         Else
  loc_1318C57:           Set var_E8 = Me.Txt
  loc_1318C5D:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318C65:           var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1318CB6:           Set var_E8 = Me.Txt
  loc_1318CBC:           Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1318CC4:           var_EC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1318D07:           var_100 = " - "
  loc_1318D0C:           var_B4 = (Me.Fields.Item("Department").Value + var_100)
  loc_1318D3D:           var_E4 = ("mmm/yyyy" + Me.Fields.Item("Designation").Value)
  loc_1318D4F:           Me.LblEmpRef.Caption = CStr(1 & Format(CVar(Me.Fields.Item("Department")), "mmm/yyyy"))
  loc_1318D6F:         End If
  loc_1318D6F:       End If
  loc_1318D6F:     End If
  loc_1318D6F:   End If
  loc_1318D6F: End If
  loc_1318D6F: Exit Sub
  loc_1318D70: ' Referenced from: 1318620
  loc_1318D70: Proc_6_60_E62BC4()
  loc_1318D75: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_9 'F45124
  'Data Table: 4C2D78
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4501B: Me.DGDepartment.Visible = False
  loc_F4503A: If (Me.RecordCount > 0) Then
  loc_F45079:   Set var_B4 = Me.Txt
  loc_F4507F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(2), var_B8)
  loc_F45087:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F450BA:   var_B0 = Me.Fields.Item("Name")
  loc_F450D9:   Set var_B4 = Me.Txt
  loc_F450DF:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(2), var_B8)
  loc_F450E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F450FD: End If
  loc_F45108: Set var_A8 = Me.Txt
  loc_F4510E: Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(2))
  loc_F45116: var_B0.SetFocus
  loc_F45122: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_1F 'E74384
  'Data Table: 4C2D78
  loc_E74342: Proc_6_153_E91194(Me.DGDepartment, arg_14)
  loc_E74359: Set var_8C = Me.FGPoint
  loc_E74375: Proc_6_138_106D6F8(Me.DGDepartment, global_56, CInt(2))
  loc_E74383: Exit Sub
End Sub

Private Sub ChkDepart_Click() 'F1C084
  'Data Table: 4C2D78
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  Dim Me As Recordset15
  loc_F1BF97: If (Me.ChkDepart.Value = 1) Then
  loc_F1BFA7:   Set var_88 = Me.Txt
  loc_F1BFAD:   Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1BFB5:   var_90.Enabled = False
  loc_F1BFCF:   Set var_88 = Me.Txt
  loc_F1BFD5:   Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1BFDD:   var_90.Text = vbNullString
  loc_F1BFF7:   Set var_88 = Me.Txt
  loc_F1BFFD:   Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1C005:   var_90.Tag = vbNullString
  loc_F1C011:   Call Proc_310_20_EBCBEC()
  loc_F1C025:   Me.Filter = 0
  loc_F1C035:   Me.Requery -1
  loc_F1C03D: Else
  loc_F1C058:   If (Me.ChkDepart.Value = 0) Then
  loc_F1C068:     Set var_88 = Me.Txt
  loc_F1C06E:     Call 0.Method_ChkDepart_Click0 (CInt(2), var_90)
  loc_F1C076:     var_90.Enabled = True
  loc_F1C082:   End If
  loc_F1C082: End If
  loc_F1C082: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E641F4
  'Data Table: 4C2D78
  loc_E641C4: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E641C7:   Call DGEmployee_UnknownEvent_9()
  loc_E641CC: End If
  loc_E641E8: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_E641EB:   Call DGDepartment_UnknownEvent_9()
  loc_E641F0: End If
  loc_E641F0: Exit Sub
End Sub

Private Sub Form_Load() 'F9B7C4
  'Data Table: 4C2D78
  Dim var_88 As Shape
  Dim var_98 As Variant
  Dim var_BC As String
  Dim var_CC As TextBox
  loc_F9B65B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F9B66E: Me.Shape1.BackColor = CLng(MemVar_1F921B0)
  loc_F9B692: Me.Recordset15.CursorLocation = 3
  loc_F9B6AE: var_98 = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation,IsNull(Depart.Code,'') As DepartCode From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Order by Name"
  loc_F9B6C8: CVarUnk
  loc_F9B6CD: VerifyVarObj
  loc_F9B6D3: Set var_88 = Me.DGEmployee
  loc_F9B6D9: LateIdStAd
  loc_F9B703: Me.DGEmployee.CursorLocation = 3
  loc_F9B726: var_BC = "Select Distinct G.Code,G.Name From GodownMast G iNNER join Employee E on E.Department=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_F9B737: r_98, CVar(MemVar_1F92044), 2 CVar(var_BC & "')  Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_F9B74B: CVarUnk
  loc_F9B750: VerifyVarObj
  loc_F9B756: Set var_88 = Me.DGDepartment
  loc_F9B75C: LateIdStAd
  loc_F9B775: Set var_88 = Me.Txt
  loc_F9B77B: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_88, New, 3)
  loc_F9B78E: var_BC = Proc_6_120_133A1D8(var_C0, -1, var_88)
  loc_F9B79C: Set var_C8 = Me.Txt
  loc_F9B7A2: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_BC)
  loc_F9B7AA: var_CC.Text = New
  loc_F9B7BD: Exit Sub
  loc_F9B7BE: Proc_6_60_E62BC4(3)
  loc_F9B7C3: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3898
  'Data Table: 4C2D78
  Dim var_8C As Label
  loc_ED37F6: Call 0.Method_arg_50 (var_88)
  loc_ED3808: Me.LblFormCaption.Caption = var_88
  loc_ED3821: Me.LblFormCaption.Left = CDbl(0)
  loc_ED382D: Set var_A0 = Me.TopCtrl1
  loc_ED3833: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED3840: Set var_8C = Me.TopCtrl1
  loc_ED3846: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED3860: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED387B: Call 0.Method_arg_100 (var_B8)
  loc_ED388D: Me.LblFormCaption.Width = var_B8
  loc_ED3895: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29834
  'Data Table: 4C2D78
  loc_E29817: Set global_52 = Nothing
  loc_E29829: Set global_56 = Nothing
  loc_E29830: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2977C
  'Data Table: 4C2D78
  loc_E29754: On Error Goto loc_E29774
  loc_E2976B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29773: Exit Sub
  loc_E29774: ' Referenced from: E29754
  loc_E29774: Proc_6_60_E62BC4(Shift)
  loc_E29779: Exit Sub
End Sub

Private Sub ChkEmp_Click() 'F101D4
  'Data Table: 4C2D78
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_F100F7: If (Me.ChkEmp.Value = 1) Then
  loc_F10107:   Set var_88 = Me.Txt
  loc_F1010D:   Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F10115:   var_90.Enabled = False
  loc_F1012F:   Set var_88 = Me.Txt
  loc_F10135:   Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F1013D:   var_90.Text = vbNullString
  loc_F10157:   Set var_88 = Me.Txt
  loc_F1015D:   Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F10165:   var_90.Tag = vbNullString
  loc_F1017E:   Me.LblEmpRef.Caption = vbNullString
  loc_F10186:   Call Proc_310_20_EBCBEC()
  loc_F1018E: Else
  loc_F101A9:   If (Me.ChkEmp.Value = 0) Then
  loc_F101B9:     Set var_88 = Me.Txt
  loc_F101BF:     Call 0.Method_ChkEmp_Click0 (CInt(3), var_90)
  loc_F101C7:     var_90.Enabled = True
  loc_F101D3:   End If
  loc_F101D3: End If
  loc_F101D3: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F41344
  'Data Table: 4C2D78
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4123B: Me.DGEmployee.Visible = False
  loc_F4125A: If (Me.RecordCount > 0) Then
  loc_F41299:   Set var_B4 = Me.Txt
  loc_F4129F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(3), var_B8)
  loc_F412A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F412DA:   var_B0 = Me.Fields.Item("Name")
  loc_F412F9:   Set var_B4 = Me.Txt
  loc_F412FF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(3), var_B8)
  loc_F41307:   var_B8.Text = CStr(var_B0.Value)
  loc_F4131D: End If
  loc_F41328: Set var_A8 = Me.Txt
  loc_F4132E: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(3))
  loc_F41336: var_B0.SetFocus
  loc_F41342: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E73F78
  'Data Table: 4C2D78
  loc_E73F36: Proc_6_153_E91194(Me.DGEmployee, arg_14)
  loc_E73F4D: Set var_8C = Me.FGPoint
  loc_E73F69: Proc_6_138_106D6F8(Me.DGEmployee, global_52, CInt(3))
  loc_E73F77: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '1D0329C
  'Data Table: 4C2D78
  Dim var_234 As Variant
  Dim var_228 As Variant
  Dim var_23C As String
  Dim var_92 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_2BC As Variant
  Dim var_2EC As Variant
  Dim var_27C As Variant
  Dim var_22C As String
  Dim unk_4C2D90 As Connection15
  Dim var_224 As Variant
  Dim var_304 As String
  Dim var_308 As String
  Dim var_238 As String
  Dim var_2DC As Variant
  Dim var_28C As Variant
  Dim var_2FC As Variant
  Dim var_318 As Variant
  Dim var_33C As String
  Dim var_230 As Variant
  Dim var_344 As Variant
  Dim var_20C As Recordset15
  Dim var_358 As Variant
  Dim var_29C As Variant
  Dim var_2CC As Variant
  Dim var_1B4 As Double
  Dim var_1BC As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_208 As Recordset15
  Dim var_90 As Variant
  Dim var_328 As Variant
  Dim var_378 As Variant
  Dim var_A0 As Variant
  Dim var_C0 As Double
  Dim var_14C As Double
  Dim var_39C As Variant
  Dim var_414 As Variant
  Dim var_338 As Variant
  Dim var_388 As Variant
  Dim var_3BC As Variant
  Dim var_3CC As Variant
  Dim var_3EC As Variant
  Dim var_400 As Variant
  Dim var_404 As Variant
  Dim var_418 As Variant
  Dim var_1F4 As Double
  Dim var_3DC As Variant
  Dim var_428 As Variant
  Dim var_43C As Variant
  Dim var_3AC As Variant
  Dim var_46C As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_124 As Double
  Dim var_11C As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_188 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_154 As Double
  Dim var_16C As Double
  Dim var_164 As Double
  Dim var_15C As Double
  Dim var_13C As Double
  Dim var_210 As Recordset15
  Dim var_200 As Recordset15
  Dim var_220 As Recordset15
  Dim var_3FC As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_44C As Variant
  Dim var_45C As Variant
  Dim var_4DC As Variant
  Dim var_4FC As Variant
  Dim var_38C As Variant
  Dim var_218 As Recordset15
  Dim var_524 As Double
  Dim var_52C As Double
  Dim var_534 As Double
  Dim var_19C As Double
  Dim var_144 As Double
  Dim var_1A4 As Double
  Dim var_538 As Variant
  Dim var_53C As Fields15
  Dim var_540 As Field20
  Dim var_178 As Double
  Dim var_1AC As Double
  Dim var_194 As Long
  Dim var_5B0 As Variant
  Dim var_51C As Variant
  Dim var_580 As Variant
  Dim var_5A0 As Variant
  Dim var_5D0 As Variant
  Dim var_5F0 As Variant
  Dim var_610 As Variant
  Dim unk_4C2E40 As Connection15
  Dim var_65C As String
  Dim var_654 As Fields15
  Dim var_4CC As Variant
  Dim var_5C0 As Variant
  Dim var_650 As Variant
  Dim var_180 As Double
  Dim var_190 As Double
  Dim var_688 As Fields15
  Dim var_684 As Variant
  Dim var_800 As Variant
  Dim var_6DC As Variant
  Dim var_8C0 As Variant
  loc_1CFBF3A: Set var_230 = Me.Txt
  loc_1CFBF40: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234)
  loc_1CFBF48: var_238 = var_234.Text
  loc_1CFBF5B: Set var_224 = Me.Txt
  loc_1CFBF61: Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1CFBF94: If (CDate(var_228.Text) < CDate("01/" & var_238)) Then
  loc_1CFBFB0:   MsgBox("Salary Date can't be less than Salary Month & Year", 0, var_27C, var_29C, var_2BC)
  loc_1CFBFC0:   Exit Sub
  loc_1CFBFC1: End If
  loc_1CFBFD1: Set var_224 = Me.Txt
  loc_1CFBFD7: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228)
  loc_1CFBFE7: Set var_230 = Me.Txt
  loc_1CFBFED: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234)
  loc_1CFC00A: var_25C = CVar(var_228) 'Address
  loc_1CFC011: var_29C = Format(var_25C, "MMM")
  loc_1CFC028: var_2CC = "YYYY"
  loc_1CFC040: var_2EC = (1 + Format(CVar(var_234), var_2CC))
  loc_1CFC050: var_170 = CStr(Ucase(var_2EC))
  loc_1CFC08A: Proc_6_17_EAA2B0(var_25C, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_29C, -1, var_224)
  loc_1CFC0A0: unk_4C2D90.Execute CStr(1 & var_25C), var_29C, 1
  loc_1CFC0AB: Set var_208 = var_224
  loc_1CFC0D8: If (Me.ChkEmp.Value = 0) Then
  loc_1CFC0EF:   var_22C = "Select E.*,EC.Name,EC.Type From Employee E Left Join EmpCategory EC On E.Category=EC.Code Where E.LOGSITE_CODE='" & MemVar_1F92078
  loc_1CFC107:   Set var_224 = Me.Txt
  loc_1CFC10D:   Call 0.Method_Command1_UnknownEvent_90 (CInt(3), var_228, var_238, var_22C & "' and E.Code='", var_25C)
  loc_1CFC115:   -1 = var_228.Tag
  loc_1CFC11E:   var_304 = var_230 & var_238
  loc_1CFC12E:   unk_4C2D90.Execute var_304 & "'", 1, 0
  loc_1CFC139:   Set var_20C = var_230
  loc_1CFC158: Else
  loc_1CFC173:   If (Me.ChkDepart.Value = 0) Then
  loc_1CFC187:     Set var_224 = Me.Txt
  loc_1CFC18D:     Call 0.Method_Command1_UnknownEvent_90 (CInt(2), var_228)
  loc_1CFC1A5:     var_1FC = " And E.Department='" & var_228.Tag & "'"
  loc_1CFC1B6:   End If
  loc_1CFC1C1:   Set var_224 = Me.Txt
  loc_1CFC1C7:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0))
  loc_1CFC1CC:   var_26C = "01"
  loc_1CFC1E0:   var_27C = "/MMM/YYYY"
  loc_1CFC1E9:   var_25C = CVar(var_228) 'Address
  loc_1CFC1F0:   var_29C = Format(var_25C, var_27C)
  loc_1CFC1F8:   var_2BC = (1 + var_29C)
  loc_1CFC1FF:   Proc_6_7_F25D88(var_2CC, CVar(var_234), 1)
  loc_1CFC218:   var_22C = "Select E.*,EC.Name,EC.Type From Employee E Left Join EmpCategory EC On E.Category=EC.Code Where E.LOGSITE_CODE='" & MemVar_1F92078
  loc_1CFC225:   var_2EC = CVar(var_22C & "' and (E.Resign_Date Is Null or E.Resign_Date > ") & var_2CC 
  loc_1CFC22F:   var_2FC = var_2EC & CVar(var_1FC) 
  loc_1CFC246:   unk_4C2D90.Execute CStr(var_2FC & ")"), var_338, -1
  loc_1CFC251:   Set var_20C = var_230
  loc_1CFC279: End If
  loc_1CFC294: If (Me.ChkEmp.Value = 0) Then
  loc_1CFC29D:   var_26C = 0
  loc_1CFC2E0:   Set var_224 = Me.Txt
  loc_1CFC2E6:   Call 0.Method_Command1_UnknownEvent_90 (CInt(3), var_228, var_304, "Select Count(*) From Salary Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Mth_Year='" & var_170 & "' And Emp_Code='", var_25C, -1, var_230)
  loc_1CFC2EE:   var_234 = var_228.Tag
  loc_1CFC307:   unk_4C2D90.Execute var_26C & var_304 & "'", var_344, var_27C
  loc_1CFC30F:   var_230 = var_230.Fields
  loc_1CFC317:   var_228 = var_234.Item(var_26C)
  loc_1CFC31F:    = var_344.Value
  loc_1CFC354:   If (var_27C > 0) Then
  loc_1CFC362:     var_27C = "Pay Roll..."
  loc_1CFC37B:     var_25C = CVar("* Salary Already created *" & vbCrLf & "  Do you want continue!") 'String
  loc_1CFC397:     If (MsgBox(var_25C, &H144, var_27C, var_29C, CVar(var_234)) = 7) Then
  loc_1CFC3A7:       Me.LabelSal.Caption = "<<<<<<<  Processing Terminated  >>>>>>>"
  loc_1CFC3B9:       Me.LabelSal.Refresh
  loc_1CFC3C1:       Exit Sub
  loc_1CFC3C2:     End If
  loc_1CFC3C2:   End If
  loc_1CFC3C5: Else
  loc_1CFC3E0:   If (Me.ChkDepart.Value = 0) Then
  loc_1CFC402:     Set var_224 = Me.Txt
  loc_1CFC408:     Call 0.Method_Command1_UnknownEvent_90 (CInt(2), var_228)
  loc_1CFC420:     var_1FC = " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F92078 & "' And Department='" & var_228.Tag & "')"
  loc_1CFC435:   End If
  loc_1CFC43B:   var_26C = 0
  loc_1CFC47D:   unk_4C2D90.Execute "Select Count(*) From Salary Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Mth_Year='" & var_170 & "'" & var_1FC, var_25C, -1
  loc_1CFC485:   var_224 = var_224.Fields
  loc_1CFC48D:   var_26C = var_228.Item(var_228)
  loc_1CFC495:   var_230 = var_230.Value
  loc_1CFC4C2:   If (var_27C > 0) Then
  loc_1CFC505:     If (MsgBox(CVar("* Salary Already created *" & vbCrLf & "  Do you want continue!"), &H144, "Pay Roll...", var_29C, CVar(var_234)) = 7) Then
  loc_1CFC515:       Me.LabelSal.Caption = "<<<<<<<  Processing Terminated  >>>>>>>"
  loc_1CFC527:       Me.LabelSal.Refresh
  loc_1CFC52F:       Exit Sub
  loc_1CFC530:     End If
  loc_1CFC530:   End If
  loc_1CFC530: End If
  loc_1CFC536: var_348 = var_20C.RecordCount
  loc_1CFC544: If (var_348 <= 0) Then
  loc_1CFC568:   MsgBox("No more record for this month.", &H40, "Pay Roll...", var_29C, CVar(var_234))
  loc_1CFC578:   Exit Sub
  loc_1CFC579: End If
  loc_1CFC582: unk_4C2D90.BeginTrans var_348
  loc_1CFC589: var_92 = 1
  loc_1CFC58C: ' Referenced from: 1D031EB
  loc_1CFC59B: If Not(var_20C.EOF) Then
  loc_1CFC5A4:   var_358 = 0
  loc_1CFC5F5:   var_29C = CVar("Select Count(*) From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Emp_Code='") & var_20C.Fields.Item("Code").Value 
  loc_1CFC61F:   unk_4C2D90.Execute CStr(var_29C & "' AND Mth_Year='" & CVar(var_170) & "'"), var_2EC, -1
  loc_1CFC627:   var_230 = var_230.Fields
  loc_1CFC62F:   var_358 = var_234.Item(var_234)
  loc_1CFC637:   var_344 = var_344.Value
  loc_1CFC66E:   If (var_2FC > 0) Then
  loc_1CFC671:     GoTo loc_1D031E3
  loc_1CFC674:   End If
  loc_1CFC693:   var_228 = var_20C.Fields.Item("Name")
  loc_1CFC6BE:   Me.LabelSal.Caption = CStr("<<<<<<<  Processing " & var_228.Value & "  >>>>>>>")
  loc_1CFC6E2:   Me.LabelSal.Refresh
  loc_1CFC6F5:   Set var_224 = Me.Txt
  loc_1CFC6FB:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_2FC)
  loc_1CFC700:   var_26C = "01/"
  loc_1CFC732:   var_1B4 = CDate(1 & Format(CVar(var_228), "mmm/yyyy"))
  loc_1CFC750:   Set var_224 = Me.Txt
  loc_1CFC756:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_1B4, 1)
  loc_1CFC75B:   var_26C = "01/"
  loc_1CFC76F:   var_27C = "mmm/yyyy"
  loc_1CFC7B7:   var_1BC = CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(var_228), var_27C))))))
  loc_1CFC7D5:   var_108 = var_1B4
  loc_1CFC7DB:   var_110 = var_1BC
  loc_1CFC804:   Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("GWorkingDaysInAMonth")), var_110, var_108, var_1BC)
  loc_1CFC80C:   var_26C = 0
  loc_1CFC81E:   If (var_27C > var_26C) Then
  loc_1CFC847:     Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("GWorkingDaysInAMonth")), 1, var_26C)
  loc_1CFC850:     var_90 = CSng(var_27C)
  loc_1CFC860:   Else
  loc_1CFC88D:     var_27C = (DateDiff("d", var_1B4, var_1BC, 1, 1) + 1)
  loc_1CFC892:     var_90 = CSng(var_27C)
  loc_1CFC89C:   End If
  loc_1CFC8A3:   If (var_1BC > MemVar_1F920EC) Then
  loc_1CFC8A9:     var_1BC = MemVar_1F920EC
  loc_1CFC8AC:   End If
  loc_1CFC8DB:   If Not(IsNull(CVar(var_20C.Fields.Item("Resign_Date")))) Then
  loc_1CFC91A:     var_2CC = Format(var_1BC, "Short Date")
  loc_1CFC97F:     var_29C = Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")
  loc_1CFC9E5:     If (1 And (CDate(Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")) >= CDate(Format(var_1B4, "Short Date")))) Then
  loc_1CFCA3F:       var_1BC = CDate(Format(DateAdd("d", CDbl(&HFF), CVar(var_20C.Fields.Item("Resign_Date"))), "Short Date"))
  loc_1CFCA53:     Else
  loc_1CFCAD7:       If (CDate(Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")) < CDate(Format(var_1B4, "Short Date"))) Then
  loc_1CFCADA:         GoTo loc_1D031E3
  loc_1CFCADD:         GoTo loc_1CFCAE0
  loc_1CFCAE0:         ' Referenced from:   1CFCADD
  loc_1CFCAE0:       End If
  loc_1CFCAE0:     End If
  loc_1CFCAE0:   End If
  loc_1CFCB11:   If (IsNull(CVar(var_20C.Fields.Item("Joining_Date"))) = 0) Then
  loc_1CFCB50:     var_2CC = Format(var_1BC, "Short Date")
  loc_1CFCB6C:     var_234 = var_20C.Fields.Item("Joining_Date")
  loc_1CFCBB5:     var_29C = Format(CVar(var_20C.Fields.Item("Joining_Date")), "Short Date")
  loc_1CFCC1B:     If (1 And (CDate(Format(CVar(var_234), "Short Date")) >= CDate(Format(var_1B4, "Short Date")))) Then
  loc_1CFCC63:       var_1B4 = CDate(Format(CVar(var_20C.Fields.Item("Joining_Date")), "Short Date"))
  loc_1CFCC75:     Else
  loc_1CFCCF9:       If (CDate(Format(CVar(var_20C.Fields.Item("Joining_Date")), "Short Date")) > CDate(Format(var_1BC, "Short Date"))) Then
  loc_1CFCCFC:         GoTo loc_1D031E3
  loc_1CFCCFF:       End If
  loc_1CFCCFF:     End If
  loc_1CFCD02:   Else
  loc_1CFCD05:   Else
  loc_1CFCD32:     var_27C = (DateDiff("d", var_1B4, var_1BC, 1, 1) + 1)
  loc_1CFCD37:     var_A0 = CSng("Short Date")
  loc_1CFCD64:     var_228 = var_20C.Fields.Item("Resign_Date")
  loc_1CFCD7C:     If Not(IsNull(CVar(var_228))) Then
  loc_1CFCD8A:       Set var_224 = Me.Txt
  loc_1CFCD90:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, CDbl(0), CDbl(0), var_A0, 1, 1)
  loc_1CFCDC4:       Set var_230 = Me.Txt
  loc_1CFCDCA:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, 1, 1, 1)
  loc_1CFCE19:       Proc_6_7_F25D88(var_3AC, CVar(var_20C.Fields.Item("Joining_Date")), 1, 1, var_1B4)
  loc_1CFCE29:       Proc_6_7_F25D88(var_3DC, var_1BC, 1)
  loc_1CFCE34:       var_414 = 0
  loc_1CFCE58:       var_2BC = CVar("select count(*) from holiday where LogSite_Code='" & MemVar_1F92078 & "' AND datepart(dw,vdate)<>'1' and month(VDate)='") 'String
  loc_1CFCE7E:       var_3BC = var_2BC & Format(CVar(var_228), "mm") & "' and year(VDate)='" & Format(CVar(var_234), "yyyy") & "' and vdate>=" & var_3AC 
  loc_1CFCE9C:       unk_4C2D90.Execute CStr(var_3BC & " And vdate<=" & var_3DC), var_3FC, -1
  loc_1CFCEA4:       var_400 = var_400.Fields
  loc_1CFCEAC:       var_414 = var_404.Item(var_404)
  loc_1CFCEB4:       var_418 = var_418.Value
  loc_1CFCEBD:       var_C0 = CSng(var_428)
  loc_1CFCF02:     Else
  loc_1CFCF0D:       Set var_224 = Me.Txt
  loc_1CFCF13:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_C0, var_428)
  loc_1CFCF47:       Set var_230 = Me.Txt
  loc_1CFCF4D:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, 1)
  loc_1CFCF9C:       Proc_6_7_F25D88(var_3AC, CVar(var_20C.Fields.Item("Joining_Date")), 1, 1)
  loc_1CFCFAC:       Proc_6_7_F25D88(var_3DC, var_1BC, 1)
  loc_1CFCFB7:       var_414 = 0
  loc_1CFCFDB:       var_2BC = CVar("select count(*) from holiday where LOGSITE_CODE='" & MemVar_1F92078 & "' AND datepart(dw,vdate)<>'1' and month(VDate)='") 'String
  loc_1CFD001:       var_3BC = var_2BC & Format(CVar(var_228), "mm") & "' and year(VDate)='" & Format(CVar(var_234), "yyyy") & "' and vdate>=" & var_3AC 
  loc_1CFD01F:       unk_4C2D90.Execute CStr(var_3BC & " And vdate<=" & var_3DC), var_3FC, -1
  loc_1CFD027:       var_400 = var_400.Fields
  loc_1CFD02F:       var_414 = var_404.Item(var_404)
  loc_1CFD037:       var_418 = var_418.Value
  loc_1CFD040:       var_C0 = CSng(var_428)
  loc_1CFD082:     End If
  loc_1CFD0BA:     var_1F4 = CSng(Day(DateAdd("d", CDbl(&HFF), DateAdd("d", CDbl(1), var_1BC))))
  loc_1CFD0CF:     For var_42C = 1 To CInt(var_1F4):   var_86 = var_42C 'Integer
  loc_1CFD0E0:       Set var_224 = Me.Txt
  loc_1CFD0E6:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, 1, var_1F4)
  loc_1CFD126:       var_234 = var_20C.Fields.Item("OffDay")
  loc_1CFD142:       var_38C = var_20C.Fields.Item("Joining_Date")
  loc_1CFD152:       Set var_400 = Me.Txt
  loc_1CFD158:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, 1, 1)
  loc_1CFD16C:       var_3EC = "mmm/yyyy"
  loc_1CFD24A:       var_378 = (CDate(Format(CVar(var_38C), "Short Date")) <= CDate(Format(CVar(CStr(var_86) & "/") & Format(CVar(var_404), var_3EC), "dd/MMM/yyyy")))
  loc_1CFD299:       If CBool(1 And var_378) Then
  loc_1CFD2CB:         If Not(IsNull(CVar(var_20C.Fields.Item("Resign_Date")))) Then
  loc_1CFD2F5:           Set var_230 = Me.Txt
  loc_1CFD2FB:           Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, (Ucase(Format(CVar(CStr(var_86) & "/") & Format(CVar(var_20C.Fields.Item("Resign_Date")), "mmm/yyyy"), "DDD")) = Ucase(Left(CVar(var_234), 3))), 1, 1, 1)
  loc_1CFD30F:           var_2CC = "mmm/yyyy"
  loc_1CFD3AB:           If (CDate(Format(CVar(var_20C.Fields.Item("Resign_Date")), "Short Date")) >= CDate(Format(CVar(CStr(var_86) & "/") & Format(CVar(var_234), var_2CC), "dd/MMM/yyyy"))) Then
  loc_1CFD3B5:             var_14C = (var_14C + CDbl(1))
  loc_1CFD3B8:           End If
  loc_1CFD3BB:         Else
  loc_1CFD3C2:           var_14C = (var_14C + CDbl(1))
  loc_1CFD3C5:         End If
  loc_1CFD3C5:       End If
  loc_1CFD3C8:     Next var_42C 'Integer
  loc_1CFD3F7:     var_28C = var_1BC
  loc_1CFD3FF:     Proc_6_7_F25D88(var_2CC)
  loc_1CFD40F:     Set var_230 = Me.Txt
  loc_1CFD415:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234)
  loc_1CFD439:     var_338 = Format(CVar(var_234), "MM")
  loc_1CFD449:     Set var_344 = Me.Txt
  loc_1CFD44F:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_38C, 1)
  loc_1CFD493:     var_27C = CVar("Select * From Attend Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Emp_Code='") 'String
  loc_1CFD4C2:     var_39C = var_27C & var_20C.Fields.Item("Code").Value & "' And v_date <=" & var_2CC & " and  Month(V_Date)=" & var_338 & " And Year(V_Date)=" 
  loc_1CFD4D7:     unk_4C2D90.Execute CStr(var_39C & Format(CVar(var_38C), "YYYY")), var_3EC, -1
  loc_1CFD4E2:     Set var_210 = var_400
  loc_1CFD521:     var_A8 = CDbl(0)
  loc_1CFD527:     var_B0 = CDbl(0)
  loc_1CFD52D:     var_B8 = CDbl(0)
  loc_1CFD533:     var_D8 = CDbl(0)
  loc_1CFD539:     var_E0 = CDbl(0)
  loc_1CFD53F:     var_E8 = CDbl(0)
  loc_1CFD545:     var_F0 = CDbl(0)
  loc_1CFD54B:     var_F8 = CDbl(0)
  loc_1CFD551:     var_124 = CDbl(0)
  loc_1CFD558:     var_114 = CStr(0)
  loc_1CFD55E:     var_11C = CDbl(0)
  loc_1CFD564:     var_C8 = CDbl(0)
  loc_1CFD56A:     var_D0 = CDbl(0)
  loc_1CFD570:     var_188 = CDbl(0)
  loc_1CFD576:     var_12C = CDbl(0)
  loc_1CFD57C:     var_134 = CDbl(0)
  loc_1CFD582:     var_154 = CDbl(0)
  loc_1CFD588:     var_16C = CDbl(0)
  loc_1CFD58E:     var_164 = CDbl(0)
  loc_1CFD594:     var_15C = CDbl(0)
  loc_1CFD59A:     var_154 = CDbl(0)
  loc_1CFD5A0:     var_13C = CDbl(0)
  loc_1CFD5B7:     If (var_210.RecordCount > 0) Then
  loc_1CFD5C3:       For var_47C = var_1B4 To var_1BC:   var_1C4 = var_47C 'Double
  loc_1CFD5D7:         If var_210.EOF Then
  loc_1CFD5DA:           GoTo loc_1CFD7C7
  loc_1CFD5DD:         End If
  loc_1CFD619:         If (var_210.Fields.Item("FirstShift").Value = "A") Then
  loc_1CFD629:           var_B0 = (var_B0 + 0.5)
  loc_1CFD62C:         End If
  loc_1CFD668:         If (var_210.Fields.Item("SecondShift").Value = "A") Then
  loc_1CFD678:           var_B0 = (var_B0 + 0.5)
  loc_1CFD67B:         End If
  loc_1CFD6B7:         If (var_210.Fields.Item("FirstShift").Value = "E") Then
  loc_1CFD6C7:           var_B8 = (var_B8 + 0.5)
  loc_1CFD6CA:         End If
  loc_1CFD706:         If (var_210.Fields.Item("SecondShift").Value = "E") Then
  loc_1CFD716:           var_B8 = (var_B8 + 0.5)
  loc_1CFD719:         End If
  loc_1CFD755:         If (var_210.Fields.Item("FirstShift").Value = "C") Then
  loc_1CFD765:           var_D8 = (var_D8 + 0.5)
  loc_1CFD768:         End If
  loc_1CFD7A4:         If (var_210.Fields.Item("SecondShift").Value = "C") Then
  loc_1CFD7B4:           var_D8 = (var_D8 + 0.5)
  loc_1CFD7B7:         End If
  loc_1CFD7BA:         var_210.MoveNext
  loc_1CFD7C2:       Next var_47C 'Double
  loc_1CFD7C7:       ' Referenced from:   1CFD5DA
  loc_1CFD7C7:       GoTo loc_1CFD7CA
  loc_1CFD7CA:       ' Referenced from:   1CFD7C7
  loc_1CFD7CA:     End If
  loc_1CFD806:     If (var_20C.Fields.Item("Type").Value = "Permanent") Then
  loc_1CFD845:       If (var_20C.Fields.Item("sunday").Value = "Yes") Then
  loc_1CFD84B:         var_90 = var_90
  loc_1CFD865:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1CFD86F:         var_A0 = (var_A0 - var_B0)
  loc_1CFD875:       Else
  loc_1CFD87C:         var_90 = (var_90 - CDbl(0))
  loc_1CFD896:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1CFD8A8:         var_A0 = (((var_A0 - var_B0) - CDbl(0)) - var_C0)
  loc_1CFD8AB:       End If
  loc_1CFD8D1:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("DA")), var_A0, var_E0)
  loc_1CFD95C:       Set var_230 = Me.Txt
  loc_1CFD962:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0")), 1, 1)
  loc_1CFD97F:       var_2BC = CVar(var_234) 'Address
  loc_1CFD99B:       var_2EC = StrConv(Format(var_2BC, "MMM"), 3, 0)
  loc_1CFD9B5:       var_27C = "SELECT IncrMth, Basic, Increment FROM Employee WHERE Code='" & var_20C.Fields.Item("Code").Value 
  loc_1CFD9CE:       var_318 = var_27C & "' AND IncrMth='" & var_2EC & "'" 
  loc_1CFD9DC:       unk_4C2D90.Execute CStr(var_318), var_338, -1
  loc_1CFD9E7:       Set var_200 = var_344
  loc_1CFDA23:       If (var_200.RecordCount > 0) Then
  loc_1CFDA35:         If ((var_108 = var_1B4) And (var_110 = var_1BC)) Then
  loc_1CFDA5E:           Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), var_344, 1, 1)
  loc_1CFDA89:           Proc_6_39_E7C810(var_2BC, CVar(var_20C.Fields.Item("Increment")), var_90)
  loc_1CFDAB4:           Proc_6_39_E7C810(var_2EC, CVar(var_20C.Fields.Item("Basic")), var_A0)
  loc_1CFDAD0:           var_404 = var_20C.Fields.Item("Increment")
  loc_1CFDADF:           Proc_6_39_E7C810(var_318, CVar(var_404))
  loc_1CFDAFF:           var_2CC = (var_27C + var_2BC)
  loc_1CFDB10:           var_338 = (var_2EC + var_318)
  loc_1CFDB23:           var_3AC = ("MMM" - ((CVar(var_B0) * var_338) / CVar(var_90)))
  loc_1CFDB31:           var_3DC = Format(CVar(var_20C.Fields.Item("Basic")), "0")
  loc_1CFDB3A:           var_D0 = CSng(var_3DC)
  loc_1CFDB68:         Else
  loc_1CFDB8E:           Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0, 1)
  loc_1CFDBB9:           Proc_6_39_E7C810(var_2BC, CVar(var_20C.Fields.Item("Increment")), 1)
  loc_1CFDBE0:           var_2CC = (var_27C + var_2BC)
  loc_1CFDBE4:           var_2DC = (CVar(var_A0) * "MMM")
  loc_1CFDBFD:           var_338 = Format((var_2DC / CVar(var_90)), "0")
  loc_1CFDC06:           var_D0 = CSng(var_338)
  loc_1CFDC23:         End If
  loc_1CFDC49:         Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0, 1)
  loc_1CFDC60:         var_230 = var_20C.Fields
  loc_1CFDC77:         Proc_6_39_E7C810(var_2BC, CVar(var_230.Item("Increment")), var_27C)
  loc_1CFDC7F:         var_2CC = (1 + var_2BC)
  loc_1CFDC84:         var_188 = CSng("MMM")
  loc_1CFDCC4:         var_27C = CVar("Select *  from salarylog where LOGSITE_CODE='" & MemVar_1F92078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1CFDD08:         unk_4C2D90.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1CFDD13:         Set var_220 = var_230
  loc_1CFDD37:         ' Referenced from:   1CFDD51
  loc_1CFDD46:         If Not(var_220.EOF) Then
  loc_1CFDD4C:           var_220.MoveNext
  loc_1CFDD51:           GoTo loc_1CFDD37
  loc_1CFDD54:         End If
  loc_1CFDD7D:         var_27C = CVar("Delete from salarylog where LOGSITE_CODE='" & MemVar_1F92078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1CFDDC1:         unk_4C2D90.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1CFDDFB:         var_22C = "Insert Into SalaryLog(Mth_Year,Emp_Code,Basic,Increment,U_Name,U_EntDt,Site_code,logsite_code,CreationDate) VALUES('" & var_170
  loc_1CFDE02:         var_27C = CVar(var_22C & "','") 'String
  loc_1CFDE38:         var_2BC = var_27C & var_20C.Fields.Item("Code").Value & "'," 
  loc_1CFDE4B:         var_230 = var_200.Fields
  loc_1CFDE62:         Proc_6_39_E7C810(var_2DC, CVar(var_230.Item("Basic")), var_2BC, var_51C, -1, var_418)
  loc_1CFDE9D:         Proc_6_39_E7C810(var_338, CVar(var_200.Fields.Item("Increment")), var_230 & var_2DC & ",", var_230)
  loc_1CFDEB8:         var_3AC = var_188 & var_338 & ",'" & CVar(MemVar_1F920C8) 
  loc_1CFDED0:         Proc_6_8_EB0DE4(var_3DC, CVar(Proc_6_14_EF349C(var_3AC & "',", var_E0)))
  loc_1CFDF1C:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_404)
  loc_1CFDF2B:         Proc_6_7_F25D88(var_4CC, CVar(var_404))
  loc_1CFDF4A:         unk_4C2D90.Execute CStr(var_90 & var_3DC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "'," & var_4CC & ")"), , 
  loc_1CFDFD6:         Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), "Update Employee Set Basic=")
  loc_1CFE004:         Proc_6_39_E7C810(var_2BC, CVar(var_20C.Fields.Item("Increment")), var_27C)
  loc_1CFE00C:         var_2CC = (var_3AC + var_2BC)
  loc_1CFE010:         var_2DC = -1 & CVar(var_20C.Fields.Item("Basic")) 
  loc_1CFE042:         var_344 = var_20C.Fields
  loc_1CFE05A:         var_388 = var_2DC & ",Increment=0,IncrMth='' where LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' And Code='" & var_344.Item("Code").Value 
  loc_1CFE071:         unk_4C2D90.Execute CStr(var_388 & "'"), Me.Txt, 
  loc_1CFE0A6:       Else
  loc_1CFE0B5:         If ((var_108 = var_1B4) And (var_110 = var_1BC)) Then
  loc_1CFE0D7:           var_25C = CVar(var_20C.Fields.Item("Basic")) 'Address
  loc_1CFE0DE:           Proc_6_39_E7C810(var_27C)
  loc_1CFE0FA:           var_234 = var_20C.Fields.Item("Basic")
  loc_1CFE109:           Proc_6_39_E7C810(var_2BC, CVar(var_234))
  loc_1CFE13F:           var_2EC = (var_27C - ((CVar(var_B0) * var_2BC) / CVar(var_90)))
  loc_1CFE14D:           var_338 = Format(((CVar(var_B0) * var_2BC) / CVar(var_90)) & ",Increment=0,IncrMth='' where LOGSITE_CODE='", "0")
  loc_1CFE156:           var_D0 = CSng(var_338)
  loc_1CFE174:         Else
  loc_1CFE19A:           Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0)
  loc_1CFE1E0:           var_D0 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1CFE1F3:         End If
  loc_1CFE219:         Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), var_D0, 1)
  loc_1CFE222:         var_188 = CSng(var_27C)
  loc_1CFE22F:       End If
  loc_1CFE232:     Else
  loc_1CFE26E:       If (var_20C.Fields.Item("sunday").Value = "Yes") Then
  loc_1CFE274:         var_90 = var_90
  loc_1CFE28E:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1CFE298:         var_A0 = (var_A0 - var_B0)
  loc_1CFE29E:       Else
  loc_1CFE2A5:         var_90 = (var_90 - CDbl(0))
  loc_1CFE2BF:         var_E0 = (((((var_A0 - var_D8) - var_B8) - var_C0) - var_B0) - CDbl(0))
  loc_1CFE2D1:         var_A0 = (((var_A0 - var_B0) - CDbl(0)) - var_C0)
  loc_1CFE2D4:       End If
  loc_1CFE2FA:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("DA")), var_A0, var_E0, var_90, var_A0, var_E0)
  loc_1CFE340:       var_C8 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1CFE385:       Set var_230 = Me.Txt
  loc_1CFE38B:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, var_C8, 1, 1, var_90)
  loc_1CFE3A8:       var_2BC = CVar(var_234) 'Address
  loc_1CFE3DE:       var_27C = "SELECT IncrMth, Basic, Increment FROM Employee WHERE Code='" & var_20C.Fields.Item("Code").Value 
  loc_1CFE405:       unk_4C2D90.Execute CStr(var_27C & "' AND IncrMth='" & StrConv(Format(var_2BC, "MMM"), 3, 0) & "'"), var_338, -1
  loc_1CFE410:       Set var_200 = var_344
  loc_1CFE44C:       If (var_200.RecordCount > 0) Then
  loc_1CFE475:         Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), var_344, 1, 1)
  loc_1CFE4A0:         Proc_6_39_E7C810(var_2BC, CVar(var_20C.Fields.Item("Increment")), var_188, 1)
  loc_1CFE4C7:         var_2CC = (var_27C + var_2BC)
  loc_1CFE4CB:         var_2DC = (CVar(var_A0) * "MMM")
  loc_1CFE4E4:         var_338 = Format((var_2DC / CVar(var_90)), "0")
  loc_1CFE530:         Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), CSng(var_338), 1)
  loc_1CFE547:         var_230 = var_20C.Fields
  loc_1CFE55E:         Proc_6_39_E7C810(var_2BC, CVar(var_230.Item("Increment")), var_27C, 1)
  loc_1CFE566:         var_2CC = (1 + var_2BC)
  loc_1CFE56B:         var_188 = CSng("MMM")
  loc_1CFE5AB:         var_27C = CVar("Select *  from salarylog where LOGSITE_CODE='" & MemVar_1F92078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1CFE5EF:         unk_4C2D90.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1CFE5FA:         Set var_220 = var_230
  loc_1CFE61E:         ' Referenced from:     1CFE638
  loc_1CFE62D:         If Not(var_220.EOF) Then
  loc_1CFE633:           var_220.MoveNext
  loc_1CFE638:           GoTo loc_1CFE61E
  loc_1CFE63B:         End If
  loc_1CFE664:         var_27C = CVar("Delete from salarylog where LOGSITE_CODE='" & MemVar_1F92078 & "' and mth_year='" & var_170 & "' and Emp_Code='") 'String
  loc_1CFE6A8:         unk_4C2D90.Execute CStr(var_27C & var_20C.Fields.Item("Code").Value & "'"), "MMM", -1
  loc_1CFE6E2:         var_22C = "Insert Into SalaryLog(Mth_Year,Emp_Code,Basic,Increment,U_Name,U_EntDt,Site_code,logsite_code,CreationDate) VALUES('" & var_170
  loc_1CFE6E9:         var_27C = CVar(var_22C & "','") 'String
  loc_1CFE70E:         var_25C = var_20C.Fields.Item("Code").Value
  loc_1CFE71F:         var_2BC = var_27C & var_25C & "'," 
  loc_1CFE732:         var_230 = var_200.Fields
  loc_1CFE749:         Proc_6_39_E7C810(var_2DC, CVar(var_230.Item("Basic")), var_2BC, var_51C, -1, var_418)
  loc_1CFE784:         Proc_6_39_E7C810(var_338, CVar(var_200.Fields.Item("Increment")), var_230 & var_2DC & ",", var_230)
  loc_1CFE79F:         var_3AC = var_188 & var_338 & ",'" & CVar(MemVar_1F920C8) 
  loc_1CFE7B1:         var_3CC = CVar(Proc_6_14_EF349C(var_3AC & "',", 1)) 'String
  loc_1CFE7B7:         Proc_6_8_EB0DE4(var_3DC, var_3CC)
  loc_1CFE7BF:         var_3EC = var_25C & var_3DC 
  loc_1CFE7D2:         var_428 = var_3EC & ",'" & CVar(MemVar_1F92070) 
  loc_1CFE7DB:         var_43C = var_428 & "','" 
  loc_1CFE7E5:         var_44C = var_43C & CVar(MemVar_1F92078) 
  loc_1CFE7FD:         Set var_400 = Me.Txt
  loc_1CFE803:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_404)
  loc_1CFE812:         Proc_6_7_F25D88(var_4CC, CVar(var_404))
  loc_1CFE831:         unk_4C2D90.Execute CStr(var_44C & "'," & var_4CC & ")"), , 
  loc_1CFE8BD:         Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Basic")), "Update Employee Set Basic=")
  loc_1CFE8DC:         var_234 = var_20C.Fields.Item("Increment")
  loc_1CFE8EB:         Proc_6_39_E7C810(var_2BC, CVar(var_234), var_27C)
  loc_1CFE8F3:         var_2CC = (var_3AC + var_2BC)
  loc_1CFE8F7:         var_2DC = -1 & CVar(var_20C.Fields.Item("Basic")) 
  loc_1CFE941:         var_388 = var_2DC & ",Increment=0,IncrMth='' where LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' And Code='" & var_20C.Fields.Item("Code").Value 
  loc_1CFE958:         unk_4C2D90.Execute CStr(var_388 & "'"), var_400, 
  loc_1CFE98D:       Else
  loc_1CFE9AC:         var_25C = CVar(var_20C.Fields.Item("Basic")) 'Address
  loc_1CFE9B3:         Proc_6_39_E7C810(var_27C)
  loc_1CFE9F9:         var_D0 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1CFEA23:         var_228 = var_20C.Fields.Item("Basic")
  loc_1CFEA32:         Proc_6_39_E7C810(var_27C, CVar(var_228), var_D0)
  loc_1CFEA3B:         var_188 = CSng(var_27C)
  loc_1CFEA48:       End If
  loc_1CFEA48:     End If
  loc_1CFEA53:     Set var_224 = Me.Txt
  loc_1CFEA59:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_228, var_188)
  loc_1CFEA8D:     Set var_230 = Me.Txt
  loc_1CFEA93:     Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, 1, 1)
  loc_1CFEB04:     var_2CC = CVar("Select * from overtime where LOGSITE_CODE='" & MemVar_1F92078 & "' AND month(OTDATE)='") & Format(CVar(var_228), "mm") 
  loc_1CFEB1D:     var_388 = var_2CC & "' and Year(OTDATE)='" & Format(CVar(var_234), "yyyy") & "' and EmpCode='" 
  loc_1CFEB3B:     unk_4C2D90.Execute CStr(var_388 & var_20C.Fields.Item("Code").Value & "'"), var_3CC, -1
  loc_1CFEB46:     Set var_218 = var_400
  loc_1CFEB7E:     ' Referenced from:   1CFECD9
  loc_1CFEB8D:     If Not(var_218.EOF) Then
  loc_1CFEBBB:       var_27C = Left(CVar(var_218.Fields.Item("OTime")), 2)
  loc_1CFEBCC:       var_524 = Val(CStr(var_27C))
  loc_1CFEC0B:       var_52C = Val(CStr(Right(CVar(var_218.Fields.Item("OTime")), 2)))
  loc_1CFEC42:       var_534 = Val(CStr(Format(CVar((var_52C / CDbl(&H3C))), "0.00")))
  loc_1CFEC57:       var_114 = CStr((Val(var_114) + (var_524 + var_534)))
  loc_1CFECB2:       Proc_6_39_E7C810(var_27C, CVar(var_218.Fields.Item("Amount")), CVar(Val(CStr(var_11C))), var_534, 1, 1, var_52C)
  loc_1CFECBA:       var_29C = (var_524 + var_27C)
  loc_1CFECBF:       var_11C = CSng(CVar(var_218.Fields.Item("OTime")))
  loc_1CFECD4:       var_218.MoveNext
  loc_1CFECD9:       GoTo loc_1CFEB7E
  loc_1CFECDC:     End If
  loc_1CFED02:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("LTA")), var_11C, var_400, 1)
  loc_1CFED1C:     If (var_27C > 0) Then
  loc_1CFED45:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("LTA")), 1)
  loc_1CFED8B:       var_E8 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1CFED9E:     End If
  loc_1CFEDC4:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("HRA")), var_E8, 1)
  loc_1CFEDDE:     If (var_27C > 0) Then
  loc_1CFEE07:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("HRA")), 1)
  loc_1CFEE30:       var_F8 = CSng(Format(var_27C, "0"))
  loc_1CFEE41:     End If
  loc_1CFEE67:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Medical")), var_F8, 1)
  loc_1CFEE81:     If (var_27C > 0) Then
  loc_1CFEEAA:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Medical")), 1)
  loc_1CFEED3:       var_124 = CSng(Format(var_27C, "0"))
  loc_1CFEEE4:     End If
  loc_1CFEF0A:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Conveyance")), var_124, 1)
  loc_1CFEF24:     If (var_27C > 0) Then
  loc_1CFEF4D:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Conveyance")), 1)
  loc_1CFEF93:       var_F0 = CSng(Format(((CVar(var_A0) * var_27C) / CVar(var_90)), "0"))
  loc_1CFEFA6:     End If
  loc_1CFEFCC:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Other_Allow")), var_F0, 1)
  loc_1CFEFE6:     If (var_27C > 0) Then
  loc_1CFF00F:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Other_Allow")), 1)
  loc_1CFF038:       var_164 = CSng(Format(var_27C, "0"))
  loc_1CFF049:     End If
  loc_1CFF06F:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Other_Deduc")), var_164, 1)
  loc_1CFF089:     If (var_27C > 0) Then
  loc_1CFF0B2:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Other_Deduc")), 1)
  loc_1CFF0DB:       var_154 = CSng(Format(var_27C, "0"))
  loc_1CFF0EC:     End If
  loc_1CFF112:     Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Income_Tax")), var_154, 1)
  loc_1CFF12C:     If (var_27C > 0) Then
  loc_1CFF155:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("Income_Tax")), 1)
  loc_1CFF175:       var_2BC = Format(var_27C, "0")
  loc_1CFF17E:       var_15C = CSng(var_2BC)
  loc_1CFF18F:     End If
  loc_1CFF1CB:     If (var_20C.Fields.Item("PF_YN").Value = "Y") Then
  loc_1CFF1D5:       var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1CFF200:       Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), "Y", var_15C, 1)
  loc_1CFF214:       If (1 > var_27C) Then
  loc_1CFF23D:         Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), 1)
  loc_1CFF268:         Proc_6_39_E7C810(var_2BC, CVar(var_208.Fields.Item("PF_EMPLOYEE")))
  loc_1CFF2A8:         var_12C = CSng(Format(((var_27C * var_2BC) / 100), "0"))
  loc_1CFF2C6:       Else
  loc_1CFF2EC:         Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("PF_EMPLOYEE")), var_12C, 1)
  loc_1CFF30D:         var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1CFF31D:         var_2BC = (("PF_EMPLOYEE" * var_27C) / 100)
  loc_1CFF334:         var_12C = CSng(Format(var_2BC, "0"))
  loc_1CFF347:       End If
  loc_1CFF34E:       var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1CFF379:       Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), "PF_EMPLOYEE", var_12C, 1)
  loc_1CFF38D:       If (1 > var_27C) Then
  loc_1CFF3B6:         Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("PF_LIMIT")), 1)
  loc_1CFF3E1:         Proc_6_39_E7C810(var_2BC, CVar(var_208.Fields.Item("PF_EMPLOYER")))
  loc_1CFF3F5:         var_2FC = "0"
  loc_1CFF418:         var_318 = Format(((var_27C * var_2BC) / 100), var_2FC)
  loc_1CFF421:         var_16C = CSng(var_318)
  loc_1CFF43F:       Else
  loc_1CFF465:         Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("PF_EMPLOYER")), var_16C, 1)
  loc_1CFF486:         var_26C = CVar((var_D0 + var_C8)) 'Double
  loc_1CFF4A4:         var_2EC = Format((("PF_EMPLOYER" * var_27C) / 100), "0")
  loc_1CFF4AD:         var_16C = CSng(var_2EC)
  loc_1CFF4C0:       End If
  loc_1CFF4C0:     End If
  loc_1CFF4CF:     var_27C = "0"
  loc_1CFF4F0:     var_25C = CVar(((((((var_D0 + var_C8) + var_F8) + var_F0) + var_E8) + var_124) + var_164)) 'Double
  loc_1CFF506:     var_2BC = (Format(CVar(var_208.Fields.Item("PF_EMPLOYER")), var_27C) + CVar(var_100))
  loc_1CFF511:     var_2CC = ((("PF_EMPLOYER" * var_27C) / 100) + CVar(var_11C))
  loc_1CFF516:     var_19C = CSng((("PF_EMPLOYER" * var_27C) / 100))
  loc_1CFF55A:     Proc_6_39_E7C810(var_27C, CVar(var_208.Fields.Item("ESI_LIMIT")), CVar(var_19C), CDbl(0), var_19C, 1, 1)
  loc_1CFF580:     var_234 = var_20C.Fields.Item("ESI_YN")
  loc_1CFF5B2:     If CBool((var_16C > var_27C) Or (var_234.Value <> "Y")) Then
  loc_1CFF5B5:       GoTo loc_1CFF8AB
  loc_1CFF5B8:     End If
  loc_1CFF5F1:     If (Proc_6_38_E68A98(CVar(var_208.Fields.Item("ESIBasic")), 1, 1) = "Y") Then
  loc_1CFF5FB:       var_13C = (var_13C + var_D0)
  loc_1CFF5FE:     End If
  loc_1CFF637:     If (Proc_6_38_E68A98(CVar(var_208.Fields.Item("ESIDA")), CDbl(0), 1) = "Y") Then
  loc_1CFF641:       var_13C = (var_13C + var_C8)
  loc_1CFF644:     End If
  loc_1CFF67D:     If (Proc_6_38_E68A98(CVar(var_208.Fields.Item("ESIHRA")), CDbl(0)) = "Y") Then
  loc_1CFF687:       var_13C = (var_13C + var_F8)
  loc_1CFF68A:     End If
  loc_1CFF6C3:     If (Proc_6_38_E68A98(CVar(var_208.Fields.Item("ESIConvey")), CDbl(0)) = "Y") Then
  loc_1CFF6CD:       var_13C = (var_13C + var_F0)
  loc_1CFF6D0:     End If
  loc_1CFF709:     If (Proc_6_38_E68A98(CVar(var_208.Fields.Item("ESIOther")), CDbl(0)) = "Y") Then
  loc_1CFF713:       var_13C = (var_13C + var_164)
  loc_1CFF716:     End If
  loc_1CFF74F:     If (Proc_6_38_E68A98(CVar(var_208.Fields.Item("ESILTA")), CDbl(0)) = "Y") Then
  loc_1CFF759:       var_13C = (var_13C + var_E8)
  loc_1CFF75C:     End If
  loc_1CFF77B:     var_25C = CVar(var_208.Fields.Item("esi_employee")) 'Address
  loc_1CFF782:     Proc_6_39_E7C810(var_27C, var_25C, CDbl(0))
  loc_1CFF7A3:     Proc_6_130_E243C0(CSng(((CVar(CDbl(0)) * var_27C) / 100)), 1)
  loc_1CFF7D3:     var_25C = CVar((var_25C - Int(var_25C))) 'Double
  loc_1CFF833:     var_144 = CSng(Right(Str(Format(CSng(Format("0.00", "0.00")), "0.00")), 1))
  loc_1CFF850:     If ((var_144 < CDbl(5)) And (var_144 > CDbl(0))) Then
  loc_1CFF868:       var_13C = ((var_13C - (var_144 / CDbl(&H64))) + 0.05)
  loc_1CFF86E:     Else
  loc_1CFF875:       If (var_144 > CDbl(5)) Then
  loc_1CFF8A1:         var_13C = CSng(Format("0.0", "0.0"))
  loc_1CFF8AB:       End If
  loc_1CFF8AB:       ' Referenced from:   1CFF5B5
  loc_1CFF8AB:     End If
  loc_1CFF8D3:     var_25C = CVar(((((var_12C + var_13C) + var_100) + var_154) + var_15C)) 'Double
  loc_1CFF8E3:     var_1A4 = CSng(Format("0.0", "0"))
  loc_1CFF921:     Proc_6_7_F25D88((("PF_EMPLOYER" * "0") / 100), var_1BC, var_1A4, 1, 1, var_13C, 1)
  loc_1CFF938:     var_404 = var_20C.Fields
  loc_1CFF958:     Proc_6_7_F25D88(var_3EC, var_1BC, 1, var_13C)
  loc_1CFF963:     var_328 = 0
  loc_1CFF987:     var_27C = CVar("Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_Type='LO' And Emp_Code='") 'String
  loc_1CFF9A1:     var_238 = CStr(var_27C & var_20C.Fields.Item("Code").Value & "' and V_Date<=" & (("PF_EMPLOYER" * var_27C) / 100))
  loc_1CFF9AB:     unk_4C2D90.Execute var_238, var_2EC, -1
  loc_1CFF9B3:     var_230 = var_230.Fields
  loc_1CFF9BB:     var_328 = var_234.Item(var_234)
  loc_1CFF9C3:     var_344 = var_344.Value
  loc_1CFF9CE:     Proc_6_39_E7C810(var_318, var_2FC, var_2FC, var_144)
  loc_1CFF9FC:     Proc_6_39_E7C810(var_388, CVar(var_20C.Fields.Item("OP_Loan")), var_318)
  loc_1CFFA04:     var_39C = (1 + var_388)
  loc_1CFFA0E:     var_49C = 0
  loc_1CFFA32:     var_3BC = CVar("Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F92078 & "' and V_Type In('LR','LR1') And Emp_Code='") 'String
  loc_1CFFA56:     unk_4C2D90.Execute CStr(var_3BC & var_404.Item("Code").Value & "' and V_Date<=" & var_3EC), var_428, -1
  loc_1CFFA5E:     var_538 = var_538.Fields
  loc_1CFFA66:     var_49C = var_53C.Item(var_53C)
  loc_1CFFA6E:     var_540 = var_540.Value
  loc_1CFFA79:     Proc_6_39_E7C810(var_44C, var_43C, var_43C)
  loc_1CFFA81:     var_45C = (var_20C.Fields.Item("Code").Value - var_44C)
  loc_1CFFA86:     var_178 = CSng(var_44C & "',")
  loc_1CFFAE7:     If (var_178 > CDbl(0)) Then
  loc_1CFFB18:       Proc_6_39_E7C810(var_27C, CVar(var_20C.Fields.Item("OP_Inst")), CVar(var_178), CDbl(0))
  loc_1CFFB2C:       If (var_178 > var_27C) Then
  loc_1CFFB46:         var_228 = var_20C.Fields.Item("OP_Inst")
  loc_1CFFB55:         Proc_6_39_E7C810(var_27C, CVar(var_228))
  loc_1CFFB7E:         var_1AC = CSng(Format(var_27C, "0"))
  loc_1CFFB92:       Else
  loc_1CFFBBB:         var_1AC = CSng(Format(var_178, "0"))
  loc_1CFFBC5:       End If
  loc_1CFFBD1:       If (CDbl((var_19C - var_1A4)) > CDbl(0)) Then
  loc_1CFFBE0:         If (var_1AC < CDbl((var_19C - var_1A4))) Then
  loc_1CFFBF2:           var_27C = "0"
  loc_1CFFBFF:           var_25C = CVar((var_178 - var_1AC)) 'Double
  loc_1CFFC0F:           var_178 = CSng(Format("0", var_27C))
  loc_1CFFC1E:         Else
  loc_1CFFC21:           var_1AC = CDbl(0)
  loc_1CFFC24:         End If
  loc_1CFFC27:       Else
  loc_1CFFC2A:         var_1AC = CDbl(0)
  loc_1CFFC2D:       End If
  loc_1CFFC34:       If (var_1AC > CDbl(0)) Then
  loc_1CFFC49:         Call Proc_310_22_F92388(MemVar_1F92044, "LR1", var_1BC, var_238, var_1AC, var_1AC, var_178, 1)
  loc_1CFFC52:         var_194 = CLng(var_238)
  loc_1CFFC6E:         Call Proc_310_23_1007BA8(MemVar_1F92044, "LR1", var_1BC, var_238, var_194, 1, var_1AC)
  loc_1CFFC76:         var_98 = var_238
  loc_1CFFC8E:         Call Proc_310_24_F921DC(MemVar_1F92044, "LR1", var_1BC, var_238, 1)
  loc_1CFFC96:         var_1F8 = var_238
  loc_1CFFCA7:         Set var_224 = Me.Txt
  loc_1CFFCAD:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, 1, var_1AC)
  loc_1CFFCBC:         Proc_6_7_F25D88(var_27C, CVar(var_228), 1)
  loc_1CFFCD3:         var_230 = var_20C.Fields
  loc_1CFFD1B:         var_524 = Val(CStr(var_20C.Fields.Item("OP_Inst").Value))
  loc_1CFFD29:         Set var_400 = Me.Txt
  loc_1CFFD2F:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, var_524)
  loc_1CFFD8A:         Set var_53C = Me.Txt
  loc_1CFFD90:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_540, 1)
  loc_1CFFDC4:         Proc_6_8_EB0DE4(var_5C0, CVar(Proc_6_14_EF349C(1, 1, 1)))
  loc_1CFFDE2:         var_238 = "Insert Into Loan(Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,MTH_YEAR,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values (" & CStr(var_194)
  loc_1CFFDF8:         var_2CC = CVar(var_238 & ",'LR1',") & var_27C & ",'" 
  loc_1CFFE30:         var_3AC = var_2CC & var_230.Item("Code").Value & "'," & CVar(var_1AC) & "," & CVar(var_524) & ",'Being Loan Inst. Deduct For The Month of " 
  loc_1CFFE57:         var_4DC = var_3AC & Format(CVar(var_404), "MMM/yy") & "','" & var_20C.Fields.Item("Ac_Code").Value & "','" & Format(CVar(var_540), "MMMyyyy") 
  loc_1CFFE6A:         var_51C = var_4DC & "','" & CVar(MemVar_1F92070) 
  loc_1CFFEB7:         unk_4C2D90.Execute CStr(var_51C & "','" & CVar(MemVar_1F920C8) & "'," & var_5C0 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_650, -1
  loc_1CFFF46:         var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SUBCODE='") 'String
  loc_1CFFF63:         var_228 = var_208.Fields.Item("Loan_AC")
  loc_1CFFF8A:         unk_4C2E40.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1CFFF95:         Set var_21C = var_230
  loc_1CFFFCC:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1CFFFDA:           Set var_224 = Me.Txt
  loc_1CFFFE0:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1CFFFEF:           Proc_6_7_F25D88(var_27C, CVar(var_228), var_654)
  loc_1D0004F:           var_524 = Val(CStr(var_1AC))
  loc_1D0005D:           Set var_400 = Me.Txt
  loc_1D00063:           Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, var_524)
  loc_1D000BE:           Proc_6_8_EB0DE4(var_51C, CVar(Proc_6_14_EF349C(1, 1)))
  loc_1D0012B:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D00177:           var_2EC = CVar(var_22C & "',1,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" & var_208.Fields.Item("Loan_AC").Value 
  loc_1D001A4:           var_3AC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct For The Month of " 
  loc_1D001D7:           var_46C = var_3AC & Format(CVar(var_404), "MMM/yy") & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" 
  loc_1D0020A:           var_5C0 = var_46C & CVar(MemVar_1F920C8) & "'," & var_51C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" 
  loc_1D0023B:           unk_4C2D90.Execute CStr(var_5C0 & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_684, -1
  loc_1D002C6:         Else
  loc_1D002D1:           Set var_224 = Me.Txt
  loc_1D002D7:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_688)
  loc_1D002E6:           Proc_6_7_F25D88(var_27C, CVar(var_228))
  loc_1D002FD:           var_230 = var_208.Fields
  loc_1D00346:           var_524 = Val(CStr(var_1AC))
  loc_1D00354:           Set var_400 = Me.Txt
  loc_1D0035A:           Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404, var_524)
  loc_1D003B5:           Proc_6_8_EB0DE4(var_51C, CVar(Proc_6_14_EF349C(1, 1)))
  loc_1D003F9:           var_654 = Me.Recordset15.Fields
  loc_1D00409:           var_5D0 = var_654.Item("GroupNature").Value
  loc_1D00422:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D00467:           var_2CC = CVar(var_22C & "',1,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" 
  loc_1D0049B:           var_3AC = var_2CC & var_230.Item("Loan_AC").Value & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct For The Month of " 
  loc_1D004C5:           var_45C = var_3AC & Format(CVar(var_404), "MMM/yy") & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value 
  loc_1D004F8:           var_5B0 = var_45C & "','" & CVar(MemVar_1F920C8) & "'," & var_51C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D00532:           unk_4C2D90.Execute CStr(var_5B0 & "','" & var_5D0 & "','" & CVar(MemVar_1F92078) & "')"), var_684, -1
  loc_1D005BA:         End If
  loc_1D005D5:         var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and SUBCODE='") 'String
  loc_1D005F2:         var_228 = var_20C.Fields.Item("Ac_Code")
  loc_1D00619:         unk_4C2E40.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D00624:         Set var_21C = var_230
  loc_1D0065B:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D00669:           Set var_224 = Me.Txt
  loc_1D0066F:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D0067E:           Proc_6_7_F25D88(var_27C, CVar(var_228), var_688)
  loc_1D006DE:           var_524 = Val(CStr(var_1AC))
  loc_1D00713:           Proc_6_8_EB0DE4(var_45C, CVar(Proc_6_14_EF349C(var_524, 1)))
  loc_1D00780:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D007CC:           var_2EC = CVar(var_22C & "',2,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" & var_20C.Fields.Item("Ac_Code").Value 
  loc_1D00803:           var_3BC = var_2EC & "','" & var_208.Fields.Item("Loan_AC").Value & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct','" & CVar(var_170) 
  loc_1D00846:           var_4FC = var_3BC & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_45C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D00880:           unk_4C2D90.Execute CStr(var_4FC & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_5D0, -1
  loc_1D008FF:         Else
  loc_1D0090A:           Set var_224 = Me.Txt
  loc_1D00910:           Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D00918:           var_25C = CVar(var_228) 'Address
  loc_1D0091F:           Proc_6_7_F25D88(var_27C, var_25C)
  loc_1D0093E:           var_234 = var_20C.Fields.Item("Ac_Code")
  loc_1D0097F:           var_524 = Val(CStr(var_1AC))
  loc_1D009B4:           Proc_6_8_EB0DE4(var_45C, CVar(Proc_6_14_EF349C(var_524, var_654)))
  loc_1D009F8:           var_53C = Me.Recordset15.Fields
  loc_1D00A21:           var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D00A66:           var_2CC = CVar(var_22C & "',2,'LR1','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" 
  loc_1D00A6D:           var_2EC = var_2CC & var_234.Value 
  loc_1D00A76:           var_2FC = var_2EC & "','" 
  loc_1D00A7D:           var_338 = var_2FC & var_208.Fields.Item("Loan_AC").Value 
  loc_1D00AAD:           var_3CC = var_338 & "'," & CVar(var_524) & ",'Being Loan Inst. Deduct','" & CVar(var_170) & "','" 
  loc_1D00AB4:           var_3EC = var_3CC & var_20C.Fields.Item("Code").Value 
  loc_1D00ABD:           var_3FC = var_3EC & "','" 
  loc_1D00AF0:           var_51C = var_3FC & CVar(MemVar_1F920C8) & "'," & var_45C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" 
  loc_1D00B13:           var_5C0 = var_51C & var_53C.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1D00B21:           unk_4C2D90.Execute CStr(var_5C0), var_5D0, -1
  loc_1D00B9D:         End If
  loc_1D00BAA:         var_524 = Val(CStr(var_194))
  loc_1D00BB8:         Proc_6_7_F25D88(var_25C, var_1BC, var_524)
  loc_1D00BC8:         Proc_6_7_F25D88(var_2CC, var_1BC)
  loc_1D00BFB:         var_33C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1D00C26:         var_2BC = CVar(var_33C & MemVar_1F92078 & "') and PREFIX='" & var_1F8 & "' AND V_Type='LR1' and Date_From<=") & var_25C & " aND Date_TO>=" 
  loc_1D00C3B:         unk_4C2D90.Execute CStr(var_2BC & var_2CC), var_2EC, -1
  loc_1D00C6B:       End If
  loc_1D00C6B:     End If
  loc_1D00C87:     var_25C = CVar((var_1A4 + var_1AC)) 'Double
  loc_1D00C97:     var_1A4 = CSng(Format(var_25C, "0"))
  loc_1D00CB5:     var_224 = var_20C.Fields
  loc_1D00CBD:     var_228 = var_224.Item("Code")
  loc_1D00CC5:     var_25C = var_228.Value
  loc_1D00CD5:     Proc_6_7_F25D88(var_2CC, var_1BC, var_1A4, 1)
  loc_1D00CEC:     var_404 = var_20C.Fields
  loc_1D00D0C:     Proc_6_7_F25D88(var_3CC, var_1BC, 1)
  loc_1D00D17:     var_328 = 0
  loc_1D00D3B:     var_27C = CVar("Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F92078 & "' and  V_Type='ADE' And Emp_Code='") 'String
  loc_1D00D5F:     unk_4C2D90.Execute CStr(var_27C & var_25C & "' and V_Date<=" & var_2CC), var_2EC, -1
  loc_1D00D67:     var_230 = var_230.Fields
  loc_1D00D6F:     var_328 = var_234.Item(var_234)
  loc_1D00D77:     var_344 = var_344.Value
  loc_1D00D96:     var_400 = var_20C.Fields.Item("OP_Advance")
  loc_1D00DA5:     Proc_6_39_E7C810(var_338, CVar(var_400), var_2FC, var_2FC)
  loc_1D00DAD:     var_388 = (var_224 + var_338)
  loc_1D00DB7:     var_4AC = 0
  loc_1D00DDE:     var_3BC = "Select IsNull(Sum(Amount),0) From Loan Where V_Type In('AR1','AR2') AND Emp_Code='" & var_404.Item("Code").Value & "' and V_Date<=" 
  loc_1D00DF3:     unk_4C2D90.Execute CStr(var_3BC & var_3CC), var_3EC, -1
  loc_1D00DFB:     var_538 = var_538.Fields
  loc_1D00E03:     var_4AC = var_53C.Item(var_53C)
  loc_1D00E0B:     var_540 = var_540.Value
  loc_1D00E13:     var_428 = (var_3FC - var_3FC)
  loc_1D00E18:     var_180 = CSng(var_3FC & CVar(MemVar_1F920C8))
  loc_1D00E67:     var_190 = CDbl(0)
  loc_1D00E71:     If (var_180 > CDbl(0)) Then
  loc_1D00E7B:       If (var_19C > var_1A4) Then
  loc_1D00E8A:         If (var_180 > CDbl((var_19C - var_1A4))) Then
  loc_1D00E94:           var_190 = (var_19C - var_1A4)
  loc_1D00E9E:           var_180 = (var_180 - var_190)
  loc_1D00EA4:         Else
  loc_1D00EA7:           var_190 = var_180
  loc_1D00EAD:           var_180 = CDbl(0)
  loc_1D00EB0:         End If
  loc_1D00EB3:       Else
  loc_1D00EB6:         var_190 = CDbl(0)
  loc_1D00EB9:       End If
  loc_1D00EBF:       var_26C = 0
  loc_1D00EDC:       var_22C = "Select IsNull(Max(Sr_No),0)+1 From Loan Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1D00EE3:       var_238 = "Select IsNull(Sum(Amount),0) From Loan Where LOGSITE_CODE='" & MemVar_1F92078 & "' and  V_Type='AR2'"
  loc_1D00EEC:       unk_4C2D90.Execute var_238, var_25C, -1
  loc_1D00EF4:       var_224 = var_224.Fields
  loc_1D00EFC:       var_26C = var_228.Item(var_228)
  loc_1D00F04:       var_230 = var_230.Value
  loc_1D00F3A:       Call Proc_310_22_F92388(MemVar_1F92044, "AR2", var_1BC, var_238, CLng(var_27C), var_27C, var_190)
  loc_1D00F43:       var_194 = CLng(var_238)
  loc_1D00F5F:       Call Proc_310_23_1007BA8(MemVar_1F92044, "AR2", var_1BC, var_238, var_194, var_180)
  loc_1D00F67:       var_98 = var_238
  loc_1D00F7F:       Call Proc_310_24_F921DC(MemVar_1F92044, "AR2", var_1BC, var_238, var_190)
  loc_1D00F87:       var_1F8 = var_238
  loc_1D00F98:       Proc_6_7_F25D88(var_25C, var_1BC, var_180)
  loc_1D00FCF:       Set var_230 = Me.Txt
  loc_1D00FD5:       Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_234, var_190)
  loc_1D01030:       Proc_6_8_EB0DE4(var_51C, CVar(Proc_6_14_EF349C(1, 1)))
  loc_1D0104E:       var_238 = "Insert Into Loan(Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,mth_year,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values (" & CStr(var_194)
  loc_1D01064:       var_2BC = CVar(var_238 & ",'AR2',") & var_25C & ",'" 
  loc_1D0109C:       var_388 = var_2BC & var_20C.Fields.Item("Code").Value & "'," & CVar(var_190) & "," & CVar(var_190) & ",'Being Advance Inst. Deduct For The Month of " 
  loc_1D010CF:       var_44C = var_388 & Format(CVar(var_234), "MMM/yy") & "','" & var_20C.Fields.Item("Ac_Code").Value & "','" & CVar(var_170) & "','" 
  loc_1D0110F:       var_5A0 = var_44C & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_51C & ",'A','" & CVar(MemVar_1F92078) 
  loc_1D01126:       unk_4C2D90.Execute CStr(var_5A0 & "')"), var_5C0, -1
  loc_1D011B2:       var_228 = var_208.Fields.Item("AdvanceAc")
  loc_1D011C2:       var_27C = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_228.Value 
  loc_1D011D9:       unk_4C2E40.Execute CStr(var_27C & "'"), var_2BC, -1
  loc_1D011E4:       Set var_21C = var_230
  loc_1D01215:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1D01223:         Set var_224 = Me.Txt
  loc_1D01229:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D01238:         Proc_6_7_F25D88(var_27C, CVar(var_228), var_400)
  loc_1D01296:         Set var_400 = Me.Txt
  loc_1D0129C:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404)
  loc_1D0131E:         Proc_6_8_EB0DE4(var_5A0, CVar(Proc_6_14_EF349C(1, 1)))
  loc_1D0138B:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D013D7:         var_2EC = CVar(var_22C & "',1,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" & var_208.Fields.Item("AdvanceAc").Value 
  loc_1D01404:         var_3AC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct For The Month of " 
  loc_1D01437:         var_46C = var_3AC & Format(CVar(var_404), "MMM/yy") & " From " & var_20C.Fields.Item("Name").Value & "','" & CVar(var_170) & "','" 
  loc_1D01471:         var_5F0 = var_46C & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_5A0 & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D014AB:         unk_4C2D90.Execute CStr(var_5F0 & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_6DC, -1
  loc_1D0153E:       Else
  loc_1D01549:         Set var_224 = Me.Txt
  loc_1D0154F:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_6E0)
  loc_1D0155E:         Proc_6_7_F25D88(var_27C, CVar(var_228))
  loc_1D01575:         var_230 = var_208.Fields
  loc_1D015BC:         Set var_400 = Me.Txt
  loc_1D015C2:         Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_404)
  loc_1D01644:         Proc_6_8_EB0DE4(var_5A0, CVar(Proc_6_14_EF349C(1, 1)))
  loc_1D0165E:         var_654 = Me.Recordset15.Fields
  loc_1D0166E:         var_5D0 = var_654.Item("GroupCode").Value
  loc_1D016B1:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D016F6:         var_2CC = CVar(var_22C & "',1,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" 
  loc_1D0172A:         var_3AC = var_2CC & var_230.Item("AdvanceAc").Value & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct For The Month of " 
  loc_1D01754:         var_45C = var_3AC & Format(CVar(var_404), "MMM/yy") & " From " & var_20C.Fields.Item("Name").Value & "','" & CVar(var_170) 
  loc_1D01797:         var_5F0 = var_45C & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_5A0 & ",'A','" & var_5D0 
  loc_1D017A0:         var_610 = var_5F0 & "','" 
  loc_1D017D1:         unk_4C2D90.Execute CStr(var_610 & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_6DC, -1
  loc_1D01861:       End If
  loc_1D0187C:       var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and  SUBCODE='") 'String
  loc_1D01899:       var_228 = var_20C.Fields.Item("Ac_Code")
  loc_1D018C0:       unk_4C2E40.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D018CB:       Set var_21C = var_230
  loc_1D01902:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1D01910:         Set var_224 = Me.Txt
  loc_1D01916:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D01925:         Proc_6_7_F25D88(var_27C, CVar(var_228), var_6E0)
  loc_1D019AA:         Proc_6_8_EB0DE4(var_45C, CVar(Proc_6_14_EF349C(var_190)))
  loc_1D01A17:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D01A63:         var_2EC = CVar(var_22C & "',2,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" & var_20C.Fields.Item("Ac_Code").Value 
  loc_1D01A9A:         var_3BC = var_2EC & "','" & var_208.Fields.Item("AdvanceAc").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct','" & CVar(var_170) 
  loc_1D01ADD:         var_4FC = var_3BC & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_45C & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value 
  loc_1D01B17:         unk_4C2D90.Execute CStr(var_4FC & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_5D0, -1
  loc_1D01B94:       Else
  loc_1D01B9F:         Set var_224 = Me.Txt
  loc_1D01BA5:         Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D01BAD:         var_25C = CVar(var_228) 'Address
  loc_1D01BB4:         Proc_6_7_F25D88(var_27C, var_25C)
  loc_1D01BCB:         var_230 = var_20C.Fields
  loc_1D01C39:         Proc_6_8_EB0DE4(var_45C, CVar(Proc_6_14_EF349C(var_654)))
  loc_1D01CA6:         var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D01CEB:         var_2CC = CVar(var_22C & "',2,'AR2','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" 
  loc_1D01CF2:         var_2EC = var_2CC & var_230.Item("Ac_Code").Value 
  loc_1D01D29:         var_3BC = var_2EC & "','" & var_208.Fields.Item("AdvanceAc").Value & "'," & CVar(var_190) & ",'Being Advance Inst. Deduct','" & CVar(var_170) 
  loc_1D01D65:         var_4CC = var_3BC & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_45C & ",'A','" 
  loc_1D01D85:         var_5A0 = var_4CC & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value & "','" 
  loc_1D01DA6:         unk_4C2D90.Execute CStr(var_5A0 & CVar(MemVar_1F92078) & "')"), var_5D0, -1
  loc_1D01E20:       End If
  loc_1D01E25:       var_22C = CStr(var_194)
  loc_1D01E2D:       var_524 = Val(var_22C)
  loc_1D01E3B:       Proc_6_7_F25D88(var_25C, var_1BC, var_524)
  loc_1D01E4B:       Proc_6_7_F25D88(var_2CC, var_1BC)
  loc_1D01E69:       var_23C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524)
  loc_1D01E93:       var_65C = var_23C & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and PREFIX='" & var_1F8
  loc_1D01EBE:       unk_4C2D90.Execute CStr(CVar(var_65C & "' AND V_Type='AR2' and Date_From<=") & var_25C & " aND Date_TO>=" & var_2CC), var_2EC, -1
  loc_1D01EEE:     End If
  loc_1D01F0A:     var_25C = CVar((var_1A4 + var_190)) 'Double
  loc_1D01F1A:     var_1A4 = CSng(Format(var_25C, "0"))
  loc_1D01F34:     Set var_224 = Me.Txt
  loc_1D01F3A:     Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_22C, var_1A4, 1)
  loc_1D01F42:     1 = var_228.Text
  loc_1D01F56:     var_238 = "SL"
  loc_1D01F5F:     Call Proc_310_22_F92388(MemVar_1F92044, var_238, CDate(var_22C), var_23C)
  loc_1D01F68:     var_194 = CLng(var_23C)
  loc_1D01F89:     Set var_224 = Me.Txt
  loc_1D01F8F:     Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_238, var_194)
  loc_1D01F97:     var_224 = var_228.Text
  loc_1D01FB4:     Call Proc_310_23_1007BA8(MemVar_1F92044, "SL", CDate(var_238))
  loc_1D01FBC:     var_98 = var_23C
  loc_1D01FDB:     Set var_224 = Me.Txt
  loc_1D01FE1:     Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_238)
  loc_1D01FE9:     var_23C = var_228.Text
  loc_1D02006:     Call Proc_310_24_F921DC(MemVar_1F92044, "SL", CDate(var_238))
  loc_1D0200E:     var_1F8 = var_23C
  loc_1D0203A:     var_27C = CVar("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SUBCODE='") 'String
  loc_1D02057:     var_228 = var_20C.Fields.Item("Ac_Code")
  loc_1D0207E:     unk_4C2E40.Execute CStr(var_27C & var_228.Value & "'"), var_2CC, -1
  loc_1D02089:     Set var_21C = var_230
  loc_1D020C0:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1D020CE:       Set var_224 = Me.Txt
  loc_1D020D4:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D020E3:       Proc_6_7_F25D88(var_27C, CVar(var_228), var_23C)
  loc_1D02168:       Proc_6_8_EB0DE4(var_4CC, CVar(Proc_6_14_EF349C(var_654)))
  loc_1D021D5:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D02221:       var_2EC = CVar(var_22C & "',1,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" & var_20C.Fields.Item("Ac_Code").Value 
  loc_1D0224D:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D02264:       var_3BC = var_2EC & "','" & var_208.Fields.Item("SALARY_AC").Value & "'," & CVar(var_190) & ",'Being Salary for the Month of " & CVar(var_170) 
  loc_1D022AA:       var_4DC = var_3BC & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_4CC 
  loc_1D022CA:       var_5B0 = var_4DC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value 
  loc_1D022F4:       unk_4C2D90.Execute CStr(var_5B0 & "','" & CVar(MemVar_1F92078) & "')"), var_610, -1
  loc_1D02375:     Else
  loc_1D02380:       Set var_224 = Me.Txt
  loc_1D02386:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D02395:       Proc_6_7_F25D88(var_27C, CVar(var_228))
  loc_1D023AC:       var_230 = var_20C.Fields
  loc_1D0241A:       Proc_6_8_EB0DE4(var_4CC, CVar(Proc_6_14_EF349C(var_654)))
  loc_1D02487:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtCr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D024C3:       var_2BC = CVar(var_22C & "',1,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C 
  loc_1D024FF:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D02503:       var_39C = var_2BC & ",'" & var_230.Item("Ac_Code").Value & "','" & var_208.Fields.Item("SALARY_AC").Value & "'," & CVar(var_190) 
  loc_1D02539:       var_428 = var_39C & ",'Being Salary for the Month of " & CVar(var_170) & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value 
  loc_1D02575:       var_580 = var_428 & "','" & CVar(MemVar_1F920C8) & "'," & var_4CC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" 
  loc_1D025A6:       unk_4C2D90.Execute CStr(var_580 & Me.Recordset15.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_610, -1
  loc_1D02624:     End If
  loc_1D02650:     var_228 = var_208.Fields.Item("SALARY_AC")
  loc_1D02660:     var_27C = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_228.Value 
  loc_1D02677:     unk_4C2E40.Execute CStr(var_27C & "'"), var_2BC, -1
  loc_1D02682:     Set var_21C = var_230
  loc_1D026B3:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1D026C1:       Set var_224 = Me.Txt
  loc_1D026C7:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228, var_230)
  loc_1D026D6:       Proc_6_7_F25D88(var_27C, CVar(var_228))
  loc_1D0275B:       Proc_6_8_EB0DE4(var_4CC, CVar(Proc_6_14_EF349C(var_654)))
  loc_1D027C8:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D02814:       var_2EC = CVar(var_22C & "',2,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" & var_208.Fields.Item("SALARY_AC").Value 
  loc_1D02840:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D02857:       var_3BC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Salary for the Month of " & CVar(var_170) 
  loc_1D0289D:       var_4DC = var_3BC & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_4CC 
  loc_1D028BD:       var_5B0 = var_4DC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value 
  loc_1D028E7:       unk_4C2D90.Execute CStr(var_5B0 & "','" & CVar(MemVar_1F92078) & "')"), var_610, -1
  loc_1D02968:     Else
  loc_1D02973:       Set var_224 = Me.Txt
  loc_1D02979:       Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_228)
  loc_1D02981:       var_25C = CVar(var_228) 'Address
  loc_1D02988:       Proc_6_7_F25D88(var_27C, var_25C)
  loc_1D0299F:       var_230 = var_208.Fields
  loc_1D02A0D:       Proc_6_8_EB0DE4(var_4CC, CVar(Proc_6_14_EF349C(var_654)))
  loc_1D02A7A:       var_22C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_Prefix,V_No,Site_Code,V_Date,SubCode,ContraSub,AmtDr,Narration,mth_year,Emp_Code,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LogSite_Code) Values ('" & var_98
  loc_1D02ABF:       var_2CC = CVar(var_22C & "',2,'SL','" & var_1F8 & "'," & CStr(var_194) & ",'" & MemVar_1F92070 & "',") & var_27C & ",'" 
  loc_1D02AC6:       var_2EC = var_2CC & var_230.Item("SALARY_AC").Value 
  loc_1D02AF2:       var_358 = CVar((((var_19C - var_1A4) + var_1AC) + var_190)) 'Double
  loc_1D02B09:       var_3BC = var_2EC & "','" & var_20C.Fields.Item("Ac_Code").Value & "'," & CVar(var_190) & ",'Being Salary for the Month of " & CVar(var_170) 
  loc_1D02B4F:       var_4DC = var_3BC & "','" & CVar(var_170) & "','" & var_20C.Fields.Item("Code").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_4CC 
  loc_1D02B6F:       var_5B0 = var_4DC & ",'A','" & Me.Recordset15.Fields.Item("GroupCode").Value & "','" & Me.Recordset15.Fields.Item("GroupNature").Value 
  loc_1D02B99:       unk_4C2D90.Execute CStr(var_5B0 & "','" & CVar(MemVar_1F92078) & "')"), var_610, -1
  loc_1D02C17:     End If
  loc_1D02C24:     var_524 = Val(CStr(var_194))
  loc_1D02C32:     Proc_6_7_F25D88(var_25C, var_1BC, var_524)
  loc_1D02C42:     Proc_6_7_F25D88(var_2CC, var_1BC)
  loc_1D02C75:     var_33C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1D02CA0:     var_2BC = CVar(var_33C & MemVar_1F92078 & "') and PREFIX='" & var_1F8 & "' AND V_Type='SL' and Date_From<=") & var_25C & " aND Date_TO>=" 
  loc_1D02CB5:     unk_4C2D90.Execute CStr(var_2BC & var_2CC), var_2EC, -1
  loc_1D02D0E:     var_1A4 = CSng(Format(var_1A4, "0.00"))
  loc_1D02D25:     var_524 = Val(CStr(var_B8))
  loc_1D02D35:     var_52C = Val(CStr(var_D8))
  loc_1D02D54:     var_25C = CVar((var_12C + var_16C)) 'Double
  loc_1D02DC5:     var_23C = "Update Employee Set Curr_Earned=IsNull(Curr_Earned,0)+" & CStr(var_524)
  loc_1D02DCC:     var_308 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & ",Curr_Casual=IsNull(Curr_Casual,0)+"
  loc_1D02DDF:     var_2BC = CVar("Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_524) & " Where (SITE_CODE='" & MemVar_1F92070 & CStr(var_52C) & ",Curr_PF_Balance=IsNull(Curr_PF_Balance,0)+") 'String
  loc_1D02DE9:     var_28C = ",Curr_ESI_Balance=IsNull(Curr_ESI_Balance,0)+"
  loc_1D02E05:     var_39C = var_2BC & Format("0.00", "0.00") & var_1BC & Format(var_13C, "0.00") & " Where Code='" & var_20C.Fields.Item("Code").Value 
  loc_1D02E1C:     unk_4C2D90.Execute CStr(var_39C & "'"), var_3BC, -1
  loc_1D02E9F:     var_800 = CVar((var_19C - var_1A4)) 'Double
  loc_1D02EB6:     Proc_6_8_EB0DE4(var_A80, CVar(Proc_6_14_EF349C(1, 1, var_230, 1, 1, 1, 1)), var_52C, var_524)
  loc_1D02ECF:     var_22C = "Insert Into Salary(Mth_Year,Emp_Code,Work_Day,Leave,Sunday,Holiday,Absent,Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,PF,EPF,ESI,Loan,Advance,Net_Salary,Loan_Bal,Adv_Bal,Emp_Basic,OverTime,OverTimeAmt,CL,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_170
  loc_1D02EDC:     var_29C = CVar(var_22C & "','") & var_20C.Fields.Item("Code").Value 
  loc_1D02EE5:     var_2BC = var_29C & "'," 
  loc_1D02F54:     var_3CC = var_2BC & CVar(var_E0) & "," & CVar(var_B8) & "," & CVar(CDbl(0)) & "," & CVar(var_C0) & "," & CVar(var_B0) & "," & CVar(var_D0) 
  loc_1D02FC1:     var_4FC = var_3CC & "," & CVar(var_C8) & "," & CVar(var_F8) & "," & CVar(var_15C) & "," & CVar(var_164) & "," & CVar(var_154) & "," 
  loc_1D03030:     var_650 = var_4FC & CVar(var_F0) & "," & CVar(var_124) & "," & CVar(var_E8) & "," & CVar(var_12C) & "," & CVar(var_16C) & "," & CVar(var_13C) 
  loc_1D03090:     var_8C0 = var_650 & "," & CVar(var_1AC) & " ," & CVar(var_190) & "," & Format(var_800, "0") & "," & CVar(var_178) & "," & CVar(var_180) 
  loc_1D030F2:     var_A00 = var_8C0 & "," & CVar(var_188) & ",'" & CVar(var_114) & "'," & CVar(var_11C) & "," & CVar(var_D8) & ",'" & CVar(MemVar_1F92070) 
  loc_1D0313F:     unk_4C2D90.Execute CStr(var_A00 & "','" & CVar(MemVar_1F920C8) & "'," & var_A80 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_B10, -1
  loc_1D031E3:   End If
  loc_1D031E3:   ' Referenced from: 1CFCCFC
  loc_1D031E3:   ' Referenced from: 1CFCADA
  loc_1D031E3:   ' Referenced from: 1CFC671
  loc_1D031E6:   var_20C.MoveNext
  loc_1D031EB:   GoTo loc_1CFC58C
  loc_1D031EE: End If
  loc_1D031F4: unk_4C2D90.CommitTrans
  loc_1D031FB: var_92 = 0
  loc_1D03203: Set var_20C = Nothing
  loc_1D0320B: Set var_200 = Nothing
  loc_1D03213: Set var_204 = Nothing
  loc_1D0321B: Set var_208 = Nothing
  loc_1D03223: Set var_220 = Nothing
  loc_1D03233: Me.LabelSal.Caption = " <<<<<< Processing Completed >>>>>>"
  loc_1D03240: Set var_21C = Nothing
  loc_1D03243: Exit Sub
  loc_1D0324A: If (var_92 = 1) Then
  loc_1D03253:   unk_4C2D90.RollbackTrans
  loc_1D03258: End If
  loc_1D03260: Set var_224 = Err()
  loc_1D03266: Call 0.Method_arg_2C (var_22C, var_92, var_230, var_1A4)
  loc_1D03287: MsgBox(CVar(var_22C), &H10, "Salary Creation", var_29C, var_2BC)
  loc_1D0329A: Exit Sub
End Sub

Private Sub Command2_UnknownEvent_9 '16E3770
  'Data Table: 4C2D78
  Dim var_8E As Integer
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_208 As String
  Dim var_268 As Variant
  Dim var_288 As String
  Dim var_298 As Variant
  Dim var_218 As Variant
  Dim var_2B8 As Variant
  Dim var_238 As Variant
  Dim var_2FC As String
  Dim unk_4C2D90 As Connection15
  Dim var_304 As String
  Dim var_1DC As Variant
  Dim var_308 As String
  Dim var_30C As String
  Dim var_180 As Recordset15
  Dim var_300 As String
  Dim var_2D8 As Variant
  Dim var_2F8 As Variant
  Dim var_248 As Variant
  Dim var_278 As Variant
  Dim var_184 As Recordset15
  Dim var_1E0 As Variant
  Dim var_4F4 As Double
  Dim var_380 As Variant
  Dim var_2E8 As String
  Dim var_320 As Variant
  Dim var_3D0 As String
  Dim var_448 As Variant
  Dim var_468 As Variant
  Dim var_4F8 As String
  Dim var_4FC As String
  Dim var_1D0 As Recordset15
  loc_16E1D64: On Error Goto loc_16E3721
  loc_16E1D89: Set var_1DC = Me.Txt
  loc_16E1D8F: Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1E0)
  loc_16E1D9B: Set var_1E4 = Me.ChkDepart
  loc_16E1E08: var_298 = "Are You Sure To Decreate Salary of " & IIf((Me.ChkEmp.Value = 0), CVar(var_1E0), IIf((var_1E4.Value = 0), "Of Department", "All Employees")) 
  loc_16E1E39: If (MsgBox(var_298, 4, "Confirmation", var_2D8, var_2F8) = 6) Then
  loc_16E1E47:   Set var_1D4 = Me.Txt
  loc_16E1E4D:   Call 0.Method_Command2_UnknownEvent_90 (CInt(0), var_1DC)
  loc_16E1E5D:   Set var_1E0 = Me.Txt
  loc_16E1E63:   Call 0.Method_Command2_UnknownEvent_90 (CInt(0), var_1E4)
  loc_16E1E80:   var_218 = CVar(var_1DC) 'Address
  loc_16E1E87:   var_248 = Format(var_218, "MMM")
  loc_16E1E9E:   var_278 = "YYYY"
  loc_16E1EA7:   var_268 = CVar(var_1E4) 'Address
  loc_16E1EB6:   var_2B8 = (1 + Format(var_268, var_278))
  loc_16E1EC6:   var_88 = CStr(Ucase("Confirmation"))
  loc_16E1F00:   Proc_6_17_EAA2B0(var_218, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_248, -1, var_1D4)
  loc_16E1F16:   unk_4C2D90.Execute CStr(1 & var_218), var_248, 1
  loc_16E1F21:   Set var_190 = var_1D4
  loc_16E1F4E:   If (Me.ChkEmp.Value = 0) Then
  loc_16E1F65:     var_2FC = "Select * From Salary Where Mth_Year='" & var_88
  loc_16E1F7D:     Set var_1D4 = Me.Txt
  loc_16E1F83:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_300, var_2FC & "' and Emp_Code='", var_218)
  loc_16E1F8B:     -1 = var_1DC.Tag
  loc_16E1FA4:     unk_4C2D90.Execute var_1E0 & var_300 & "'", 1, 0
  loc_16E1FDF:     If (var_1E0.RecordCount <= 0) Then
  loc_16E1FE8:       Call 0.Method_arg_50 (var_2FC)
  loc_16E2003:       var_218 = "* Salary Already Decreated *"
  loc_16E2009:       MsgBox(var_218, &H40, CVar(var_2FC), var_248, var_268)
  loc_16E2019:       Exit Sub
  loc_16E201A:     End If
  loc_16E201D:   Else
  loc_16E2038:     If (Me.ChkDepart.Value = 0) Then
  loc_16E205A:       Set var_1D4 = Me.Txt
  loc_16E2060:       Call 0.Method_Command2_UnknownEvent_90 (CInt(2), var_1DC)
  loc_16E2078:       var_194 = " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F92078 & "' And Department='" & var_1DC.Tag & "')"
  loc_16E208D:     End If
  loc_16E20A1:     var_2FC = "Select * From Salary Where Mth_Year='" & var_88
  loc_16E20A8:     var_300 = var_2FC & "'"
  loc_16E20B8:     unk_4C2D90.Execute var_300 & var_194, var_218, -1
  loc_16E20DB:     var_310 = var_1D4.RecordCount
  loc_16E20E9:     If (var_310 <= 0) Then
  loc_16E20F2:       Call 0.Method_arg_50 (var_2FC)
  loc_16E2113:       MsgBox("* Salary Already Decreated *", &H40, CVar(var_2FC), var_248, var_268)
  loc_16E2123:       Exit Sub
  loc_16E2124:     End If
  loc_16E2124:   End If
  loc_16E213F:   If (Me.ChkEmp.Value = 0) Then
  loc_16E2174:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_300, "Select * From Employee Where site_code='" & MemVar_1F92078 & "' and Code='")
  loc_16E217C:     var_218 = var_1DC.Tag
  loc_16E2185:     var_308 = -1 & var_300
  loc_16E218C:     var_30C = " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F92078 & "' And Department='" & var_1DC.Tag & "'"
  loc_16E2195:     unk_4C2D90.Execute var_30C, var_1E0, Me.Txt
  loc_16E21A0:     Set var_180 = var_1E0
  loc_16E21BF:   Else
  loc_16E21DA:     If (Me.ChkDepart.Value = 0) Then
  loc_16E21FC:       Set var_1D4 = Me.Txt
  loc_16E2202:       Call 0.Method_Command2_UnknownEvent_90 (CInt(2), var_1DC)
  loc_16E2213:       var_308 = " And Code In (Select Code From Employee Where site_code='" & MemVar_1F92078 & "' And Department='" & var_1DC.Tag
  loc_16E221A:       var_194 = var_308 & "')"
  loc_16E222F:     End If
  loc_16E223A:     Set var_1D4 = Me.Txt
  loc_16E2240:     Call 0.Method_Command2_UnknownEvent_90 (CInt(0))
  loc_16E2245:     var_208 = "01"
  loc_16E2271:     var_268 = (1 + Format(CVar(var_1DC), "/MMM/YYYY"))
  loc_16E2278:     Proc_6_7_F25D88(var_278, var_268, 1)
  loc_16E2298:     var_298 = CVar("Select * From Employee Where site_code='" & MemVar_1F92078 & "' and (Resign_Date Is Null or Resign_Date > ") 'String
  loc_16E22BF:     unk_4C2D90.Execute CStr(var_298 & var_278 & CVar(var_194) & ")"), var_320, -1
  loc_16E22CA:     Set var_180 = var_1E0
  loc_16E22F2:   End If
  loc_16E22FB:   unk_4C2D90.BeginTrans var_310
  loc_16E2302:   var_8E = 1
  loc_16E2305:   ' Referenced from: 16E28C1
  loc_16E2314:   If Not(var_180.EOF) Then
  loc_16E2373:     var_2FC = CStr("Select * From Salary Where Emp_COde='" & var_180.Fields.Item("Code").Value & "' and Mth_Year='" & CVar(var_88) & "'")
  loc_16E237D:     unk_4C2D90.Execute var_2FC, var_298, -1
  loc_16E2388:     Set var_184 = var_1E0
  loc_16E23BA:     If (var_184.RecordCount > 0) Then
  loc_16E23EC:       var_238 = "<<<<<<<  Processing " & var_180.Fields.Item("Name").Value 
  loc_16E2401:       Set var_1E0 = Me.LabelSal
  loc_16E2407:       var_1E0.Caption = CStr(var_238 & "  >>>>>>>")
  loc_16E242B:       Me.LabelSal.Refresh
  loc_16E243B:       If (MemVar_1F923AC = "S") Then
  loc_16E2449:         Proc_6_8_EB0DE4(var_238, CVar(Proc_6_14_EF349C(var_1E0, var_8E, var_1E0)))
  loc_16E24B7:         var_4F4 = Val(CStr(var_184.Fields.Item("CL").Value))
  loc_16E2523:         var_380 = (var_184.Fields.Item("PF").Value + var_184.Fields.Item("EPF").Value)
  loc_16E25AF:         var_208 = ",Curr_Earned=IsNull(Curr_Earned,0)-"
  loc_16E25BF:         var_298 = "Update Employee Set U_EntDt=" & var_238 & "<<<<<<<  Processing " & CVar(Val(CStr(var_184.Fields.Item("Leave").Value))) 
  loc_16E25C3:         var_288 = ",Curr_Casual=IsNull(Curr_Casual,0)-"
  loc_16E25D7:         var_2E8 = ",Curr_PF_Balance=IsNull(Curr_PF_Balance,0)-"
  loc_16E25E7:         var_3D0 = ",Curr_ESI_Balance=IsNull(Curr_ESI_Balance,0)-"
  loc_16E25F3:         var_448 = var_298 & "'" & CVar(var_4F4) & var_2E8 & Format(var_380, "0.00") & var_3D0 & Format(CVar(var_184.Fields.Item("ESI")), "0.00") 
  loc_16E261A:         unk_4C2D90.Execute CStr(var_448 & " Where Code='" & var_180.Fields.Item("Code").Value & "'"), var_4E0, -1
  loc_16E267D:       Else
  loc_16E2682:         var_218 = CVar(Proc_6_14_EF349C(var_4E4, 1, 1, 1, 1)) 'String
  loc_16E2688:         Proc_6_8_EB0DE4(var_238, var_218, var_4F4)
  loc_16E26A7:         var_1DC = var_184.Fields.Item("Leave")
  loc_16E26D5:         var_1E0 = var_184.Fields
  loc_16E2762:         var_380 = (var_184.Fields.Item("PF").Value + var_184.Fields.Item("EPF").Value)
  loc_16E27EE:         var_208 = ",Curr_Earned=IIF(IsNull(Curr_Earned),0,Curr_Earned)-"
  loc_16E2802:         var_288 = ",Curr_Casual=IIF(IsNull(Curr_Casual),0,Curr_Casual)-"
  loc_16E2812:         var_2F8 = "Update Employee Set U_EntDt=" & var_238 & "<<<<<<<  Processing " & CVar(Val(CStr(var_1DC.Value))) & "'" & CVar(Val(CStr(var_1E0.Item("CL").Value))) 
  loc_16E2816:         var_2E8 = ",Curr_PF_Balance=IIF(IsNull(Curr_PF_Balance),0,Curr_PF_Balance)-"
  loc_16E2826:         var_3D0 = ",Curr_ESI_Balance=IIF(IsNull(Curr_ESI_Balance),0,Curr_ESI_Balance)-"
  loc_16E283B:         var_468 = var_2F8 & var_2E8 & Format(var_380, "0.00") & var_3D0 & Format(CVar(var_184.Fields.Item("ESI")), "0.00") & " Where Code='" 
  loc_16E2859:         unk_4C2D90.Execute CStr(var_468 & var_180.Fields.Item("Code").Value & "'"), var_4E0, -1
  loc_16E28B9:       End If
  loc_16E28B9:     End If
  loc_16E28BC:     var_180.MoveNext
  loc_16E28C1:     GoTo loc_16E2305
  loc_16E28C4:   End If
  loc_16E28C9:   Set var_180 = Nothing
  loc_16E28D1:   Set var_184 = Nothing
  loc_16E28D9:   Set var_190 = Nothing
  loc_16E28F7:   If (Me.ChkEmp.Value = 0) Then
  loc_16E2934:     Set var_1D4 = Me.Txt
  loc_16E293A:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Select * From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Mth_Year='" & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E2942:     var_4E4 = var_1DC.Tag
  loc_16E295B:     unk_4C2D90.Execute 1 & var_308 & "'", 1, 1
  loc_16E2966:     Set var_1D0 = var_1E0
  loc_16E299A:     If (var_1D0.RecordCount > 0) Then
  loc_16E299D:       ' Referenced from: 16E2AF5
  loc_16E29AC:       If Not(var_1D0.EOF) Then
  loc_16E29C9:         var_1DC = var_1D0.Fields.Item("Mth_Year")
  loc_16E29D1:         var_218 = var_1DC.Value
  loc_16E29E8:         var_1E0 = var_1D0.Fields
  loc_16E2A1F:         var_248 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E2A29:         var_51C = 0
  loc_16E2A3C:         var_514 = 0
  loc_16E2A47:         var_510 = 0
  loc_16E2A5A:         var_508 = 0
  loc_16E2A73:         var_4F8 = "LogSite_Code"
  loc_16E2A8C:         var_308 = "Emp_Code"
  loc_16E2AB7:         Proc_154_5_10E33A4(MemVar_1F92044, "SALARY", "Mth_Year", &HC8, CStr(var_218), var_308, &HC8, CStr(var_1E0.Item("Emp_Code").Value))
  loc_16E2AF0:         var_1D0.MoveNext
  loc_16E2AF5:         GoTo loc_16E299D
  loc_16E2AF8:       End If
  loc_16E2B32:       Set var_1D4 = Me.Txt
  loc_16E2B38:       Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Delete From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Mth_Year='" & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E2B40:       var_4F8 = var_1DC.Tag
  loc_16E2B59:       unk_4C2D90.Execute &HC8 & var_308 & "'", CStr(var_248), var_508
  loc_16E2B7B:     End If
  loc_16E2B96:     var_300 = "Select * From Loan Where Logsite_code='" & MemVar_1F92078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E2BB5:     Set var_1D4 = Me.Txt
  loc_16E2BBB:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Delete From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Mth_Year='" & var_88 & "' And Emp_Code='", var_218)
  loc_16E2BC3:     -1 = var_1DC.Tag
  loc_16E2BDC:     unk_4C2D90.Execute var_1E0 & var_308 & "' And V_Type In('LR1','AR2')", 0, var_510
  loc_16E2BE7:     Set var_1D0 = var_1E0
  loc_16E2C1B:     If (var_1D0.RecordCount > 0) Then
  loc_16E2C1E:       ' Referenced from: 16E2D9E
  loc_16E2C2D:       If Not(var_1D0.EOF) Then
  loc_16E2C4A:         var_1DC = var_1D0.Fields.Item("SR_no")
  loc_16E2C52:         var_218 = var_1DC.Value
  loc_16E2C69:         var_1E0 = var_1D0.Fields
  loc_16E2CA0:         var_248 = var_1D0.Fields.Item("Emp_Code").Value
  loc_16E2CC7:         var_268 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E2CD1:         var_51C = 0
  loc_16E2CE4:         var_514 = 0
  loc_16E2CFD:         var_508 = "LogSite_Code"
  loc_16E2D16:         var_4F8 = "Emp_Code"
  loc_16E2D2F:         var_308 = "V_Type"
  loc_16E2D5A:         Proc_154_5_10E33A4(MemVar_1F92044, "LOAN", "Sr_No", 1, CStr(var_218), var_308, &HC8, CStr(var_1E0.Item("V_Type").Value))
  loc_16E2D99:         var_1D0.MoveNext
  loc_16E2D9E:         GoTo loc_16E2C1E
  loc_16E2DA1:       End If
  loc_16E2DBC:       var_300 = "Delete From Loan Where Logsite_code='" & MemVar_1F92078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E2DDB:       Set var_1D4 = Me.Txt
  loc_16E2DE1:       Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, "Sr_No" & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E2DE9:       var_4F8 = var_1DC.Tag
  loc_16E2E02:       unk_4C2D90.Execute &HC8 & var_308 & "' And V_Type In('LR1','AR2')", CStr(var_248), var_508
  loc_16E2E24:     End If
  loc_16E2E46:     var_304 = "Select * From Ledger Where Logsite_code='" & MemVar_1F92078 & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='" & var_88
  loc_16E2E5E:     Set var_1D4 = Me.Txt
  loc_16E2E64:     Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, var_304 & "' And Emp_Code='", var_218)
  loc_16E2E6C:     -1 = var_1DC.Tag
  loc_16E2E85:     unk_4C2D90.Execute var_1E0 & var_308 & "'", &HC8, CStr(var_268)
  loc_16E2E90:     Set var_1D0 = var_1E0
  loc_16E2EC4:     If (var_1D0.RecordCount > 0) Then
  loc_16E2EC7:       ' Referenced from: 16E2FCD
  loc_16E2ED6:       If Not(var_1D0.EOF) Then
  loc_16E2EF3:         var_1DC = var_1D0.Fields.Item("DocID")
  loc_16E2EFB:         var_218 = var_1DC.Value
  loc_16E2F05:         var_51C = 0
  loc_16E2F18:         var_514 = 0
  loc_16E2F23:         var_510 = 0
  loc_16E2F36:         var_508 = 0
  loc_16E2F41:         var_4FC = 0
  loc_16E2F54:         var_4F8 = 0
  loc_16E2F72:         var_308 = 0
  loc_16E2F9D:         Proc_154_5_10E33A4(MemVar_1F92044, "LEDGER", "DocId", &HC8, CStr(var_218), var_308, 0, 0)
  loc_16E2FC8:         var_1D0.MoveNext
  loc_16E2FCD:         GoTo loc_16E2EC7
  loc_16E2FD0:       End If
  loc_16E2FEB:       var_300 = "Delete From Ledger Where Logsite_code='" & MemVar_1F92078 & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='"
  loc_16E300A:       Set var_1D4 = Me.Txt
  loc_16E3010:       Call 0.Method_Command2_UnknownEvent_90 (CInt(3), var_1DC, var_308, var_300 & var_88 & "' And Emp_Code='", var_218, -1, var_1E0)
  loc_16E3018:       var_4F8 = var_1DC.Tag
  loc_16E3031:       unk_4C2D90.Execute 0 & var_308 & "'", 0 & var_308 & "'", var_508
  loc_16E3053:     End If
  loc_16E3056:   Else
  loc_16E3071:     If (Me.ChkDepart.Value = 0) Then
  loc_16E3093:       Set var_1D4 = Me.Txt
  loc_16E3099:       Call 0.Method_Command2_UnknownEvent_90 (CInt(2), var_1DC, var_300, " And Emp_Code In (Select Code From Employee Where site_code='" & MemVar_1F92078 & "' And Department='")
  loc_16E30A1:       0 = var_1DC.Tag
  loc_16E30B1:       var_194 = var_510 & var_300 & "')"
  loc_16E30C6:     End If
  loc_16E30FF:     unk_4C2D90.Execute "Select * From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Mth_Year='" & var_88 & "'" & var_194, var_218, -1
  loc_16E310A:     Set var_1D0 = var_1D4
  loc_16E3134:     If (var_1D0.RecordCount > 0) Then
  loc_16E3137:       ' Referenced from:   16E328F
  loc_16E3146:       If Not(var_1D0.EOF) Then
  loc_16E315B:         var_1D4 = var_1D0.Fields
  loc_16E316B:         var_218 = var_1D4.Item("Mth_Year").Value
  loc_16E31B9:         var_248 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E31C3:         var_51C = 0
  loc_16E31D6:         var_514 = 0
  loc_16E31E1:         var_510 = 0
  loc_16E31F4:         var_508 = 0
  loc_16E320D:         var_4F8 = "LogSite_Code"
  loc_16E3251:         Proc_154_5_10E33A4(MemVar_1F92044, "SALARY", "Mth_Year", &HC8, CStr(var_218), "Emp_Code", &HC8, CStr(var_1D0.Fields.Item("Emp_Code").Value))
  loc_16E328A:         var_1D0.MoveNext
  loc_16E328F:         GoTo loc_16E3137
  loc_16E3292:       End If
  loc_16E32CB:       unk_4C2D90.Execute "Delete From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Mth_Year='" & var_88 & "'" & var_194, var_218, -1
  loc_16E32E3:     End If
  loc_16E32FE:     var_300 = "Select * From Loan Where Logsite_code='" & MemVar_1F92078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E330C:     var_308 = "Delete From Salary Where Logsite_code='" & MemVar_1F92078 & "' and Mth_Year='" & var_88 & "' And V_Type In('LR1','AR2')"
  loc_16E331C:     unk_4C2D90.Execute var_308 & var_194, var_218, -1
  loc_16E3327:     Set var_1D0 = var_1D4
  loc_16E3351:     If (var_1D0.RecordCount > 0) Then
  loc_16E3354:       ' Referenced from:   16E34D4
  loc_16E3363:       If Not(var_1D0.EOF) Then
  loc_16E3378:         var_1D4 = var_1D0.Fields
  loc_16E3388:         var_218 = var_1D4.Item("SR_no").Value
  loc_16E33AF:         var_238 = var_1D0.Fields.Item("V_Type").Value
  loc_16E33D6:         var_248 = var_1D0.Fields.Item("Emp_Code").Value
  loc_16E33FD:         var_268 = var_1D0.Fields.Item("LogSite_Code").Value
  loc_16E3407:         var_51C = 0
  loc_16E341A:         var_514 = 0
  loc_16E3433:         var_508 = "LogSite_Code"
  loc_16E344C:         var_4F8 = "Emp_Code"
  loc_16E3490:         Proc_154_5_10E33A4(MemVar_1F92044, "LOAN", "Sr_No", 1, CStr(var_218), "V_Type", &HC8, CStr(var_238))
  loc_16E34CF:         var_1D0.MoveNext
  loc_16E34D4:         GoTo loc_16E3354
  loc_16E34D7:       End If
  loc_16E34F2:       var_300 = "Delete From Loan Where Logsite_code='" & MemVar_1F92078 & "' and Upper(Convert(varchar(3),V_Date,0))+Convert(varchar(4),Year(V_Date))='"
  loc_16E3510:       unk_4C2D90.Execute "Sr_No" & var_88 & "' And V_Type In('LR1','AR2')" & var_194, var_218, -1
  loc_16E3528:     End If
  loc_16E354A:     var_304 = "Select * From Ledger Where Logsite_code='" & MemVar_1F92078 & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='" & var_88
  loc_16E3561:     unk_4C2D90.Execute var_304 & "'" & var_194, var_218, -1
  loc_16E356C:     Set var_1D0 = var_1D4
  loc_16E3596:     If (var_1D0.RecordCount > 0) Then
  loc_16E3599:       ' Referenced from:   16E369F
  loc_16E35A8:       If Not(var_1D0.EOF) Then
  loc_16E35CD:         var_218 = var_1D0.Fields.Item("DocID").Value
  loc_16E35D7:         var_51C = 0
  loc_16E35EA:         var_514 = 0
  loc_16E35F5:         var_510 = 0
  loc_16E3608:         var_508 = 0
  loc_16E3613:         var_4FC = 0
  loc_16E3626:         var_4F8 = 0
  loc_16E366F:         Proc_154_5_10E33A4(MemVar_1F92044, "LEDGER", "DocId", &HC8, CStr(var_218), 0, 0, 0)
  loc_16E369A:         var_1D0.MoveNext
  loc_16E369F:         GoTo loc_16E3599
  loc_16E36A2:       End If
  loc_16E36B6:       var_2FC = "Delete From Ledger Where Logsite_code='" & MemVar_1F92078
  loc_16E36DB:       unk_4C2D90.Execute var_2FC & "' and V_Type In('LR1','AR2','SL') And UPpER(mth_year)='" & var_88 & "'" & var_194, var_218, -1
  loc_16E36F3:     End If
  loc_16E36F3:   End If
  loc_16E36F9:   unk_4C2D90.CommitTrans
  loc_16E3700:   var_8E = 0
  loc_16E3703: End If
  loc_16E3710: Me.LabelSal.Caption = " <<<<<< Processing Completed >>>>>>"
  loc_16E371D: Set var_1D0 = Nothing
  loc_16E3720: Exit Sub
  loc_16E3721: ' Referenced from: 16E1D64
  loc_16E3727: If (var_8E = 1) Then
  loc_16E3730:   unk_4C2D90.RollbackTrans
  loc_16E3735: End If
  loc_16E3743: Call 0.Method_arg_2C (var_2FC, var_8E, Err(), var_4F8, 0, var_4FC)
  loc_16E375C: MsgBox(CVar(var_2FC), &H10, var_238, var_248, var_268)
  loc_16E376F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1B794
  'Data Table: 4C2D78
  loc_E1B789: Me.Global.Unload Me
  loc_E1B791: Exit Sub
End Sub

Public Sub Proc_310_20_EBCBEC
  'Data Table: 4C2D78
  loc_EBCB64: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_EBCB76:   Me.DGDepartment.Visible = False
  loc_EBCB7E: End If
  loc_EBCB9A: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EBCBAC:   Me.DGEmployee.Visible = False
  loc_EBCBB4: End If
  loc_EBCBD0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBCBE2:   Me.FGPoint.Visible = False
  loc_EBCBEA: End If
  loc_EBCBEA: Exit Sub
End Sub

Public Sub Proc_310_21_E6AF84
  'Data Table: 4C2D78
  Dim var_AC As String
  loc_E6AF40: Exit Sub
  loc_E6AF49: Set var_88 = Err()
  loc_E6AF4F: Call 0.Method_arg_2C (var_8C)
  loc_E6AF5A: var_AC = "Salary De-Created"
  loc_E6AF70: MsgBox(CVar(var_8C), &H10, var_AC, var_DC, var_FC)
  loc_E6AF83: Exit Sub
End Sub

Public Sub Proc_310_22_F92388
  'Data Table: 4C2D78
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  loc_F92266: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_F92297: Proc_6_7_F25D88(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F922B3: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_F922BE: Set var_8C = var_130
  loc_F922F4: If (var_8C.RecordCount > 0) Then
  loc_F92322:   var_90 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_F9235E:   var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_F92363:   var_94 = CStr(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F92374: End If
  loc_F92379: Set var_8C = Nothing
  loc_F9237F: var_88 = var_94
  loc_F92382: Proc_310_22_F92388 = 
End Sub

Public Sub Proc_310_23_1007BA8
  'Data Table: 4C2D78
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  loc_10079EE: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1007A1F: Proc_6_7_F25D88(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_1007A3B: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_1007A46: Set var_8C = var_130
  loc_1007A7C: If (var_8C.RecordCount > 0) Then
  loc_1007AAA:   var_90 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1007AE6:   var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_1007AEB:   var_94 = CStr(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_1007AFC: End If
  loc_1007B01: Set var_8C = Nothing
  loc_1007B2F: var_C8 = Space((5 - Len(arg_10)))
  loc_1007B37: var_E8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & arg_10) + var_8C.Fields.Item("start_srl_no").Value)
  loc_1007B48: var_108 = Space((5 - Len(var_90)))
  loc_1007B50: var_12C = (var_12C & var_8C.Fields.Item("start_srl_no").Value + var_12C & var_8C.Fields.Item("start_srl_no").Value & " Order By VP.Date_From DESC")
  loc_1007B5A: var_14C = (var_12C + CVar(var_90))
  loc_1007B6B: var_15C = Space((8 - Len(var_94)))
  loc_1007B73: var_16C = (var_14C + var_15C)
  loc_1007B7D: var_17C = (var_16C + CVar(var_94))
  loc_1007B82: var_88 = CStr(var_17C)
  loc_1007BA1: Proc_310_23_1007BA8 = 
End Sub

Public Sub Proc_310_24_F921DC
  'Data Table: 4C2D78
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Fields15
  loc_F920BA: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_F920EB: Proc_6_7_F25D88(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F92107: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_F92112: Set var_8C = var_130
  loc_F92148: If (var_8C.RecordCount > 0) Then
  loc_F92176:   var_90 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_F921B2:   var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_F921B7:   var_94 = CStr(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & arg_10 & "' And VP.Date_From<="))
  loc_F921C8: End If
  loc_F921CD: Set var_8C = Nothing
  loc_F921D3: var_88 = var_90
  loc_F921D6: Proc_310_24_F921DC = 
End Sub
