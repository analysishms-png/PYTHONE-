VERSION 5.00
Begin VB.Form RSSaleBillDisplay
  Caption = "Bill Look Up"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "RSSaleBillDisplay.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8325
  ClientHeight = 7545
  BeginProperty Font
    Name = "Tahoma"
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
    Top = 7320
    Width = 8325
    Height = 225
    Visible = 0   'False
    TabIndex = 36
  End
  Begin TextBox TxtPer
    Index = 1
    Left = 4290
    Top = 7290
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 31
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    Left = 4830
    Top = 7290
    Width = 1185
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin TextBox Txt
    Index = 12
    Left = 4815
    Top = 10140
    Width = 3630
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    MaxLength = 25
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 11
    Left = 1890
    Top = 10125
    Width = 1695
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox Txt
    Index = 10
    Left = 2550
    Top = 8880
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin TextBox Txt
    Index = 9
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin MSHFlexGrid FGCat
    Left = 10680
    Top = 6735
    Width = 8310
    Height = 2355
    Visible = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGTable
    Left = 8790
    Top = 7725
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 5
    Left = 4920
    Top = 8955
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 5130
    Top = 915
    Width = 495
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 5
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
    ForeColor = &HC00000&
    Left = 1425
    Top = 915
    Width = 2700
    Height = 285
    TabIndex = 3
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
  Begin Frame FrmList
    Left = 10515
    Top = 2070
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 90
      Width = 2415
      Height = 1800
      TabIndex = 11
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &H80000000&
    Left = 7755
    Top = 60
    Width = 2325
    Height = 210
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin TextBox Txt
    Index = 0
    Left = 1890
    Top = 9615
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin TextBox Txt
    Index = 1
    Left = 6225
    Top = 9615
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1275
    Top = 1530
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 405
    Top = 1245
    Width = 7470
    Height = 5520
    TabIndex = 6
  End
  Begin MSFlexGrid FGPoint
    Left = 7050
    Top = 6930
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin BtnEnh Command3
    Left = 7890
    Top = 885
    Width = 1890
    Height = 570
    TabIndex = 28
  End
  Begin BtnEnh CmdExit
    Left = 7890
    Top = 1455
    Width = 1890
    Height = 570
    TabIndex = 29
  End
  Begin Label lblTotal
    Caption = "Total : "
    Left = 6840
    Top = 6840
    Width = 1035
    Height = 360
    TabIndex = 37
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 15.75
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
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 35
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 2910
    Top = 7290
    Width = 465
    Height = 240
    Visible = 0   'False
    TabIndex = 34
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 4665
    Top = 7290
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 33
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    Left = 2775
    Top = 7605
    Width = 900
    Height = 210
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lbltable
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 5085
    Top = 495
    Width = 4605
    Height = 390
    TabIndex = 23
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
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 3135
    Top = 510
    Width = 1665
    Height = 330
    TabIndex = 21
    Alignment = 2 'Center
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 75
    Top = 495
    Width = 2565
    Height = 270
    TabIndex = 16
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    BackColor = &HFFFFFF&
    Left = 0
    Top = 480
    Width = 9780
    Height = 405
    TabIndex = 27
  End
  Begin Label Label1
    Caption = "Party Name"
    Index = 8
    ForeColor = &H0&
    Left = 3705
    Top = 10125
    Width = 945
    Height = 210
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Order No"
    Index = 7
    ForeColor = &H0&
    Left = 525
    Top = 10125
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Covers"
    Index = 0
    ForeColor = &HC00000&
    Left = 4365
    Top = 930
    Width = 645
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
    Caption = "Table No."
    Index = 2
    ForeColor = &HC00000&
    Left = 420
    Top = 930
    Width = 915
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
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H0&
    Left = 525
    Top = 9630
    Width = 585
    Height = 210
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H0&
    Left = 5745
    Top = 8925
    Width = 390
    Height = 210
    Visible = 0   'False
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 1200
    Top = 9630
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 7
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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

Attribute VB_Name = "RSSaleBillDisplay"

Private global_56 As Integer
Private global_160 As Integer
Private global_162 As Integer
Private global_240 As Long

Private Sub TxtGrid_GotFocus(Index As Integer) '1222894
  'Data Table: 523D28
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12223AE: Set var_88 = Me.TxtGrid
  loc_12223B4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12223C2: Proc_6_74_E226B0(var_8C)
  loc_12223CE: Call Proc_177_72_E83FE0(var_8C)
  loc_12223E1: Set var_88 = Me.TxtGrid
  loc_12223E7: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12223EF: var_8C.MaxLength = 0
  loc_1222407: If (Index = 0) Then
  loc_122241D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122245C:   Set var_108 = Me.TxtGrid
  loc_1222462:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_122246A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_122249B:   var_114 = CLng(Me.FGrid.Col)
  loc_12224AB:   If (var_114 = CLng(3)) Then
  loc_12224D5:     Set var_8C = Me.FGrid
  loc_12224FB:     Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_1222525:     Set var_88 = Me.TxtGrid
  loc_122252B:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, CVar(CLng(Me.FGrid.Row)))
  loc_1222533:     var_8C.MaxLength = "OutletCode='"
  loc_1222542:   Else
  loc_1222549:     If (var_114 = CLng(4)) Then
  loc_1222562:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222599:       Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_12225BE:       var_11C = Me.RecordCount
  loc_12225D5:       var_11E = Me.EOF
  loc_12225E9:       var_120 = Me.BOF
  loc_1222609:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222645:       If (CVar(CLng(&HB)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1222648:         Exit Sub
  loc_1222649:       End If
  loc_122264F:       Me.MoveFirst
  loc_1222667:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122266F:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_1222678:       Set var_8C = Me.FGrid
  loc_122267E:       var_B4 = var_8C.TextMatrix)
  loc_12226B3:       Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_12226D8:       var_11E = Me.EOF
  loc_12226E3:       If (var_11E = &HFF) Then
  loc_12226EC:         Me.MoveFirst
  loc_12226F1:       End If
  loc_12226F4:     Else
  loc_12226FB:       If (var_114 = CLng(8)) Then
  loc_122270D:         Set var_88 = Me.TxtGrid
  loc_1222713:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_134, var_B4, var_E4, var_C4)
  loc_122271B:         var_8C.MaxLength = var_C4
  loc_1222730:         If (global_162 = 0) Then
  loc_122273B:           var_110 = "{Home}+{End}"
  loc_1222741:           Proc_303_0_FB9B68(CStr(var_B4), 0, ((var_11C = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))), var_C4)
  loc_1222749:         End If
  loc_122274C:       Else
  loc_1222753:         If (var_114 = CLng(2)) Then
  loc_122275F:           var_11C = Me.RecordCount
  loc_1222776:           var_11E = Me.EOF
  loc_122278A:           var_120 = Me.BOF
  loc_12227AA:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12227E6:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12227E9:             Exit Sub
  loc_12227EA:           End If
  loc_12227F0:           Me.MoveFirst
  loc_1222808:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222810:           var_E4 = CVar(CLng(1)) 'Long
  loc_1222854:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_1222884:           If (Me.EOF = &HFF) Then
  loc_122288D:             Me.MoveFirst
  loc_1222892:           End If
  loc_1222892:         End If
  loc_1222892:       End If
  loc_1222892:     End If
  loc_1222892:   End If
  loc_1222892: End If
  loc_1222892: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C123C
  'Data Table: 523D28
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_94 As String
  loc_12C0BDB: var_86 = Shift
  loc_12C0BEA: If (KeyCode = 0) Then
  loc_12C0BF7:   If (CLng(Shift) = &H1B) Then
  loc_12C0C07:     Set var_8C = Me.TxtGrid
  loc_12C0C0D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_12C0C15:     var_88 = var_90.Tag
  loc_12C0C27:     Set var_98 = Me.TxtGrid
  loc_12C0C2D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12C0C35:     var_9C.Text = var_94
  loc_12C0C51:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C0C56:     Call Proc_177_72_E83FE0(arg_14)
  loc_12C0C5F:     Set var_8C = Me.FGrid
  loc_12C0C7C:     Set var_8C = Me.TxtGrid
  loc_12C0C82:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12C0C8A:     var_90.Visible = FGrid.DispID_8001
  loc_12C0C96:     Exit Sub
  loc_12C0C97:   End If
  loc_12C0CAA:   var_B0 = CLng(Me.FGrid.Col)
  loc_12C0CBA:   If (var_B0 = CLng(2)) Then
  loc_12C0D16:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12C0D19:     End If
  loc_12C0D23:     If (CLng(Shift) = &HD) Then
  loc_12C0D2C:       Call Proc_177_68_18881B8(KeyCode, var_B6)
  loc_12C0D37:       If (var_B6 = &HFF) Then
  loc_12C0D7D:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, 7)
  loc_12C0D8D:       End If
  loc_12C0D8D:     End If
  loc_12C0D90:   Else
  loc_12C0D97:     If (var_B0 = CLng(4)) Then
  loc_12C0DF3:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12C0DF6:       End If
  loc_12C0E00:       If (CLng(Shift) = &HD) Then
  loc_12C0E09:         Call Proc_177_68_18881B8(KeyCode, var_B6, 0, 3)
  loc_12C0E14:         If (var_B6 = &HFF) Then
  loc_12C0E61:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, CByte((CInt(&HA) + 1)))
  loc_12C0E71:         End If
  loc_12C0E71:       End If
  loc_12C0E74:     Else
  loc_12C0E7B:       If (var_B0 = CLng(8)) Then
  loc_12C0EBE:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_12C0EC7:           Call Proc_177_68_18881B8(KeyCode, var_B6, 0, 7)
  loc_12C0ED2:           If (var_B6 = &HFF) Then
  loc_12C0F18:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, 8, 0)
  loc_12C0F3B:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0F43:             var_EC = CVar(CLng(1)) 'Long
  loc_12C0F56:             Set var_90 = Me.FGrid
  loc_12C0F5C:             LateIdCallSt
  loc_12C0F81:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0F89:             var_EC = CVar(CLng(2)) 'Long
  loc_12C0F9C:             Set var_90 = Me.FGrid
  loc_12C0FA2:             LateIdCallSt
  loc_12C0FB7:             var_CC = CVar(CLng(3)) 'Long
  loc_12C0FC6:             Me.FGrid.Col = var_CC
  loc_12C0FCE:           End If
  loc_12C0FCE:         End If
  loc_12C0FD1:       Else
  loc_12C0FD8:         If (var_B0 = CLng(7)) Then
  loc_12C101B:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_12C1024:             Call Proc_177_68_18881B8(KeyCode, var_B6, var_90, global_220, var_EC, var_CC, var_90)
  loc_12C102F:             If (var_B6 = &HFF) Then
  loc_12C1075:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, 8, 0, 0)
  loc_12C1098:               var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C10A0:               var_EC = CVar(CLng(1)) 'Long
  loc_12C10B3:               Set var_90 = Me.FGrid
  loc_12C10B9:               LateIdCallSt
  loc_12C10DE:               var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C10E6:               var_EC = CVar(CLng(2)) 'Long
  loc_12C10F9:               Set var_90 = Me.FGrid
  loc_12C10FF:               LateIdCallSt
  loc_12C1114:               var_CC = CVar(CLng(3)) 'Long
  loc_12C1123:               Me.FGrid.Col = var_CC
  loc_12C112B:             End If
  loc_12C112B:           End If
  loc_12C112E:         Else
  loc_12C1135:           If (var_B0 = CLng(3)) Then
  loc_12C1142:             If (CLng(Shift) = &HD) Then
  loc_12C114B:               Call Proc_177_68_18881B8(KeyCode, var_B6, var_90, global_220, var_EC, var_CC, var_90, global_228)
  loc_12C1156:               If (var_B6 = &HFF) Then
  loc_12C11A3:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_162, CByte((CInt(7) + 1)), 0, 0)
  loc_12C11C6:                 var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C11CE:                 var_EC = CVar(CLng(3)) 'Long
  loc_12C1201:                 If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12C1216:                   Me.FGrid.Col = CVar(CLng(3))
  loc_12C1221:                 Else
  loc_12C1233:                   Me.FGrid.Col = CVar(CLng(7))
  loc_12C123B:                 End If
  loc_12C123B:               End If
  loc_12C123B:             End If
  loc_12C123B:           End If
  loc_12C123B:         End If
  loc_12C123B:       End If
  loc_12C123B:     End If
  loc_12C123B:   End If
  loc_12C123B: End If
  loc_12C123B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F895D8
  'Data Table: 523D28
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_F8947B: Proc_6_58_E054C0(arg_10)
  loc_F8948C: If (KeyAscii = 0) Then
  loc_F894A2:   var_A0 = CLng(Me.FGrid.Col)
  loc_F894B2:   If (var_A0 = CLng(3)) Then
  loc_F894D0:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_F894E5:       Me.FGrid.Col = CVar(CLng(4))
  loc_F894ED:     End If
  loc_F894F0:   Else
  loc_F894F7:     If (var_A0 = CLng(2)) Then
  loc_F894FA:       GoTo loc_F895D4
  loc_F894FD:     End If
  loc_F89504:     If (var_A0 = CLng(4)) Then
  loc_F89507:       GoTo loc_F895D4
  loc_F8950A:     End If
  loc_F89511:     If (var_A0 = CLng(7)) Then
  loc_F8951E:       Set var_8C = Me.TxtGrid
  loc_F89524:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C4)
  loc_F8953F:       Proc_6_42_129A86C(var_C4, arg_10, 8)
  loc_F8954E:     Else
  loc_F89555:       If (var_A0 = CLng(8)) Then
  loc_F89562:         Set var_8C = Me.TxtGrid
  loc_F89568:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C4, 3)
  loc_F89583:         Proc_6_42_129A86C(var_C4, arg_10, 8)
  loc_F89592:       Else
  loc_F89599:         If (var_A0 = CLng(3)) Then
  loc_F895B7:           If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_F895CC:             Me.FGrid.Col = CVar(CLng(4))
  loc_F895D4:           End If
  loc_F895D4:         End If
  loc_F895D4:         ' Referenced from:   F89507
  loc_F895D4:         ' Referenced from:   F894FA
  loc_F895D4:       End If
  loc_F895D4:     End If
  loc_F895D4:   End If
  loc_F895D4: End If
  loc_F895D4: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E00C80
  'Data Table: 523D28
  loc_E00C74: On Error Goto loc_E00C78
  loc_E00C77: Exit Sub
  loc_E00C78: ' Referenced from: E00C74
  loc_E00C78: Proc_6_60_E62BC4()
  loc_E00C7D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23910
  'Data Table: 523D28
  Dim arg_10 As Integer
  loc_E238F8: If (Cancel = 0) Then
  loc_E23901:   Call Proc_177_68_18881B8(Cancel, var_88)
  loc_E2390A:   arg_10 = Not(var_88)
  loc_E2390D: End If
  loc_E2390D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E93CB0
  'Data Table: 523D28
  Dim var_10C As TextBox
  loc_E93C40: On Error Goto loc_E93CA8
  loc_E93C7A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E93C7D:   Call Proc_177_70_10B39FC()
  loc_E93C8D:   Set var_108 = Me.Txt
  loc_E93C93:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(3))
  loc_E93C9B:   var_10C.SetFocus
  loc_E93CA7: End If
  loc_E93CA7: Exit Sub
  loc_E93CA8: ' Referenced from: E93C40
  loc_E93CA8: Proc_6_60_E62BC4(var_10C)
  loc_E93CAD: Exit Sub
  loc_E93CAE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BEB4
  'Data Table: 523D28
  loc_E1BEA9: Me.Global.Unload Me
  loc_E1BEB1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E394F8
  'Data Table: 523D28
  loc_E394E8: Proc_5_0_110649C(&HFF, Me)
  loc_E394F0: Call Proc_177_69_1832228(global_92)
  loc_E394F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39618
  'Data Table: 523D28
  Dim var_4F01 As Double
  loc_E39608: Proc_5_0_110649C(&HFF, Me)
  loc_E39610: Call Proc_177_69_1832228(global_92)
  loc_E39615: Exit Sub
  loc_E39616: var_4F01 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39678
  'Data Table: 523D28
  Dim var_4F01 As Double
  loc_E39668: Proc_5_0_110649C(&HFF, Me)
  loc_E39670: Call Proc_177_69_1832228(global_92)
  loc_E39675: Exit Sub
  loc_E39676: var_4F01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A578
  'Data Table: 523D28
  Dim var_4F01 As Double
  loc_E3A568: Proc_5_0_110649C(&HFF, Me)
  loc_E3A570: Call Proc_177_69_1832228(global_92)
  loc_E3A575: Exit Sub
  loc_E3A576: var_4F01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFFF04
  'Data Table: 523D28
  loc_DFFEFC: Call Proc_177_85_108B030()
  loc_DFFF01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5EBBC
  'Data Table: 523D28
  Dim Me As Recordset15
  loc_E5EB77: If (global_148 <> "FAST") Then
  loc_E5EB85:   Me.Requery -1
  loc_E5EB8A: End If
  loc_E5EB95: If (global_148 <> "FAST") Then
  loc_E5EBA3:   Me.Requery -1
  loc_E5EBA8: End If
  loc_E5EBB3: Me.Requery -1
  loc_E5EBB8: Exit Sub
  loc_E5EBB9: Set var_108 = 
End Sub

Private Sub ListView_UnknownEvent_13 'F0F5D8
  'Data Table: 523D28
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F0F500: Set var_A4 = Me.ListView
  loc_F0F54A: Set var_BC = Me.Txt
  loc_F0F550: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F0F558: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F0F584: Me.FrmList.Visible = False
  loc_F0F5B4: Set var_9C = Me.Txt
  loc_F0F5BA: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F0F5C2: var_A4.SetFocus
  loc_F0F5D6: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECD274
  'Data Table: 523D28
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECD1D6: Set var_88 = Me.TxtPer
  loc_ECD1DC: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECD1EA: Proc_6_74_E226B0(var_8C)
  loc_ECD1F6: Call Proc_177_72_E83FE0(var_8C)
  loc_ECD20A: Set var_88 = Me.TxtPer
  loc_ECD210: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECD218: var_8C.SelStart = 0
  loc_ECD231: Set var_88 = Me.TxtPer
  loc_ECD237: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECD252: Set var_90 = Me.TxtPer
  loc_ECD258: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECD260: var_98.SelLength = Len(var_8C.Text)
  loc_ECD273: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E59578
  'Data Table: 523D28
  loc_E59545: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5954E:   Proc_6_75_E527CC(Shift)
  loc_E59553: End If
  loc_E59568: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59571:   Proc_6_76_E52838(Shift, arg_14)
  loc_E59576: End If
  loc_E59576: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E56208
  'Data Table: 523D28
  loc_E561DA: Set var_88 = Me.TxtPer
  loc_E561E0: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E561FB: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E56207: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E011E4
  'Data Table: 523D28
  loc_E011DE: Call Proc_177_76_1777D68(KeyCode)
  loc_E011E3: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E469C4
  'Data Table: 523D28
  loc_E469A2: Set var_88 = Me.TxtPer
  loc_E469A8: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E469B6: Proc_6_73_E22704(var_8C)
  loc_E469C2: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECC764
  'Data Table: 523D28
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECC6C6: Set var_88 = Me.TxtGt
  loc_ECC6CC: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECC6DA: Proc_6_74_E226B0(var_8C)
  loc_ECC6E6: Call Proc_177_72_E83FE0(var_8C)
  loc_ECC6FA: Set var_88 = Me.TxtGt
  loc_ECC700: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECC708: var_8C.SelStart = 0
  loc_ECC721: Set var_88 = Me.TxtGt
  loc_ECC727: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECC742: Set var_90 = Me.TxtGt
  loc_ECC748: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECC750: var_98.SelLength = Len(var_8C.Text)
  loc_ECC763: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E592A8
  'Data Table: 523D28
  loc_E59275: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5927E:   Proc_6_75_E527CC(Shift)
  loc_E59283: End If
  loc_E59298: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E592A1:   Proc_6_76_E52838(Shift, arg_14)
  loc_E592A6: End If
  loc_E592A6: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E555CC
  'Data Table: 523D28
  loc_E5559E: Set var_88 = Me.TxtGt
  loc_E555A4: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E555BF: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E555CB: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E461A4
  'Data Table: 523D28
  loc_E46182: Set var_88 = Me.TxtGt
  loc_E46188: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E46196: Proc_6_73_E22704(var_8C)
  loc_E461A2: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E00F14
  'Data Table: 523D28
  loc_E00F0E: Call Proc_177_76_1777D68(Cancel)
  loc_E00F13: Exit Sub
End Sub

Private Sub Command3_UnknownEvent_9 'DFF2FC
  'Data Table: 523D28
  loc_DFF2F4: Call Proc_177_85_108B030()
  loc_DFF2F9: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C114
  'Data Table: 523D28
  loc_E1C109: Me.Global.Unload Me
  loc_E1C111: Exit Sub
End Sub

Private Sub Form_Load() '12FFC08
  'Data Table: 523D28
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_523D9D As Connection15
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim unk_523D48 As Connection15
  Dim var_8C As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Field20
  Dim Me As Recordset15
  Dim var_140 As Variant
  Dim var_170 As String
  loc_12FF523: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12FF53B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FF572: global_228 = global_60
  loc_12FF586: Me.LblRest.Caption = global_224
  loc_12FF59F: Set var_B4 = Me.LblFormCaption
  loc_12FF5A5: var_B4.Caption = global_224 & " Bill View"
  loc_12FF5E5: unk_523D9D.Execute "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F92078 & "' AND RestCode='" & global_60 & "'", var_D4, -1
  loc_12FF5F6: Set global_200 = var_B4
  loc_12FF61A: If (global_216 = "Room Service") Then
  loc_12FF62E:   Call 0.Method_Form_Load0 (4, var_D8, 0, Me.Label1)
  loc_12FF636:   var_D8.Visible = Proc_96_17_FDBD80(global_60, global_216, global_224)
  loc_12FF64D:   Set var_B4 = Me.Label1
  loc_12FF653:   Call 0.Method_Form_Load0 (5, var_D8, 0)
  loc_12FF65B:   var_D8.Visible = global_220
  loc_12FF672:   Set var_B4 = Me.Label1
  loc_12FF678:   Call 0.Method_Form_Load0 (6, var_D8)
  loc_12FF680:   var_D8.Visible = False
  loc_12FF697:   Set var_B4 = Me.Txt
  loc_12FF69D:   Call 0.Method_Form_Load0 (6, var_D8)
  loc_12FF6A5:   var_D8.Visible = False
  loc_12FF6BC:   Set var_B4 = Me.Txt
  loc_12FF6C2:   Call 0.Method_Form_Load0 (7, var_D8)
  loc_12FF6CA:   var_D8.Visible = False
  loc_12FF6E1:   Set var_B4 = Me.Txt
  loc_12FF6E7:   Call 0.Method_Form_Load0 (8, var_D8)
  loc_12FF6EF:   var_D8.Visible = False
  loc_12FF6FB: End If
  loc_12FF701: If (MemVar_1F920B8 <> 1) Then
  loc_12FF708:   Set var_B4 = Me.TopCtrl1
  loc_12FF70E:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B(global_232)
  loc_12FF738:   var_E8 = CVar(Replace(CStr(var_D4), "D", "*", 1, -1, 0)) 'String
  loc_12FF740:   Set var_D8 = Me.TopCtrl1
  loc_12FF746:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_E8)
  loc_12FF75C: End If
  loc_12FF783: unk_523D48.Execute "Select RateInclTax from depart where code='" & global_60 & "'", var_D4, -1
  loc_12FF78E: Set var_8C = var_B4
  loc_12FF7B2: If (var_8C.RecordCount > 0) Then
  loc_12FF7CC:   var_D8 = var_8C.Fields.Item("RateInclTax")
  loc_12FF7D4:   var_D4 = CVar(var_D8) 'Address
  loc_12FF7E6:   global_136 = Proc_6_38_E68A98(var_D4)
  loc_12FF7F2: End If
  loc_12FF7F7: Set var_8C = Nothing
  loc_12FF800: var_B0 = 0
  loc_12FF830: unk_523D48.Execute "Select KOtYn from depart where Code='" & global_60 & "'", var_D4, -1
  loc_12FF838: var_B4 = var_B4.Fields
  loc_12FF840: var_B0 = var_D8.Item(var_D8)
  loc_12FF848: var_F0 = var_F0.Value
  loc_12FF857: global_204 = CStr(var_E8)
  loc_12FF87E: Set global_84 = New 
  loc_12FF890: Me.Recordset15.CursorLocation = 3
  loc_12FF8BA: var_D4 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_12FF8CF: Call Proc_177_74_114D6B0(1, -1)
  loc_12FF8DE: Set global_92 = New 
  loc_12FF8F0: Me.Recordset15.CursorLocation = 3
  loc_12FF900: Proc_6_7_F25D88(var_D4, MemVar_1F920EC)
  loc_12FF90B: var_140 = 0
  loc_12FF92B: var_BC = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_12FF93B: unk_523D48.Execute "Select KOtYn from depart where Code='" & global_60 & "'" & "'", var_130, -1
  loc_12FF943: var_B4 = var_B4.Fields
  loc_12FF94B: var_140 = var_D8.Item(var_D8)
  loc_12FF953: var_F0 = var_F0.Value
  loc_12FF976: var_B8 = "Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='" & MemVar_1F92078
  loc_12FF97D: var_E8 = CVar(var_B8 & "' AND S.VDate=") 'String
  loc_12FF9A7: r_D4, CVar(MemVar_1F92044), 3 var_E8 & var_D4 & " And (S.DELFLAG='N' OR S.DELFLAG='') AND S.VTYPE='" & var_150 & "' ORDER BY S.DOCID", CVar(MemVar_1F92044), 3
  loc_12FF9F6: Call 0.Method_arg_50 (var_B8, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_D4, -1, var_B4, var_D8, 0)
  loc_12FFA1D: unk_523D48.Execute var_F0 & var_B8 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_E8, 1
  loc_12FFA25: -1 = var_B4.Fields
  loc_12FFA2D: var_E8 = var_D8.Item(var_150)
  loc_12FFA35: var_B4 = var_F0.Value
  loc_12FFA62: If (var_E8 > 0) Then
  loc_12FFA9D:   Call 0.Method_arg_50 (var_B8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_D4, -1, var_B4, var_D8, 0)
  loc_12FFAC4:   unk_523D48.Execute var_F0 & var_B8 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_E8, "SearchCode='"
  loc_12FFACC:   0 = var_B4.Fields
  loc_12FFAD4:   var_170 = var_D8.Item(1)
  loc_12FFADC:    = var_F0.Value
  loc_12FFAFB:   Me.Find CStr(var_E8 & "'"), , 
  loc_12FFB23: End If
  loc_12FFB3A: If (Me.RecordCount > 0) Then
  loc_12FFB51:   If (Me.EOF = &HFF) Then
  loc_12FFB5A:     Me.MoveLast
  loc_12FFB5F:   End If
  loc_12FFB5F: End If
  loc_12FFB68: Call 0.Method_arg_160 (var_B4)
  loc_12FFB76: Call 0.Method_arg_164 (var_B4)
  loc_12FFB7E: Call Proc_177_63_13B7CCC()
  loc_12FFB97: If (RSSaleBillDisplay.OpenMode = 1) Then
  loc_12FFBAB:   Set var_B4 = Me.Txt
  loc_12FFBB1:   Call 0.Method_Form_Load0 (CInt(3), var_D8)
  loc_12FFBB9:   var_D8.Text = global_244
  loc_12FFBD6:   Set var_B4 = Me.Txt
  loc_12FFBDC:   Call 0.Method_Form_Load0 (CInt(3), var_D8)
  loc_12FFBE4:   var_D8.Tag = global_244
  loc_12FFBFC:   Call Txt_Validate(CInt(3))
  loc_12FFC01: End If
  loc_12FFC01: Exit Sub
  loc_12FFC02: Proc_6_60_E62BC4(0)
  loc_12FFC07: Exit Sub
End Sub

Private Sub Form_Resize() 'E52DB4
  'Data Table: 523D28
  loc_E52D8A: Me.LblFormCaption.Left = CDbl(0)
  loc_E52D98: Call 0.Method_arg_100 (var_8C)
  loc_E52DAA: Me.LblFormCaption.Width = var_8C
  loc_E52DB2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8A2C0
  'Data Table: 523D28
  loc_E8A253: Set global_84 = Nothing
  loc_E8A265: Set global_80 = Nothing
  loc_E8A277: Set global_96 = Nothing
  loc_E8A283: global_56 = 0
  loc_E8A291: Set global_84 = Nothing
  loc_E8A2A3: Set global_200 = Nothing
  loc_E8A2B5: Set global_52 = Nothing
  loc_E8A2BC: Exit Sub
End Sub

Private Sub Form_Activate() '101F4F8
  'Data Table: 523D28
  Dim var_C8 As Integer
  Dim var_8C As String
  Dim unk_523D48 As Connection15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_101F304: var_C8 = 0
  loc_101F324: var_8C = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_101F334: unk_523D48.Execute var_8C & "'", var_B0, -1
  loc_101F33C: var_B4 = var_B4.Fields
  loc_101F344: var_C8 = var_B8.Item(var_B8)
  loc_101F34C: var_CC = var_CC.Value
  loc_101F354: var_FC = var_DC & var_DC 
  loc_101F35D: var_11C = var_FC & "' Order by Description" 
  loc_101F36B: unk_523D48.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_101F376: Set var_88 = var_144
  loc_101F3AE: If (var_88.RecordCount > 0) Then
  loc_101F3CB:   var_B8 = var_88.Fields.Item(0)
  loc_101F3E2:   global_144 = CStr(var_B8.Value)
  loc_101F3F6: Else
  loc_101F409:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_101F40F:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_101F42C:   Me.Global.Unload Me
  loc_101F434:   Exit Sub
  loc_101F435: End If
  loc_101F43B: var_C8 = 0
  loc_101F46B: unk_523D48.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_144 & "'", var_B0, -1
  loc_101F473: var_B4 = var_B4.Fields
  loc_101F47B: var_C8 = var_B8.Item(var_B8)
  loc_101F483: var_CC = var_CC.Value
  loc_101F4AA: If (var_DC <= 0) Then
  loc_101F4C6:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_101F4E3:   Me.Global.Unload Me
  loc_101F4EB:   Exit Sub
  loc_101F4EC: End If
  loc_101F4F1: Set var_88 = Nothing
  loc_101F4F4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2501C
  'Data Table: 523D28
  loc_E25001: If (global_56 = &HFF) Then
  loc_E25011:   Me.Global.Unload Me
  loc_E25019: End If
  loc_E25019: Exit Sub
  loc_E2501A: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3C378
  'Data Table: 523D28
  loc_E3C34C: On Error Goto loc_E3C370
  loc_E3C367: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3C36F: Exit Sub
  loc_E3C370: ' Referenced from: E3C34C
  loc_E3C370: Proc_6_60_E62BC4(Shift)
  loc_E3C375: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F56E28
  'Data Table: 523D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56D08: On Error Goto loc_F56E22
  loc_F56D1A: Me.DGTable.Visible = False
  loc_F56D39: If (Me.RecordCount > 0) Then
  loc_F56D78:   Set var_B4 = Me.Txt
  loc_F56D7E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F56D86:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F56DB9:   var_B0 = Me.Fields.Item("Code")
  loc_F56DD8:   Set var_B4 = Me.Txt
  loc_F56DDE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F56DE6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F56DFC: End If
  loc_F56E07: Set var_A8 = Me.Txt
  loc_F56E0D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(3))
  loc_F56E15: var_B0.SetFocus
  loc_F56E21: Exit Sub
  loc_F56E22: ' Referenced from: F56D08
  loc_F56E22: Proc_6_60_E62BC4(var_B0)
  loc_F56E27: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E6D9B8
  'Data Table: 523D28
  loc_E6D976: Proc_6_153_E91194(Me.DGTable, arg_14)
  loc_E6D98D: Set var_8C = Me.FGPoint
  loc_E6D9A9: Proc_6_138_106D6F8(Me.DGTable, global_96, CInt(3))
  loc_E6D9B7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FE950C
  'Data Table: 523D28
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_FE9337: var_86 = Shift
  loc_FE9344: If (CLng(Shift) = &H1B) Then
  loc_FE9347:   Call Proc_177_72_E83FE0(var_86)
  loc_FE934C:   Exit Sub
  loc_FE934D: End If
  loc_FE935B: If (KeyCode = CInt(3)) Then
  loc_FE937B:   Set var_A0 = Me.FGPoint
  loc_FE9386:   Set var_9C = Nothing
  loc_FE93B8:   Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(3), global_96, Shift, 0)
  loc_FE9427:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_FE942E:     Set var_9C = Me.DGTable
  loc_FE944D:     Proc_6_138_106D6F8(var_9C, global_96, KeyCode, Me.FGPoint, 1)
  loc_FE945B:   End If
  loc_FE945B: End If
  loc_FE9494: If ((CBool(Me.DGTable.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_FE94B5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_FE94B8:     Exit Sub
  loc_FE94B9:   End If
  loc_FE94CE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FE94D7:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_FE94DC:   End If
  loc_FE94E4:   If (KeyCode <> CInt(3)) Then
  loc_FE94FC:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FE9505:       Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_FE950A:     End If
  loc_FE950A:   End If
  loc_FE950A: End If
  loc_FE950A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F79D94
  'Data Table: 523D28
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F79C48: On Error Goto loc_F79D8E
  loc_F79C4E: Proc_6_58_E054C0(arg_10)
  loc_F79C56: var_86 = KeyAscii
  loc_F79C61: If Not (var_86 = CInt(0)) Then
  loc_F79C6C:   If (var_86 = CInt(4)) Then
  loc_F79C6F:   End If
  loc_F79C79:   Set var_8C = Me.Txt
  loc_F79C7F:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F79C9A:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F79CA9: Else
  loc_F79CB1:   If Not (var_86 = CInt(6)) Then
  loc_F79CBC:     If (var_86 = CInt(7)) Then
  loc_F79CBF:     End If
  loc_F79CC9:     Set var_8C = Me.Txt
  loc_F79CCF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F79CEA:     Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F79CF9:   Else
  loc_F79D01:     If (var_86 = CInt(3)) Then
  loc_F79D20:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F79D4D:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F79D7F:         Proc_6_138_106D6F8(Me.DGTable, global_96, KeyAscii, Me.FGPoint)
  loc_F79D8D:       End If
  loc_F79D8D:     End If
  loc_F79D8D:   End If
  loc_F79D8D: End If
  loc_F79D8D: Exit Sub
  loc_F79D8E: ' Referenced from: F79C48
  loc_F79D8E: Proc_6_60_E62BC4(0, 2)
  loc_F79D93: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F86024
  'Data Table: 523D28
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F85EFB: var_86 = KeyCode
  loc_F85F06: If Not (var_86 = CInt(6)) Then
  loc_F85F11:   If (var_86 = CInt(7)) Then
  loc_F85F14:   End If
  loc_F85F22:   Set var_8C = Me.Txt
  loc_F85F28:   Call 0.Method_Txt_KeyUp0 (CInt(6), var_90)
  loc_F85F3D:   var_118 = Val(var_90.Text)
  loc_F85F47:   Set var_98 = Me.TxtGt
  loc_F85F4D:   Call 0.Method_Txt_KeyUp8 (var_9A, var_118)
  loc_F85F5F:   Set var_A0 = Me.TxtGt
  loc_F85F65:   Call 0.Method_Txt_KeyUp0 (var_9A, var_A4)
  loc_F85F7A:   var_120 = Val(var_A4.Text)
  loc_F85F8B:   Set var_AC = Me.Txt
  loc_F85F91:   Call 0.Method_Txt_KeyUp0 (CInt(7), var_B0, var_B4)
  loc_F85FC9:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F85FE7:   Set var_108 = Me.Txt
  loc_F85FED:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_10C, CStr(Format(var_D4, "0.00")), 1)
  loc_F85FF5:   var_10C.Text = 1
  loc_F86023: End If
  loc_F86023: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47BA4
  'Data Table: 523D28
  loc_E47B82: Set var_88 = Me.Txt
  loc_E47B88: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47B96: Proc_6_73_E22704(var_8C)
  loc_E47BA2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15D14A4
  'Data Table: 523D28
  Dim var_A2 As Integer
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_110 As Variant
  Dim var_B0 As Variant
  Dim var_120 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As String
  Dim var_148 As Variant
  Dim var_D8 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_1B0 As Variant
  Dim var_8E As Integer
  Dim var_144 As Variant
  Dim unk_523D48 As Connection15
  Dim var_94 As Recordset15
  Dim var_1C4 As MSHFlexGrid
  Dim var_1CC As Double
  Dim var_A0 As Double
  loc_15D0170: On Error Goto loc_15D149C
  loc_15D0176: var_A2 = Cancel
  loc_15D0181: If (var_A2 = CInt(3)) Then
  loc_15D01C5:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15D01D5:     Set var_B0 = Me.Txt
  loc_15D01DB:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D01FA:     If (var_B4.Text = vbNullString) Then
  loc_15D020A:       Set var_B0 = Me.Txt
  loc_15D0210:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0218:       var_B4.Text = vbNullString
  loc_15D0231:       Set var_B0 = Me.Txt
  loc_15D0237:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D023F:       var_B4.Tag = vbNullString
  loc_15D0256:       If (global_152 = "RO") Then
  loc_15D025F:         global_148 = vbNullString
  loc_15D0263:       End If
  loc_15D0263:     End If
  loc_15D0266:   Else
  loc_15D0273:     Set var_B0 = Me.Txt
  loc_15D0279:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0298:     If (var_B4.Text = vbNullString) Then
  loc_15D02A8:       Set var_B0 = Me.Txt
  loc_15D02AE:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D02CD:       If (var_B4.Text = vbNullString) Then
  loc_15D02DD:         Set var_B0 = Me.Txt
  loc_15D02E3:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D02EB:         var_B4.Text = vbNullString
  loc_15D0304:         Set var_B0 = Me.Txt
  loc_15D030A:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0312:         var_B4.Tag = vbNullString
  loc_15D0329:         If (global_152 = "RO") Then
  loc_15D0332:           global_148 = vbNullString
  loc_15D0336:         End If
  loc_15D0336:       End If
  loc_15D0339:     Else
  loc_15D0346:       Set var_B0 = Me.Txt
  loc_15D034C:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0354:       var_B8 = var_B4.Tag
  loc_15D0362:       var_D8 = Trim(CVar(var_B8))
  loc_15D036A:       var_E8 = vbNullString
  loc_15D0380:       If CBool(var_D8 <> var_E8) Then
  loc_15D0389:         Me.MoveFirst
  loc_15D03AC:         Set var_B0 = Me.Txt
  loc_15D03B2:         Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_B8, "Code='")
  loc_15D03BA:         0 = var_B4.Tag
  loc_15D03D3:         Me.Find 1 & var_B8 & "'", var_E8, var_A2
  loc_15D03E8:       End If
  loc_15D0432:       var_F8 = (CVar(global_236) <> Me.Fields.Item("Code").Value) And (global_236 <> vbNullString)
  loc_15D0446:       If CBool(var_F8) Then
  loc_15D0478:         If (MsgBox("Do You Want to Select Another Table", &H24, var_D8, var_F8, var_140) = 7) Then
  loc_15D047B:           Exit Sub
  loc_15D047C:         End If
  loc_15D047C:       End If
  loc_15D04B7:       Set var_144 = Me.Txt
  loc_15D04BD:       Call 0.Method_Txt_Validate0 (Cancel, var_148)
  loc_15D04C5:       var_148.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15D0516:       Set var_144 = Me.Txt
  loc_15D051C:       Call 0.Method_Txt_Validate0 (Cancel, var_148)
  loc_15D0524:       var_148.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15D0572:       global_236 = CStr(Trim(CVar(Me.Fields.Item("Code"))))
  loc_15D05E6:       If (InStr(, 1, global_252 & Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")), "'") & "'", 0) = 0) Then
  loc_15D05F4:         If (global_252 = vbNullString) Then
  loc_15D063D:           global_252 = CStr("'" & Me.Fields.Item("Name").Value & "'")
  loc_15D0657:         Else
  loc_15D06A5:           global_252 = CStr(CVar(global_252 & ",'") & Me.Fields.Item("Name").Value & "'")
  loc_15D06BE:         End If
  loc_15D06BE:       End If
  loc_15D06C9:       If (global_216 = "Room Service") Then
  loc_15D0708:         Set var_144 = Me.Txt
  loc_15D070E:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_148)
  loc_15D0716:         var_148.Text = CStr(Me.Fields.Item("Code").Value)
  loc_15D0768:         Set var_144 = Me.Txt
  loc_15D076E:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_148)
  loc_15D0776:         var_148.Tag = CStr(Me.Fields.Item("FolioNoDocid").Value)
  loc_15D078C:       End If
  loc_15D0797:       If (global_152 = "RO") Then
  loc_15D07B7:         var_B4 = Me.Fields.Item("RoomCat")
  loc_15D07CE:         global_148 = CStr(var_B4.Value)
  loc_15D07DF:       End If
  loc_15D07DF:     End If
  loc_15D07DF:   End If
  loc_15D07EA:   If (global_204 = "Y") Then
  loc_15D07F7:     Set global_88 = New 
  loc_15D0809:     Me.Recordset15.CursorLocation = 3
  loc_15D082F:     If (Trim(global_252) = vbNullString) Then
  loc_15D0838:       global_252 = "''"
  loc_15D083C:     End If
  loc_15D084D:     If (global_216 = "Hall") Then
  loc_15D085E:       Set var_B0 = Me.Txt
  loc_15D0864:       Call 0.Method_Txt_Validate0 (CInt(3), var_B4)
  loc_15D0892:       var_B8 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_60
  loc_15D08A7:       var_C8 = CVar(var_B8 & "'AND K.RoomNo ='" & var_B4.Tag & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_15D08B1:       Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15D08CE:     Else
  loc_15D08CE:       Call Proc_177_63_13B7CCC(1)
  loc_15D08DE:       Proc_6_7_F25D88(var_C8, MemVar_1F920EC)
  loc_15D08FA:       var_110 = "Select K.Item,max(I.NAME) AS ITEMNAME,max(I.Unit) AS Unit,max(K.Rate) AS Rate,max(DispCode) as DispCode,max(I.UNIT),max(IC.RoundOff),max(IC.Code) as TaxCode,max(I.DiscApp) as IDiscApp,max(IC.taxStru) as TaxStru,Max(I.Kitchen) as Kitchen,max(D.Code) as DepartCode,max(D.ShortName) as DepartName ,Sum(K.Qty) as Qty From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode) Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_15D0902:       var_D8 = var_110 & var_C8 
  loc_15D090B:       var_F8 = var_D8 & " And K.RestCode='" 
  loc_15D0918:       var_140 = var_F8 & CVar(global_60) 
  loc_15D0937:       var_1B0 = var_140 & "' aND K.RoomNo IN (" & CVar(global_252) & ") and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Group by K.Item" 
  loc_15D0942:       Me.Open var_1B0, CVar(MemVar_1F92044), 3
  loc_15D0958:     End If
  loc_15D096F:     If (Me.RecordCount > 0) Then
  loc_15D0981:       Me.FGrid.Redraw = False
  loc_15D099C:       Me.FGrid.Rows = 1
  loc_15D09B7:       Me.FGrid.Cols = 1
  loc_15D09BF:       Call Proc_177_63_13B7CCC(1, -1)
  loc_15D09D6:       If ((global_216 = "Room Service") And (var_8E <> 1)) Then
  loc_15D09E7:         Me.FGrid.Redraw = True
  loc_15D0A27:         If (MsgBox(CVar("This is not valid Room No." & vbCrLf & "Are you sure to continue..."), &H14, var_D8, var_F8, var_140) = 7) Then
  loc_15D0A2A:           ' Referenced from: 15D1273
  loc_15D0A2A:         End If
  loc_15D0A2A:       End If
  loc_15D0A3C:       If Not(Me.EOF) Then
  loc_15D0A3F:         var_E8 = vbNullString
  loc_15D0A49:         Set var_B0 = Me.FGrid
  loc_15D0A74:         var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15D0A81:         Set var_1C4 = Me.FGrid
  loc_15D0A88:         var_E8 = CVar(CLng(var_8E)) 'Long
  loc_15D0A90:         var_120 = CVar(CLng(0)) 'Long
  loc_15D0A9A:         var_C8 = CVar(CStr(var_8E)) 'String
  loc_15D0AA1:         LateIdCallSt
  loc_15D0AB0:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D0AB8:         var_130 = CVar(CLng(&HB)) 'Long
  loc_15D0AEB:         var_D8 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_15D0AF2:         LateIdCallSt
  loc_15D0B0C:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D0B14:         var_130 = CVar(CLng(3)) 'Long
  loc_15D0B47:         var_D8 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_15D0B4E:         LateIdCallSt
  loc_15D0B68:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D0B70:         var_130 = CVar(CLng(4)) 'Long
  loc_15D0BA3:         var_D8 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15D0BAA:         LateIdCallSt
  loc_15D0BC4:         var_110 = CVar(CLng(var_8E)) 'Long
  loc_15D0BCC:         var_130 = CVar(CLng(6)) 'Long
  loc_15D0BFF:         var_D8 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_15D0C06:         LateIdCallSt
  loc_15D0C3F:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_15D0C47:         var_160 = CVar(CLng(7)) 'Long
  loc_15D0C74:         var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_15D0C7B:         LateIdCallSt
  loc_15D0CB4:         var_120 = CVar(CLng(var_8E)) 'Long
  loc_15D0CBC:         var_160 = CVar(CLng(8)) 'Long
  loc_15D0CE9:         var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_15D0CF0:         LateIdCallSt
  loc_15D0D45:         var_144 = Me.Fields
  loc_15D0D5E:         var_130 = CVar(CLng(var_8E)) 'Long
  loc_15D0D8A:         var_140 = (Me.Fields.Item("qty").Value * var_144.Item("Rate").Value) 'Variant
  loc_15D0DA4:         LateIdCallSt
  loc_15D0E02:         var_D8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_1C4, CVar(CStr(Format(var_140, "0.00"))), 1, 1)) 'String
  loc_15D0E09:         LateIdCallSt
  loc_15D0E57:         var_D8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_1C4, var_D8, CVar(CLng(&HA)))) 'String
  loc_15D0E5E:         LateIdCallSt
  loc_15D0E7C:         var_130 = CVar(CLng(&H1A)) 'Long
  loc_15D0EAC:         var_D8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), var_130, CVar(CLng(var_8E)), var_1C4, var_D8)) 'String
  loc_15D0EB3:         LateIdCallSt
  loc_15D0F00:         var_B8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_D8, -1, var_144, var_1C4)
  loc_15D0F14:         unk_523D48.Execute var_D8 & "This is not valid Room No." & vbCrLf & "'", var_130, var_1C4
  loc_15D0F1F:         Set var_94 = var_144
  loc_15D0F4D:         If (var_94.RecordCount > 0) Then
  loc_15D0F87:           Proc_6_39_E7C810(var_D8, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_15D0F90:           var_F8 = CVar(CStr(var_D8)) 'String
  loc_15D0F98:           Set var_144 = Me.FGrid
  loc_15D0F9E:           LateIdCallSt
  loc_15D0FB6:         End If
  loc_15D0FD7:         var_C8 = CVar(Proc_6_38_E68A98(global_152, CVar(CLng(&H16)), CVar(CLng(var_8E)), var_144)) 'String
  loc_15D0FDE:         LateIdCallSt
  loc_15D1025:         var_D8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1C4, CVar(Me.Fields.Item("DepartCode")))) 'String
  loc_15D102C:         LateIdCallSt
  loc_15D107A:         var_D8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1C4, var_D8)) 'String
  loc_15D1081:         LateIdCallSt
  loc_15D10B4:         var_C8 = CVar(Proc_6_38_E68A98(global_148, CVar(CLng(&H15)), CVar(CLng(var_8E)), var_1C4, var_D8)) 'String
  loc_15D10BB:         LateIdCallSt
  loc_15D10CA:         var_E8 = CVar(CLng(var_8E)) 'Long
  loc_15D10D2:         var_120 = CVar(CLng(&HA)) 'Long
  loc_15D10ED:         var_1CC = Val(CStr(var_1C4.TextMatrix)))
  loc_15D10F7:         var_A0 = (var_A0 + var_1CC)
  loc_15D1102:         Set var_1C4 = Nothing 
  loc_15D110C:         var_8E = (var_8E + 1)
  loc_15D1115:         Me.MoveNext
  loc_15D1138:         If ((Me.EOF = &HFF) And (CInt(var_96) = 0)) Then
  loc_15D1146:           If (global_216 = "Room Service") Then
  loc_15D1169:             If (Me.lbltable.Caption = vbNullString) Then
  loc_15D11B0:               Me.lbltable.Caption = CStr("Room # " & Me.Fields.Item("Name").Value)
  loc_15D11CB:             Else
  loc_15D1226:               Me.lbltable.Caption = CStr(CVar(Me.lbltable.Caption & ",") & Me.Fields.Item("Name").Value)
  loc_15D1246:             End If
  loc_15D1249:           Else
  loc_15D1260:             Me.lbltable.Caption = "Table # " & global_252
  loc_15D126B:           End If
  loc_15D126B:         End If
  loc_15D126F:         var_96 = CByte(0) 'Byte
  loc_15D1273:         GoTo loc_15D0A2A
  loc_15D1276:       End If
  loc_15D1289:       Me.FGrid.FixedRows = 1
  loc_15D1294:     Else
  loc_15D12A2:       Me.FGrid.Redraw = True
  loc_15D12B0:       If (var_8E = 1) Then
  loc_15D12C6:         Me.FGrid.Rows = 1
  loc_15D12EC:         var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_A0, var_1CC, var_120))) 'String
  loc_15D12F4:         Set var_B4 = Me.FGrid
  loc_15D1321:         Me.FGrid.FixedRows = 1
  loc_15D1329:       End If
  loc_15D1329:     End If
  loc_15D1329:   End If
  loc_15D1337:   Me.FGrid.Redraw = True
  loc_15D1345:   If (var_8E = 1) Then
  loc_15D1348:     var_E8 = 1
  loc_15D135B:     Me.FGrid.Rows = var_E8
  loc_15D1381:     var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8, var_E8))) 'String
  loc_15D1389:     Set var_B4 = Me.FGrid
  loc_15D13B6:     Me.FGrid.FixedRows = 1
  loc_15D13BE:   End If
  loc_15D13EB:   var_F8 = 1 & Format(var_A0, "0.00") 
  loc_15D13EF:   var_B8 = CStr(var_F8)
  loc_15D13FD:   Me.lblTotal.Caption = var_B8
  loc_15D141E:   Set var_B0 = Me.Txt
  loc_15D1424:   Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_B8, 1, "Total : ", FGrid.DispID_10000)
  loc_15D144F:   If ((var_B8 <> vbNullString) And (global_204 = "Y")) Then
  loc_15D145F:     Set var_B0 = Me.Txt
  loc_15D1465:     Call 0.Method_Txt_Validate0 (Cancel, var_B4, vbNullString, var_1C4)
  loc_15D146D:     var_B4.Text = var_B4.Text
  loc_15D1479:   End If
  loc_15D1479: End If
  loc_15D147E: Set var_94 = Nothing
  loc_15D1486: Set var_88 = Nothing
  loc_15D1494: Set global_88 = Nothing
  loc_15D149B: Exit Sub
  loc_15D149C: ' Referenced from: 15D0170
  loc_15D149C: Proc_6_60_E62BC4(var_F8, var_140)
  loc_15D14A1: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E38D74
  'Data Table: 523D28
  loc_E38D68: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E38D6B:   Call DGTable_UnknownEvent_9()
  loc_E38D70: End If
  loc_E38D70: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E600B4
  'Data Table: 523D28
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6007F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60092: Set var_A8 = Me.TxtGrid
  loc_E60098: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E600A0: var_AC.Visible = False
  loc_E600AC: Call Proc_177_72_E83FE0()
  loc_E600B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A4A8
  'Data Table: 523D28
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A464: Set var_88 = Me.TxtGrid
  loc_E6A46A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A484: If (var_8C.Visible = 0) Then
  loc_E6A49D:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E6A4A5: End If
  loc_E6A4A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E000FC
  'Data Table: 523D28
  loc_E000F4: Call Proc_177_67_EF9854()
  loc_E000F9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11D5348
  'Data Table: 523D28
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11D4ED4: Set var_88 = Me.TopCtrl1
  loc_11D4EDA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D4F1F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11D4F28:   Call Form_KeyDown(Cancel, arg_10)
  loc_11D4F2D: End If
  loc_11D4F31: Set var_88 = Me.TopCtrl1
  loc_11D4F37: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D4F50: If (CStr() = "Browse") Then
  loc_11D4F53:   Exit Sub
  loc_11D4F54: End If
  loc_11D4FC8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11D4FE1:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_11D4FF1:   var_9C = "+{Tab}"
  loc_11D4FF7:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11D5001:   Cancel = 0
  loc_11D5007: Else
  loc_11D5011:   var_B0 = Me.FGrid.Rows
  loc_11D505E:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11D5077:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_11D508D:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_11D5097:     Cancel = 0
  loc_11D509A:   End If
  loc_11D509A: End If
  loc_11D50A0: global_160 = Cancel
  loc_11D50C6: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11D50EA: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11D5100:   var_EC = CLng(Me.FGrid.Col)
  loc_11D5110:   If (var_EC = CLng(4)) Then
  loc_11D511E:     If (global_204 <> "Y") Then
  loc_11D5134:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D514C:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D5151:       var_11C = vbNullString
  loc_11D515B:       Set var_B4 = Me.FGrid
  loc_11D5161:       LateIdCallSt
  loc_11D518C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D5194:       var_FC = CVar(CLng(&HB)) 'Long
  loc_11D5199:       var_11C = vbNullString
  loc_11D51A3:       Set var_A0 = Me.FGrid
  loc_11D51A9:       LateIdCallSt
  loc_11D51CE:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D51D6:       var_FC = CVar(CLng(7)) 'Long
  loc_11D51DB:       var_11C = vbNullString
  loc_11D51E5:       Set var_A0 = Me.FGrid
  loc_11D51EB:       LateIdCallSt
  loc_11D51FD:     End If
  loc_11D5200:   Else
  loc_11D5207:     If Not (var_EC = CLng(3)) Then
  loc_11D5211:       If (var_EC = CLng(7)) Then
  loc_11D5214:       End If
  loc_11D521F:       If (global_204 <> "Y") Then
  loc_11D5235:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D524D:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D5252:         var_11C = vbNullString
  loc_11D525C:         Set var_B4 = Me.FGrid
  loc_11D5262:         LateIdCallSt
  loc_11D527A:       End If
  loc_11D527D:     Else
  loc_11D5284:       If (var_EC = CLng(8)) Then
  loc_11D529A:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D52A2:         var_FC = CVar(CLng(&H19)) 'Long
  loc_11D52D5:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11D52EB:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D5303:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11D5308:           var_11C = vbNullString
  loc_11D5312:           Set var_B4 = Me.FGrid
  loc_11D5318:           LateIdCallSt
  loc_11D5330:         End If
  loc_11D5330:       End If
  loc_11D5330:     End If
  loc_11D5330:   End If
  loc_11D5330: End If
  loc_11D5336: If (Cancel = &HD) Then
  loc_11D533E:   global_162 = 0
  loc_11D5341: End If
  loc_11D5343: Cancel = 0
  loc_11D5346: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0EEA0
  'Data Table: 523D28
  loc_E0EE91: Call FGrid_UnknownEvent_C()
  loc_E0EE9B: global_162 = 0
  loc_E0EE9E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10EE540
  'Data Table: 523D28
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_10EE228: Set var_88 = Me.TopCtrl1
  loc_10EE22E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10EE247: If (CStr() = "Browse") Then
  loc_10EE24A:   Exit Sub
  loc_10EE24B: End If
  loc_10EE25E: var_A0 = CLng(Me.FGrid.Col)
  loc_10EE26E: If (var_A0 = CLng(4)) Then
  loc_10EE27C:   If (global_204 <> "Y") Then
  loc_10EE2B0:     var_CA = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_10EE2E6:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_10EE302:   End If
  loc_10EE305: Else
  loc_10EE30C:   If (var_A0 = CLng(2)) Then
  loc_10EE31A:     If (global_204 <> "Y") Then
  loc_10EE35B:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_10EE36D:     End If
  loc_10EE370:   Else
  loc_10EE377:     If (var_A0 = CLng(8)) Then
  loc_10EE38D:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10EE395:       var_FC = CVar(CLng(&H19)) 'Long
  loc_10EE3C8:       If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_10EE409:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_10EE41B:       End If
  loc_10EE41E:     Else
  loc_10EE425:       If (var_A0 = CLng(7)) Then
  loc_10EE433:         If (global_204 <> "Y") Then
  loc_10EE474:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_10EE486:         End If
  loc_10EE489:       Else
  loc_10EE490:         If (var_A0 = CLng(3)) Then
  loc_10EE49E:           If (global_204 <> "Y") Then
  loc_10EE4BC:             If (((Cancel >= &H41) And (Cancel <= &H5A)) Or ((Cancel >= &H61) And (Cancel <= &H7A))) Then
  loc_10EE4D1:               Me.FGrid.Col = CVar(CLng(4))
  loc_10EE4D9:             End If
  loc_10EE517:             Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel, 0)
  loc_10EE529:           End If
  loc_10EE529:         End If
  loc_10EE529:       End If
  loc_10EE529:     End If
  loc_10EE529:   End If
  loc_10EE529: End If
  loc_10EE533: If (CLng(Cancel) <> &HD) Then
  loc_10EE53B:   global_162 = &HFF
  loc_10EE53E: End If
  loc_10EE53E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1049810
  'Data Table: 523D28
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  loc_10495BC: Set var_90 = Me.TopCtrl1
  loc_10495C2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10495DB: If (CStr() = "Browse") Then
  loc_10495DE:   Exit Sub
  loc_10495DF: End If
  loc_10495EA: If (global_204 = "Y") Then
  loc_10495ED:   Exit Sub
  loc_10495EE: End If
  loc_104960B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_104960E:   Exit Sub
  loc_104960F: End If
  loc_1049620: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1049642:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_104967C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_104969E:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10496B4:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10496BD:         Set var_118 = Me.FGrid
  loc_10496FA:         For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_1049704:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_104970C:           var_E4 = CVar(CLng(0)) 'Long
  loc_1049716:           var_A0 = CVar(CStr(var_86)) 'String
  loc_104971E:           Set var_90 = Me.FGrid
  loc_1049724:           LateIdCallSt
  loc_1049735:         Next var_11C 'Integer
  loc_104973D:       Else
  loc_1049750:         Me.FGrid.Rows = 1
  loc_1049776:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_104977E:         Set var_118 = Me.FGrid
  loc_10497AB:         Me.FGrid.FixedRows = 1
  loc_10497B3:       End If
  loc_10497B8:       Call Proc_177_76_1777D68(&H32, FGrid.DispID_10000)
  loc_10497BD:     End If
  loc_10497C0:   Else
  loc_10497E1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_10497F1:   End If
  loc_10497F5:   Set var_90 = Me.FGrid
  loc_1049806: End If
  loc_104980B: Set var_8C = Nothing
  loc_104980E: Exit Sub
  loc_104980F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44310
  'Data Table: 523D28
  Dim var_8C As TextBox
  loc_E442E4: Call Proc_177_72_E83FE0()
  loc_E442F4: Set var_88 = Me.TxtGrid
  loc_E442FA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44302: var_8C.Visible = False
  loc_E4430E: Exit Sub
End Sub

Public Function global_5389608Get() '525524
  BVM60.DLL.GetMemNewObj
End Function

Public Function global_5389608Get() '52553E
  BVM60.DLL.PutMemNewObj
End Function

Public Function global_5389608Get() '525558
  BVM60.DLL.SetMemNewObj
End Function

Public Function global_56Get() '525572
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '525581
  global_56 = Value
End Sub

Public Function global_60Get() '525590
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '52559F
  global_60 = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E0D78C
  'Data Table: 523D28
  loc_E0D784: global_244 = vNewValue
  loc_E0D788: Exit Sub
End Sub

Public Property Get PTableNo() 'E0D81C
  'Data Table: 523D28
  loc_E0D810: var_88 = global_244
  loc_E0D813: PTableNo = 
  loc_E0D819: If Not  Then Exit Sub
  loc_E0D819: End If
End Sub

Public Property Let pRestCode(vNewValue) 'E0CC94
  'Data Table: 523D28
  loc_E0CC8C: global_248 = vNewValue
  loc_E0CC90: Exit Sub
End Sub

Public Property Get pRestCode() 'E0F094
  'Data Table: 523D28
  loc_E0F088: var_88 = global_248
  loc_E0F08B: pRestCode = 
  loc_E0F091: If Not  Then Exit Sub
  loc_E0F091: End If
End Sub

Public Property Get OpenMode() 'E05040
  'Data Table: 523D28
  loc_E05039: OpenMode = global_240
End Sub

Public Property Let OpenMode(vNewValue) 'E00CF8
  'Data Table: 523D28
  loc_E00CF2: global_240 = vNewValue
  loc_E00CF5: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E70A4C
  'Data Table: 523D28
  Dim Me As Recordset15
  loc_E709F6: Me.MoveFirst
  loc_E70A20: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E70A40: If (Me.EOF = 0) Then
  loc_E70A43:   Call Proc_177_69_1832228(var_9C)
  loc_E70A48: End If
  loc_E70A48: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E93A90
  'Data Table: 523D28
  Dim Me As Recordset15
  loc_E93A1E: On Error Goto loc_E93A87
  loc_E93A27: Me.MoveFirst
  loc_E93A51: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93A79: Proc_5_0_110649C(&HFF, Me, global_92)
  loc_E93A81: Call Proc_177_69_1832228(0)
  loc_E93A86: Exit Sub
  loc_E93A87: ' Referenced from: E93A1E
  loc_E93A87: Proc_6_60_E62BC4(var_A0)
  loc_E93A8C: Exit Sub
End Sub

Public Sub Proc_177_63_13B7CCC
  'Data Table: 523D28
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_13B737A: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_13B7395: Me.FGrid.Top = CVar(CDbl(1250))
  loc_13B73B0: Me.FGrid.Height = CVar(CDbl(5500))
  loc_13B73CB: Me.FGrid.Width = CVar(CDbl(7650))
  loc_13B73E1: Set var_A8 = Me.Txt
  loc_13B73E7: Call 0.Method_Proc_177_63_13B7CCC0 (CInt(3), var_AC)
  loc_13B7406: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13B7422: Set var_B4 = Me.Txt
  loc_13B7428: Call 0.Method_Proc_177_63_13B7CCC0 (CInt(3), var_B8)
  loc_13B7443: Set var_A8 = Me.Txt
  loc_13B7449: Call 0.Method_Proc_177_63_13B7CCC0 (CInt(3), var_AC)
  loc_13B7461: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13B7470: Me.DGTable.Top = CVar(var_AC.Left)
  loc_13B7486: Set var_C4 = Me.FGrid
  loc_13B749D: global_112 = CStr(CLng(var_C4.BackColor))
  loc_13B74B3: var_C4.Cols = &H1D
  loc_13B74BB: var_94 = CVar(CLng(0)) 'Long
  loc_13B74C0: var_E8 = &HFA
  loc_13B74CC: LateIdCallSt
  loc_13B74D4: var_94 = 0
  loc_13B74E0: var_E8 = CVar(CLng(&HC)) 'Long
  loc_13B74E5: var_108 = "KSNo"
  loc_13B74EE: LateIdCallSt
  loc_13B74F9: var_94 = CVar(CLng(&HC)) 'Long
  loc_13B74FE: var_E8 = 0
  loc_13B750A: LateIdCallSt
  loc_13B7512: var_94 = 0
  loc_13B751E: var_E8 = CVar(CLng(1)) 'Long
  loc_13B7523: var_108 = "Rest"
  loc_13B752C: LateIdCallSt
  loc_13B7537: var_94 = CVar(CLng(1)) 'Long
  loc_13B7542: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B7549: LateIdCallSt
  loc_13B7554: var_94 = CVar(CLng(1)) 'Long
  loc_13B7559: var_E8 = 0
  loc_13B7565: LateIdCallSt
  loc_13B756D: var_94 = 0
  loc_13B7579: var_E8 = CVar(CLng(2)) 'Long
  loc_13B757E: var_108 = "Rest."
  loc_13B7587: LateIdCallSt
  loc_13B7592: var_94 = CVar(CLng(2)) 'Long
  loc_13B759D: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B75A4: LateIdCallSt
  loc_13B75AF: var_94 = CVar(CLng(2)) 'Long
  loc_13B75B4: var_E8 = &H258
  loc_13B75C0: LateIdCallSt
  loc_13B75C8: var_94 = 0
  loc_13B75D4: var_E8 = CVar(CLng(3)) 'Long
  loc_13B75D9: var_108 = "Item Code"
  loc_13B75E2: LateIdCallSt
  loc_13B75ED: var_94 = CVar(CLng(3)) 'Long
  loc_13B75F8: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B75FF: LateIdCallSt
  loc_13B760A: var_94 = CVar(CLng(3)) 'Long
  loc_13B760F: var_E8 = &H258
  loc_13B761B: LateIdCallSt
  loc_13B7623: var_94 = 0
  loc_13B762F: var_E8 = CVar(CLng(4)) 'Long
  loc_13B7634: var_108 = "Item Name"
  loc_13B763D: LateIdCallSt
  loc_13B7648: var_94 = CVar(CLng(4)) 'Long
  loc_13B7653: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B765A: LateIdCallSt
  loc_13B7665: var_94 = CVar(CLng(4)) 'Long
  loc_13B766A: var_E8 = &H9C4
  loc_13B7676: LateIdCallSt
  loc_13B767E: var_94 = 0
  loc_13B768A: var_E8 = CVar(CLng(5)) 'Long
  loc_13B768F: var_108 = "KOT No."
  loc_13B7698: LateIdCallSt
  loc_13B76A3: var_94 = CVar(CLng(5)) 'Long
  loc_13B76AE: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B76B5: LateIdCallSt
  loc_13B76C0: var_94 = CVar(CLng(5)) 'Long
  loc_13B76CB: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B76D2: LateIdCallSt
  loc_13B76E5: If (global_204 = "Y") Then
  loc_13B76EB:   var_94 = CVar(CLng(5)) 'Long
  loc_13B76F0:   var_E8 = 0
  loc_13B76FC:   LateIdCallSt
  loc_13B7707: Else
  loc_13B770A:   var_94 = CVar(CLng(5)) 'Long
  loc_13B770F:   var_E8 = 0
  loc_13B771B:   LateIdCallSt
  loc_13B7723: End If
  loc_13B7723: var_94 = 0
  loc_13B772F: var_E8 = CVar(CLng(6)) 'Long
  loc_13B7734: var_108 = "Unit"
  loc_13B773D: LateIdCallSt
  loc_13B7748: var_94 = CVar(CLng(6)) 'Long
  loc_13B7753: var_E8 = CVar(CInt(1)) 'Integer
  loc_13B775A: LateIdCallSt
  loc_13B7765: var_94 = CVar(CLng(6)) 'Long
  loc_13B776A: var_E8 = &H320
  loc_13B7776: LateIdCallSt
  loc_13B777E: var_94 = 0
  loc_13B778A: var_E8 = CVar(CLng(7)) 'Long
  loc_13B778F: var_108 = "Qty"
  loc_13B7798: LateIdCallSt
  loc_13B77A3: var_94 = CVar(CLng(7)) 'Long
  loc_13B77AE: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B77B5: LateIdCallSt
  loc_13B77C0: var_94 = CVar(CLng(7)) 'Long
  loc_13B77CB: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B77D2: LateIdCallSt
  loc_13B77DD: var_94 = CVar(CLng(7)) 'Long
  loc_13B77E2: var_E8 = &H320
  loc_13B77EE: LateIdCallSt
  loc_13B77F6: var_94 = 0
  loc_13B7802: var_E8 = CVar(CLng(8)) 'Long
  loc_13B7807: var_108 = "Rate"
  loc_13B7810: LateIdCallSt
  loc_13B781B: var_94 = CVar(CLng(8)) 'Long
  loc_13B7826: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B782D: LateIdCallSt
  loc_13B7838: var_94 = CVar(CLng(8)) 'Long
  loc_13B7843: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B784A: LateIdCallSt
  loc_13B7855: var_94 = CVar(CLng(8)) 'Long
  loc_13B785A: var_E8 = &H320
  loc_13B7866: LateIdCallSt
  loc_13B786E: var_94 = 0
  loc_13B787A: var_E8 = CVar(CLng(9)) 'Long
  loc_13B787F: var_108 = "Rate1"
  loc_13B7888: LateIdCallSt
  loc_13B7893: var_94 = CVar(CLng(9)) 'Long
  loc_13B789E: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B78A5: LateIdCallSt
  loc_13B78B0: var_94 = CVar(CLng(9)) 'Long
  loc_13B78BB: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B78C2: LateIdCallSt
  loc_13B78CD: var_94 = CVar(CLng(9)) 'Long
  loc_13B78D2: var_E8 = 0
  loc_13B78DE: LateIdCallSt
  loc_13B78E6: var_94 = 0
  loc_13B78F2: var_E8 = CVar(CLng(&HA)) 'Long
  loc_13B78F7: var_108 = "Amount"
  loc_13B7900: LateIdCallSt
  loc_13B790B: var_94 = CVar(CLng(&HA)) 'Long
  loc_13B7916: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B791D: LateIdCallSt
  loc_13B7928: var_94 = CVar(CLng(&HA)) 'Long
  loc_13B7933: var_E8 = CVar(CInt(7)) 'Integer
  loc_13B793A: LateIdCallSt
  loc_13B7945: var_94 = CVar(CLng(&HA)) 'Long
  loc_13B794A: var_E8 = &H3E8
  loc_13B7956: LateIdCallSt
  loc_13B7961: var_94 = CVar(CLng(&HD)) 'Long
  loc_13B7966: var_E8 = 0
  loc_13B7972: LateIdCallSt
  loc_13B797D: var_94 = CVar(CLng(&HB)) 'Long
  loc_13B7982: var_E8 = 0
  loc_13B798E: LateIdCallSt
  loc_13B7999: var_94 = CVar(CLng(&HE)) 'Long
  loc_13B799E: var_E8 = 0
  loc_13B79AA: LateIdCallSt
  loc_13B79B5: var_94 = CVar(CLng(&HF)) 'Long
  loc_13B79BA: var_E8 = 0
  loc_13B79C6: LateIdCallSt
  loc_13B79D1: var_94 = CVar(CLng(&H10)) 'Long
  loc_13B79D6: var_E8 = 0
  loc_13B79E2: LateIdCallSt
  loc_13B79ED: var_94 = CVar(CLng(&H11)) 'Long
  loc_13B79F2: var_E8 = 0
  loc_13B79FE: LateIdCallSt
  loc_13B7A09: var_94 = CVar(CLng(&H12)) 'Long
  loc_13B7A0E: var_E8 = 0
  loc_13B7A1A: LateIdCallSt
  loc_13B7A25: var_94 = CVar(CLng(&H14)) 'Long
  loc_13B7A2A: var_E8 = 0
  loc_13B7A36: LateIdCallSt
  loc_13B7A41: var_94 = CVar(CLng(&H13)) 'Long
  loc_13B7A46: var_E8 = 0
  loc_13B7A52: LateIdCallSt
  loc_13B7A5D: var_94 = CVar(CLng(&H18)) 'Long
  loc_13B7A62: var_E8 = 0
  loc_13B7A6E: LateIdCallSt
  loc_13B7A79: var_94 = CVar(CLng(&H19)) 'Long
  loc_13B7A7E: var_E8 = 0
  loc_13B7A8A: LateIdCallSt
  loc_13B7A95: var_94 = CVar(CLng(&H1A)) 'Long
  loc_13B7A9A: var_E8 = 0
  loc_13B7AA6: LateIdCallSt
  loc_13B7AAE: var_94 = 0
  loc_13B7ABA: var_E8 = CVar(CLng(&HB)) 'Long
  loc_13B7ABF: var_108 = "Item Code"
  loc_13B7AC8: LateIdCallSt
  loc_13B7AD0: var_94 = 0
  loc_13B7ADC: var_E8 = CVar(CLng(&HE)) 'Long
  loc_13B7AE1: var_108 = "Disc %"
  loc_13B7AEA: LateIdCallSt
  loc_13B7AF2: var_94 = 0
  loc_13B7AFE: var_E8 = CVar(CLng(&HF)) 'Long
  loc_13B7B03: var_108 = "Disc Amt."
  loc_13B7B0C: LateIdCallSt
  loc_13B7B14: var_94 = 0
  loc_13B7B20: var_E8 = CVar(CLng(&H10)) 'Long
  loc_13B7B25: var_108 = "Tax %"
  loc_13B7B2E: LateIdCallSt
  loc_13B7B36: var_94 = 0
  loc_13B7B42: var_E8 = CVar(CLng(&H11)) 'Long
  loc_13B7B47: var_108 = "Tax Amt"
  loc_13B7B50: LateIdCallSt
  loc_13B7B58: var_94 = 0
  loc_13B7B64: var_E8 = CVar(CLng(&H12)) 'Long
  loc_13B7B69: var_108 = "Total"
  loc_13B7B72: LateIdCallSt
  loc_13B7B7A: var_94 = 0
  loc_13B7B86: var_E8 = CVar(CLng(&H14)) 'Long
  loc_13B7B8B: var_108 = "R Off"
  loc_13B7B94: LateIdCallSt
  loc_13B7B9C: var_94 = 0
  loc_13B7BA8: var_E8 = CVar(CLng(&H13)) 'Long
  loc_13B7BAD: var_108 = "Disc Y/N"
  loc_13B7BB6: LateIdCallSt
  loc_13B7BBE: var_94 = 0
  loc_13B7BCA: var_E8 = CVar(CLng(&H18)) 'Long
  loc_13B7BCF: var_108 = "Tax Cat Code"
  loc_13B7BD8: LateIdCallSt
  loc_13B7BE3: var_94 = CVar(CLng(&H15)) 'Long
  loc_13B7BE8: var_E8 = 0
  loc_13B7BF4: LateIdCallSt
  loc_13B7BFF: var_94 = CVar(CLng(&H16)) 'Long
  loc_13B7C04: var_E8 = 0
  loc_13B7C10: LateIdCallSt
  loc_13B7C1B: var_94 = CVar(CLng(&H17)) 'Long
  loc_13B7C20: var_E8 = 0
  loc_13B7C2C: LateIdCallSt
  loc_13B7C37: var_94 = CVar(CLng(&H1B)) 'Long
  loc_13B7C3C: var_E8 = 0
  loc_13B7C48: LateIdCallSt
  loc_13B7C53: var_94 = CVar(CLng(&H1C)) 'Long
  loc_13B7C58: var_E8 = 0
  loc_13B7C64: LateIdCallSt
  loc_13B7C6E: Set var_C4 = Nothing 
  loc_13B7C76: Set var_11C = Me.FGCat
  loc_13B7C8D: global_112 = CStr(CLng(var_11C.BackColor))
  loc_13B7C9A: var_94 = CVar(CLng(3)) 'Long
  loc_13B7C9F: var_E8 = &H7D0
  loc_13B7CAB: LateIdCallSt
  loc_13B7CBF: var_11C.Cols = 8
  loc_13B7CC6: Set var_11C = Nothing 
  loc_13B7CCA: Exit Sub
End Sub

Public Sub Proc_177_64_137FA98
  'Data Table: 523D28
  Dim unk_523D48 As Connection15
  Dim var_C8 As Variant
  Dim var_F4 As Variant
  Dim var_A8 As Recordset15
  Dim var_DC As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_180 As Variant
  Dim var_1C0 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1E8 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_218 As Variant
  Dim var_23C As Variant
  Dim var_D8 As Variant
  Dim var_350 As Variant
  Dim var_370 As Variant
  Dim var_434 As Variant
  Dim var_B0 As Double
  Dim Me As Recordset15
  loc_137F288: On Error Goto loc_137FA91
  loc_137F2B2: unk_523D48.Execute "Select * from Depart Where Code='" & global_60 & "'", var_D8, -1
  loc_137F2FB: var_A0 = Replace(CStr(Space(&H3C)), " ", "-", 1, -1, 0)
  loc_137F306: Close 1
  loc_137F30F: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_137F32D: Call Proc_177_78_103A5DC("Estimate", "D", &H3C)
  loc_137F337: Print 1, var_E4
  loc_137F35B: var_F4 = (Chr(&HF) + vbNullString)
  loc_137F361: Print 1, var_F4
  loc_137F383: var_F4 = (Chr(&HF) + vbNullString)
  loc_137F389: Print 1, var_F4
  loc_137F443: var_1C0 = ("Date:" + Format(Now, "dd/MMM/yyyy"))
  loc_137F45D: var_138 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr("Rest :" & var_DC.Fields.Item("Name").Value), &H14)))
  loc_137F467: var_160 = (var_138 + CVar(Proc_6_45_EAD428(Me.lbltable.Caption, &H14)))
  loc_137F471: var_1E8 = (var_160 + CVar(Proc_6_45_EAD428(CStr(var_1C0), &H14, 1)))
  loc_137F477: Print 1, var_1E8
  loc_137F4C8: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_137F4CE: Print 1, var_DC.Fields.Item("Name").Value
  loc_137F501: var_118 = (CVar(Proc_6_45_EAD428("SNo", 3, 1)) + Space(1))
  loc_137F51B: var_138 = (var_E4 + CVar(Proc_6_45_EAD428("ITEM NAME", &H14, "Rest :" & var_DC.Fields.Item("Name").Value)))
  loc_137F52F: var_160 = (var_138 + Space(1))
  loc_137F549: var_190 = (var_160 + CVar(Proc_6_52_EAD4F4("RATE", &HA)))
  loc_137F55D: var_1C0 = ("dd/MMM/yyyy" + Space(1))
  loc_137F577: var_1E8 = (var_1C0 + CVar(Proc_6_52_EAD4F4("QTY", &HA)))
  loc_137F58B: var_218 = (var_1E8 + Space(1))
  loc_137F5A5: var_23C = (var_218 + CVar(Proc_6_52_EAD4F4("AMOUNT", &HA)))
  loc_137F5F5: var_F4 = (Chr(&HF) + CVar(CStr(var_23C)))
  loc_137F5FB: Print 1, CVar(Proc_6_45_EAD428("SNo", 3, 1))
  loc_137F61E: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_137F624: Print 1, CVar(Proc_6_45_EAD428("SNo", 3, 1))
  loc_137F656: For var_240 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_240 'Integer
  loc_137F677:   var_128 = Me.FGrid.TextMatrix)
  loc_137F6AF:   Proc_6_39_E7C810(var_1C0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_9A)), var_128)
  loc_137F700:   Proc_6_39_E7C810(var_300, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_9A)), 1)
  loc_137F751:   Proc_6_39_E7C810(var_3E4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_9A)), 1, 1)
  loc_137F79C:   var_118 = (CVar(Proc_6_45_EAD428(CStr(var_9A), 3, 1, 1, 1)) + Space(1))
  loc_137F7B2:   var_138 = CVar(Proc_6_45_EAD428(CStr(var_128), &H14, "Rest :" & var_DC.Fields.Item("Name").Value, CVar(CLng(4)))) 'String
  loc_137F7B5:   var_150 = (CVar(CLng(var_9A)) + var_138)
  loc_137F7C9:   var_170 = (Space(1) + Space(1))
  loc_137F7E2:   var_218 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C0, "0.00")), &HA, CVar(Proc_6_52_EAD4F4("RATE", &HA)))))
  loc_137F7F6:   var_23C = (var_218 + Space(1))
  loc_137F80F:   var_350 = (var_23C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_300, "0.00")), &HA)))
  loc_137F823:   var_370 = (var_350 + Space(1))
  loc_137F83C:   var_434 = (var_370 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3E4, "0.00")), &HA)))
  loc_137F8B7:   var_F4 = (Chr(&HF) + CVar(CStr(var_434)))
  loc_137F8BD:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_9A), 3, 1, 1, 1))
  loc_137F8CE:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_137F8D6:   var_180 = CVar(CLng(&HA)) 'Long
  loc_137F8FE:   var_B0 = (var_B0 + CDbl(CStr(Me.FGrid.TextMatrix))))
  loc_137F90D: Next var_240 'Integer
  loc_137F928: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_137F92E: Print 1, CVar(Proc_6_45_EAD428(CStr(var_9A), 3, 1, 1, 1))
  loc_137F958: var_108 = var_B0
  loc_137F960: Proc_6_39_E7C810(var_138)
  loc_137F9A0: var_118 = (Chr(&HF) + Space(&H28))
  loc_137F9A9: var_128 = ("Rest :" & var_DC.Fields.Item("Name").Value + "Total :")
  loc_137F9B3: var_190 = (var_128 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_138, "0.00")), &HA, 1)))
  loc_137F9B9: Print 1, Me.FGrid.TextMatrix)
  loc_137F9DD: Close 1
  loc_137F9E6: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_137FA22: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_137FA38: Close 1
  loc_137FA42: If (MemVar_1F923B8 = "Y") Then
  loc_137FA5E:   var_94 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_137FA68: Else
  loc_137FA81:   var_94 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_137FA88: End If
  loc_137FA8D: Set var_A8 = Nothing
  loc_137FA90: Exit Sub
  loc_137FA91: ' Referenced from: 137F288
  loc_137FA91: Proc_6_60_E62BC4(1)
  loc_137FA96: Exit Sub
End Sub

Public Sub Proc_177_65_13927AC
  'Data Table: 523D28
  Dim unk_523D48 As Connection15
  Dim var_C8 As Variant
  Dim var_F4 As Variant
  Dim var_A8 As Recordset15
  Dim var_DC As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_E4 As String
  Dim var_18C As String
  Dim var_D8 As Variant
  Dim var_1A4 As Variant
  Dim var_148 As Variant
  Dim var_B0 As Double
  Dim Me As Recordset15
  loc_1391F20: On Error Goto loc_13927A6
  loc_1391F4A: unk_523D48.Execute "Select * from Depart Where Code='" & global_60 & "'", var_D8, -1
  loc_1391F93: var_A0 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1391F9E: Close 1
  loc_1391FA7: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1391FC5: Call Proc_177_78_103A5DC("Estimate", "D", &H26)
  loc_1391FCF: Print 1, var_E4
  loc_1391FF3: var_F4 = (Chr(&HF) + vbNullString)
  loc_1391FF9: Print 1, var_F4
  loc_139201B: var_F4 = (Chr(&HF) + vbNullString)
  loc_1392021: Print 1, var_F4
  loc_1392089: var_138 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr("Rest :" & var_DC.Fields.Fields.Item("Name").Value), &H26)))
  loc_139208F: Print 1, var_138
  loc_1392118: var_158 = ("Date:" + Format(Now, "dd/MMM/yyyy"))
  loc_1392132: var_118 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Me.lbltable.Caption, &H16)))
  loc_1392139: var_16C = CVar(Proc_6_45_EAD428(CStr(var_158), &H10, 1)) 'String
  loc_139213C: var_17C = ("Rest :" & var_DC.Fields.Item("Name").Value + var_16C)
  loc_1392142: Print 1, var_17C
  loc_1392181: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_1392187: Print 1, CVar(Proc_6_45_EAD428(Me.lbltable.Caption, &H16))
  loc_13921BA: var_118 = (CVar(Proc_6_45_EAD428("SNo", 3, 1)) + Space(1))
  loc_13921D4: var_138 = (var_E4 + CVar(Proc_6_45_EAD428("ITEM NAME", &H22, "Rest :" & var_DC.Fields.Item("Name").Value)))
  loc_1392206: var_F4 = (Chr(&HF) + CVar(CStr("dd/MMM/yyyy")))
  loc_139220C: Print 1, CVar(Proc_6_45_EAD428("SNo", 3, 1))
  loc_139228A: var_F4 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("RATE", &HC) & Proc_6_52_EAD4F4("QTY", &HC) & Proc_6_52_EAD4F4("AMOUNT", &HE)))
  loc_1392290: Print 1, CVar(Proc_6_45_EAD428("SNo", 3, 1))
  loc_13922B3: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_13922B9: Print 1, CVar(Proc_6_45_EAD428("SNo", 3, 1))
  loc_13922EB: For var_194 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_194 'Integer
  loc_139230C:   var_128 = Me.FGrid.TextMatrix)
  loc_139233E:   var_118 = (CVar(Proc_6_45_EAD428(CStr(var_9A), 3, var_128, CVar(CLng(4)))) + Space(1))
  loc_1392357:   var_148 = (CVar(CLng(var_9A)) + CVar(Proc_6_45_EAD428(CStr(var_128), &H22, "Rest :" & var_DC.Fields.Item("Name").Value)))
  loc_139238E:   var_F4 = (Chr(&HF) + CVar(CStr(Format(Now, "dd/MMM/yyyy"))))
  loc_1392394:   Print 1, CVar(Proc_6_45_EAD428(CStr(var_9A), 3, var_128, CVar(CLng(4))))
  loc_13923CD:   Proc_6_39_E7C810("Rest :" & var_DC.Fields.Item("Name").Value, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_13923ED:   var_138 = Format("Rest :" & var_DC.Fields.Item("Name").Value, "0.00")
  loc_139241E:   Proc_6_39_E7C810(var_16C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_9A)), 1)
  loc_139246F:   Proc_6_39_E7C810(var_298, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_9A)), 1)
  loc_13924BF:   var_18C = CVar(CLng(var_9A)) & Proc_6_52_EAD4F4(CStr(Format(var_16C, "0.000")), &HC, Proc_6_52_EAD4F4(CStr(var_138), &HC, 1, 1, 1), 1)
  loc_139252C:   var_F4 = (Chr(&HF) + CVar(1 & Proc_6_52_EAD4F4(CStr(Format(var_298, "0.00")), &HE, var_18C)))
  loc_1392532:   Print 1, CVar(CStr(Me.FGrid.TextMatrix)))
  loc_1392543:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_139254B:   var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1392573:   var_B0 = (var_B0 + CDbl(CStr(Me.FGrid.TextMatrix))))
  loc_1392582: Next var_194 'Integer
  loc_139259D: var_F4 = (Chr(&HF) + CVar(var_A0))
  loc_13925A3: Print 1, CVar(CStr(Me.FGrid.TextMatrix)))
  loc_13925CD: var_108 = var_B0
  loc_13925D5: Proc_6_39_E7C810(var_138)
  loc_1392615: var_118 = (Chr(&HF) + Space(&H10))
  loc_139261E: var_128 = ("Rest :" & var_DC.Fields.Item("Name").Value + "Total : ")
  loc_1392628: var_17C = ("0.00" + CVar(Proc_6_52_EAD4F4(CStr(Format(var_138, "0.00")), &HE, 1)))
  loc_139262E: Print 1, "0.000"
  loc_1392665: var_F4 = (Chr(&HF) + vbNullString)
  loc_139266B: Print 1, Space(&H10)
  loc_139268D: var_F4 = (Chr(&HF) + vbNullString)
  loc_1392693: Print 1, Space(&H10)
  loc_13926B5: var_F4 = (Chr(&HF) + vbNullString)
  loc_13926BB: Print 1, Space(&H10)
  loc_13926DD: var_F4 = (Chr(&HF) + vbNullString)
  loc_13926E3: Print 1, Space(&H10)
  loc_13926F2: Close 1
  loc_13926FB: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1392737: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_139274D: Close 1
  loc_1392757: If (MemVar_1F923B8 = "Y") Then
  loc_1392773:   var_94 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_139277D: Else
  loc_1392796:   var_94 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_139279D: End If
  loc_13927A2: Set var_A8 = Nothing
  loc_13927A5: Exit Sub
  loc_13927A6: ' Referenced from: 1391F20
  loc_13927A6: Proc_6_60_E62BC4(1)
  loc_13927AB: Exit Sub
End Sub

Public Sub Proc_177_66_11600E0
  'Data Table: 523D28
  Dim var_AC As String
  Dim unk_523D48 As Connection15
  Dim var_E4 As String
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_194 As Variant
  Dim var_D0 As Variant
  Dim var_A0 As Recordset15
  Dim var_D4 As Fields15
  loc_115FD64: On Error Goto loc_11600D8
  loc_115FD8E: unk_523D48.Execute "Select Name from Depart Where Code='" & global_60 & "'", var_D0, -1
  loc_115FDB6: var_E4 = "Select K.Item,max(I.NAME) AS ITEMNAME,max(I.Unit) AS Unit,max(K.Rate) AS Rate,Sum(K.Qty) as Qty,max(DispCode) as DispCode,max(I.UNIT),max(IC.RoundOff),max(IC.Code) as TaxCode,max(I.DiscApp) as IDiscApp,max(IC.taxStru) as TaxStru,Max(I.Kitchen) as Kitchen,max(D.Code) as DepartCode,max(D.ShortName) as DepartSName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCode=K.ItemRestCode) Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_115FDBE: var_C0 = MemVar_1F920EC
  loc_115FDC6: Proc_6_7_F25D88(var_D0, var_C0, var_E4, var_1B4)
  loc_115FDCE: var_F4 = -1 & var_D0 
  loc_115FDD2: var_104 = " And K.RestCode='"
  loc_115FE03: var_194 = var_F4 & var_104 & CVar(global_60) & "' aND K.RoomNo IN (" & CVar(global_252) & ") and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And (DelFlag<>'Y' or DelFlag Is NULL) And NCKOT<>'Y' Group by K.Item" 
  loc_115FE11: unk_523D48.Execute CStr(var_194), var_D4, var_D4
  loc_115FE3B: var_A4 = "POSBillLookup"
  loc_115FE62: Set var_D4 = var_D4 
  loc_115FE69: CreateFieldDefFile(var_D4, MemVar_1F920B4 & "\" & var_A4 & ".ttx")
  loc_115FE94: var_AC = MemVar_1F920B4 & "\"
  loc_115FEAB: Call 0.Method_arg_1C (var_AC & var_A4 & ".RPT", var_C0)
  loc_115FEB6: MemVar_1F921E4 = var_D4
  loc_115FEDF: Call 0.Method_arg_64 (var_D4, CVar(var_D4), var_E4)
  loc_115FEE7: Call 0.Method_arg_2C (var_104, var_D4)
  loc_115FEF5: Call 0.Method_arg_150 (&HFF)
  loc_115FF0B: Call 0.Method_arg_90 (var_D4, var_1C0)
  loc_115FF13: Call 0.Method_arg_24 (var_A6)
  loc_115FF1F: For var_1C4 =  To CInt(var_1C0): 1 = var_1C4 'Integer
  loc_115FF38:   Call 0.Method_arg_90 (var_D4, CLng(var_A6))
  loc_115FF40:   Call 0.Method_arg_20 (var_1C8)
  loc_115FF48:   Call 0.Method_arg_30 (var_AC)
  loc_115FF5E:   var_1D8 = Ucase(CVar(var_AC)) 'Variant
  loc_115FF7D:   var_F4 = Ucase("RestName")
  loc_115FF8E:   If (var_1D8 = var_F4) Then
  loc_115FFA0:     var_D4 = var_D4.Fields
  loc_115FFA8:     var_1C8 = var_D4.Item("Name")
  loc_115FFB7:     Proc_6_17_EAA2B0(var_F4)
  loc_115FFD3:     Call 0.Method_arg_90 (var_1E0, CLng(var_A6), var_1E4)
  loc_115FFDB:     Call 0.Method_arg_20 (CStr(var_F4))
  loc_115FFE3:     Call 0.Method_arg_38 (CVar(var_1C8))
  loc_115FFFE:   Else
  loc_1160006:     var_D0 = "Table"
  loc_1160020:     If (var_1D8 = Ucase(var_D0)) Then
  loc_1160031:       Proc_6_17_EAA2B0(var_D0)
  loc_116004D:       Call 0.Method_arg_90 (var_D4, CLng(var_A6), var_1C8)
  loc_1160055:       Call 0.Method_arg_20 (CStr(var_D0))
  loc_116005D:       Call 0.Method_arg_38 (global_252)
  loc_116006F:     End If
  loc_116006F:   End If
  loc_1160072: Next var_1C4 'Integer
  loc_116007C: Set var_1C8 = Nothing
  loc_1160098: Set var_D4 = MemVar_1F921E4 
  loc_11600A4: Proc_6_99_1483714(var_D4, 0, vbNullString)
  loc_11600AF: MemVar_1F921E4 = var_D4
  loc_11600C2: Set var_A0 = Nothing
  loc_11600D0: Set global_88 = Nothing
  loc_11600D7: Exit Sub
  loc_11600D8: ' Referenced from: 115FD64
  loc_11600D8: Proc_6_60_E62BC4(&HFF)
  loc_11600DD: Exit Sub
End Sub

Public Sub Proc_177_67_EF9854
  'Data Table: 523D28
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_EF9784: Set var_88 = Me.TopCtrl1
  loc_EF978A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EF97A3: If (CStr() = "Browse") Then
  loc_EF97A6:   Exit Sub
  loc_EF97A7: End If
  loc_EF97E6: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(8))) Then
  loc_EF97FC:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EF9804:   var_E0 = CVar(CLng(&H19)) 'Long
  loc_EF9837:   If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_EF9843:     Call FGrid_UnknownEvent_C()
  loc_EF984D:     global_162 = 0
  loc_EF9850:   End If
  loc_EF9850: End If
  loc_EF9850: Exit Sub
  loc_EF9853: Exit Sub
End Sub

Public Sub Proc_177_68_18881B8(arg_C) '18881B8
  'Data Table: 523D28
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_C4 As String
  Dim var_138 As MSHFlexGrid
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_1D8 As MSHFlexGrid
  Dim var_1E8 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1F4 As Double
  Dim var_92 As Integer
  Dim var_124 As Variant
  Dim unk_523D48 As Connection15
  Dim var_98 As Recordset15
  loc_1885ABC: If (arg_C = 0) Then
  loc_1885AD2:   var_B4 = CLng(Me.FGrid.Col)
  loc_1885AE2:   If (var_B4 = CLng(2)) Then
  loc_1885B33:     Set var_A0 = Me.TxtGrid
  loc_1885B39:     Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_C4)
  loc_1885B41:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_1885B59:     If (var_B4 Or (var_C4 = vbNullString)) Then
  loc_1885B6F:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885B77:       var_F4 = CVar(CLng(2)) 'Long
  loc_1885B7C:       var_114 = vbNullString
  loc_1885B86:       Set var_C0 = Me.FGrid
  loc_1885B8C:       LateIdCallSt
  loc_1885BB1:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885BB9:       var_F4 = CVar(CLng(1)) 'Long
  loc_1885BBE:       var_114 = vbNullString
  loc_1885BC8:       Set var_C0 = Me.FGrid
  loc_1885BCE:       LateIdCallSt
  loc_1885BE3:     Else
  loc_1885BFC:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885C04:       var_F4 = CVar(CLng(1)) 'Long
  loc_1885C1E:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1885C3C:       var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885C44:       var_158 = CVar(CLng(1)) 'Long
  loc_1885C5E:       var_180 = CStr(Me.FGrid.TextMatrix))
  loc_1885CC9:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1885CDF:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885CE7:         var_104 = CVar(CLng(2)) 'Long
  loc_1885D1A:         var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1885D22:         Set var_16C = Me.FGrid
  loc_1885D28:         LateIdCallSt
  loc_1885D57:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885D5F:         var_104 = CVar(CLng(1)) 'Long
  loc_1885D92:         var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1885D9A:         Set var_16C = Me.FGrid
  loc_1885DA0:         LateIdCallSt
  loc_1885DF0:         global_220 = CStr(Me.Fields.Item("Name").Value)
  loc_1885E2F:         var_C4 = CStr(Me.Fields.Item("Code").Value)
  loc_1885E35:         global_228 = var_C4
  loc_1885E59:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885E61:         var_F4 = CVar(CLng(4)) 'Long
  loc_1885E66:         var_114 = vbNullString
  loc_1885E70:         Set var_C0 = Me.FGrid
  loc_1885E76:         LateIdCallSt
  loc_1885E9B:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885EA3:         var_F4 = CVar(CLng(&HB)) 'Long
  loc_1885EA8:         var_114 = vbNullString
  loc_1885EB2:         Set var_C0 = Me.FGrid
  loc_1885EB8:         LateIdCallSt
  loc_1885EDD:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885EE5:         var_F4 = CVar(CLng(3)) 'Long
  loc_1885EEA:         var_114 = vbNullString
  loc_1885EF4:         Set var_C0 = Me.FGrid
  loc_1885EFA:         LateIdCallSt
  loc_1885F1F:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1885F27:         var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1885F2C:         var_114 = vbNullString
  loc_1885F36:         Set var_C0 = Me.FGrid
  loc_1885F3C:         LateIdCallSt
  loc_1885F4E:       End If
  loc_1885F4E:     End If
  loc_1885F51:   Else
  loc_1885F58:     If (var_B4 = CLng(3)) Then
  loc_1885F67:       Set var_A0 = Me.TxtGrid
  loc_1885F6D:       Call 0.Method_Proc_177_68_18881B80 (0, var_C0, var_C4, var_C0, var_114, var_F4, var_D4)
  loc_1885F75:       var_C0 = var_C0.Text
  loc_1885F8C:       If (var_C4 = "9999") Then
  loc_1885F99:         Set global_212 = New RsSpecItemEntry
  loc_1885FAF:         RsSpecItemEntry.PKOTForm = Me
  loc_1885FC3:         RsSpecItemEntry.pRestCode = global_60
  loc_1885FCF:         Set var_A0 = var_114(var_C4)
  loc_1885FD5:         var_F4 = RsSpecItemEntry.Label.Caption
  loc_1885FE3:         RsSpecItemEntry.PRestName = var_C4
  loc_1886001:         Call 0.Method_arg_2B0 (1, var_E4, 1)
  loc_1886036:         var_134 = CVar(Proc_6_38_E68A98(global_148, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1886044:         LateIdCallSt
  loc_188608A:         var_134 = CVar(Proc_6_38_E68A98(global_152, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)) 'String
  loc_1886092:         Set var_C0 = Me.FGrid
  loc_1886098:         LateIdCallSt
  loc_18860C1:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18860DC:         Set var_A0 = Me.Txt
  loc_18860E2:         Call 0.Method_Proc_177_68_18881B80 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), var_D4, var_C0)
  loc_18860EA:         var_134 = var_C0.Tag
  loc_18860F2:         var_134 = CVar(var_C4) 'String
  loc_18860FA:         Set var_16C = Me.FGrid
  loc_1886100:         LateIdCallSt
  loc_188611D:       Else
  loc_1886134:         If (Me.RecordCount > 0) Then
  loc_188613D:           Me.MoveFirst
  loc_1886142:         End If
  loc_1886159:         If (Me.RecordCount > 0) Then
  loc_1886169:           Set var_A0 = Me.TxtGrid
  loc_188616F:           Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_C4, var_16C, var_134)
  loc_1886177:           var_134 = var_C0.Text
  loc_18861AA:           Me.Find "DispCode=" & CStr(Val(var_C4)), 0, 1
  loc_18861BF:         End If
  loc_188620D:         Set var_A0 = Me.TxtGrid
  loc_1886213:         Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_D4)
  loc_188621B:         var_1F4 = var_C0.Text
  loc_1886233:         If (var_C0 Or (var_C4 = vbNullString)) Then
  loc_1886249:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886251:           var_F4 = CVar(CLng(4)) 'Long
  loc_1886256:           var_114 = vbNullString
  loc_1886260:           Set var_C0 = Me.FGrid
  loc_1886266:           LateIdCallSt
  loc_188628B:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886293:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1886298:           var_114 = vbNullString
  loc_18862A2:           Set var_C0 = Me.FGrid
  loc_18862A8:           LateIdCallSt
  loc_18862CD:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18862D5:           var_F4 = CVar(CLng(3)) 'Long
  loc_18862DA:           var_114 = vbNullString
  loc_18862E4:           Set var_C0 = Me.FGrid
  loc_18862EA:           LateIdCallSt
  loc_188630F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886317:           var_F4 = CVar(CLng(6)) 'Long
  loc_188631C:           var_114 = vbNullString
  loc_1886326:           Set var_C0 = Me.FGrid
  loc_188632C:           LateIdCallSt
  loc_1886351:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886359:           var_F4 = CVar(CLng(3)) 'Long
  loc_188635E:           var_114 = vbNullString
  loc_1886368:           Set var_C0 = Me.FGrid
  loc_188636E:           LateIdCallSt
  loc_1886393:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188639B:           var_F4 = CVar(CLng(8)) 'Long
  loc_18863A0:           var_114 = vbNullString
  loc_18863AA:           Set var_C0 = Me.FGrid
  loc_18863B0:           LateIdCallSt
  loc_18863D5:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18863DD:           var_F4 = CVar(CLng(9)) 'Long
  loc_18863E2:           var_114 = vbNullString
  loc_18863EC:           Set var_C0 = Me.FGrid
  loc_18863F2:           LateIdCallSt
  loc_1886417:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188641F:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_1886424:           var_114 = vbNullString
  loc_188642E:           Set var_C0 = Me.FGrid
  loc_1886434:           LateIdCallSt
  loc_1886459:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886461:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_1886466:           var_114 = vbNullString
  loc_1886470:           Set var_C0 = Me.FGrid
  loc_1886476:           LateIdCallSt
  loc_188649B:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18864A3:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_18864A8:           var_114 = vbNullString
  loc_18864B2:           Set var_C0 = Me.FGrid
  loc_18864B8:           LateIdCallSt
  loc_18864DD:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18864E5:           var_F4 = CVar(CLng(&H13)) 'Long
  loc_18864EA:           var_114 = vbNullString
  loc_18864F4:           Set var_C0 = Me.FGrid
  loc_18864FA:           LateIdCallSt
  loc_188651F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886527:           var_F4 = CVar(CLng(&H14)) 'Long
  loc_188652C:           var_114 = vbNullString
  loc_1886536:           Set var_C0 = Me.FGrid
  loc_188653C:           LateIdCallSt
  loc_1886561:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886569:           var_F4 = CVar(CLng(&H18)) 'Long
  loc_188656E:           var_114 = vbNullString
  loc_1886578:           Set var_C0 = Me.FGrid
  loc_188657E:           LateIdCallSt
  loc_18865A3:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18865AB:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_18865B0:           var_114 = vbNullString
  loc_18865BA:           Set var_C0 = Me.FGrid
  loc_18865C0:           LateIdCallSt
  loc_18865E5:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18865ED:           var_F4 = CVar(CLng(&H1B)) 'Long
  loc_18865F2:           var_114 = vbNullString
  loc_18865FC:           Set var_C0 = Me.FGrid
  loc_1886602:           LateIdCallSt
  loc_1886627:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188662F:           var_F4 = CVar(CLng(&H1C)) 'Long
  loc_1886634:           var_114 = vbNullString
  loc_188663E:           Set var_C0 = Me.FGrid
  loc_1886644:           LateIdCallSt
  loc_1886659:         Else
  loc_1886672:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188667A:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1886694:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_18866B2:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18866BA:           var_158 = CVar(CLng(&HB)) 'Long
  loc_18866D4:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_188673F:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1886755:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188675D:             var_104 = CVar(CLng(4)) 'Long
  loc_1886790:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1886798:             Set var_16C = Me.FGrid
  loc_188679E:             LateIdCallSt
  loc_18867CD:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18867D5:             var_104 = CVar(CLng(&HB)) 'Long
  loc_1886808:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1886810:             Set var_16C = Me.FGrid
  loc_1886816:             LateIdCallSt
  loc_1886845:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188684D:             var_104 = CVar(CLng(3)) 'Long
  loc_1886880:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1886888:             Set var_16C = Me.FGrid
  loc_188688E:             LateIdCallSt
  loc_18868BD:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18868C5:             var_104 = CVar(CLng(6)) 'Long
  loc_18868F8:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1886900:             Set var_16C = Me.FGrid
  loc_1886906:             LateIdCallSt
  loc_1886936:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1886943:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_188694B:             var_F4 = CVar(CLng(0)) 'Long
  loc_1886955:             var_B0 = CVar(CStr(var_92)) 'String
  loc_188695D:             Set var_A0 = Me.FGrid
  loc_1886963:             LateIdCallSt
  loc_1886975:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_188697D:             var_F4 = CVar(CLng(7)) 'Long
  loc_1886997:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_18869AD:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_18869B4:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_18869BC:               var_F4 = CVar(CLng(7)) 'Long
  loc_18869C1:               var_114 = "1.0"
  loc_18869CB:               Set var_A0 = Me.FGrid
  loc_18869D1:               LateIdCallSt
  loc_18869DC:             End If
  loc_18869E2:             var_D4 = "Code"
  loc_18869F1:             var_A0 = Me.Fields
  loc_1886A14:             Set var_138 = Me.Txt
  loc_1886A1A:             Call 0.Method_Proc_177_68_18881B80 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_1886A22:             var_F4 = var_16C.Text
  loc_1886A39:             Call Proc_177_81_F27340(CStr(var_A0.Item(var_D4).Value), var_180, var_1F4, var_D4, var_A0)
  loc_1886A59:             var_124 = CVar(CLng(8)) 'Long
  loc_1886A94:             LateIdCallSt
  loc_1886AF9:             Set var_138 = Me.Txt
  loc_1886AFF:             Call 0.Method_Proc_177_68_18881B80 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1886B07:             var_124 = var_16C.Text
  loc_1886B1E:             Call Proc_177_81_F27340(CStr(Me.Fields.Item("Code").Value), var_180, var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1886B36:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1886B3E:             var_124 = CVar(CLng(9)) 'Long
  loc_1886B6B:             var_1E8 = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1886B73:             Set var_1D8 = Me.FGrid
  loc_1886B79:             LateIdCallSt
  loc_1886BA6:           End If
  loc_1886BD6:           var_134 = CVar(Proc_6_38_E68A98(global_148, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), var_1D8, var_1E8, 1, 1)) 'String
  loc_1886BE4:           LateIdCallSt
  loc_1886C2A:           var_134 = CVar(Proc_6_38_E68A98(global_152, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, var_124)) 'String
  loc_1886C32:           Set var_C0 = Me.FGrid
  loc_1886C38:           LateIdCallSt
  loc_1886C7C:           Set var_A0 = Me.Txt
  loc_1886C82:           Call 0.Method_Proc_177_68_18881B80 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), var_C0)
  loc_1886C8A:           var_134 = var_C0.Tag
  loc_1886C92:           var_134 = CVar(var_C4) 'String
  loc_1886CA0:           LateIdCallSt
  loc_1886CC4:           var_134 = Me.FGrid.Row
  loc_1886D05:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1886D13:           LateIdCallSt
  loc_1886D78:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886D86:           LateIdCallSt
  loc_1886DEB:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886DF9:           LateIdCallSt
  loc_1886E5E:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886E6C:           LateIdCallSt
  loc_1886ED1:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886EDF:           LateIdCallSt
  loc_1886F44:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1886F52:           LateIdCallSt
  loc_1886F70:           Set var_138 = Me.FGrid
  loc_1886F76:           var_134 = var_138.Row
  loc_1886F87:           var_104 = CVar(CLng(&H19)) 'Long
  loc_1886FB7:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), var_104, CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1886FC5:           LateIdCallSt
  loc_1887011:           var_B0 = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_188701A:           var_C4 = Proc_6_38_E68A98(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_188702E:           unk_523D48.Execute var_148 & var_C4 & "'", var_104, var_B0
  loc_1887039:           Set var_98 = var_138
  loc_1887067:           If (var_98.RecordCount > 0) Then
  loc_188708D:             var_D4 = "Rate"
  loc_18870A1:             var_C0 = var_98.Fields.Item(var_D4)
  loc_18870B0:             Proc_6_39_E7C810(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_18870B9:             var_17C = CVar(CStr(var_134)) 'String
  loc_18870C1:             Set var_16C = Me.FGrid
  loc_18870C7:             LateIdCallSt
  loc_18870E3:           End If
  loc_18870E8:           Call Proc_177_76_1777D68(&H32, var_16C, var_17C)
  loc_18870ED:         End If
  loc_18870ED:       End If
  loc_18870F0:     Else
  loc_18870F7:       If (var_B4 = CLng(4)) Then
  loc_1887148:         Set var_A0 = Me.TxtGrid
  loc_188714E:         Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1887156:         var_F4 = var_C0.Text
  loc_188716E:         If (var_D4 Or (var_C4 = vbNullString)) Then
  loc_1887184:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188718C:           var_F4 = CVar(CLng(4)) 'Long
  loc_1887191:           var_114 = vbNullString
  loc_188719B:           Set var_C0 = Me.FGrid
  loc_18871A1:           LateIdCallSt
  loc_18871C6:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18871CE:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_18871D3:           var_114 = vbNullString
  loc_18871DD:           Set var_C0 = Me.FGrid
  loc_18871E3:           LateIdCallSt
  loc_1887208:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887210:           var_F4 = CVar(CLng(3)) 'Long
  loc_1887215:           var_114 = vbNullString
  loc_188721F:           Set var_C0 = Me.FGrid
  loc_1887225:           LateIdCallSt
  loc_188724A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887252:           var_F4 = CVar(CLng(6)) 'Long
  loc_1887257:           var_114 = vbNullString
  loc_1887261:           Set var_C0 = Me.FGrid
  loc_1887267:           LateIdCallSt
  loc_188728C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887294:           var_F4 = CVar(CLng(3)) 'Long
  loc_1887299:           var_114 = vbNullString
  loc_18872A3:           Set var_C0 = Me.FGrid
  loc_18872A9:           LateIdCallSt
  loc_18872CE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18872D6:           var_F4 = CVar(CLng(8)) 'Long
  loc_18872DB:           var_114 = vbNullString
  loc_18872E5:           Set var_C0 = Me.FGrid
  loc_18872EB:           LateIdCallSt
  loc_1887310:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887318:           var_F4 = CVar(CLng(9)) 'Long
  loc_188731D:           var_114 = vbNullString
  loc_1887327:           Set var_C0 = Me.FGrid
  loc_188732D:           LateIdCallSt
  loc_1887352:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188735A:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_188735F:           var_114 = vbNullString
  loc_1887369:           Set var_C0 = Me.FGrid
  loc_188736F:           LateIdCallSt
  loc_1887394:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188739C:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_18873A1:           var_114 = vbNullString
  loc_18873AB:           Set var_C0 = Me.FGrid
  loc_18873B1:           LateIdCallSt
  loc_18873D6:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18873DE:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_18873E3:           var_114 = vbNullString
  loc_18873ED:           Set var_C0 = Me.FGrid
  loc_18873F3:           LateIdCallSt
  loc_1887418:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887420:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1887425:           var_114 = vbNullString
  loc_188742F:           Set var_C0 = Me.FGrid
  loc_1887435:           LateIdCallSt
  loc_188745A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887462:           var_F4 = CVar(CLng(&H1B)) 'Long
  loc_1887467:           var_114 = vbNullString
  loc_1887471:           Set var_C0 = Me.FGrid
  loc_1887477:           LateIdCallSt
  loc_188749C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18874A4:           var_F4 = CVar(CLng(&H1C)) 'Long
  loc_18874A9:           var_114 = vbNullString
  loc_18874B3:           Set var_C0 = Me.FGrid
  loc_18874B9:           LateIdCallSt
  loc_18874CE:         Else
  loc_18874E7:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18874EF:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1887509:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1887527:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_188752F:           var_158 = CVar(CLng(&HB)) 'Long
  loc_1887549:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_18875B4:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_18875CB:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_18875E7:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18875EF:             var_104 = CVar(CLng(4)) 'Long
  loc_1887622:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_188762A:             Set var_16C = Me.FGrid
  loc_1887630:             LateIdCallSt
  loc_188765F:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887667:             var_104 = CVar(CLng(&HB)) 'Long
  loc_188769A:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_18876A2:             Set var_16C = Me.FGrid
  loc_18876A8:             LateIdCallSt
  loc_18876D7:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18876DF:             var_104 = CVar(CLng(3)) 'Long
  loc_1887712:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_188771A:             Set var_16C = Me.FGrid
  loc_1887720:             LateIdCallSt
  loc_188774F:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887757:             var_104 = CVar(CLng(6)) 'Long
  loc_188778A:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1887792:             Set var_16C = Me.FGrid
  loc_1887798:             LateIdCallSt
  loc_18877C8:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_18877D5:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18877DD:             var_F4 = CVar(CLng(0)) 'Long
  loc_18877E7:             var_B0 = CVar(CStr(var_92)) 'String
  loc_18877EF:             Set var_A0 = Me.FGrid
  loc_18877F5:             LateIdCallSt
  loc_1887807:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_188780F:             var_F4 = CVar(CLng(7)) 'Long
  loc_1887829:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_188783F:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_1887846:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_188784E:               var_F4 = CVar(CLng(7)) 'Long
  loc_1887853:               var_114 = "1.0"
  loc_188785D:               Set var_A0 = Me.FGrid
  loc_1887863:               LateIdCallSt
  loc_188786E:             End If
  loc_1887874:             var_D4 = "Code"
  loc_1887883:             var_A0 = Me.Fields
  loc_18878A6:             Set var_138 = Me.Txt
  loc_18878AC:             Call 0.Method_Proc_177_68_18881B80 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_18878B4:             var_F4 = var_16C.Text
  loc_18878CB:             Call Proc_177_81_F27340(CStr(var_A0.Item(var_D4).Value), var_180, var_1F4, var_D4, var_A0)
  loc_18878EB:             var_124 = CVar(CLng(8)) 'Long
  loc_1887926:             LateIdCallSt
  loc_188798B:             Set var_138 = Me.Txt
  loc_1887991:             Call 0.Method_Proc_177_68_18881B80 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1887999:             var_124 = var_16C.Text
  loc_18879B0:             Call Proc_177_81_F27340(CStr(Me.Fields.Item("Code").Value), var_180, var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_18879C8:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1887A0B:             LateIdCallSt
  loc_1887A68:             var_134 = CVar(Proc_6_38_E68A98(global_148, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)) 'String
  loc_1887A76:             LateIdCallSt
  loc_1887ABC:             var_134 = CVar(Proc_6_38_E68A98(global_152, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(9)))) 'String
  loc_1887AC4:             Set var_C0 = Me.FGrid
  loc_1887ACA:             LateIdCallSt
  loc_1887AFB:             var_F4 = CVar(CLng(&H17)) 'Long
  loc_1887B0E:             Set var_A0 = Me.Txt
  loc_1887B14:             Call 0.Method_Proc_177_68_18881B80 (CInt(3), var_C0, var_C4, var_F4, CVar(CLng(Me.FGrid.Row)), var_C0)
  loc_1887B1C:             var_134 = var_C0.Tag
  loc_1887B24:             var_134 = CVar(var_C4) 'String
  loc_1887B32:             LateIdCallSt
  loc_1887B56:             var_134 = Me.FGrid.Row
  loc_1887B97:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1887BA5:             LateIdCallSt
  loc_1887C0A:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1887C18:             LateIdCallSt
  loc_1887C7D:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1887C8B:             LateIdCallSt
  loc_1887CF0:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1887CFE:             LateIdCallSt
  loc_1887D63:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1887D71:             LateIdCallSt
  loc_1887DD6:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1887DE4:             LateIdCallSt
  loc_1887E02:             Set var_138 = Me.FGrid
  loc_1887E08:             var_134 = var_138.Row
  loc_1887E19:             var_104 = CVar(CLng(&H19)) 'Long
  loc_1887E49:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), var_104, CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1887E57:             LateIdCallSt
  loc_1887EA3:             var_B0 = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_1887EAC:             var_C4 = Proc_6_38_E68A98(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1887EC0:             unk_523D48.Execute var_148 & var_C4 & "'", var_104, var_B0
  loc_1887ECB:             Set var_98 = var_138
  loc_1887EF9:             If (var_98.RecordCount > 0) Then
  loc_1887F1F:               var_D4 = "Rate"
  loc_1887F33:               var_C0 = var_98.Fields.Item(var_D4)
  loc_1887F42:               Proc_6_39_E7C810(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1887F4B:               var_17C = CVar(CStr(var_134)) 'String
  loc_1887F53:               Set var_16C = Me.FGrid
  loc_1887F59:               LateIdCallSt
  loc_1887F75:             End If
  loc_1887F7A:             Call Proc_177_76_1777D68(&H32, var_16C, var_17C)
  loc_1887F7F:           End If
  loc_1887F7F:         End If
  loc_1887F82:       Else
  loc_1887F89:         If (var_B4 = CLng(7)) Then
  loc_1887F96:           Set var_A0 = Me.TxtGrid
  loc_1887F9C:           Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_F4)
  loc_1887FB4:           If Not(IsNumeric(CVar(var_C0))) Then
  loc_1887FC8:             Set var_A0 = Me.TxtGrid
  loc_1887FCE:             Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, CStr(0))
  loc_1887FD6:             var_C0.Text = var_D4
  loc_1887FE5:           End If
  loc_1887FF2:           Set var_A0 = Me.TxtGrid
  loc_1887FF8:           Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0)
  loc_1888018:           var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1888020:           var_104 = CVar(CLng(7)) 'Long
  loc_188805A:           LateIdCallSt
  loc_188807F:           Call Proc_177_76_1777D68(&H32, Me.FGrid, CVar(CStr(Format(CVar(var_C0.Text), "0.00"))), 1)
  loc_1888087:         Else
  loc_188808E:           If (var_B4 = CLng(8)) Then
  loc_188809B:             Set var_A0 = Me.TxtGrid
  loc_18880A1:             Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, 1)
  loc_18880B9:             If Not(IsNumeric(CVar(var_C0))) Then
  loc_18880C0:               var_C4 = CStr(0)
  loc_18880CD:               Set var_A0 = Me.TxtGrid
  loc_18880D3:               Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_C4)
  loc_18880DB:               var_C0.Text = var_104
  loc_18880EA:             End If
  loc_18880F7:             Set var_A0 = Me.TxtGrid
  loc_18880FD:             Call 0.Method_Proc_177_68_18881B80 (arg_C, var_C0, var_C4)
  loc_1888105:             var_E4 = var_C0.Text
  loc_1888128:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1888140:             var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_188817B:             LateIdCallSt
  loc_18881A7:             Call Proc_177_76_1777D68(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C4)), "0.00"))), 1, 1)
  loc_18881AC:           End If
  loc_18881AC:         End If
  loc_18881AC:       End If
  loc_18881AC:     End If
  loc_18881AC:   End If
  loc_18881AC: End If
  loc_18881B1: Proc_177_68_18881B8 = &HFF
End Sub

Public Sub Proc_177_69_1832228
  'Data Table: 523D28
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim unk_523D48 As Connection15
  Dim var_13C As Recordset15
  Dim var_D0 As Variant
  Dim var_140 As Variant
  Dim var_144 As String
  Dim var_138 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Double
  Dim var_88 As Recordset15
  Dim var_168 As Variant
  Dim var_8E As Integer
  Dim var_A2 As Integer
  Dim var_9E As Integer
  Dim var_124 As Variant
  Dim var_180 As Variant
  Dim var_134 As Variant
  Dim var_1B4 As Variant
  loc_182FDE4: On Error Goto loc_18321D5
  loc_182FDF4: Me.lbltable.Caption = vbNullString
  loc_182FE13: If (Me.RecordCount > 0) Then
  loc_182FE55:   var_F0 = "Select S.* From Sale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_182FE6C:   unk_523D48.Execute CStr(var_F0 & "'"), var_134, -1
  loc_182FE94:   Set var_13C = var_138 
  loc_182FEC9:   global_196 = Proc_6_38_E68A98(CVar(var_13C.Fields.Item("Printed")))
  loc_182FF0E:   Set var_138 = Me.Txt
  loc_182FF14:   Call 0.Method_Proc_177_69_18322280 (CInt(2), var_140)
  loc_182FF1C:   var_140.Text = CStr(var_13C.Fields.Item("DocID").Value)
  loc_182FF4C:   var_C0 = var_13C.Fields.Item("vType")
  loc_182FF54:   var_D0 = var_C0.Value
  loc_182FF7A:   var_E0 = 0
  loc_182FFAA:   unk_523D48.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D0) & "'", var_D0, -1
  loc_182FFB2:   var_A8 = var_A8.Fields
  loc_182FFBA:   var_E0 = var_C0.Item(var_C0)
  loc_182FFC2:   var_138 = var_138.Value
  loc_182FFD1:   global_132 = CStr(var_F0)
  loc_1830027:   Set var_138 = Me.Txt
  loc_183002D:   Call 0.Method_Proc_177_69_18322280 (CInt(0), var_140, CStr(var_13C.Fields.Item("VNo").Value))
  loc_1830035:   var_140.Text = var_F0
  loc_1830062:   var_C0 = var_13C.Fields.Item("VDate")
  loc_183009D:   Set var_138 = Me.Txt
  loc_18300A3:   Call 0.Method_Proc_177_69_18322280 (CInt(1), var_140, CStr(Format(CVar(var_C0), "DD/MMM/YYYY")))
  loc_18300AB:   var_140.Text = 1
  loc_18300D0:   Set var_A8 = Me.Txt
  loc_18300D6:   Call 0.Method_Proc_177_69_18322280 (CInt(1), var_C0)
  loc_1830108:   Call Proc_177_75_17DBD98(CDate(Format(CVar(var_C0), "DD/MMM/YYYY")), 1, 1)
  loc_183014B:   Set var_138 = Me.LblVPrefix
  loc_1830151:   var_138.Caption = CStr(var_13C.Fields.Item("vPrefix").Value)
  loc_1830196:   global_140 = CStr(var_13C.Fields.Item("KOTNo").Value)
  loc_18301B8:   If (global_216 = "Hall") Then
  loc_18301F7:     var_F0 = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_13C.Fields.Item("RoomNo").Value 
  loc_183020E:     unk_523D48.Execute CStr(var_F0 & "'"), var_134, -1
  loc_1830219:     Set var_8C = var_138
  loc_1830247:     If (var_8C.RecordCount > 0) Then
  loc_1830289:       Call 0.Method_Proc_177_69_18322280 (CInt(3), var_140, CStr(var_8C.Fields.Item(0).Value))
  loc_1830291:       var_140.Text = Me.Txt
  loc_18302A7:     End If
  loc_18302AA:   Else
  loc_18302E0:     Set var_138 = Me.Txt
  loc_18302E6:     Call 0.Method_Proc_177_69_18322280 (CInt(3), var_140)
  loc_18302EE:     var_140.Text = Proc_6_38_E68A98(CVar(var_13C.Fields.Item("RoomNo")), 1)
  loc_1830302:   End If
  loc_1830338:   Set var_138 = Me.Txt
  loc_183033E:   Call 0.Method_Proc_177_69_18322280 (CInt(3), var_140)
  loc_1830346:   var_140.Tag = Proc_6_38_E68A98(CVar(var_13C.Fields.Item("RoomNo")))
  loc_1830380:   Proc_6_39_E7C810(var_F0, CVar(var_13C.Fields.Item("GuarAtt")))
  loc_1830397:   Set var_138 = Me.Txt
  loc_183039D:   Call 0.Method_Proc_177_69_18322280 (CInt(4), var_140)
  loc_18303A5:   var_140.Text = CStr(var_F0)
  loc_18303E8:   var_F0 = "hh:nn"
  loc_183040F:   Set var_138 = Me.Txt
  loc_1830415:   Call 0.Method_Proc_177_69_18322280 (CInt(5), var_140, CStr(Format(CVar(var_13C.Fields.Item("VTIME")), var_F0)))
  loc_183041D:   var_140.Text = 1
  loc_183047F:   var_144 = Replace(CStr(var_13C.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_1830487:   var_150 = Val("Select NCAT From Voucher_Type Where V_Type='" & CStr(var_13C.Fields.Item("VTIME").Value) & "'")
  loc_18304B3:   unk_523D48.Execute "Select Name From SessionMast WHERE " & CStr(var_150) & " BETWEEN FromTime AND ToTime", var_F0, -1
  loc_18304BE:   Set var_94 = var_138
  loc_18304F5:   If (Me.Recordset15.RecordCount > 0) Then
  loc_183052A:     Set var_138 = Me.lblSession
  loc_1830530:     var_138.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")), var_138, var_150)
  loc_1830542:   End If
  loc_1830544:   Set var_13C = Nothing 
  loc_183059E:   unk_523D48.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_134, -1
  loc_18305A9:   Set var_88 = var_138
  loc_18305D7:   If (var_88.RecordCount > 0) Then
  loc_183060A:     Call Proc_177_75_17DBD98(CDate(var_88.Fields.Item("SunAppDate").Value), var_138)
  loc_1830619:     ' Referenced from: 1830AAD
  loc_1830628:     If Not(var_88.EOF) Then
  loc_183068B:       Set var_164 = Me.LblCap
  loc_1830691:       Call 0.Method_Proc_177_69_18322280 (CInt(var_88.Fields.Item("SNo").Value), var_168, CStr(var_88.Fields.Item("SunCode").Value))
  loc_1830699:       var_168.Tag = 1
  loc_1830717:       Set var_164 = Me.TxtPer
  loc_183071D:       Call 0.Method_Proc_177_69_18322280 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_1830725:       var_168.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18307A3:       Set var_164 = Me.LblCap
  loc_18307A9:       Call 0.Method_Proc_177_69_18322280 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_18307B1:       var_168.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_183082F:       Set var_164 = Me.LblAt
  loc_1830835:       Call 0.Method_Proc_177_69_18322280 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_183083D:       var_168.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18308B8:       Set var_164 = Me.TxtGt
  loc_18308BE:       Call 0.Method_Proc_177_69_18322280 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_18308C6:       var_168.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1830942:       Set var_164 = Me.TxtPer
  loc_1830948:       Call 0.Method_Proc_177_69_18322280 (CInt(var_88.Fields.Item("SNo").Value), var_168)
  loc_1830950:       var_168.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18309AC:       var_134 = var_88.Fields.Item("SNo").Value
  loc_18309C0:       var_F0 = "0.00"
  loc_18309E7:       Set var_164 = Me.TxtGt
  loc_18309ED:       Call 0.Method_Proc_177_69_18322280 (CInt(var_134), var_168, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F0)))
  loc_18309F5:       var_168.Text = 1
  loc_1830A2C:       var_C0 = var_88.Fields.Item("BaseAmount")
  loc_1830A3B:       Proc_6_39_E7C810(var_F0, CVar(var_C0))
  loc_1830A43:       var_114 = CStr(var_F0)
  loc_1830A5C:       var_138 = var_88.Fields
  loc_1830A64:       var_140 = var_138.Item("SNo")
  loc_1830A79:       Set var_164 = Me.LblDummy
  loc_1830A7F:       Call 0.Method_Proc_177_69_18322280 (CInt(var_140.Value), var_168, var_114)
  loc_1830A87:       var_168.Caption = 1
  loc_1830AA8:       var_88.MoveNext
  loc_1830AAD:       GoTo loc_1830619
  loc_1830AB0:     End If
  loc_1830AB0:   End If
  loc_1830ACE:   Set var_A8 = Me.Txt
  loc_1830AD4:   Call 0.Method_Proc_177_69_18322280 (CInt(2), var_C0, var_114, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='")
  loc_1830ADC:   var_D0 = var_C0.Text
  loc_1830AE5:   var_144 = -1 & var_114
  loc_1830AF5:   unk_523D48.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_D0) & "'" & "' And PayType='Cash'", var_138, var_138
  loc_1830B00:   Set var_8C = var_138
  loc_1830B26:   Set var_A8 = Me.Txt
  loc_1830B2C:   Call 0.Method_Proc_177_69_18322280 (CInt(6), var_C0)
  loc_1830B34:   var_C0.Text = vbNullString
  loc_1830B4E:   Set var_A8 = Me.Txt
  loc_1830B54:   Call 0.Method_Proc_177_69_18322280 (CInt(7), var_C0)
  loc_1830B5C:   var_C0.Text = vbNullString
  loc_1830B76:   Set var_A8 = Me.Txt
  loc_1830B7C:   Call 0.Method_Proc_177_69_18322280 (CInt(8), var_C0)
  loc_1830B84:   var_C0.Text = vbNullString
  loc_1830BA4:   If (var_8C.RecordCount > 0) Then
  loc_1830BF9:     Set var_138 = Me.Txt
  loc_1830BFF:     Call 0.Method_Proc_177_69_18322280 (CInt(6), var_140, CStr(Format(CVar(var_8C.Fields.Item("Amount")), "0.00")))
  loc_1830C07:     var_140.Text = 1
  loc_1830C73:     Set var_138 = Me.Txt
  loc_1830C79:     Call 0.Method_Proc_177_69_18322280 (CInt(7), var_140, CStr(Format(CVar(var_8C.Fields.Item("TipAmt")), "0.00")))
  loc_1830C81:     var_140.Text = 1
  loc_1830C9B:   End If
  loc_1830CAA:   Me.FGrid.Redraw = False
  loc_1830CC5:   Me.FGrid.Rows = 1
  loc_1830CCF:   var_8E = 1
  loc_1830CDF:   var_E0 = "Select S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And I.RestCode=S.ItemRestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_1830D28:   unk_523D48.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_134, -1
  loc_1830D33:   Set var_88 = var_138
  loc_1830D61:   If (var_88.RecordCount > 0) Then
  loc_1830D71:     ReDim Preserve var_9C(0 To 0)
  loc_1830D7B:     ' Referenced from: 18318A5
  loc_1830D8A:     If Not(var_88.EOF) Then
  loc_1830D8D:       var_BC = vbNullString
  loc_1830D97:       Set var_A8 = Me.FGrid
  loc_1830DB5:       For var_16C = 0 To CInt(UBound(var_9C, 1)): var_A0 = var_16C 'Integer
  loc_1830DC6:         var_BC = "RoomNo"
  loc_1830DF9:         If (var_138 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_BC)), var_9C(CLng(var_A0)), 0, FGrid.DispID_10000, var_BC)) Then
  loc_1830DFE:           var_A2 = &HFF
  loc_1830E01:         End If
  loc_1830E04:       Next var_16C 'Integer
  loc_1830E0F:       If (var_A2 = 0) Then
  loc_1830E1E:         ReDim Preserve var_9C(0 To CLng(var_9E))
  loc_1830E5A:         var_9C(CLng(var_9E)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_1830E6A:         var_9E = (var_9E + 1)
  loc_1830E6D:       End If
  loc_1830E6F:       var_A2 = 0
  loc_1830E76:       Set var_170 = Me.FGrid
  loc_1830E7D:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1830E85:       var_124 = CVar(CLng(0)) 'Long
  loc_1830EB5:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1830EBC:       LateIdCallSt
  loc_1830F0B:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_1830F12:       LateIdCallSt
  loc_1830F5D:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_1830F64:       LateIdCallSt
  loc_1830FAF:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_1830FB6:       LateIdCallSt
  loc_1831001:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_1831008:       LateIdCallSt
  loc_1831053:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_183105A:       LateIdCallSt
  loc_183108C:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1831094:       var_180 = CVar(CLng(7)) 'Long
  loc_18310C1:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_18310C8:       LateIdCallSt
  loc_18310FE:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1831106:       var_180 = CVar(CLng(8)) 'Long
  loc_1831133:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_183113A:       LateIdCallSt
  loc_1831170:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1831178:       var_180 = CVar(CLng(9)) 'Long
  loc_18311A5:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18311AC:       LateIdCallSt
  loc_18311E2:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_18311EA:       var_180 = CVar(CLng(&HA)) 'Long
  loc_1831217:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_183121E:       LateIdCallSt
  loc_1831238:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1831240:       var_124 = CVar(CLng(&HB)) 'Long
  loc_1831270:       var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1831277:       LateIdCallSt
  loc_18312AD:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_18312B5:       var_180 = CVar(CLng(&HE)) 'Long
  loc_18312E2:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_18312E9:       LateIdCallSt
  loc_183131F:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1831327:       var_180 = CVar(CLng(&HF)) 'Long
  loc_1831354:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_183135B:       LateIdCallSt
  loc_1831391:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1831399:       var_180 = CVar(CLng(&H10)) 'Long
  loc_18313C6:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18313CD:       LateIdCallSt
  loc_1831403:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_183140B:       var_180 = CVar(CLng(&H11)) 'Long
  loc_1831438:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_183143F:       LateIdCallSt
  loc_18314B1:       LateIdCallSt
  loc_1831500:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_170, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1831507:       LateIdCallSt
  loc_1831552:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_170, var_F0, CVar(CLng(&H12)))) 'String
  loc_1831559:       LateIdCallSt
  loc_18315A4:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_18315AB:       LateIdCallSt
  loc_18315F6:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_18315FD:       LateIdCallSt
  loc_183163E:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1831646:       var_124 = CVar(CLng(5)) 'Long
  loc_1831661:       var_114 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_170, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_170, var_F0, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_183166C:       var_134 = CVar(CStr(Val(var_114))) 'String
  loc_1831673:       LateIdCallSt
  loc_18316C9:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_170, var_134, CVar(CLng(&HD)))) 'String
  loc_18316D0:       LateIdCallSt
  loc_1831719:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_170, var_F0)
  loc_1831729:       LateIdCallSt
  loc_1831776:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_170, CVar(CStr(var_F0)))) 'String
  loc_183177D:       LateIdCallSt
  loc_18317C8:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_170, var_F0)) 'String
  loc_18317CF:       LateIdCallSt
  loc_1831818:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_170, var_F0)
  loc_1831828:       LateIdCallSt
  loc_1831840:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1831864:       var_C0 = var_88.Fields.Item("Godowncode")
  loc_1831875:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_C0), CVar(CLng(&H1A)), var_E0, var_170, CVar(CStr(var_F0)))) 'String
  loc_183187C:       LateIdCallSt
  loc_1831890:       Set var_170 = Nothing 
  loc_183189A:       var_8E = (var_8E + 1)
  loc_18318A0:       var_88.MoveNext
  loc_18318A5:       GoTo loc_1830D7B
  loc_18318A8:     End If
  loc_18318BB:     Me.FGrid.FixedRows = 1
  loc_18318D1:     Set var_A8 = Me.Txt
  loc_18318D7:     Call 0.Method_Proc_177_69_18322280 (CInt(3), var_C0, vbNullString, var_8E, var_170, var_F0)
  loc_18318F8:     For var_1A4 = 0 To CInt(UBound(var_9C, 1)): var_9E = var_1A4 'Integer
  loc_183190C:       Set var_A8 = Me.Txt
  loc_1831912:       Call 0.Method_Proc_177_69_18322280 (CInt(3), var_C0, var_114, 0)
  loc_183191A:       var_170 = var_E0
  loc_1831940:       Set var_138 = Me.Txt
  loc_1831946:       Call 0.Method_Proc_177_69_18322280 (CInt(3), var_140, var_114 & var_9C(CLng(var_9E)) & ",")
  loc_183194E:       var_140.Text = var_134
  loc_183196A:     Next var_1A4 'Integer
  loc_183197A:     Set var_A8 = Me.Txt
  loc_1831980:     Call 0.Method_Proc_177_69_18322280 (CInt(3))
  loc_1831990:     Set var_138 = Me.Txt
  loc_1831996:     Call 0.Method_Proc_177_69_18322280 (CInt(3), var_140)
  loc_18319B6:     var_134 = (Len(Trim(CVar(var_140))) - 1)
  loc_18319C9:     var_1B4 = CVar(var_C0) 'Address
  loc_18319E7:     Set var_164 = Me.Txt
  loc_18319ED:     Call 0.Method_Proc_177_69_18322280 (CInt(3), var_168)
  loc_18319F5:     var_168.Text = CStr(Mid(var_1B4, 1, var_134))
  loc_1831A15:   End If
  loc_1831A23:   Me.FGrid.Redraw = True
  loc_1831A3F:   var_F0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1831A86:   unk_523D48.Execute CStr(var_F0 & Me.Fields.Item("SearchCode").Value & "'"), var_1B4, -1
  loc_1831A91:   Set var_88 = var_138
  loc_1831AC0:   Me.FGCat.Rows = 1
  loc_1831ADC:   If (var_88.RecordCount > 0) Then
  loc_1831ADF:     ' Referenced from: 1831EA7
  loc_1831AEE:     If Not(var_88.EOF) Then
  loc_1831AF5:       Set var_1D8 = Me.FGCat
  loc_1831AF8:       var_BC = vbNullString
  loc_1831B22:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831B2A:       var_124 = CVar(CLng(0)) 'Long
  loc_1831B5A:       var_110 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1831B61:       LateIdCallSt
  loc_1831B94:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831B9C:       var_124 = CVar(CLng(1)) 'Long
  loc_1831BCC:       var_110 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1831BD3:       LateIdCallSt
  loc_1831C06:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831C0E:       var_124 = CVar(CLng(2)) 'Long
  loc_1831C3E:       var_110 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1831C45:       LateIdCallSt
  loc_1831C78:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831C80:       var_124 = CVar(CLng(3)) 'Long
  loc_1831CB0:       var_110 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1831CB7:       LateIdCallSt
  loc_1831CEA:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831CF2:       var_124 = CVar(CLng(4)) 'Long
  loc_1831D22:       var_110 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1831D29:       LateIdCallSt
  loc_1831D5C:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831D64:       var_124 = CVar(CLng(5)) 'Long
  loc_1831D94:       var_110 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1831D9B:       LateIdCallSt
  loc_1831DCE:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831DD6:       var_124 = CVar(CLng(6)) 'Long
  loc_1831E06:       var_110 = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_1831E0D:       LateIdCallSt
  loc_1831E40:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1831E48:       var_124 = CVar(CLng(7)) 'Long
  loc_1831E78:       var_110 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_1831E7F:       LateIdCallSt
  loc_1831E9B:       Set var_1D8 = Nothing 
  loc_1831EA2:       var_88.MoveNext
  loc_1831EA7:       GoTo loc_1831ADF
  loc_1831EAA:     End If
  loc_1831EAA:   End If
  loc_1831EB0:   If (var_8E = 1) Then
  loc_1831EC6:     Me.FGrid.Rows = 1
  loc_1831ED2:     Set var_138 = Me.FGrid
  loc_1831EEC:     var_D0 = CVar(CStr(Proc_6_127_F24F80(var_138, CInt(0), var_1D8, var_110, var_124, "'", var_1D8, var_110))) 'String
  loc_1831EF4:     Set var_C0 = Me.FGrid
  loc_1831F21:     Me.FGrid.FixedRows = 1
  loc_1831F29:   End If
  loc_1831F34:   If (global_156 = "Y") Then
  loc_1831F4B:     var_114 = "SELECT  Distinct  CAST(P.VNo AS varchar(10)) AS SearchCode, CAST(P.VNo AS varchar(10)) AS VNo, P.CustName,P.Docid FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE     (P.LogSite_Code = '" & MemVar_1F92078
  loc_1831F63:     var_F0 = CVar(var_114 & "') AND (P.RestCode = '" & global_60 & "') and PD.ContraDocID='") 'String
  loc_1831F93:     var_110 = var_F0 & Me.Fields.Item("SearchCode").Value 
  loc_1831F97:     var_E0 = "'"
  loc_1831F9C:     var_134 = var_110 & var_E0 
  loc_1831FAA:     unk_523D48.Execute CStr(var_134), var_1B4, -1
  loc_1831FB5:     Set var_98 = var_138
  loc_1831FE2:     var_AC = Me.Recordset15.RecordCount
  loc_1831FF0:     If (var_AC > 0) Then
  loc_1831FF3:       ' Referenced from: 1832135
  loc_1832007:       If (Me.Recordset15.EOF = 0) Then
  loc_183202F:         var_D0 = Me.Recordset15.Fields.Item("DocID").Value
  loc_183204C:         Call 0.Method_Proc_177_69_18322280 (CInt(&HB), var_140, CStr(var_D0), Me.Txt, FGrid.DispID_10000, var_D0)
  loc_1832054:         var_140.Tag = var_124
  loc_18320A6:         Set var_138 = Me.Txt
  loc_18320AC:         Call 0.Method_Proc_177_69_18322280 (CInt(&HB), var_140, CStr(Me.Recordset15.Fields.Item("VNo").Value), var_E0)
  loc_18320B4:         var_140.Text = var_1D8
  loc_18320E7:         var_C0 = Me.Recordset15.Fields.Item("CustName")
  loc_1832106:         Set var_138 = Me.Txt
  loc_183210C:         Call 0.Method_Proc_177_69_18322280 (CInt(&HC), var_140, CStr(var_C0.Value))
  loc_1832114:         var_140.Text = var_110
  loc_1832130:         Me.Recordset15.MoveNext
  loc_1832135:         GoTo loc_1831FF3
  loc_1832138:       End If
  loc_183213B:     Else
  loc_1832149:       Set var_A8 = Me.Txt
  loc_183214F:       Call 0.Method_Proc_177_69_18322280 (CInt(&HB), var_C0)
  loc_1832157:       var_C0.Tag = vbNullString
  loc_1832171:       Set var_A8 = Me.Txt
  loc_1832177:       Call 0.Method_Proc_177_69_18322280 (CInt(&HB), var_C0)
  loc_183217F:       var_C0.Text = vbNullString
  loc_1832199:       Set var_A8 = Me.Txt
  loc_183219F:       Call 0.Method_Proc_177_69_18322280 (CInt(&HC), var_C0)
  loc_18321A7:       var_C0.Text = vbNullString
  loc_18321B3:     End If
  loc_18321B3:   End If
  loc_18321B6: Else
  loc_18321B6:   Call Proc_177_70_10B39FC(var_124)
  loc_18321BB: End If
  loc_18321BB: Call Proc_177_72_E83FE0()
  loc_18321C5: Set var_88 = Nothing
  loc_18321CD: Set var_94 = Nothing
  loc_18321D4: Exit Sub
  loc_18321D5: ' Referenced from: 182FDE4
  loc_18321DD: Set var_A8 = Err()
  loc_18321E3: Call 0.Method_arg_1C (var_AC)
  loc_18321F4: If (var_AC = &HBCD) Then
  loc_1832210:   MsgBox("Record is Deleted by somebody", &H40, var_F0, var_110, var_134)
  loc_1832220:   Exit Sub
  loc_1832221: End If
  loc_1832221: Proc_6_60_E62BC4()
  loc_1832226: Exit Sub
End Sub

Public Sub Proc_177_70_10B39FC
  'Data Table: 523D28
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_10B3729: Me.LblVPrefix.Caption = vbNullString
  loc_10B373F: Set var_8C = Me.Txt
  loc_10B3745: Call 0.Method_Proc_177_70_10B39FCC (var_8E, var_86)
  loc_10B3755: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10B376B:   Set var_8C = Me.Txt
  loc_10B3771:   Call 0.Method_Proc_177_70_10B39FC0 (CInt(var_86), var_98)
  loc_10B3779:   var_98.Text = vbNullString
  loc_10B3795:   Set var_8C = Me.Txt
  loc_10B379B:   Call 0.Method_Proc_177_70_10B39FC0 (CInt(var_86), var_98)
  loc_10B37A3:   var_98.Tag = vbNullString
  loc_10B37B2: Next var_92 'Byte
  loc_10B37CB: Me.FGrid.Rows = 1
  loc_10B37E0: Me.lbltable.Caption = vbNullString
  loc_10B3806: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_10B380E: Set var_98 = Me.FGrid
  loc_10B3828: var_A8 = 1
  loc_10B3834: var_DC = CVar(CLng(1)) 'Long
  loc_10B3847: Set var_8C = Me.FGrid
  loc_10B384D: LateIdCallSt
  loc_10B3858: var_A8 = 1
  loc_10B3864: var_DC = CVar(CLng(2)) 'Long
  loc_10B3877: Set var_8C = Me.FGrid
  loc_10B387D: LateIdCallSt
  loc_10B3888: var_A8 = 1
  loc_10B389B: Me.FGrid.FixedRows = var_A8
  loc_10B38B7: Call 0.Method_Proc_177_70_10B39FCC (var_8E, var_86, CByte(1), Me.TxtPer, global_220, var_DC, var_A8)
  loc_10B38C4: For var_100 = global_228 To CByte(var_8E): var_8C = var_100 'Byte
  loc_10B38DA:   Set var_8C = Me.TxtPer
  loc_10B38E0:   Call 0.Method_Proc_177_70_10B39FC0 (CInt(var_86), var_98, vbNullString, global_228, var_DC)
  loc_10B38E8:   var_98.Text = var_A8
  loc_10B38F7: Next var_100 'Byte
  loc_10B390B: Set var_8C = Me.TxtGt
  loc_10B3911: Call 0.Method_Proc_177_70_10B39FCC (var_8E, var_86)
  loc_10B391E: For var_104 =  To CByte(var_8E): CByte(1) = var_104 'Byte
  loc_10B3934:   Set var_8C = Me.TxtGt
  loc_10B393A:   Call 0.Method_Proc_177_70_10B39FC0 (CInt(var_86), var_98)
  loc_10B3942:   var_98.Text = vbNullString
  loc_10B3951: Next var_104 'Byte
  loc_10B3965: Set var_8C = Me.Txt
  loc_10B396B: Call 0.Method_Proc_177_70_10B39FC0 (CInt(5), var_98)
  loc_10B3973: var_98.Text = "00:00"
  loc_10B398D: Set var_8C = Me.Txt
  loc_10B3993: Call 0.Method_Proc_177_70_10B39FC0 (CInt(5), var_98)
  loc_10B399B: var_98.Tag = vbNullString
  loc_10B39B9: Set var_8C = Me.Txt
  loc_10B39BF: Call 0.Method_Proc_177_70_10B39FC0 (CInt(4), var_98)
  loc_10B39C7: var_98.Text = CStr(1)
  loc_10B39DC: global_236 = vbNullString
  loc_10B39F3: Me.FGCat.Rows = 0
  loc_10B39FB: Exit Sub
End Sub

Public Sub Proc_177_71_FD1744(arg_C) 'FD1744
  'Data Table: 523D28
  Dim var_98 As TextBox
  loc_FD157A: Set var_8C = Me.Txt
  loc_FD1580: Call 0.Method_Proc_177_71_FD1744C (var_8E, var_86)
  loc_FD1590: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD15A6:   Set var_8C = Me.Txt
  loc_FD15AC:   Call 0.Method_Proc_177_71_FD17440 (CInt(var_86), var_98)
  loc_FD15B4:   var_98.Enabled = arg_C
  loc_FD15C3: Next var_92 'Byte
  loc_FD15D7: Set var_8C = Me.TxtPer
  loc_FD15DD: Call 0.Method_Proc_177_71_FD1744C (var_8E, var_86)
  loc_FD15EA: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_FD1600:   Set var_8C = Me.TxtPer
  loc_FD1606:   Call 0.Method_Proc_177_71_FD17440 (CInt(var_86), var_98)
  loc_FD160E:   var_98.Enabled = arg_C
  loc_FD161D: Next var_9C 'Byte
  loc_FD1631: Set var_8C = Me.TxtGt
  loc_FD1637: Call 0.Method_Proc_177_71_FD1744C (var_8E, var_86)
  loc_FD1644: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_FD165A:   Set var_8C = Me.TxtGt
  loc_FD1660:   Call 0.Method_Proc_177_71_FD17440 (CInt(var_86), var_98)
  loc_FD1668:   var_98.Enabled = arg_C
  loc_FD1677: Next var_A0 'Byte
  loc_FD168A: Set var_8C = Me.Txt
  loc_FD1690: Call 0.Method_Proc_177_71_FD17440 (CInt(2), var_98)
  loc_FD1698: var_98.Enabled = False
  loc_FD16B1: Set var_8C = Me.Txt
  loc_FD16B7: Call 0.Method_Proc_177_71_FD17440 (CInt(5), var_98)
  loc_FD16BF: var_98.Enabled = False
  loc_FD16D8: Set var_8C = Me.Txt
  loc_FD16DE: Call 0.Method_Proc_177_71_FD17440 (CInt(1), var_98)
  loc_FD16E6: var_98.Enabled = False
  loc_FD16FF: Set var_8C = Me.Txt
  loc_FD1705: Call 0.Method_Proc_177_71_FD17440 (CInt(0), var_98)
  loc_FD170D: var_98.Enabled = False
  loc_FD1726: Set var_8C = Me.Txt
  loc_FD172C: Call 0.Method_Proc_177_71_FD17440 (CInt(8), var_98)
  loc_FD1734: var_98.Enabled = False
  loc_FD1740: Exit Sub
End Sub

Public Sub Proc_177_72_E83FE0
  'Data Table: 523D28
  loc_E83F8C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E83F9E:   Me.DGTable.Visible = False
  loc_E83FA6: End If
  loc_E83FC2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E83FD4:   Me.FGPoint.Visible = False
  loc_E83FDC: End If
  loc_E83FDC: Exit Sub
End Sub

Public Sub Proc_177_73_EA8FFC(arg_C) 'EA8FFC
  'Data Table: 523D28
  Dim var_8C As Recordset15
  loc_EA8F76: IStAdFunc
  loc_EA8F7D: Set var_8C = arg_C 
  loc_EA8FA5: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EA8FB5: var_8C.CursorType = 3
  loc_EA8FC2: var_8C.LockType = 3
  loc_EA8FE1: var_8C.Open var_A0, var_B0, -1
  loc_EA8FE8: Set var_8C = Nothing 
  loc_EA8FEF: Set var_88 = arg_C 
  loc_EA8FF3: Proc_177_73_EA8FFC = -1
End Sub

Public Sub Proc_177_74_114D6B0
  'Data Table: 523D28
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114D326: Set global_96 = New 
  loc_114D338: Me.Recordset15.CursorLocation = 3
  loc_114D343: var_90 = global_216
  loc_114D34E: If (var_90 = "Hall") Then
  loc_114D35C:   If (global_204 = "Y") Then
  loc_114D380:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114D391:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F92044), 3
  loc_114D39F:   Else
  loc_114D3C2:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_114D3C7:   End If
  loc_114D3D3:   Set var_8C = Me.Label1
  loc_114D3D9:   Call 0.Method_Proc_177_74_114D6B00 (2, var_C8, "Hall", 1)
  loc_114D3E1:   var_C8.Caption = -1
  loc_114D3FD:   Set var_8C = Me.DGTable
  loc_114D40E:   Set var_C8 = DGTable.DispID_69
  loc_114D41C:   var_C8.Item(1).Caption = "Hall"
  loc_114D433:   global_148 = "HALL"
  loc_114D43D:   global_152 = "HL"
  loc_114D444: Else
  loc_114D44C:   If Not (var_90 = "Fast Food") Then
  loc_114D457:     If (var_90 = "Outlet") Then
  loc_114D45A:     End If
  loc_114D466:     Set var_8C = Me.Label1
  loc_114D46C:     Call 0.Method_Proc_177_74_114D6B00 (2, var_C8, "Table #")
  loc_114D474:     var_C8.Caption = 1
  loc_114D490:     Set var_8C = Me.DGTable
  loc_114D4A1:     Set var_C8 = DGTable.DispID_69
  loc_114D4AF:     var_C8.Item(1).Caption = "Table #"
  loc_114D4C3:     var_88 = " Order by Code"
  loc_114D4D1:     If (global_204 = "Y") Then
  loc_114D4FC:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB') And RestCode='" & global_60 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114D50D:       var_D8 = var_D0 & global_60 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y') "
  loc_114D51E:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F92044), 3
  loc_114D534:     Else
  loc_114D563:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_60 & "' " & var_88) 'String
  loc_114D56D:       Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114D57C:     End If
  loc_114D582:     global_148 = "REST"
  loc_114D58C:     global_152 = "TB"
  loc_114D593:   Else
  loc_114D59B:     If (var_90 = "Room Service") Then
  loc_114D5AA:       Set var_8C = Me.Label1
  loc_114D5B0:       Call 0.Method_Proc_177_74_114D6B00 (2, var_C8, "Room #", 1)
  loc_114D5B8:       var_C8.Caption = -1
  loc_114D5D4:       Set var_8C = Me.DGTable
  loc_114D5F3:       DGTable.DispID_69.Item(1).Caption = "Room #"
  loc_114D60F:       If (global_204 = "Y") Then
  loc_114D633:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_60
  loc_114D63A:         var_A4 = CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG is Null or DELFLAG='') AND NCKOT<>'Y') Order by RC.roomno") 'String
  loc_114D644:         Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114D652:       Else
  loc_114D669:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid  From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114D675:         Me.Open var_B4, CVar(MemVar_1F92044), 3
  loc_114D67A:       End If
  loc_114D680:       global_152 = "RO"
  loc_114D684:     End If
  loc_114D684:   End If
  loc_114D684: End If
  loc_114D68D: CVarUnk
  loc_114D692: VerifyVarObj
  loc_114D698: Set var_8C = Me.DGTable
  loc_114D69E: LateIdStAd
  loc_114D6AC: Exit Sub
End Sub

Public Sub Proc_177_75_17DBD98(arg_C) '17DBD98
  'Data Table: 523D28
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_E8 As Variant
  Dim var_BC As String
  Dim unk_523D48 As Connection15
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Fields15
  Dim var_1C0 As Variant
  Dim var_250 As Variant
  Dim var_88 As Recordset15
  Dim var_280 As Variant
  Dim var_FC As Variant
  Dim var_294 As TextBox
  Dim var_A8 As Variant
  loc_17D9CD4: Set var_90 = Me.TxtGt
  loc_17D9CDA: Call 0.Method_Proc_177_75_17DBD980 (1, var_94)
  loc_17D9CE2: var_96 = var_94.TabIndex
  loc_17D9CEA: var_8A = var_96
  loc_17D9CF8: Set var_90 = Me.TopCtrl1
  loc_17D9CFE: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_17D9D17: If (CStr() = "Add") Then
  loc_17D9D26:   Set var_90 = Me.TxtPer
  loc_17D9D2C:   Call 0.Method_Proc_177_75_17DBD98C (var_96, var_8C)
  loc_17D9D37:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_17D9D49:     Set var_90 = Me.TxtPer
  loc_17D9D4F:     Call 0.Method_Proc_177_75_17DBD980 (var_8C, var_94)
  loc_17D9D57:     var_94.Visible = False
  loc_17D9D66:   Next var_B0 'Integer
  loc_17D9D77:   Set var_90 = Me.TxtGt
  loc_17D9D7D:   Call 0.Method_Proc_177_75_17DBD98C (var_96, var_8C)
  loc_17D9D88:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_17D9D9A:     Set var_90 = Me.TxtGt
  loc_17D9DA0:     Call 0.Method_Proc_177_75_17DBD980 (var_8C, var_94)
  loc_17D9DA8:     var_94.Visible = False
  loc_17D9DB7:   Next var_B4 'Integer
  loc_17D9DC8:   Set var_90 = Me.LblCap
  loc_17D9DCE:   Call 0.Method_Proc_177_75_17DBD98C (var_96, var_8C)
  loc_17D9DD9:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_17D9DEB:     Set var_90 = Me.LblCap
  loc_17D9DF1:     Call 0.Method_Proc_177_75_17DBD980 (var_8C, var_94)
  loc_17D9DF9:     var_94.Visible = False
  loc_17D9E08:   Next var_B8 'Integer
  loc_17D9E0D: End If
  loc_17D9E11: Set var_90 = Me.TopCtrl1
  loc_17D9E17: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17D9E30: If (CStr() = "Add") Then
  loc_17D9E57:   var_E8 = 0
  loc_17D9E74:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_17D9E95:   unk_523D48.Execute var_BC & "' and Code='" & global_60 & "'", var_A8, -1
  loc_17D9E9D:   var_90 = var_90.Fields
  loc_17D9EA5:   var_E8 = var_94.Item(var_94)
  loc_17D9EAD:   var_EC = var_EC.Value
  loc_17D9EC8:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_17D9EDB:   var_1BC = 0
  loc_17D9EFB:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17D9F0B:   unk_523D48.Execute var_180 & "'", var_1A4, -1
  loc_17D9F13:   var_1A8 = var_1A8.Fields
  loc_17D9F1B:   var_1BC = var_1AC.Item(var_1AC)
  loc_17D9F23:   var_1C0 = var_1C0.Value
  loc_17D9F43:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_17D9F54:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F92078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_17D9F62:   unk_523D48.Execute CStr(var_250), var_274, -1
  loc_17D9F6D:   Set var_88 = var_278
  loc_17D9FB8: Else
  loc_17D9FDC:   var_E8 = 0
  loc_17D9FF9:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_17DA01A:   unk_523D48.Execute var_BC & "' and Code='" & global_60 & "'", var_A8, -1
  loc_17DA022:   var_90 = var_90.Fields
  loc_17DA02A:   var_E8 = var_94.Item(var_94)
  loc_17DA032:   var_EC = var_EC.Value
  loc_17DA04D:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_17DA060:   var_1BC = 0
  loc_17DA080:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_60
  loc_17DA090:   unk_523D48.Execute var_180 & "'", var_1A4, -1
  loc_17DA098:   var_1A8 = var_1A8.Fields
  loc_17DA0A0:   var_1BC = var_1AC.Item(var_1AC)
  loc_17DA0A8:   var_1C0 = var_1C0.Value
  loc_17DA0C8:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_17DA0E7:   unk_523D48.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_17DA0F2:   Set var_88 = var_278
  loc_17DA13A: End If
  loc_17DA14E: If (var_88.RecordCount > 0) Then
  loc_17DA18A:   Set var_EC = Me.Txt
  loc_17DA190:   Call 0.Method_Proc_177_75_17DBD980 (CInt(9), var_1A8)
  loc_17DA198:   var_1A8.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17DA1AE:   ' Referenced from: 17DBD10
  loc_17DA1B4:   var_96 = var_88.EOF
  loc_17DA1BD:   If Not(var_96) Then
  loc_17DA1FC:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17DA230:       Set var_EC = Me.LblDummy
  loc_17DA236:       Call 0.Method_Proc_177_75_17DBD988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17DA250:       If (var_278 > CVar(var_96)) Then
  loc_17DA285:         Set var_EC = Me.LblDummy
  loc_17DA28B:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DA29C:         Me.LblDummy.Load var_1A8
  loc_17DA2AF:       End If
  loc_17DA2FA:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DA30F:       Set var_1AC = Me.LblDummy
  loc_17DA315:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0)
  loc_17DA31D:       var_1C0.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17DA36C:       Set var_EC = Me.TxtPer
  loc_17DA372:       Call 0.Method_Proc_177_75_17DBD988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17DA38C:       If (var_1A8 > CVar(var_96)) Then
  loc_17DA3C1:         Set var_EC = Me.TxtPer
  loc_17DA3C7:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DA3D8:         Me.TxtPer.Load var_1A8
  loc_17DA3EB:       End If
  loc_17DA423:       Set var_EC = Me.TxtPer
  loc_17DA429:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA431:       var_1A8.TabIndex = (var_8A + 1)
  loc_17DA44A:       var_8A = (var_8A + 1)
  loc_17DA48E:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DA4CE:       Set var_1AC = Me.TxtPer
  loc_17DA4D4:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17DA4DC:       var_1C0.Visible = var_8A
  loc_17DA53B:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DA59A:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DA5A3:         Set var_278 = Me.TxtPer
  loc_17DA5A9:         Call 0.Method_Proc_177_75_17DBD980 (CInt(True), var_280)
  loc_17DA5EB:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DA5F4:         Set var_EC = Me.TxtPer
  loc_17DA5FA:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_17DA61E:         Set var_290 = Me.TxtPer
  loc_17DA624:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_294)
  loc_17DA62C:         var_294.Top = ((var_1A8.Top + var_280.Height) + CDbl(&HF))
  loc_17DA655:       End If
  loc_17DA691:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DA6F0:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DA6F9:         Set var_EC = Me.TxtPer
  loc_17DA6FF:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_17DA71A:         Set var_278 = Me.TxtPer
  loc_17DA720:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DA728:         var_280.Left = var_1A8.Left
  loc_17DA747:       End If
  loc_17DA74B:       Set var_90 = Me.TopCtrl1
  loc_17DA751:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_17DA76A:       If (CStr() = "Add") Then
  loc_17DA7CA:         var_1C0 = var_88.Fields.Item("SNo")
  loc_17DA817:         Set var_278 = Me.TxtPer
  loc_17DA81D:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1C0.Value), var_280)
  loc_17DA825:         var_280.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17DA84D:       End If
  loc_17DA898:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DA8AD:       Set var_1AC = Me.TxtPer
  loc_17DA8B3:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0)
  loc_17DA8BB:       var_1C0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17DA912:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DA949:         Set var_EC = Me.TxtPer
  loc_17DA94F:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA957:         var_1A8.FontBold = True
  loc_17DA96D:       Else
  loc_17DA9A1:         Set var_EC = Me.TxtPer
  loc_17DA9A7:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DA9AF:         var_1A8.FontBold = False
  loc_17DA9C2:       End If
  loc_17DA9FB:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DAA32:         Set var_EC = Me.TxtPer
  loc_17DAA38:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAA40:         var_1A8.Enabled = False
  loc_17DAA56:       Else
  loc_17DAA8A:         Set var_EC = Me.TxtPer
  loc_17DAA90:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAA98:         var_1A8.Enabled = True
  loc_17DAAAB:       End If
  loc_17DAAAF:       Set var_90 = Me.TopCtrl1
  loc_17DAAB5:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17DAACE:       If (CStr() = "Browse") Then
  loc_17DAB05:         Set var_EC = Me.TxtPer
  loc_17DAB0B:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAB13:         var_1A8.Enabled = False
  loc_17DAB26:       End If
  loc_17DAB62:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17DAB99:         Set var_EC = Me.TxtPer
  loc_17DAB9F:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DABA7:         var_1A8.Enabled = False
  loc_17DABBA:       End If
  loc_17DABEB:       Set var_EC = Me.LblCap
  loc_17DABF1:       Call 0.Method_Proc_177_75_17DBD988 (var_96)
  loc_17DAC0B:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17DAC40:         Set var_EC = Me.LblCap
  loc_17DAC46:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DAC57:         Me.LblCap.Load var_1A8
  loc_17DAC6A:       End If
  loc_17DAC9E:       Set var_EC = Me.LblCap
  loc_17DACA4:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DACAC:       var_1A8.Visible = True
  loc_17DAD1B:       Set var_EC = Me.TxtPer
  loc_17DAD21:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAD3C:       Set var_278 = Me.LblCap
  loc_17DAD42:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DAD4A:       var_280.Top = var_1A8.Top
  loc_17DADA5:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DADE9:         var_1C0 = var_88.Fields.Item("SNo")
  loc_17DAE04:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DAE0D:         Set var_EC = Me.LblCap
  loc_17DAE13:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAE2E:         Set var_278 = Me.LblCap
  loc_17DAE34:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1C0.Value), var_280)
  loc_17DAE3C:         var_280.Left = var_1A8.Left
  loc_17DAE5B:       End If
  loc_17DAEBB:       Set var_1AC = Me.LblCap
  loc_17DAEC1:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1C0)
  loc_17DAEC9:       var_1C0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17DAF32:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DAF47:       Set var_1AC = Me.LblCap
  loc_17DAF4D:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0)
  loc_17DAF55:       var_1C0.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17DAFAC:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DAFE3:         Set var_EC = Me.LblCap
  loc_17DAFE9:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DAFF1:         var_1A8.FontBold = True
  loc_17DB007:       Else
  loc_17DB03B:         Set var_EC = Me.LblCap
  loc_17DB041:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB049:         var_1A8.FontBold = False
  loc_17DB05C:       End If
  loc_17DB08D:       Set var_EC = Me.LblAt
  loc_17DB093:       Call 0.Method_Proc_177_75_17DBD988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17DB0AD:       If (var_1A8 > CVar(var_96)) Then
  loc_17DB0E2:         Set var_EC = Me.LblAt
  loc_17DB0E8:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DB0F9:         Me.LblAt.Load var_1A8
  loc_17DB10C:       End If
  loc_17DB14D:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DB18D:       Set var_1AC = Me.LblAt
  loc_17DB193:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0)
  loc_17DB19B:       var_1C0.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17DB1FF:       var_1C0 = var_88.Fields.Item("SNo")
  loc_17DB21A:       Set var_EC = Me.TxtPer
  loc_17DB220:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB23B:       Set var_278 = Me.LblAt
  loc_17DB241:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1C0.Value), var_280)
  loc_17DB249:       var_280.Top = var_1A8.Top
  loc_17DB2A1:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DB2D8:         Set var_EC = Me.LblAt
  loc_17DB2DE:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB2E6:         var_1A8.FontBold = True
  loc_17DB2FC:       Else
  loc_17DB330:         Set var_EC = Me.LblAt
  loc_17DB336:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB33E:         var_1A8.FontBold = False
  loc_17DB351:       End If
  loc_17DB3A0:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DB3B5:       Set var_1AC = Me.LblAt
  loc_17DB3BB:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0)
  loc_17DB3C3:       var_1C0.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_17DB41D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DB47C:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DB485:         Set var_EC = Me.LblAt
  loc_17DB48B:         Call 0.Method_Proc_177_75_17DBD980 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_1A8)
  loc_17DB4A6:         Set var_278 = Me.LblAt
  loc_17DB4AC:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DB4B4:         var_280.Left = var_1A8.Left
  loc_17DB4D3:       End If
  loc_17DB504:       Set var_EC = Me.TxtGt
  loc_17DB50A:       Call 0.Method_Proc_177_75_17DBD988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17DB524:       If (var_1A8 > CVar(var_96)) Then
  loc_17DB559:         Set var_EC = Me.TxtGt
  loc_17DB55F:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17DB570:         Me.TxtGt.Load var_1A8
  loc_17DB583:       End If
  loc_17DB5BB:       Set var_EC = Me.TxtGt
  loc_17DB5C1:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB5C9:       var_1A8.TabIndex = (var_8A + 1)
  loc_17DB5E2:       var_8A = (var_8A + 1)
  loc_17DB619:       Set var_EC = Me.TxtGt
  loc_17DB61F:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8, &HFF)
  loc_17DB627:       var_1A8.Visible = var_8A
  loc_17DB696:       Set var_EC = Me.TxtPer
  loc_17DB69C:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB6B7:       Set var_278 = Me.TxtGt
  loc_17DB6BD:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DB6C5:       var_280.Top = var_1A8.Top
  loc_17DB720:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17DB77F:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_17DB788:         Set var_EC = Me.TxtGt
  loc_17DB78E:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB7A9:         Set var_278 = Me.TxtGt
  loc_17DB7AF:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_280)
  loc_17DB7B7:         var_280.Left = var_1A8.Left
  loc_17DB7D6:       End If
  loc_17DB7DA:       Set var_90 = Me.TopCtrl1
  loc_17DB7E0:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A8)
  loc_17DB7F9:       If (CStr() = "Add") Then
  loc_17DB859:         var_1C0 = var_88.Fields.Item("SNo")
  loc_17DB8A6:         Set var_278 = Me.TxtGt
  loc_17DB8AC:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1C0.Value), var_280)
  loc_17DB8B4:         var_280.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17DB8DC:       End If
  loc_17DB924:       var_1A8 = var_88.Fields.Item("SNo")
  loc_17DB939:       Set var_1AC = Me.TxtGt
  loc_17DB93F:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_1A8.Value), var_1C0)
  loc_17DB947:       var_1C0.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17DB99C:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DB9D3:         Set var_EC = Me.TxtGt
  loc_17DB9D9:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DB9E1:         var_1A8.FontBold = True
  loc_17DB9F7:       Else
  loc_17DBA2B:         Set var_EC = Me.TxtGt
  loc_17DBA31:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DBA39:         var_1A8.FontBold = False
  loc_17DBA4C:       End If
  loc_17DBA85:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17DBABC:         Set var_EC = Me.TxtGt
  loc_17DBAC2:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DBACA:         var_1A8.Enabled = False
  loc_17DBAE0:       Else
  loc_17DBB14:         Set var_EC = Me.TxtGt
  loc_17DBB1A:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DBB22:         var_1A8.Enabled = True
  loc_17DBB35:       End If
  loc_17DBB6A:       Set var_EC = Me.LblCap
  loc_17DBB70:       Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DBBA1:       If (var_1A8.Tag = MemVar_1F92078 & "ROFF") Then
  loc_17DBBD8:         Set var_EC = Me.TxtGt
  loc_17DBBDE:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DBBE6:         var_1A8.Enabled = False
  loc_17DBBF9:       End If
  loc_17DBBFD:       Set var_90 = Me.TopCtrl1
  loc_17DBC03:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17DBC1C:       If (CStr() = "Browse") Then
  loc_17DBC53:         Set var_EC = Me.TxtGt
  loc_17DBC59:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_17DBC61:         var_1A8.Enabled = False
  loc_17DBC74:       End If
  loc_17DBCB0:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17DBCD2:         var_94 = var_88.Fields.Item("SNo")
  loc_17DBCE7:         Set var_EC = Me.TxtGt
  loc_17DBCED:         Call 0.Method_Proc_177_75_17DBD980 (CInt(var_94.Value), var_1A8)
  loc_17DBCF5:         var_1A8.Enabled = False
  loc_17DBD08:       End If
  loc_17DBD08:     End If
  loc_17DBD0B:     var_88.MoveNext
  loc_17DBD10:     GoTo loc_17DA1AE
  loc_17DBD13:   End If
  loc_17DBD13: End If
  loc_17DBD24: Set var_90 = Me.Txt
  loc_17DBD2A: Call 0.Method_Proc_177_75_17DBD980 (CInt(6), var_94)
  loc_17DBD32: var_94.TabIndex = (var_8A + 1)
  loc_17DBD4F: Set var_90 = Me.Txt
  loc_17DBD55: Call 0.Method_Proc_177_75_17DBD980 (CInt(7), var_94)
  loc_17DBD5D: var_94.TabIndex = (var_8A + 2)
  loc_17DBD7A: Set var_90 = Me.Txt
  loc_17DBD80: Call 0.Method_Proc_177_75_17DBD980 (CInt(8), var_94)
  loc_17DBD88: var_94.TabIndex = (var_8A + 3)
  loc_17DBD94: Exit Sub
End Sub

Public Sub Proc_177_76_1777D68(arg_C) '1777D68
  'Data Table: 523D28
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_13C As TextBox
  Dim var_160 As Variant
  Dim var_90 As Double
  Dim var_114 As String
  Dim unk_523D48 As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim var_98 As Double
  Dim var_17C As Variant
  Dim Me As Variant
  Dim var_E8 As Variant
  Dim var_294 As Double
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_29C As Double
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_10C As Variant
  Dim var_2A4 As Double
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_108 As Variant
  Dim var_27C As Variant
  Dim var_138 As TextBox
  Dim var_21C As Variant
  Dim var_A4 As Double
  Dim var_2BC As Double
  Dim var_88 As Recordset15
  loc_1775F34: Set var_B8 = Me.TxtGt
  loc_1775F3A: Call 0.Method_Proc_177_76_1777D688 (var_BA, var_9A)
  loc_1775F45: For var_BE =  To var_BA: 1 = var_BE 'Integer
  loc_1775F58:   Set var_B8 = Me.LblCap
  loc_1775F5E:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1775F98:   Set var_10C = Me.TxtGt
  loc_1775F9E:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110)
  loc_1775FCD:   Set var_138 = Me.TxtPer
  loc_1775FD3:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_13C)
  loc_1775FF1:   var_160 = (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "ADD")) And (CDbl(Val(var_110.Text)) > CDbl(0)) And (CDbl(Val(var_13C.Text)) <= CDbl(0))
  loc_177601A:   If CBool(var_160) Then
  loc_177602A:     Set var_B8 = Me.TxtGt
  loc_1776030:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1776045:     var_90 = Val(var_C4.Text)
  loc_1776052:   End If
  loc_177605F:   Set var_B8 = Me.LblCap
  loc_1776065:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_177606D:   var_C8 = var_C4.Tag
  loc_177607B:   var_E8 = Trim(CVar(var_C8))
  loc_17760A0:   If (var_E8 = CVar(MemVar_1F92078 & "DED")) Then
  loc_17760B1:     Set var_B8 = Me.Txt
  loc_17760B7:     Call 0.Method_Proc_177_76_1777D680 (CInt(&HB), var_C4)
  loc_17760BF:     var_BA = var_C4.Visible
  loc_17760D1:     If (var_BA = &HFF) Then
  loc_17760F2:       Set var_B8 = Me.Txt
  loc_17760F8:       Call 0.Method_Proc_177_76_1777D680 (CInt(&HB), var_C4, var_C8, "SELECT ADVAMT FROM PackingOrder where Docid='")
  loc_1776100:       var_D8 = var_C4.Tag
  loc_1776109:       var_114 = -1 & var_C8
  loc_1776119:       unk_523D48.Execute var_110.Text & "'", var_10C, var_90
  loc_1776124:       Set var_B4 = var_10C
  loc_1776150:       If (var_B4.RecordCount > 0) Then
  loc_1776172:         var_D8 = CVar(var_B4.Fields.Item("AdvAmt")) 'Address
  loc_1776179:         Proc_6_39_E7C810(var_E8)
  loc_1776193:         If CBool(var_E8 <> 0) Then
  loc_17761B0:           var_C4 = var_B4.Fields.Item("AdvAmt")
  loc_17761C1:           var_C8 = CStr(var_C4.Value)
  loc_17761C9:           var_98 = Val(var_C8)
  loc_17761DC:         Else
  loc_17761E9:           Set var_B8 = Me.TxtGt
  loc_17761EF:           Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_17761F7:           var_98 = var_C4.Text
  loc_1776204:           var_98 = Val(var_C8)
  loc_1776211:         End If
  loc_1776211:       End If
  loc_1776214:     Else
  loc_1776221:       Set var_B8 = Me.TxtGt
  loc_1776227:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_177622F:       var_98 = var_C4.Text
  loc_177623C:       var_98 = Val(var_C8)
  loc_1776249:     End If
  loc_1776249:   End If
  loc_1776256:   Set var_B8 = Me.TxtGt
  loc_177625C:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, vbNullString)
  loc_1776264:   var_C4.Text = var_98
  loc_177627D:   Set var_B8 = Me.LblCap
  loc_1776283:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_17762BE:   If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17762C6:     var_A6 = CByte(var_9A) 'Byte
  loc_17762CA:   End If
  loc_17762CD: Next var_BE 'Integer
  loc_17762E5: Me.FGCat.Rows = 1
  loc_17762F1: Set var_B8 = Me.TopCtrl1
  loc_17762F7: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177630B: Set var_C4 = Me.TopCtrl1
  loc_1776311: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_1776337: If ( Or (CStr() = "Edit")) Then
  loc_177633A:   Call Proc_177_84_131668C()
  loc_177633F: End If
  loc_177634B: Set var_B8 = Me.TxtGt
  loc_1776351: Call 0.Method_Proc_177_76_1777D688 (var_BA, var_9A)
  loc_177635C: For var_168 =  To var_BA: 2 = var_168 'Integer
  loc_177636F:   Set var_B8 = Me.LblCap
  loc_1776375:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_17763B0:   If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17763C0:     Set var_B8 = Me.TxtGt
  loc_17763C6:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_17763CE:     var_C4.Text = vbNullString
  loc_17763E4:     If (var_A8 > var_A6) Then
  loc_177640C:       For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_16C 'Integer
  loc_177641F:         Set var_B8 = Me.LblCap
  loc_1776425:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1776460:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1776467:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_177646F:           var_17C = CVar(CLng(&H13)) 'Long
  loc_177649A:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_17764A8:             If (global_152 = "RO") Then
  loc_17764EA:               var_E8 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_17764EE:               var_17C = vbNullString
  loc_1776501:               unk_523D48.Execute CStr(var_E8 & var_17C), var_108, -1
  loc_177650C:               Set var_B4 = var_10C
  loc_177653A:               If (var_B4.RecordCount > 0) Then
  loc_1776563:                 Proc_6_39_E7C810(var_E8, CVar(var_B4.Fields.Item("RSDisc")), var_10C)
  loc_177657D:                 If (var_E8 > 0) Then
  loc_17765B7:                   Proc_6_39_E7C810(var_E8, CVar(var_B4.Fields.Item("RSDisc")), CVar(CLng(&HE)), CVar(CLng(var_9C)))
  loc_17765CE:                   LateIdCallSt
  loc_17765FD:                   var_C4 = var_B4.Fields.Item("RSDisc")
  loc_177660C:                   Proc_6_39_E7C810(var_E8, CVar(var_C4), Me.FGrid, CVar(CStr(var_E8)))
  loc_1776614:                   var_C8 = CStr(var_E8)
  loc_1776622:                   Set var_10C = Me.TxtPer
  loc_1776628:                   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, var_C8)
  loc_1776630:                   var_110.Text = var_17C
  loc_177664B:                 Else
  loc_177664F:                   var_124 = CVar(CLng(var_9C)) 'Long
  loc_1776669:                   Set var_B8 = Me.TxtPer
  loc_177666F:                   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8, CVar(CLng(&HE)))
  loc_1776677:                   var_124 = var_C4.Text
  loc_1776686:                   var_D8 = CVar(CStr(Val(var_C8))) 'String
  loc_177668E:                   Set var_10C = Me.FGrid
  loc_1776694:                   LateIdCallSt
  loc_17766AB:                 End If
  loc_17766AB:               End If
  loc_17766AE:             Else
  loc_17766CC:               Set var_B8 = Me.TxtPer
  loc_17766D2:               Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8, CVar(CLng(&HE)), CVar(CLng(var_9C)))
  loc_17766DA:               var_10C = var_C4.Text
  loc_17766E9:               var_D8 = CVar(CStr(Val(var_C8))) 'String
  loc_17766F1:               Set var_10C = Me.FGrid
  loc_17766F7:               LateIdCallSt
  loc_177670E:             End If
  loc_177670E:           End If
  loc_177670E:         End If
  loc_1776712:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_177671A:         var_17C = CVar(CLng(7)) 'Long
  loc_1776743:         var_19C = CVar(CLng(var_9C)) 'Long
  loc_177674B:         var_1BC = CVar(CLng(9)) 'Long
  loc_1776774:         var_1DC = CVar(CLng(var_9C)) 'Long
  loc_177677C:         var_1FC = CVar(CLng(&HE)) 'Long
  loc_17767A5:         var_23C = CVar(CLng(var_9C)) 'Long
  loc_17767AD:         var_25C = CVar(CLng(&HF)) 'Long
  loc_17767D6:         var_108 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_17767E6:         var_27C = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_17767EE:         Set var_110 = Me.FGrid
  loc_17767F4:         LateIdCallSt
  loc_1776825:         var_19C = CVar(CLng(var_9C)) 'Long
  loc_177682D:         var_1BC = CVar(CLng(7)) 'Long
  loc_1776856:         var_1DC = CVar(CLng(var_9C)) 'Long
  loc_1776867:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_177686F:         var_17C = CVar(CLng(9)) 'Long
  loc_177689F:         Set var_10C = Me.FGrid
  loc_17768A5:         LateIdCallSt
  loc_17768CA:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_17768D2:         var_17C = CVar(CLng(&HA)) 'Long
  loc_17768EC:         var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_1776903:         Set var_C4 = Me.LblDummy
  loc_1776909:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_10C, CStr(Val(var_C8)), var_17C, var_124, var_10C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1776911:         var_10C.Caption = var_17C
  loc_1776936:         Set var_B8 = Me.LblCap
  loc_177693C:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8, var_124, CVar(CLng(&HA)))
  loc_1776944:         var_1DC = var_C4.Tag
  loc_1776977:         If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1776987:           Set var_B8 = Me.TxtGt
  loc_177698D:           Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_1776995:           var_294 = var_C4.Text
  loc_17769A9:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_17769D3:           var_29C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17769F2:           var_E8 = CVar((Val(var_C8) + var_29C)) 'Double
  loc_1776A0F:           Set var_110 = Me.TxtGt
  loc_1776A15:           Call 0.Method_Proc_177_76_1777D680 (var_9A, var_138, CStr(Format(Trim(CVar(var_C8)), "0.00")), 1, 1, var_29C)
  loc_1776A1D:           var_138.Text = CVar(CLng(&HF))
  loc_1776A43:         End If
  loc_1776A46:       Next var_16C 'Integer
  loc_1776A4E:     Else
  loc_1776A73:       For var_2A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_9C = var_2A8 'Integer
  loc_1776A86:         Set var_B8 = Me.LblCap
  loc_1776A8C:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1776AC7:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1776ACE:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_1776AD6:           var_17C = CVar(CLng(&H13)) 'Long
  loc_1776AF0:           var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_1776B01:           If (var_C8 = "Y") Then
  loc_1776B08:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_1776B22:             Set var_B8 = Me.TxtPer
  loc_1776B28:             Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8, CVar(CLng(&HE)))
  loc_1776B30:             var_124 = var_C4.Text
  loc_1776B3F:             var_D8 = CVar(CStr(Val(var_C8))) 'String
  loc_1776B47:             Set var_10C = Me.FGrid
  loc_1776B4D:             LateIdCallSt
  loc_1776B64:           End If
  loc_1776B64:         End If
  loc_1776BA1:         Set var_C4 = Me.LblDummy
  loc_1776BA7:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_10C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1776BAF:         var_10C.Caption = var_10C
  loc_1776BCB:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_1776BD3:         var_17C = CVar(CLng(&HA)) 'Long
  loc_1776BED:         var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_1776BFC:         var_19C = CVar(CLng(var_9C)) 'Long
  loc_1776C04:         var_1BC = CVar(CLng(&HE)) 'Long
  loc_1776C0D:         Set var_C4 = Me.FGrid
  loc_1776C26:         var_29C = Val(CStr(var_C4.TextMatrix)))
  loc_1776C35:         var_21C = CVar(CLng(&HF)) 'Long
  loc_1776C78:         LateIdCallSt
  loc_1776CAC:         Set var_B8 = Me.LblCap
  loc_1776CB2:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_C8) * var_29C) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_1776CBA:         var_21C = var_C4.Tag
  loc_1776CED:         If (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1776CFD:           Set var_B8 = Me.TxtGt
  loc_1776D03:           Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8, CVar(CLng(var_9C)), var_29C)
  loc_1776D0B:           var_1BC = var_C4.Text
  loc_1776D18:           var_294 = Val(var_C8)
  loc_1776D1F:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_1776D49:           var_29C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1776D68:           var_E8 = CVar((var_294 + var_29C)) 'Double
  loc_1776D85:           Set var_110 = Me.TxtGt
  loc_1776D8B:           Call 0.Method_Proc_177_76_1777D680 (var_9A, var_138, CStr(Format(Trim(CVar(var_C8)), "0.00")), 1, 1, var_29C)
  loc_1776D93:           var_138.Text = CVar(CLng(&HF))
  loc_1776DB9:         End If
  loc_1776DBC:       Next var_2A8 'Integer
  loc_1776DC1:     End If
  loc_1776DC4:   Else
  loc_1776DD1:     Set var_B8 = Me.TxtPer
  loc_1776DD7:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1776DF1:     If (var_C4.Visible = &HFF) Then
  loc_1776DFA:       Call Proc_177_77_11FAD68(var_9A)
  loc_1776E02:       var_A4 = var_294
  loc_1776E12:       Set var_B8 = Me.TxtPer
  loc_1776E18:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_1776E20:       var_A4 = var_C4.Text
  loc_1776E6D:       Set var_10C = Me.TxtGt
  loc_1776E73:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, CStr(Format(CVar(((var_A4 * Val(var_C8)) / CDbl(&H64))), "0.00")), 1)
  loc_1776E7B:       var_110.Text = 1
  loc_1776EA8:       Set var_B8 = Me.LblCap
  loc_1776EAE:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_1776EB6:       var_294 = var_C4.Tag
  loc_1776EFE:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_1776F29:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_1776F37:         Set var_B8 = Me.TxtGt
  loc_1776F3D:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_1776F45:         var_C4.Text = 1
  loc_1776F5B:       End If
  loc_1776F68:       Set var_B8 = Me.LblCap
  loc_1776F6E:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_1776F76:       1 = var_C4.Tag
  loc_1776FBE:       If CBool((Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DED")) And (var_90 > CDbl(0))) Then
  loc_1776FF7:         Set var_B8 = Me.TxtGt
  loc_1776FFD:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, CStr(Format(var_98, "0.00")))
  loc_1777005:         var_C4.Text = 1
  loc_177701B:       End If
  loc_1777020:       var_C8 = CStr(var_A4)
  loc_177702D:       Set var_B8 = Me.LblDummy
  loc_1777033:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_177703B:       var_C4.Caption = 1
  loc_177704D:     Else
  loc_177705A:       Set var_B8 = Me.TxtPer
  loc_1777060:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1777073:       var_124 = (var_C4.Visible = 0)
  loc_1777084:       Set var_10C = Me.LblCap
  loc_177708A:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, var_C8)
  loc_1777092:       var_124 = var_110.Tag
  loc_17770D3:       If CBool(var_294 And (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "ADD"))) Then
  loc_17770FE:         var_C8 = CStr(Format(var_90, "0.00"))
  loc_177710C:         Set var_B8 = Me.TxtGt
  loc_1777112:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_177711A:         var_C4.Text = 1
  loc_1777133:       Else
  loc_1777140:         Set var_B8 = Me.TxtPer
  loc_1777146:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_177714E:         var_BA = var_C4.Visible
  loc_1777159:         var_124 = (var_BA = 0)
  loc_177716A:         Set var_10C = Me.LblCap
  loc_1777170:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, var_C8)
  loc_1777178:         var_124 = var_110.Tag
  loc_17771B9:         If CBool(1 And (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "DED"))) Then
  loc_17771F2:           Set var_B8 = Me.TxtGt
  loc_17771F8:           Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, CStr(Format(var_98, "0.00")))
  loc_1777200:           var_C4.Text = 1
  loc_1777216:         End If
  loc_1777216:       End If
  loc_1777216:     End If
  loc_1777216:   End If
  loc_1777219: Next var_168 'Integer
  loc_1777243: For var_2AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_2AC 'Integer
  loc_177724D:   var_124 = CVar(CLng(var_9A)) 'Long
  loc_1777255:   var_17C = CVar(CLng(7)) 'Long
  loc_177726F:   var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_177727E:   var_19C = CVar(CLng(var_9A)) 'Long
  loc_1777286:   var_1BC = CVar(CLng(9)) 'Long
  loc_177728F:   Set var_C4 = Me.FGrid
  loc_17772AF:   var_1FC = CVar(CLng(var_9A)) 'Long
  loc_17772B7:   var_21C = CVar(CLng(&HA)) 'Long
  loc_17772F6:   LateIdCallSt
  loc_1777329:   Set var_B8 = Me.TxtGt
  loc_177732F:   Call 0.Method_Proc_177_76_1777D680 (1, var_C4, var_C8, Me.FGrid, CVar(CStr(Format(CVar((Val(var_C8) * Val(CStr(var_C4.TextMatrix))))), "0.00"))), 1, 1)
  loc_1777337:   var_21C = var_C4.Text
  loc_1777344:   var_294 = Val(var_C8)
  loc_1777375:   var_29C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1777394:   var_E8 = CVar((var_294 + var_29C)) 'Double
  loc_17773B0:   Set var_110 = Me.TxtGt
  loc_17773B6:   Call 0.Method_Proc_177_76_1777D680 (1, var_138, CStr(Format(var_C4.TextMatrix), "0.00")), 1, 1, var_29C, CVar(CLng(&HA)))
  loc_17773BE:   var_138.Text = CVar(CLng(var_9A))
  loc_17773E7: Next var_2AC 'Integer
  loc_17773FF: Me.FGCat.Rows = 1
  loc_177742C: For var_2B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_2B0 'Integer
  loc_177743C:   If (var_A8 > var_A6) Then
  loc_1777443:     var_124 = CVar(CLng(var_9A)) 'Long
  loc_177744B:     var_17C = CVar(CLng(&H18)) 'Long
  loc_177746A:     var_19C = CVar(CLng(var_9A)) 'Long
  loc_1777472:     var_1BC = CVar(CLng(9)) 'Long
  loc_177749B:     var_1DC = CVar(CLng(var_9A)) 'Long
  loc_17774A3:     var_1FC = CVar(CLng(7)) 'Long
  loc_17774DD:     Set var_110 = Me.FGrid
  loc_17774F6:     var_2BC = Val(CStr(var_110.TextMatrix)))
  loc_1777519:     var_134 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2BC)) 'Double
  loc_1777538:     Call Proc_177_80_184BBB8(CStr(Me.FGrid.TextMatrix)), var_9A, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_2BC, CVar(CLng(&HF)), CVar(CLng(var_9A)))
  loc_1777567:   Else
  loc_177756B:     var_124 = CVar(CLng(var_9A)) 'Long
  loc_1777573:     var_17C = CVar(CLng(&H18)) 'Long
  loc_1777592:     var_19C = CVar(CLng(var_9A)) 'Long
  loc_177759A:     var_1BC = CVar(CLng(9)) 'Long
  loc_17775ED:     var_2A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_177762B:     Call Proc_177_80_184BBB8(CStr(Me.FGrid.TextMatrix)), var_9A, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_2A4)), "0.00")), 1, 1, var_2A4, CVar(CLng(7)), CVar(CLng(var_9A)))
  loc_1777651:   End If
  loc_1777654: Next var_2B0 'Integer
  loc_177765D: Set var_B8 = Me.TopCtrl1
  loc_1777663: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1777677: Set var_C4 = Me.TopCtrl1
  loc_177767D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_17776A3: If ( Or (CStr() = "Edit")) Then
  loc_17776B2:   Set var_B8 = Me.TxtGt
  loc_17776B8:   Call 0.Method_Proc_177_76_1777D688 (var_BA, var_9A)
  loc_17776C3:   For var_2C0 =  To var_BA: 2 = var_2C0 'Integer
  loc_17776D6:     Set var_B8 = Me.TxtPer
  loc_17776DC:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_17776E4:     var_BA = var_C4.Visible
  loc_1777700:     Set var_10C = Me.LblCap
  loc_1777706:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110)
  loc_177770E:     var_C8 = var_110.Tag
  loc_177774F:     If CBool((var_BA = &HFF) And (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "SCH"))) Then
  loc_1777758:       Call Proc_177_77_11FAD68(var_9A)
  loc_1777760:       var_A4 = var_294
  loc_1777770:       Set var_B8 = Me.TxtPer
  loc_1777776:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_177777E:       var_A4 = var_C4.Text
  loc_177778B:       var_294 = Val(var_C8)
  loc_17777CB:       Set var_10C = Me.TxtGt
  loc_17777D1:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, CStr(Format(CVar(((var_A4 * var_294) / CDbl(&H64))), "0.00")), 1)
  loc_17777D9:       var_110.Text = 1
  loc_177780B:       Set var_B8 = Me.LblDummy
  loc_1777811:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, CStr(var_A4))
  loc_1777819:       var_C4.Caption = var_294
  loc_1777828:     End If
  loc_177782B:   Next var_2C0 'Integer
  loc_1777830: End If
  loc_177784F: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1777865:   Me.FGCat.FixedRows = 1
  loc_177786D: End If
  loc_177789B: For var_2C4 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_9C = var_2C4 'Integer
  loc_17778AD:   Set var_B8 = Me.TxtGt
  loc_17778B3:   Call 0.Method_Proc_177_76_1777D688 (var_BA, var_9A, 1)
  loc_17778BE:   For var_2C8 = CDbl(0) To var_BA: 0 = var_2C8 'Integer
  loc_17778D1:     Set var_B8 = Me.LblCap
  loc_17778D7:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_17778DF:     var_C8 = var_C4.Tag
  loc_17778ED:     var_E8 = Trim(CVar(var_C8))
  loc_17778F9:     var_124 = CVar(CLng(var_9C)) 'Long
  loc_1777941:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1777951:       Set var_B8 = Me.TxtGt
  loc_1777957:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_177795F:       var_124 = var_C4.Text
  loc_177796C:       var_294 = Val(var_C8)
  loc_1777973:       var_124 = CVar(CLng(var_9C)) 'Long
  loc_177799D:       var_29C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17779BC:       var_E8 = CVar((var_294 + var_29C)) 'Double
  loc_17779D9:       Set var_110 = Me.TxtGt
  loc_17779DF:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_138, CStr(Format(var_E8, "0.00")), 1, 1, var_29C)
  loc_17779E7:       var_138.Text = CVar(CLng(6))
  loc_1777A0D:     End If
  loc_1777A10:   Next var_2C8 'Integer
  loc_1777A18: Next var_2C4 'Integer
  loc_1777A29: Set var_B8 = Me.TxtGt
  loc_1777A2F: Call 0.Method_Proc_177_76_1777D688 (var_BA, var_9A)
  loc_1777A3A: For var_2CC =  To var_BA: 2 = var_2CC 'Integer
  loc_1777A4D:   Set var_B8 = Me.LblCap
  loc_1777A53:   Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4)
  loc_1777A63:   var_D8 = CVar(var_C4.Tag) 'String
  loc_1777A8E:   If (Trim(var_D8) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1777A97:     Call Proc_177_77_11FAD68(var_9A)
  loc_1777A9F:     var_A4 = var_294
  loc_1777ABA:     Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, CStr(var_A4))
  loc_1777AC2:     var_C4.Caption = var_A4
  loc_1777AE7:     unk_523D48.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_D8, -1
  loc_1777AF2:     Set var_88 = Me.LblDummy
  loc_1777B0F:     If (var_88.RecordCount > 0) Then
  loc_1777B21:       var_B8 = var_88.Fields
  loc_1777B29:       var_C4 = var_B8.Item("RoundOffType")
  loc_1777B55:       Proc_6_85_1261068(var_A4, CByte(2), CStr(Left(CVar(var_C4), 1)))
  loc_1777B92:       Set var_10C = Me.TxtGt
  loc_1777B98:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, CStr(Format(CVar(var_B8), "0.00")), 1)
  loc_1777BA0:       var_110.Text = 1
  loc_1777BC5:     Else
  loc_1777BC8:       var_C8 = "S"
  loc_1777BD9:       Proc_6_85_1261068(var_A4, CByte(2), var_C8)
  loc_1777C08:       var_114 = CStr(Format(CVar(var_294), "0.00"))
  loc_1777C16:       Set var_B8 = Me.TxtGt
  loc_1777C1C:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_114, 1)
  loc_1777C24:       var_C4.Text = 1
  loc_1777C40:     End If
  loc_1777C43:   Else
  loc_1777C4A:     If (var_9A <> arg_C) Then
  loc_1777C5A:       Set var_B8 = Me.LblCap
  loc_1777C60:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, var_C8)
  loc_1777C68:       var_294 = var_C4.Tag
  loc_1777C9A:       Set var_10C = Me.LblCap
  loc_1777CA0:       Call 0.Method_Proc_177_76_1777D680 (var_9A, var_110, var_114)
  loc_1777CA8:       (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "TOT")) = var_110.Tag
  loc_1777CED:       If CBool(var_294 Or (Trim(CVar(var_114)) = CVar(MemVar_1F92078 & "NET"))) Then
  loc_1777CF6:         Call Proc_177_77_11FAD68(var_9A)
  loc_1777D30:         Set var_B8 = Me.TxtGt
  loc_1777D36:         Call 0.Method_Proc_177_76_1777D680 (var_9A, var_C4, CStr(Format(CVar(var_294), "0.00")))
  loc_1777D3E:         var_C4.Text = 1
  loc_1777D56:       End If
  loc_1777D56:     End If
  loc_1777D56:   End If
  loc_1777D59: Next var_2CC 'Integer
  loc_1777D63: Set var_88 = Nothing
  loc_1777D66: Exit Sub
End Sub

Public Sub Proc_177_77_11FAD68(arg_C) '11FAD68
  'Data Table: 523D28
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_12C As Variant
  Dim var_13C As Label
  Dim var_8C As Double
  Dim var_D0 As Variant
  Dim var_164 As Variant
  loc_11FA8F1: Set var_A8 = Me.TxtGt
  loc_11FA8F7: Call 0.Method_Proc_177_77_11FAD680 (arg_C, var_AC)
  loc_11FA916: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11FA934: Set var_A8 = Me.LblCap
  loc_11FA93A: Call 0.Method_Proc_177_77_11FAD680 (arg_C, var_AC)
  loc_11FA964: If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_11FA98C:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_11FA996:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FA99E:     var_108 = CVar(CLng(&H1B)) 'Long
  loc_11FA9C9:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11FA9D0:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FA9D8:       var_108 = CVar(CLng(&HA)) 'Long
  loc_11FAA04:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FAA10:     End If
  loc_11FAA13:   Next var_D8 'Integer
  loc_11FAA1B: Else
  loc_11FAA40:   For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_124 'Integer
  loc_11FAA4A:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_11FAA52:     var_108 = CVar(CLng(&HA)) 'Long
  loc_11FAA7E:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11FAA8D:   Next var_124 'Integer
  loc_11FAA92: End If
  loc_11FAA9C: If (Len(var_90) > 0) Then
  loc_11FAACE:   Set var_A8 = Me.LblCap
  loc_11FAAD4:   Call 0.Method_Proc_177_77_11FAD680 (arg_C, var_AC)
  loc_11FAAEB:   var_D4 = MemVar_1F92078 & "SCH"
  loc_11FAAFD:   Set var_128 = Me.LblCap
  loc_11FAB03:   Call 0.Method_Proc_177_77_11FAD680 (arg_C, var_12C, var_130)
  loc_11FAB0B:   (var_AC.Tag = var_D4) = var_12C.Tag
  loc_11FAB2D:   Set var_138 = Me.LblCap
  loc_11FAB33:   Call 0.Method_Proc_177_77_11FAD680 (arg_C, var_13C)
  loc_11FAB7F:   If CBool( And (((Left(var_90, 1) = "1") Or (var_130 = MemVar_1F92078 & "ADD")) Or (var_13C.Tag = MemVar_1F92070 & "DED"))) Then
  loc_11FAB85:     var_8C = var_A0
  loc_11FAB8B:   Else
  loc_11FABA3:     var_B0 = CStr(Left(var_90, 1))
  loc_11FABBD:     Set var_A8 = Me.TxtGt
  loc_11FABC3:     Call 0.Method_Proc_177_77_11FAD680 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_11FABCB:     var_120 = var_AC.Text
  loc_11FABD8:     var_8C = Val(var_D4)
  loc_11FABEC:   End If
  loc_11FAC0D:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FAC17:   ' Referenced from: 11FAD5C
  loc_11FAC21:   If (Len(var_90) > 0) Then
  loc_11FAC64:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FACAE:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_11FACC5:     Set var_A8 = Me.TxtGt
  loc_11FACCB:     Call 0.Method_Proc_177_77_11FAD680 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_11FACE0:     var_120 = Val(var_B0)
  loc_11FACF7:     Set var_128 = Me.TxtGt
  loc_11FACFD:     Call 0.Method_Proc_177_77_11FAD680 (var_AC.Text, var_12C, var_D4, CVar(var_8C))
  loc_11FAD13:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_11FAD26:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_11FAD35:     var_164 = (var_8C + IIf(var_90, CVar(var_12C.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_11FAD3A:     var_8C = CSng(var_164)
  loc_11FAD5C:     GoTo loc_11FAC17
  loc_11FAD5F:   End If
  loc_11FAD5F: End If
  loc_11FAD5F: Proc_177_77_11FAD68 = var_8C
End Sub

Public Sub Proc_177_78_103A5DC(arg_C, arg_10, arg_14) '103A5DC
  'Data Table: 523D28
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_F0 As Variant
  loc_103A3BD: var_88 = vbNullString
  loc_103A3D4: arg_C = CStr(Trim(arg_C))
  loc_103A3E0: var_8A = CInt(Len(arg_C))
  loc_103A3E6: var_C0 = arg_10
  loc_103A3F1: If (var_C0 = "A") Then
  loc_103A426:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_103A43A:   var_100 = (var_E0 + Chr(&H1B))
  loc_103A443:   var_110 = (var_100 + "G")
  loc_103A450:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103A46A:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_103A474:   var_190 = (var_170 + CVar(arg_C))
  loc_103A488:   var_1B0 = (var_190 + Chr(&H1B))
  loc_103A491:   var_1D0 = (var_1B0 + "H")
  loc_103A496:   var_88 = CStr(var_1D0)
  loc_103A4B7: Else
  loc_103A4BF:   If (var_C0 = "D") Then
  loc_103A4F4:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_103A501:     var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103A51B:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103A525:     var_150 = (var_130 + CVar(arg_C))
  loc_103A52A:     var_88 = CStr((var_130 / 2))
  loc_103A53F:   Else
  loc_103A547:     If (var_C0 = "E") Then
  loc_103A574:       var_E0 = (Chr(&H12) + Chr(&HF))
  loc_103A581:       var_F0 = (CVar(arg_14) - CVar(var_8A))
  loc_103A59B:       var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103A5A5:       var_150 = (var_130 + CVar(arg_C))
  loc_103A5B9:       var_170 = ((var_130 / 2) + Chr(&H12))
  loc_103A5BE:       var_88 = CStr(var_170)
  loc_103A5D4:     End If
  loc_103A5D4:   End If
  loc_103A5D4: End If
  loc_103A5D4: Proc_177_78_103A5DC = var_8A
End Sub

Public Sub Proc_177_79_12524A0(arg_C, arg_10, arg_14) '12524A0
  'Data Table: 523D28
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_523D48 As Connection15
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_288 As Double
  Dim var_E4 As Variant
  Dim var_18C As Variant
  Dim var_D4 As Variant
  Dim arg_10 As Integer
  loc_1251FA5: var_90 = vbNullString
  loc_1251FAB: var_94 = vbNullString
  loc_1251FB1: var_98 = vbNullString
  loc_1251FB7: var_9C = vbNullString
  loc_1251FC2: If (MemVar_1F923C0 = "Y") Then
  loc_1251FCC:   var_E8 = vbNullString & "DATE "
  loc_1251FFD:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_1252010: End If
  loc_1252018: If (MemVar_1F923C4 = "Y") Then
  loc_125202A:   var_D4 = "dd/MM/yy"
  loc_125207C:   var_16C = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_D4)))), 0))
  loc_12520A3:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12520AB:   var_1DC = (var_16C - Len(var_1BC))
  loc_12520BC:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_12520C5:   var_22C = (var_20C + " PAGE NO ")
  loc_12520E7:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_12520EC:   var_8C = CStr(var_26C)
  loc_1252119: End If
  loc_1252146: unk_523D48.Execute "Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R  Where R.CODE='" & global_60 & "'", var_D4, -1
  loc_1252151: Set var_A0 = var_270
  loc_1252168: If (MemVar_1F923C8 = "K") Then
  loc_12521A7:   If (var_A0.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_12521B4:     If (Len(MemVar_1F92130) <= &H1E) Then
  loc_12521C4:       var_288 = Val(CStr(arg_14))
  loc_12521E0:       Call Proc_177_78_103A5DC(MemVar_1F92130, "D", CInt(var_288))
  loc_12521E9:       var_90 = var_280 & var_280
  loc_12521F8:     Else
  loc_125220E:       var_E4 = (CVar(var_90) + Chr(&H12))
  loc_1252222:       var_13C = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_1252236:       var_16C = (0 + Chr(&HF))
  loc_1252240:       var_18C = (var_16C + CVar(MemVar_1F92130))
  loc_1252254:       var_1BC = (Str(arg_C) + Chr(&H12))
  loc_1252259:       var_90 = CStr(var_1BC)
  loc_1252271:     End If
  loc_1252271:   End If
  loc_1252285:   If (var_A0.RecordCount > 0) Then
  loc_1252297:     var_270 = var_A0.Fields
  loc_12522C1:     If (Proc_6_38_E68A98(CVar(var_270.Item("Header1")), var_90, var_288, var_270) <> vbNullString) Then
  loc_12522F8:       var_288 = Val(CStr(arg_14))
  loc_1252319:       Call Proc_177_78_103A5DC(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_288))
  loc_1252322:       var_94 = var_290 & var_290
  loc_125233A:     End If
  loc_1252373:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Header2")), var_94, var_288, 1) <> vbNullString) Then
  loc_12523CB:       Call Proc_177_78_103A5DC(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_12523D4:       var_98 = var_290 & var_290
  loc_12523EC:     End If
  loc_12523EC:   End If
  loc_12523EC: End If
  loc_12523F6: If (Len(var_8C) > 0) Then
  loc_12523FE:   Print 1, var_8C
  loc_125240A:   arg_10 = (arg_10 + 1)
  loc_125240D: End If
  loc_1252417: If (Len(var_90) > 0) Then
  loc_125241F:   Print 1, var_90
  loc_125242B:   arg_10 = (arg_10 + 1)
  loc_125242E: End If
  loc_1252438: If (Len(var_94) > 0) Then
  loc_1252440:   Print 1, var_94
  loc_125244C:   arg_10 = (arg_10 + 1)
  loc_125244F: End If
  loc_1252459: If (Len(var_98) > 0) Then
  loc_1252461:   Print 1, var_98
  loc_125246D:   arg_10 = (arg_10 + 1)
  loc_1252470: End If
  loc_125247A: If (Len(var_9C) > 0) Then
  loc_1252482:   Print 1, var_9C
  loc_125248E:   arg_10 = (arg_10 + 1)
  loc_1252491: End If
  loc_1252497: Proc_177_79_12524A0 = arg_10
End Sub

Public Sub Proc_177_80_184BBB8(arg_C, arg_10, arg_14) '184BBB8
  'Data Table: 523D28
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_523D48 As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_124 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Variant
  Dim var_1FC As Variant
  Dim var_114 As Field20
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_220 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_1C0 As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_1849700: unk_523D48.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_184970B: Set var_D8 = var_10C
  loc_184972F: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_184973F: unk_523D48.Execute var_E4 & "'", var_108, -1
  loc_184974A: Set var_8C = var_10C
  loc_184976E: If (var_D8.RecordCount > 0) Then
  loc_1849786:   var_10C = var_D8.Fields
  loc_184978E:   var_114 = var_10C.Item("RestCode")
  loc_18497AD:   If (var_10C <> Proc_6_38_E68A98(CVar(var_114), global_60)) Then
  loc_18497B2:     var_DA = &HFF
  loc_18497B8:   Else
  loc_18497BA:     var_DA = 0
  loc_18497BD:   End If
  loc_18497C0: Else
  loc_18497C2:   var_DA = 0
  loc_18497C5: End If
  loc_18497C8: var_94 = arg_14
  loc_18497CD: var_86 = 1
  loc_18497DB: If (global_216 = "Room Service") Then
  loc_18497FB:   Set var_10C = Me.Txt
  loc_1849801:   Call 0.Method_Proc_177_80_184BBB80 (CInt(&HA), var_114, "Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8)
  loc_1849810:   Proc_6_39_E7C810(var_124, CVar(var_114), var_86, var_94)
  loc_1849821:   var_154 = var_DA & var_124 & " and LogSite_Code='" 
  loc_1849842:   unk_523D48.Execute CStr(var_154 & CVar(MemVar_1F92078) & "'"), var_DA, var_DA
  loc_184984D:   Set var_C0 = var_1B8
  loc_184986B: End If
  loc_184986E: var_A8 = var_94
  loc_1849874: var_B0 = var_94
  loc_184987A: var_B8 = CDbl(0)
  loc_1849891: If (var_8C.RecordCount > 0) Then
  loc_1849894:   ' Referenced from: 184BB8C
  loc_18498A3:   If Not(var_8C.EOF) Then
  loc_18498AA:     Set var_1C0 = Me.FGCat
  loc_18498AD:     var_F8 = vbNullString
  loc_18498D2:     If (var_8C.RecordCount > 0) Then
  loc_18498DB:       var_D2 = (var_D2 + 1)
  loc_18498E1:       var_F8 = "Nature"
  loc_1849914:       var_1D0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8))) 'Variant
  loc_184992D:       If (var_1D0 = "On Base Amt") Then
  loc_1849958:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B8, var_B0)) 'String
  loc_184997A:         If (Trim(var_124) = "Room Rate") Then
  loc_1849988:           If (global_216 = "Room Service") Then
  loc_18499B1:             Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")))
  loc_18499DF:             Proc_6_39_E7C810(var_154, CVar(var_C0.Fields.Item("RoomRate")), var_124)
  loc_18499E7:             var_174 = (var_A8 <= var_154)
  loc_1849A11:             Proc_6_39_E7C810(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_1849A41:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_1849A84:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1849AC2:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1849AD5:               Else
  loc_1849B08:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1849B31:                 Proc_6_142_14A55B0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_1849B36:                 var_D0 = var_210
  loc_1849B4A:               End If
  loc_1849B51:               If (var_D0 > CDbl(0)) Then
  loc_1849B6D:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849B75:                 var_164 = CVar(CLng(0)) 'Long
  loc_1849B7F:                 var_124 = CVar(CStr(var_86)) 'String
  loc_1849B86:                 LateIdCallSt
  loc_1849BB1:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849BB9:                 var_164 = CVar(CLng(1)) 'Long
  loc_1849BC3:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_1849BCA:                 LateIdCallSt
  loc_1849BE2:                 If (var_DA = 0) Then
  loc_1849BE9:                   Set var_1B8 = Me.FGCat
  loc_1849BFE:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1849C06:                   var_184 = CVar(CLng(2)) 'Long
  loc_1849C36:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1849C3D:                   LateIdCallSt
  loc_1849C5A:                 Else
  loc_1849C75:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F92078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_1849CB3:                   var_134 = CVar(var_E8 & global_60 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1849CCA:                   unk_523D48.Execute CStr(var_134 & "')"), var_174, -1
  loc_1849CD5:                   Set var_E0 = var_1B8
  loc_1849D0D:                   If (var_E0.RecordCount > 0) Then
  loc_1849D29:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849D31:                     var_184 = CVar(CLng(2)) 'Long
  loc_1849D61:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1849D68:                     LateIdCallSt
  loc_1849D82:                   End If
  loc_1849D82:                 End If
  loc_1849D9B:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849DA3:                 var_184 = CVar(CLng(3)) 'Long
  loc_1849DD3:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1849DDA:                 LateIdCallSt
  loc_1849E0D:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849E15:                 var_164 = CVar(CLng(4)) 'Long
  loc_1849E1F:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_1849E26:                 LateIdCallSt
  loc_1849E51:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849E59:                 var_184 = CVar(CLng(5)) 'Long
  loc_1849E89:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1849E90:                 LateIdCallSt
  loc_1849EEE:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849EF6:                 var_248 = CVar(CLng(6)) 'Long
  loc_1849F00:                 var_174 = 0
  loc_1849F3A:                 var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_174, 2))))) 'String
  loc_1849F41:                 LateIdCallSt
  loc_1849F7E:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1849F86:                 var_184 = CVar(CLng(7)) 'Long
  loc_1849FB6:                 var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1849FBD:                 LateIdCallSt
  loc_1849FDA:               Else
  loc_1849FE0:                 var_86 = (var_86 - 1)
  loc_1849FF6:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184A00C:               End If
  loc_184A025:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A02D:               var_164 = CVar(CLng(6)) 'Long
  loc_184A052:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184A07B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A083:               var_164 = CVar(CLng(6)) 'Long
  loc_184A09E:               var_204 = Val(CStr(var_1C0.TextMatrix)))
  loc_184A0A8:               var_94 = (var_94 + var_204)
  loc_184A0BF:               var_B0 = (var_B0 + var_D0)
  loc_184A0C5:               var_B8 = var_D0
  loc_184A0CF:               var_B0 = (var_B0 + var_D0)
  loc_184A0D5:               var_B8 = var_D0
  loc_184A0D8:             End If
  loc_184A0D8:           End If
  loc_184A0DB:         Else
  loc_184A101:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_184A11B:           If (var_124 = "No") Then
  loc_184A159:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_184A16C:           Else
  loc_184A1C8:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184A1CD:             var_D0 = var_B8
  loc_184A1E1:           End If
  loc_184A207:           Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_184A21E:           var_164 = "Rate"
  loc_184A241:           Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item(var_164)), (var_124 <= CVar(var_94)), var_204)
  loc_184A26B:           If CBool(var_164 And (var_174 > 0)) Then
  loc_184A275:             If (var_D0 > CDbl(0)) Then
  loc_184A291:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A299:               var_164 = CVar(CLng(0)) 'Long
  loc_184A2A3:               var_124 = CVar(CStr(var_86)) 'String
  loc_184A2AA:               LateIdCallSt
  loc_184A2D5:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A2DD:               var_164 = CVar(CLng(1)) 'Long
  loc_184A2E7:               var_124 = CVar(CStr(arg_10)) 'String
  loc_184A2EE:               LateIdCallSt
  loc_184A306:               If (var_DA = 0) Then
  loc_184A30D:                 Set var_1B8 = Me.FGCat
  loc_184A322:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184A32A:                 var_184 = CVar(CLng(2)) 'Long
  loc_184A35A:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184A361:                 LateIdCallSt
  loc_184A37E:               Else
  loc_184A395:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_184A3C9:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184A3E0:                 unk_523D48.Execute CStr(var_134 & "')"), var_174, -1
  loc_184A3EB:                 Set var_E0 = var_1B8
  loc_184A41F:                 If (var_E0.RecordCount > 0) Then
  loc_184A43B:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A443:                   var_184 = CVar(CLng(2)) 'Long
  loc_184A473:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_184A47A:                   LateIdCallSt
  loc_184A494:                 End If
  loc_184A494:               End If
  loc_184A4AD:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A4B5:               var_184 = CVar(CLng(3)) 'Long
  loc_184A4E5:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184A4EC:               LateIdCallSt
  loc_184A51F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A527:               var_164 = CVar(CLng(4)) 'Long
  loc_184A531:               var_124 = CVar(CStr(var_A8)) 'String
  loc_184A538:               LateIdCallSt
  loc_184A563:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A56B:               var_184 = CVar(CLng(5)) 'Long
  loc_184A59B:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184A5A2:               LateIdCallSt
  loc_184A600:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A612:               var_174 = 0
  loc_184A653:               LateIdCallSt
  loc_184A690:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A6C5:               var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_174, 2))))), CVar(CLng(6)), var_220)) 'String
  loc_184A6CC:               LateIdCallSt
  loc_184A6E4:             End If
  loc_184A6FD:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A705:             var_164 = CVar(CLng(6)) 'Long
  loc_184A72A:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184A753:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A75B:             var_164 = CVar(CLng(6)) 'Long
  loc_184A776:             var_204 = Val(CStr(var_1C0.TextMatrix)))
  loc_184A780:             var_94 = (var_94 + var_204)
  loc_184A797:             var_B0 = (var_B0 + var_D0)
  loc_184A79D:             var_B8 = var_D0
  loc_184A7A0:           End If
  loc_184A7A0:         End If
  loc_184A7A3:       Else
  loc_184A7AE:         If (var_1D0 = "On Running Total") Then
  loc_184A7D7:           var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_184A7F1:           If (var_124 = "No") Then
  loc_184A82F:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_184A842:           Else
  loc_184A89E:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184A8A3:             var_D0 = var_94
  loc_184A8B7:           End If
  loc_184A8DD:           Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item("Rate")), var_D0, var_204, var_164)
  loc_184A8F7:           If (var_124 > 0) Then
  loc_184A901:             If (var_D0 > CDbl(0)) Then
  loc_184A91D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A925:               var_164 = CVar(CLng(0)) 'Long
  loc_184A92F:               var_124 = CVar(CStr(var_86)) 'String
  loc_184A936:               LateIdCallSt
  loc_184A961:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184A969:               var_164 = CVar(CLng(1)) 'Long
  loc_184A973:               var_124 = CVar(CStr(arg_10)) 'String
  loc_184A97A:               LateIdCallSt
  loc_184A992:               If (var_DA = 0) Then
  loc_184A999:                 Set var_1B8 = Me.FGCat
  loc_184A9AE:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184A9B6:                 var_184 = CVar(CLng(2)) 'Long
  loc_184A9E6:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184A9ED:                 LateIdCallSt
  loc_184AA0A:               Else
  loc_184AA21:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_184AA55:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184AA6C:                 unk_523D48.Execute CStr(var_134 & "')"), var_174, -1
  loc_184AA77:                 Set var_E0 = var_1B8
  loc_184AAAB:                 If (var_E0.RecordCount > 0) Then
  loc_184AAC7:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AACF:                   var_184 = CVar(CLng(2)) 'Long
  loc_184AAFF:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_184AB06:                   LateIdCallSt
  loc_184AB20:                 End If
  loc_184AB20:               End If
  loc_184AB39:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AB41:               var_184 = CVar(CLng(3)) 'Long
  loc_184AB71:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184AB78:               LateIdCallSt
  loc_184ABAB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184ABB3:               var_164 = CVar(CLng(4)) 'Long
  loc_184ABBD:               var_124 = CVar(CStr(var_B0)) 'String
  loc_184ABC4:               LateIdCallSt
  loc_184ABEF:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184ABF7:               var_184 = CVar(CLng(5)) 'Long
  loc_184AC27:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184AC2E:               LateIdCallSt
  loc_184AC8C:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AC94:               var_248 = CVar(CLng(6)) 'Long
  loc_184AC9E:               var_174 = 0
  loc_184ACD8:               var_268 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), var_174, 2))))) 'String
  loc_184ACDF:               LateIdCallSt
  loc_184AD1C:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AD24:               var_184 = CVar(CLng(7)) 'Long
  loc_184AD54:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_184AD5B:               LateIdCallSt
  loc_184AD75:             End If
  loc_184AD8E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AD96:             var_164 = CVar(CLng(6)) 'Long
  loc_184ADBB:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184ADE4:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184ADEC:             var_164 = CVar(CLng(6)) 'Long
  loc_184AE11:             var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_184AE28:             var_B0 = (var_B0 + var_D0)
  loc_184AE2E:             var_B8 = var_D0
  loc_184AE31:           End If
  loc_184AE34:         Else
  loc_184AE3F:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_184AE82:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_184AEC0:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_184AED3:             Else
  loc_184AF2F:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184AF34:               var_D0 = var_94
  loc_184AF48:             End If
  loc_184AF4F:             If (var_D0 > CDbl(0)) Then
  loc_184AF6B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AF73:               var_164 = CVar(CLng(0)) 'Long
  loc_184AF7D:               var_124 = CVar(CStr(var_86)) 'String
  loc_184AF84:               LateIdCallSt
  loc_184AFAF:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184AFB7:               var_164 = CVar(CLng(1)) 'Long
  loc_184AFC1:               var_124 = CVar(CStr(arg_10)) 'String
  loc_184AFC8:               LateIdCallSt
  loc_184AFE0:               If (var_DA = 0) Then
  loc_184AFE7:                 Set var_1B8 = Me.FGCat
  loc_184AFFC:                 var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184B004:                 var_184 = CVar(CLng(2)) 'Long
  loc_184B034:                 var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184B03B:                 LateIdCallSt
  loc_184B058:               Else
  loc_184B06F:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_184B0A3:                 var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184B0BA:                 unk_523D48.Execute CStr(var_134 & "')"), var_174, -1
  loc_184B0C5:                 Set var_E0 = var_1B8
  loc_184B0F9:                 If (var_E0.RecordCount > 0) Then
  loc_184B115:                   var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B11D:                   var_184 = CVar(CLng(2)) 'Long
  loc_184B14D:                   var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_184B154:                   LateIdCallSt
  loc_184B16E:                 End If
  loc_184B16E:               End If
  loc_184B187:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B18F:               var_184 = CVar(CLng(3)) 'Long
  loc_184B1BF:               var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184B1C6:               LateIdCallSt
  loc_184B1F9:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B201:               var_164 = CVar(CLng(4)) 'Long
  loc_184B20B:               var_124 = CVar(CStr(var_B8)) 'String
  loc_184B212:               LateIdCallSt
  loc_184B23D:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B245:               var_184 = CVar(CLng(5)) 'Long
  loc_184B275:               var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184B27C:               LateIdCallSt
  loc_184B2D6:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B2DE:               var_248 = CVar(CLng(6)) 'Long
  loc_184B2E3:               var_174 = 2
  loc_184B322:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_184B329:               LateIdCallSt
  loc_184B366:               var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B36E:               var_184 = CVar(CLng(7)) 'Long
  loc_184B39E:               var_134 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_184B3A5:               LateIdCallSt
  loc_184B3BF:             End If
  loc_184B3D8:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B3E0:             var_164 = CVar(CLng(6)) 'Long
  loc_184B405:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184B42E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B436:             var_164 = CVar(CLng(6)) 'Long
  loc_184B451:             var_204 = Val(CStr(var_1C0.TextMatrix)))
  loc_184B45B:             var_94 = (var_94 + var_204)
  loc_184B472:             var_B0 = (var_B0 + var_D0)
  loc_184B478:             var_B8 = var_D0
  loc_184B47E:           Else
  loc_184B4A4:             var_124 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_184B4BE:             If (var_124 = "No") Then
  loc_184B4FC:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_184B50F:             Else
  loc_184B56B:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184B570:               var_D0 = var_94
  loc_184B584:             End If
  loc_184B587:             var_F8 = "Limit"
  loc_184B5AA:             Proc_6_39_E7C810(var_124, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_204, var_164)
  loc_184B5E4:             Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item("Rate")), (var_124 <= CVar(var_94)), var_F8)
  loc_184B60E:             If CBool(var_9C And (var_174 > 0)) Then
  loc_184B618:               If (var_D0 > CDbl(0)) Then
  loc_184B634:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B63C:                 var_164 = CVar(CLng(0)) 'Long
  loc_184B646:                 var_124 = CVar(CStr(var_86)) 'String
  loc_184B64D:                 LateIdCallSt
  loc_184B678:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B680:                 var_164 = CVar(CLng(1)) 'Long
  loc_184B68A:                 var_124 = CVar(CStr(arg_10)) 'String
  loc_184B691:                 LateIdCallSt
  loc_184B6A9:                 If (var_DA = 0) Then
  loc_184B6B0:                   Set var_1B8 = Me.FGCat
  loc_184B6C5:                   var_144 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184B6CD:                   var_184 = CVar(CLng(2)) 'Long
  loc_184B6FD:                   var_134 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184B704:                   LateIdCallSt
  loc_184B721:                 Else
  loc_184B738:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_60
  loc_184B76C:                   var_134 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_184B783:                   unk_523D48.Execute CStr(var_134 & "')"), var_174, -1
  loc_184B78E:                   Set var_E0 = var_1B8
  loc_184B7C2:                   If (var_E0.RecordCount > 0) Then
  loc_184B7DE:                     var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B7E6:                     var_184 = CVar(CLng(2)) 'Long
  loc_184B816:                     var_134 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_184B81D:                     LateIdCallSt
  loc_184B837:                   End If
  loc_184B837:                 End If
  loc_184B850:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B858:                 var_184 = CVar(CLng(3)) 'Long
  loc_184B888:                 var_134 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184B88F:                 LateIdCallSt
  loc_184B8C2:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B8CA:                 var_164 = CVar(CLng(4)) 'Long
  loc_184B8D4:                 var_124 = CVar(CStr(var_A8)) 'String
  loc_184B8DB:                 LateIdCallSt
  loc_184B906:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B90E:                 var_184 = CVar(CLng(5)) 'Long
  loc_184B93E:                 var_134 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184B945:                 LateIdCallSt
  loc_184B9A3:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184B9F6:                 LateIdCallSt
  loc_184BA33:                 var_144 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184BA68:                 var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_220)) 'String
  loc_184BA6F:                 LateIdCallSt
  loc_184BA87:               End If
  loc_184BAA0:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184BAA8:               var_164 = CVar(CLng(6)) 'Long
  loc_184BACD:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184BAF6:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184BAFE:               var_164 = CVar(CLng(6)) 'Long
  loc_184BB23:               var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_184BB3A:               var_B0 = (var_B0 + var_D0)
  loc_184BB40:               var_B8 = var_D0
  loc_184BB43:             End If
  loc_184BB43:           End If
  loc_184BB43:         End If
  loc_184BB43:       End If
  loc_184BB43:     End If
  loc_184BB49:     var_86 = (var_86 + 1)
  loc_184BB4E:     Set var_1C0 = Nothing 
  loc_184BB56:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_184BB5E:     var_164 = CVar(CLng(&H11)) 'Long
  loc_184BB68:     var_108 = CVar(CStr(var_9C)) 'String
  loc_184BB70:     Set var_10C = Me.FGrid
  loc_184BB76:     LateIdCallSt
  loc_184BB87:     var_8C.MoveNext
  loc_184BB8C:     GoTo loc_1849894
  loc_184BB8F:   End If
  loc_184BB94:   Set var_8C = Nothing
  loc_184BB9C:   Set var_C4 = Nothing
  loc_184BBA4:   Set var_C0 = Nothing
  loc_184BBAC:   Set var_D8 = Nothing
  loc_184BBB4:   Set var_E0 = Nothing
  loc_184BBB7: End If
  loc_184BBB7: Exit Sub
End Sub

Public Sub Proc_177_81_F27340(arg_C, arg_10) 'F27340
  'Data Table: 523D28
  Dim unk_523D48 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F27281: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F272B6: unk_523D48.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(global_228) & "' Order by Appdate Desc"), -1, var_15C
  loc_F272C1: Set var_90 = var_15C
  loc_F272F3: If (var_90.RecordCount > 0) Then
  loc_F27321:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F27331: Else
  loc_F27334:   var_8C = CDbl(0)
  loc_F27337: End If
  loc_F27337: Proc_177_81_F27340 = var_8C
  loc_F2733D: StAryRecMove
End Sub

Public Sub Proc_177_82_DFB5E4
  'Data Table: 523D28
  loc_DFB5E0: Exit Sub
  loc_DFB5E1: () = 
End Sub

Public Sub Proc_177_83_DFB30C
  'Data Table: 523D28
  loc_DFB308: Exit Sub
  loc_DFB309: () = 
End Sub

Public Sub Proc_177_84_131668C
  'Data Table: 523D28
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_523D48 As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_154 As Field20
  Dim var_1C8 As Variant
  Dim var_184 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_22C As Variant
  Dim var_94 As Double
  loc_1315F81: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_1315F8B:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315F93:   var_100 = CVar(CLng(8)) 'Long
  loc_1315FB5:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1315FC5:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1315FCD:   var_100 = CVar(CLng(&H18)) 'Long
  loc_1316000:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_1316010:   unk_523D48.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_131601B:   Set var_8C = var_140
  loc_1316049:   If (var_8C.RecordCount > 0) Then
  loc_131604F:     var_A4 = CDbl(0)
  loc_1316052:     ' Referenced from: 13161EE
  loc_1316061:     If Not(var_8C.EOF) Then
  loc_13160B3:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + Val(CStr(var_8C.Fields.Item("Rate").Value)))) * CDbl(&H64))
  loc_13160CB:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13160D3:       var_100 = CVar(CLng(7)) 'Long
  loc_13161A1:       var_28C = Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_13161AA:       var_AC = CSng(var_28C)
  loc_13161D9:       var_A4 = (var_AC + var_A4)
  loc_13161E3:       var_B4 = (var_B4 + var_AC)
  loc_13161E9:       var_8C.MoveNext
  loc_13161EE:       GoTo loc_1316052
  loc_13161F1:     End If
  loc_13161F5:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_13161FD:     var_100 = CVar(CLng(&H1C)) 'Long
  loc_1316228:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_131622F:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_1316237:       var_110 = CVar(CLng(9)) 'Long
  loc_1316255:       var_13C = CVar(CStr(Round(var_9C, 2))) 'String
  loc_131625D:       Set var_BC = Me.FGrid
  loc_1316263:       LateIdCallSt
  loc_1316279:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316281:       var_100 = CVar(CLng(9)) 'Long
  loc_13162A0:       var_164 = CVar(CLng(var_86)) 'Long
  loc_13162A8:       var_1A4 = CVar(CLng(9)) 'Long
  loc_13162D5:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_13162DD:       Set var_140 = Me.FGrid
  loc_13162E3:       LateIdCallSt
  loc_1316303:       var_12C = CVar(CLng(var_86)) 'Long
  loc_131630B:       var_184 = CVar(CLng(7)) 'Long
  loc_1316334:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_131633C:       var_22C = CVar(CLng(&HA)) 'Long
  loc_1316345:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131634D:       var_100 = CVar(CLng(9)) 'Long
  loc_1316375:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_131637D:       Set var_154 = Me.FGrid
  loc_1316383:       LateIdCallSt
  loc_13163A8:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13163B0:       var_100 = CVar(CLng(&HA)) 'Long
  loc_13163DC:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13163EB:     Else
  loc_13163EF:       var_12C = CVar(CLng(var_86)) 'Long
  loc_13163F7:       var_184 = CVar(CLng(9)) 'Long
  loc_1316400:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316408:       var_100 = CVar(CLng(8)) 'Long
  loc_131642C:       var_13C = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1316434:       Set var_140 = Me.FGrid
  loc_131643A:       LateIdCallSt
  loc_1316457:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131645F:       var_100 = CVar(CLng(9)) 'Long
  loc_131647E:       var_164 = CVar(CLng(var_86)) 'Long
  loc_1316486:       var_1A4 = CVar(CLng(9)) 'Long
  loc_13164B3:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_13164BB:       Set var_140 = Me.FGrid
  loc_13164C1:       LateIdCallSt
  loc_13164E1:       var_12C = CVar(CLng(var_86)) 'Long
  loc_13164E9:       var_184 = CVar(CLng(7)) 'Long
  loc_1316512:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_131651A:       var_22C = CVar(CLng(&HA)) 'Long
  loc_1316523:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131652B:       var_100 = CVar(CLng(9)) 'Long
  loc_1316553:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_131655B:       Set var_154 = Me.FGrid
  loc_1316561:       LateIdCallSt
  loc_1316586:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_131658E:       var_100 = CVar(CLng(&HA)) 'Long
  loc_13165AD:       var_164 = CVar(CLng(var_86)) 'Long
  loc_13165B5:       var_1A4 = CVar(CLng(&HA)) 'Long
  loc_13165E2:       var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_13165EA:       Set var_140 = Me.FGrid
  loc_13165F0:       LateIdCallSt
  loc_1316610:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1316618:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1316644:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1316650:     End If
  loc_1316654:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_131665C:     var_100 = CVar(CLng(&H11)) 'Long
  loc_1316666:     var_CC = CVar(CStr(var_A4)) 'String
  loc_131666E:     Set var_BC = Me.FGrid
  loc_1316674:     LateIdCallSt
  loc_1316682:   End If
  loc_1316685: Next var_D0 'Integer
  loc_131668A: Exit Sub
End Sub

Public Sub Proc_177_85_108B030
  'Data Table: 523D28
  Dim Me As Recordset15
  Dim var_148 As Variant
  Dim var_218 As Variant
  Dim var_2E8 As Variant
  loc_108AE27: If (Me.RecordCount > 0) Then
  loc_108AE30:   Me.MoveFirst
  loc_108AEAB:   var_148 = (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING (THERMAL PRINT)") Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) INCH INCLUSIVE TAX (TVSRP3200)")
  loc_108AF29:   var_218 = var_148 Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING (TVSRP3200)") Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING DELAY (TVSRP3200)")
  loc_108AFA7:   var_2E8 = var_218 Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) INCH NO TAX (TVSRP3200)") Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL DOS PLAIN (3) PAPER RUNNING (WeP TX 40)")
  loc_108B01C:   If CBool(var_2E8 Or (Trim(CVar(Me.Fields.Item("ModDescription"))) = "BILL WINDOWS PLAIN PAPER RUNNING")) Then
  loc_108B01F:     Call Proc_177_65_13927AC()
  loc_108B027:   Else
  loc_108B027:     Call Proc_177_64_137FA98()
  loc_108B02C:   End If
  loc_108B02C: End If
  loc_108B02C: Exit Sub
End Sub
