VERSION 5.00
Begin VB.Form RsTokenEntry
  Caption = "Token Entry"
  BackColor = &HDEE6FE&
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 15240
  ClientHeight = 10935
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame FrTOKEN
    Caption = "Frame1"
    Left = 0
    Top = 0
    Width = 15225
    Height = 9060
    TabIndex = 13
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
      ForeColor = &HFF0000&
      Left = 3570
      Top = 720
      Width = 855
      Height = 240
      Enabled = 0   'False
      TabIndex = 45
      BorderStyle = 0 'None
      MaxLength = 30
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
    Begin CommandButton Command1
      Caption = "Command1"
      Left = 12225
      Top = 6495
      Width = 1740
      Height = 405
      Visible = 0   'False
      TabIndex = 44
    End
    Begin DataGrid DGMember
      Left = 12330
      Top = 3735
      Width = 6720
      Height = 3315
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 43
    End
    Begin TextBox Txt
      Index = 11
      ForeColor = &HFF0000&
      Left = 1455
      Top = 465
      Width = 5115
      Height = 240
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 75
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
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6585
      Top = 465
      Width = 1620
      Height = 240
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin MSFlexGrid FGPoint
      Left = 10110
      Top = 1800
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 25
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFC0&
      ForeColor = &H80000012&
      Left = 7500
      Top = 6975
      Width = 765
      Height = 240
      Visible = 0   'False
      TabIndex = 24
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
    Begin TextBox Txt
      Index = 1
      ForeColor = &HFF0000&
      Left = 4905
      Top = 720
      Width = 1095
      Height = 240
      TabIndex = 3
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
      Index = 0
      ForeColor = &HFF0000&
      Left = 1455
      Top = 720
      Width = 1200
      Height = 240
      TabIndex = 2
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
      Index = 3
      BackColor = &H80000000&
      Left = 9765
      Top = 120
      Width = 2325
      Height = 210
      Visible = 0   'False
      TabIndex = 23
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
      Index = 4
      ForeColor = &HFF0000&
      Left = 1455
      Top = 1230
      Width = 5115
      Height = 240
      Visible = 0   'False
      TabIndex = 5
      BorderStyle = 0 'None
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
      Index = 5
      ForeColor = &HFF0000&
      Left = 1455
      Top = 1485
      Width = 5115
      Height = 240
      Visible = 0   'False
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 2
      Left = 6015
      Top = 720
      Width = 555
      Height = 240
      TabIndex = 4
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
    Begin CheckBox ChkNCTOKEN
      Caption = "NC TOKEN "
      BackColor = &HDEE6FE&
      ForeColor = &HFF0000&
      Left = 6585
      Top = 1170
      Width = 1440
      Height = 240
      Visible = 0   'False
      TabIndex = 22
      Alignment = 1 'Right Justify
    End
    Begin TextBox Txt
      Index = 6
      ForeColor = &HFF0000&
      Left = 1455
      Top = 975
      Width = 5115
      Height = 240
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 7
      ForeColor = &HFF0000&
      Left = 7800
      Top = 1470
      Width = 2625
      Height = 240
      Visible = 0   'False
      TabIndex = 17
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 8
      ForeColor = &HFF0000&
      Left = 1140
      Top = 7350
      Width = 3480
      Height = 270
      Enabled = 0   'False
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 50
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
      ForeColor = &HFF0000&
      Left = 1140
      Top = 7650
      Width = 3480
      Height = 300
      Enabled = 0   'False
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 50
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
      ForeColor = &HFF0000&
      Left = 1140
      Top = 7980
      Width = 3480
      Height = 270
      Enabled = 0   'False
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin CommandButton cmdNCBill
      Caption = "Print &NC Bill"
      Left = 8460
      Top = 6750
      Width = 2985
      Height = 465
      Visible = 0   'False
      TabIndex = 12
    End
    Begin Frame FrmeDisc
      Caption = "Description"
      Left = 4200
      Top = 3720
      Width = 4695
      Height = 1695
      Visible = 0   'False
      TabIndex = 14
      Begin TextBox txtDisc
        Left = 145
        Top = 300
        Width = 4335
        Height = 240
        TabIndex = 15
        BorderStyle = 0 'None
        MaxLength = 35
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
    End
    Begin Timer Timer1
      Interval = 10
      Left = 6840
      Top = 8160
    End
    Begin CommonDialog cdl
    End
    Begin DataGrid DGNCType
      Left = 7800
      Top = 1695
      Width = 4155
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 16
    End
    Begin DataGrid DGTable
      Left = 12390
      Top = 3360
      Width = 9240
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 18
    End
    Begin DataGrid DGRest
      Left = 12060
      Top = 3000
      Width = 5910
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 19
    End
    Begin DataGrid DGItem
      Left = 11775
      Top = 2520
      Width = 4035
      Height = 4710
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 20
    End
    Begin DataGrid DGWaiter
      Left = 11805
      Top = 3675
      Width = 4290
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 21
    End
    Begin MSHFlexGrid FGrid
      Left = 135
      Top = 1755
      Width = 11325
      Height = 4710
      TabIndex = 8
    End
    Begin MainCtrl TopCtrl1
      Left = 0
      Top = 0
      Width = 15225
      Height = 420
      TabIndex = 47
    End
    Begin Label Label1
      Caption = "Token No."
      Index = 12
      ForeColor = &HFF0000&
      Left = 2685
      Top = 705
      Width = 840
      Height = 225
      TabIndex = 46
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Member"
      Index = 11
      ForeColor = &HFF0000&
      Left = 165
      Top = 480
      Width = 705
      Height = 225
      Visible = 0   'False
      TabIndex = 42
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblVPrefix
      Caption = "VPrefix"
      ForeColor = &HFF0000&
      Left = 795
      Top = 720
      Width = 630
      Height = 225
      TabIndex = 41
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Date"
      Index = 1
      ForeColor = &HFF0000&
      Left = 4485
      Top = 735
      Width = 390
      Height = 225
      TabIndex = 40
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "KOT#"
      Index = 3
      ForeColor = &HFF0000&
      Left = 165
      Top = 735
      Width = 465
      Height = 225
      TabIndex = 39
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Table Code"
      Index = 2
      BackColor = &H80&
      ForeColor = &HFF0000&
      Left = 165
      Top = 1230
      Width = 945
      Height = 225
      Visible = 0   'False
      TabIndex = 38
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Steward"
      Index = 5
      ForeColor = &HFF0000&
      Left = 165
      Top = 1485
      Width = 720
      Height = 225
      Visible = 0   'False
      TabIndex = 37
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
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
      Left = 9585
      Top = 690
      Width = 225
      Height = 465
      TabIndex = 36
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Times New Roman"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblState
      BackColor = &HC0C0C0&
      ForeColor = &HFF&
      Left = 135
      Top = 6795
      Width = 3885
      Height = 450
      TabIndex = 35
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 20.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label lblSession
      Caption = "#"
      BackColor = &HC0C0C0&
      ForeColor = &HC00000&
      Left = 8835
      Top = 1185
      Width = 1665
      Height = 330
      TabIndex = 34
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Remarks"
      Index = 0
      BackColor = &H80&
      ForeColor = &HFF0000&
      Left = 165
      Top = 960
      Width = 780
      Height = 225
      TabIndex = 33
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "NC Category"
      Index = 4
      ForeColor = &H40&
      Left = 6615
      Top = 1470
      Width = 1050
      Height = 225
      Visible = 0   'False
      TabIndex = 32
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Steward"
      Index = 6
      ForeColor = &HFF0000&
      Left = 8325
      Top = 450
      Width = 720
      Height = 225
      Visible = 0   'False
      TabIndex = 31
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Comment1"
      Index = 7
      ForeColor = &HFF0000&
      Left = 225
      Top = 7365
      Width = 930
      Height = 225
      TabIndex = 30
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Comment2"
      Index = 8
      ForeColor = &HFF0000&
      Left = 210
      Top = 7680
      Width = 930
      Height = 225
      TabIndex = 29
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Comment3"
      Index = 9
      ForeColor = &HFF0000&
      Left = 210
      Top = 7995
      Width = 930
      Height = 225
      TabIndex = 28
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label lblclr
      BackColor = &HFF00&
      Left = 7500
      Top = 7245
      Width = 885
      Height = 240
      TabIndex = 27
    End
    Begin Label Label1
      Caption = "Free Items"
      Index = 10
      ForeColor = &H40&
      Left = 9405
      Top = 7020
      Width = 885
      Height = 210
      TabIndex = 26
      AutoSize = -1  'True
      WordWrap = -1  'True
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
  End
End

Attribute VB_Name = "RsTokenEntry"

Private global_212 As Integer
Private MasterFormExit As Integer
Private global_214 As Integer
Private global_128 As Integer
Private global_130 As Integer
Private global_120 As Long

Private Sub TxtGrid_GotFocus(Index As Integer) '12AE320
  'Data Table: 542AD8
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12ADD06: Set var_88 = Me.TxtGrid
  loc_12ADD0C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12ADD1A: Proc_6_74_E226B0(var_8C)
  loc_12ADD26: Call Proc_229_84_F6D19C(var_8C)
  loc_12ADD39: Set var_88 = Me.TxtGrid
  loc_12ADD3F: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12ADD47: var_8C.MaxLength = 0
  loc_12ADD5F: If (Index = 0) Then
  loc_12ADD78:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12ADD93:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12ADDD2:   Set var_108 = Me.TxtGrid
  loc_12ADDD8:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12ADDE0:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12ADE11:   var_114 = CLng(Me.FGrid.Col)
  loc_12ADE21:   If (var_114 = CLng(3)) Then
  loc_12ADE4B:     Set var_8C = Me.FGrid
  loc_12ADE71:     Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_12ADE9B:     Set var_88 = Me.TxtGrid
  loc_12ADEA1:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, CVar(CLng(Me.FGrid.Row)))
  loc_12ADEA9:     var_8C.MaxLength = "OutletCode='"
  loc_12ADEB8:   Else
  loc_12ADEBF:     If (var_114 = CLng(4)) Then
  loc_12ADEE5:       Proc_6_137_1193554(Me.DGItem, global_88, Index, Me.FGPoint)
  loc_12ADF40:       Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_12ADF73:       If (Me.RecordCount > 0) Then
  loc_12ADF99:         Proc_6_137_1193554(Me.DGItem, global_88, Index, Me.FGPoint, CVar(CLng(Me.FGrid.Row)))
  loc_12ADFA7:       End If
  loc_12ADFB0:       var_11C = Me.RecordCount
  loc_12ADFC7:       var_11E = Me.EOF
  loc_12ADFDB:       var_120 = Me.BOF
  loc_12ADFFB:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AE037:       If (CVar(CLng(&HA)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12AE03A:         Exit Sub
  loc_12AE03B:       End If
  loc_12AE041:       Me.MoveFirst
  loc_12AE059:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AE061:       var_E4 = CVar(CLng(&HA)) 'Long
  loc_12AE06A:       Set var_8C = Me.FGrid
  loc_12AE070:       var_D4 = var_8C.TextMatrix)
  loc_12AE0A5:       Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_12AE0D5:       If (Me.EOF = &HFF) Then
  loc_12AE0DE:         Me.MoveFirst
  loc_12AE0E3:       End If
  loc_12AE0EC:       CVarUnk
  loc_12AE0F1:       VerifyVarObj
  loc_12AE0F7:       Set var_88 = Me.DGItem
  loc_12AE0FD:       LateIdStAd
  loc_12AE10E:     Else
  loc_12AE115:       If (var_114 = CLng(7)) Then
  loc_12AE12D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_88, var_134, var_D4)
  loc_12AE135:         var_8C.MaxLength = var_E4
  loc_12AE14A:         If (global_130 = 0) Then
  loc_12AE155:           var_110 = "{Home}+{End}"
  loc_12AE15B:           Proc_303_0_FB9B68(CStr(var_D4), 0, var_A4, var_A4)
  loc_12AE163:         End If
  loc_12AE166:       Else
  loc_12AE16D:         If (var_114 = CLng(2)) Then
  loc_12AE187:           If (Me.RecordCount > 0) Then
  loc_12AE1AD:             Proc_6_137_1193554(Me.DGRest, global_104, Index, Me.FGPoint)
  loc_12AE1BB:           End If
  loc_12AE1C4:           var_11C = Me.RecordCount
  loc_12AE1DB:           var_11E = Me.EOF
  loc_12AE1EF:           var_120 = Me.BOF
  loc_12AE20F:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AE24B:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12AE24E:             Exit Sub
  loc_12AE24F:           End If
  loc_12AE255:           Me.MoveFirst
  loc_12AE26D:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AE275:           var_E4 = CVar(CLng(1)) 'Long
  loc_12AE2B9:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12AE2E9:           If (Me.EOF = &HFF) Then
  loc_12AE2F2:             Me.MoveFirst
  loc_12AE2F7:           End If
  loc_12AE300:           CVarUnk
  loc_12AE305:           VerifyVarObj
  loc_12AE30B:           Set var_88 = Me.DGRest
  loc_12AE311:           LateIdStAd
  loc_12AE31F:         End If
  loc_12AE31F:       End If
  loc_12AE31F:     End If
  loc_12AE31F:   End If
  loc_12AE31F: End If
  loc_12AE31F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '139D834
  'Data Table: 542AD8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_94 As String
  Dim var_98 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_C0 As TextBox
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  loc_139CF77: var_86 = Shift
  loc_139CF86: If (KeyCode = 0) Then
  loc_139CF93:   If (CLng(Shift) = &H1B) Then
  loc_139CFA3:     Set var_8C = Me.TxtGrid
  loc_139CFA9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_139CFB1:     var_88 = var_90.Tag
  loc_139CFC3:     Set var_98 = Me.TxtGrid
  loc_139CFC9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_139CFD1:     var_9C.Text = var_94
  loc_139CFED:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_139CFF2:     Call Proc_229_84_F6D19C(arg_14)
  loc_139CFFB:     Set var_8C = Me.FGrid
  loc_139D018:     Set var_8C = Me.TxtGrid
  loc_139D01E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_139D026:     var_90.Visible = FGrid.DispID_8001
  loc_139D032:     Exit Sub
  loc_139D033:   End If
  loc_139D046:   var_B0 = CLng(Me.FGrid.Col)
  loc_139D056:   If (var_B0 = CLng(4)) Then
  loc_139D076:     Set var_9C = Me.FGPoint
  loc_139D081:     Set var_98 = Nothing
  loc_139D0AF:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_139D11E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_139D125:       Set var_98 = Me.DGItem
  loc_139D144:       Proc_6_138_106D6F8(var_98, global_88, KeyCode, Me.FGPoint, 1)
  loc_139D152:     End If
  loc_139D15C:     If (CLng(Shift) = &HD) Then
  loc_139D165:       Call Proc_229_77_1700BE0(KeyCode, var_B2, var_98, var_9C)
  loc_139D170:       If (var_B2 = &HFF) Then
  loc_139D1B6:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, 7)
  loc_139D1C6:       End If
  loc_139D1C6:     End If
  loc_139D1C9:   Else
  loc_139D1D0:     If (var_B0 = CLng(2)) Then
  loc_139D1DE:       Set var_C0 = Me.TxtGrid
  loc_139D229:       Proc_6_69_134A198(Me.DGRest, var_C0, KeyCode, global_104, Shift, &HFF, 1, Nothing)
  loc_139D298:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_139D2BE:         Proc_6_138_106D6F8(Me.DGRest, global_104, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_139D2CC:       End If
  loc_139D2D6:       If (CLng(Shift) = &HD) Then
  loc_139D2DF:         Call Proc_229_77_1700BE0(KeyCode, var_B2, 0, 7)
  loc_139D2EA:         If (var_B2 = &HFF) Then
  loc_139D330:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, 7, 0)
  loc_139D340:         End If
  loc_139D340:       End If
  loc_139D343:     Else
  loc_139D34A:       If (var_B0 = CLng(3)) Then
  loc_139D357:         If (CLng(Shift) = &HD) Then
  loc_139D360:           Call Proc_229_77_1700BE0(KeyCode, var_B2, 3, 0)
  loc_139D36B:           If (var_B2 = &HFF) Then
  loc_139D3B8:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, CByte((CInt(7) + 1)), 0)
  loc_139D3DB:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139D3E3:             var_FC = CVar(CLng(3)) 'Long
  loc_139D416:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_139D42B:               Me.FGrid.Col = CVar(CLng(4))
  loc_139D436:             Else
  loc_139D439:               var_DC = CVar(CLng(7)) 'Long
  loc_139D448:               Me.FGrid.Col = var_DC
  loc_139D450:             End If
  loc_139D450:           End If
  loc_139D450:         End If
  loc_139D453:       Else
  loc_139D45A:         If (var_B0 = CLng(7)) Then
  loc_139D49D:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_139D4A6:             Call Proc_229_77_1700BE0(KeyCode, var_B2, var_FC, var_DC, 0)
  loc_139D4B1:             If (var_B2 = &HFF) Then
  loc_139D4C7:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139D4CF:               var_FC = CVar(CLng(&HA)) 'Long
  loc_139D4DE:               var_11C = Me.FGrid.TextMatrix)
  loc_139D514:               var_17C = Me.FGrid.TextMatrix)
  loc_139D52E:               Set var_BC = Me.Txt
  loc_139D534:               Call 0.Method_TxtGrid_KeyDown0 (CInt(1), var_C0, var_280, var_17C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_11C)
  loc_139D53C:               var_FC = var_C0.Text
  loc_139D554:               var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139D56C:               var_1D0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_139D5B7:               var_22C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139D5BF:               var_24C = CVar(CLng(0)) 'Long
  loc_139D615:               Call Proc_229_78_155C2D8(CStr(var_11C), CStr(var_17C), var_280, CInt(Val(CStr(Me.FGrid.TextMatrix)))), CInt(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), var_CA, Val(CStr(Me.FGrid.TextMatrix))))
  loc_139D65C:               If var_CA Then
  loc_139D65F:               End If
  loc_139D671:               Me.FGrid.Col = CVar(CLng(7))
  loc_139D6C3:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, CByte((CInt(9) - 1)), 0, 0)
  loc_139D6E6:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139D6EE:               var_FC = CVar(CLng(1)) 'Long
  loc_139D701:               Set var_90 = Me.FGrid
  loc_139D707:               LateIdCallSt
  loc_139D72C:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139D734:               var_FC = CVar(CLng(2)) 'Long
  loc_139D747:               Set var_90 = Me.FGrid
  loc_139D74D:               LateIdCallSt
  loc_139D762:               var_DC = CVar(CLng(3)) 'Long
  loc_139D771:               Me.FGrid.Col = var_DC
  loc_139D779:             End If
  loc_139D779:           End If
  loc_139D77C:         Else
  loc_139D783:           If (var_B0 = CLng(9)) Then
  loc_139D7C6:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_139D7CF:               Call Proc_229_77_1700BE0(KeyCode, var_B2, var_90, global_72, var_FC, var_DC, var_90)
  loc_139D7DA:               If (var_B2 = &HFF) Then
  loc_139D820:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, 9, 0, 0)
  loc_139D830:               End If
  loc_139D830:             End If
  loc_139D830:           End If
  loc_139D830:         End If
  loc_139D830:       End If
  loc_139D830:     End If
  loc_139D830:   End If
  loc_139D830: End If
  loc_139D830: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10A7B9C
  'Data Table: 542AD8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_A4 As String
  loc_10A78CF: Proc_6_58_E054C0(arg_10)
  loc_10A78E0: If (KeyAscii = 0) Then
  loc_10A78F6:   var_A0 = CLng(Me.FGrid.Col)
  loc_10A7906:   If (var_A0 = CLng(4)) Then
  loc_10A7925:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A7937:       var_A4 = "Name"
  loc_10A7952:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_88, arg_10)
  loc_10A7984:       Proc_6_138_106D6F8(Me.DGItem, global_88, KeyAscii, Me.FGPoint)
  loc_10A7992:     End If
  loc_10A7995:   Else
  loc_10A799C:     If (var_A0 = CLng(2)) Then
  loc_10A79BB:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10A79E8:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_104, arg_10, "Name")
  loc_10A7A1A:         Proc_6_138_106D6F8(Me.DGRest, global_104, KeyAscii, Me.FGPoint, 0)
  loc_10A7A28:       End If
  loc_10A7A2B:     Else
  loc_10A7A32:       If (var_A0 = CLng(3)) Then
  loc_10A7A50:         If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10A7A65:           Me.FGrid.Col = CVar(CLng(4))
  loc_10A7A89:           If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A7AB6:             Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_88, arg_10, "Name")
  loc_10A7AC5:           End If
  loc_10A7AC5:         End If
  loc_10A7AC8:       Else
  loc_10A7ACF:         If (var_A0 = CLng(7)) Then
  loc_10A7AF6:           Set var_AC = Me.FGrid
  loc_10A7B07:           var_A4 = CStr(var_AC.TextMatrix))
  loc_10A7B25:           If (CDbl(Val(var_A4)) = CDbl(0)) Then
  loc_10A7B32:             Set var_8C = Me.TxtGrid
  loc_10A7B38:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), 0)
  loc_10A7B53:             Proc_6_42_129A86C(var_AC, arg_10, 4, 2)
  loc_10A7B62:           Else
  loc_10A7B6C:             Set var_8C = Me.TxtGrid
  loc_10A7B72:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_10A7B8D:             Proc_6_42_129A86C(var_AC, arg_10, 4, 0)
  loc_10A7B99:           End If
  loc_10A7B99:         End If
  loc_10A7B99:       End If
  loc_10A7B99:     End If
  loc_10A7B99:   End If
  loc_10A7B99: End If
  loc_10A7B99: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1096644
  'Data Table: 542AD8
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_10963A0: On Error Goto loc_109663D
  loc_10963A6: var_86 = KeyCode
  loc_10963AF: If (var_86 = 0) Then
  loc_10963C5:   var_A0 = CLng(Me.FGrid.Col)
  loc_10963D5:   If (var_A0 = CLng(2)) Then
  loc_10963FB:     If ((Shift <> &HD) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_109640C:       Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_109643B:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_104, Shift, "Name")
  loc_109644A:     End If
  loc_109644D:   Else
  loc_1096454:     If (var_A0 = CLng(4)) Then
  loc_109647A:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_109648B:         Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_1096494:         Set var_AC = Me.TxtGrid
  loc_109649F:         var_A8 = "Name"
  loc_10964BA:         Proc_6_89_146F1AC(var_AC, KeyCode, global_88, Shift, var_A8, &HFF)
  loc_10964C9:       End If
  loc_10964CC:     Else
  loc_10964D3:       If (var_A0 = CLng(9)) Then
  loc_10964E0:         Set var_B0 = Me.TxtGrid
  loc_10964E6:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_B4, 0, &HFF)
  loc_10964F8:         Set var_8C = Me.TxtGrid
  loc_10964FE:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8)
  loc_1096506:         0 = var_AC.Text
  loc_1096569:         If CBool((Len(var_A8) = 0) Or (Ucase(Mid(CVar(var_B4), 1, 1)) = "Y")) Then
  loc_1096579:           Set var_8C = Me.TxtGrid
  loc_109657F:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, "Yes")
  loc_1096587:           var_AC.Text = var_A0
  loc_1096596:         Else
  loc_10965A0:           Set var_8C = Me.TxtGrid
  loc_10965A6:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10965E8:           If (Ucase(Mid(CVar(var_AC), 1, 1)) = "N") Then
  loc_10965F8:             Set var_8C = Me.TxtGrid
  loc_10965FE:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1096606:             var_AC.Text = "No"
  loc_1096615:           Else
  loc_1096622:             Set var_8C = Me.TxtGrid
  loc_1096628:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1096630:             var_AC.Text = "Yes"
  loc_109663C:           End If
  loc_109663C:         End If
  loc_109663C:       End If
  loc_109663C:     End If
  loc_109663C:   End If
  loc_109663C: End If
  loc_109663C: Exit Sub
  loc_109663D: ' Referenced from: 10963A0
  loc_109663D: Proc_6_60_E62BC4(var_86)
  loc_1096642: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23C04
  'Data Table: 542AD8
  Dim arg_10 As Integer
  loc_E23BEC: If (Cancel = 0) Then
  loc_E23BF5:   Call Proc_229_77_1700BE0(Cancel, var_88)
  loc_E23BFE:   arg_10 = Not(var_88)
  loc_E23C01: End If
  loc_E23C01: Exit Sub
End Sub

Private Sub cmdNCBill_Click() '196C500
  'Data Table: 542AD8
  Dim var_11C As Variant
  Dim var_E0 As String
  Dim var_E4 As String
  Dim unk_542AEE As Connection15
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_134 As String
  Dim var_130 As Variant
  Dim var_F4 As Variant
  Dim Me As Recordset15
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_CC As Recordset15
  Dim var_BC As Recordset15
  Dim var_104 As Variant
  Dim var_168 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_240 As String
  Dim var_178 As Variant
  Dim var_274 As Variant
  Dim var_1F8 As Variant
  Dim var_288 As Variant
  Dim var_29C As Variant
  Dim var_2AC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_3DC As Variant
  Dim var_DC As Double
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_3BC As Variant
  Dim var_2BC As Variant
  loc_1969852: var_11C = 0
  loc_1969882: unk_542AEE.Execute "Select CKOTPrintYN From Depart Where Code='" & LocalRestCode & "'", var_104, -1
  loc_196988A: var_108 = var_108.Fields
  loc_1969892: var_11C = var_10C.Item(var_10C)
  loc_196989A: var_120 = var_120.Value
  loc_19698C8: If (Proc_6_38_E68A98(var_130) = "Y") Then
  loc_19698CE:   Call Proc_229_69_19445FC(var_136)
  loc_19698D3:   Exit Sub
  loc_19698D4: End If
  loc_19698D7: MemVar_1F923C0 = "N"
  loc_19698DE: MemVar_1F923C4 = "N"
  loc_19698E5: MemVar_1F923C8 = "K"
  loc_1969904: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_1969907:   Exit Sub
  loc_1969908: End If
  loc_196990F: var_E0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1969954: var_88 = CStr(CVar(var_E0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1969973: var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.RestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19699B1: var_8C = CStr(var_130 & Me.Fields.Item("SearchCode").Value & "'")
  loc_19699DA: var_130 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.RestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19699FA: var_10C = Me.Fields.Item("SearchCode")
  loc_1969A02: var_104 = var_10C.Value
  loc_1969A17: var_E0 = CStr(var_130 & var_104 & "'")
  loc_1969A21: unk_542AEE.Execute var_E0, var_178, -1
  loc_1969A2C: Set var_BC = var_120
  loc_1969A50: If (var_88 = vbNullString) Then
  loc_1969A53:   Exit Sub
  loc_1969A54: End If
  loc_1969A5C: If (var_8C = vbNullString) Then
  loc_1969A5F:   Exit Sub
  loc_1969A60: End If
  loc_1969A7E: Set var_108 = Me.Txt
  loc_1969A84: Call 0.Method_cmdNCBill_Click0 (CInt(4), var_10C, var_E0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_104)
  loc_1969A8C: -1 = var_10C.Text
  loc_1969AA5: unk_542AEE.Execute var_120 & var_E0 & "' AND CONTRADOCID IS NULL", var_120, var_130
  loc_1969ADC: If (var_120.RecordCount = 1) Then
  loc_1969AE2:   var_C8 = "New Order"
  loc_1969AE8: Else
  loc_1969AEF:   Set var_108 = Me.LblState
  loc_1969AFD:   var_C8 = var_108.Caption
  loc_1969B03: End If
  loc_1969B19: unk_542AEE.Execute var_88, var_104, -1
  loc_1969B24: Set var_B4 = var_108
  loc_1969B2D: ' Referenced from: 196C4CC
  loc_1969B3C: If Not(var_BC.EOF) Then
  loc_1969B55:   unk_542AEE.Execute "SELECT KOTPrinting FROM Enviro", var_104, -1
  loc_1969B78:   var_108 = var_108.Fields
  loc_1969BB3:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_108.Item("KOTPrinting")), var_108))) = "Seperate for All Kitchen") Then
  loc_1969BBD:     var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1969C36:     var_1D0 = var_130 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1969C72:     var_8C = CStr(var_1D0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_1969CA0:   Else
  loc_1969CA7:     var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1969CBF:     var_108 = Me.Fields
  loc_1969CCF:     var_104 = var_108.Item("SearchCode").Value
  loc_1969CE5:     var_8C = CStr(var_130 & var_104 & "' and K.VoidYN<>'Y'")
  loc_1969CFA:   End If
  loc_1969D10:   unk_542AEE.Execute var_8C, var_104, -1
  loc_1969D1B:   Set var_B8 = var_108
  loc_1969D38:   If (var_B8.RecordCount > 0) Then
  loc_1969D4A:     var_108 = var_BC.Fields
  loc_1969D69:     var_238 = Trim(CVar(var_108.Item("PrintType"))) 'Variant
  loc_1969D7E:     If (var_238 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1969D8E:       Call Proc_229_73_EF9A8C(New, var_108)
  loc_1969D96:       Set var_D0 = var_108
  loc_1969D9C:       Me.Recordset15.MoveFirst
  loc_1969DA1:       ' Referenced from: 196AA1B
  loc_1969DB0:       If Not(var_B4.EOF) Then
  loc_1969DC9:         If (0 = 0) Then
  loc_1969DEA:           Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969E26:           var_C0 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1969E5D:           var_130 = CVar(Me.LblRest.Caption) 'String
  loc_1969E60:           var_148 = (Space(1) + var_130)
  loc_1969E75:           Call Proc_229_74_F14B10(var_D0, vbNullString, CStr(var_130 & Space(1)), vbNullString)
  loc_1969EA7:           Call Proc_229_74_F14B10(var_D0, vbNullString, " * NC Bill *", vbNullString)
  loc_1969EB5:           var_92 = &H12
  loc_1969ED6:           Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString, var_92)
  loc_1969F02:           Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969F36:           Proc_6_39_E7C810(var_130, CVar(var_B4.Fields.Item("VNo")), 1)
  loc_1969F73:           Call Proc_229_74_F14B10(var_D0, vbNullString, " V No.     : " & Proc_6_45_EAD428(CStr(var_130), &HA, var_92))
  loc_1969FA0:           var_108 = var_B4.Fields
  loc_196A043:           Call Proc_229_74_F14B10(var_D0, vbNullString, " Date.     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_108.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")), var_108), 8))
  loc_196A08A:           var_10C = var_B4.Fields.Item("Remarks")
  loc_196A0D5:           Call Proc_229_74_F14B10(var_D0, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C), vbNullString), &H1E))
  loc_196A107:           Set var_108 = Me.Label1
  loc_196A10D:           Call 0.Method_cmdNCBill_Click0 (2, var_10C)
  loc_196A196:           var_250 = Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_196A19C:           var_240 = vbNullString
  loc_196A1AB:           var_178 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA)))
  loc_196A1B4:           var_190 = (var_BC.Fields.Item("Code").Value + ": ")
  loc_196A1BE:           var_274 = (CVar(var_10C) & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(var_250))
  loc_196A1D3:           Call Proc_229_74_F14B10(var_D0, vbNullString, CStr(var_274))
  loc_196A225:           Call Proc_229_74_F14B10(var_D0, vbNullString, var_C0, vbNullString)
  loc_196A231:         End If
  loc_196A257:         var_148 = (var_240 + CVar(Proc_6_45_EAD428("ITEM NAME", &H12, Space(1))))
  loc_196A26B:         var_178 = (Trim(CVar(var_10C)) + Space(1))
  loc_196A285:         var_1B0 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_196A291:         var_1D0 = Space(1)
  loc_196A299:         var_1F8 = (CVar(var_B4.Fields.Item("TableNo")) + var_1D0)
  loc_196A2B3:         var_228 = ("000" + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_196A2C7:         var_288 = (CVar(var_250) + Space(1))
  loc_196A2E1:         var_2AC = (var_288 + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_196A318:         var_E4 = vbNullString
  loc_196A32D:         Call Proc_229_74_F14B10(var_D0, vbNullString, CStr(var_2AC))
  loc_196A33C:         var_E4 = vbNullString
  loc_196A351:         Call Proc_229_74_F14B10(var_D0, vbNullString, var_C0)
  loc_196A363:         var_92 = (var_92 + 4)
  loc_196A369:         var_B8.MoveFirst
  loc_196A36E:         ' Referenced from: 196A688
  loc_196A37D:         If Not(var_B8.EOF) Then
  loc_196A3A2:           var_130 = var_B8.Fields.Item("ItemName").Value
  loc_196A3CD:           Proc_6_39_E7C810(var_1D0, CVar(var_B8.Fields.Item("qty")), var_92)
  loc_196A3F5:           var_1A0 = "Rate"
  loc_196A418:           Proc_6_39_E7C810(var_2BC, CVar(var_B8.Fields.Item(var_1A0)), 1, 1)
  loc_196A427:           var_1C0 = "0.00"
  loc_196A463:           Proc_6_39_E7C810(var_344, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_196A48E:           Proc_6_39_E7C810(var_36C, CVar(var_B8.Fields.Item("Rate")), var_E4)
  loc_196A4E6:           var_158 = (1 + CVar(Proc_6_45_EAD428(CStr(var_130), &H12, Space(1), 1)))
  loc_196A4FA:           var_190 = (Space(1) + Space(1))
  loc_196A510:           var_228 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D0, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, var_BC.Fields.Item("Code").Value)))) 'String
  loc_196A513:           var_274 = (var_E4 + var_228)
  loc_196A527:           var_29C = (Space(1) + Space(1))
  loc_196A540:           var_2FC = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2BC, var_1C0)), 6)))
  loc_196A554:           var_31C = (var_2FC + Space(1))
  loc_196A56D:           var_3DC = (var_31C + CVar(Proc_6_52_EAD4F4(CStr(Format((var_344 * var_36C), "0.00")), 7)))
  loc_196A5D3:           var_168 = CVar(var_DC) 'Double
  loc_196A5E6:           var_108 = var_B8.Fields
  loc_196A5FD:           Proc_6_39_E7C810(var_130, CVar(var_108.Item("qty")))
  loc_196A62B:           Proc_6_39_E7C810(Space(1), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_196A637:           var_190 = (var_108 + (var_168 * Space(1)))
  loc_196A63C:           var_DC = CSng(CVar(Proc_6_52_EAD4F4("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_196A656:           var_E4 = vbNullString
  loc_196A66B:           Call Proc_229_74_F14B10(var_D0, vbNullString, CStr(var_3DC))
  loc_196A67D:           var_92 = (var_92 + 1)
  loc_196A683:           var_B8.MoveNext
  loc_196A688:           GoTo loc_196A36E
  loc_196A68B:         End If
  loc_196A6A3:         Call Proc_229_74_F14B10(var_D0, vbNullString, var_C0, vbNullString)
  loc_196A6CD:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A708:         var_11C = "0.00"
  loc_196A70D:         var_158 = var_11C
  loc_196A75A:         var_148 = (Space(&H16) + CVar(Proc_6_45_EAD428("TOTAL  :", 8, var_92)))
  loc_196A764:         var_1F8 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_DC, var_158))))), 8, 1)))
  loc_196A779:         Call Proc_229_74_F14B10(var_D0, vbNullString, CStr("0"), vbNullString)
  loc_196A7C4:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A7D5:         var_F4 = "WaiterName"
  loc_196A814:         var_240 = vbNullString
  loc_196A834:         Call Proc_229_74_F14B10(var_D0, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_F4)), 1), &H14))
  loc_196A86E:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A8A3:         Call Proc_229_74_F14B10(var_D0, vbNullString, " ** " & MemVar_1F9221C & " **", vbNullString)
  loc_196A8B6:         var_B4.MoveNext
  loc_196A8D9:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A905:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A931:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A95D:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A989:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A9B5:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196A9E1:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196AA0D:         Call Proc_229_74_F14B10(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196AA1B:         GoTo loc_1969DA1
  loc_196AA1E:       End If
  loc_196AA21:       var_D4 = "WinTOKENPrint"
  loc_196AA48:       Set var_108 = var_D0 
  loc_196AA4F:       CreateFieldDefFile(var_108, MemVar_1F920B4 & "\" & var_D4 & ".ttx", &HFF)
  loc_196AA81:       var_E4 = MemVar_1F920B4 & "\" & var_D4
  loc_196AA91:       Call 0.Method_arg_1C (var_E4 & ".RPT", var_F4, var_108)
  loc_196AA9C:       MemVar_1F921E4 = var_108
  loc_196AAC5:       Call 0.Method_arg_64 (var_108, CVar(var_108), var_11C, var_168)
  loc_196AACD:       Call 0.Method_arg_2C (var_240, var_E4)
  loc_196AB0E:       If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_196AB5B:         If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_196AB8A:           Call Proc_229_71_F0ED98(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_196AB98:         End If
  loc_196AB98:       End If
  loc_196ABB5:       Call 0.Method_Me8 (False, 1, var_168)
  loc_196ABBF:       Set var_D0 = Nothing
  loc_196ABC5:     Else
  loc_196ABD0:       If Not (var_238 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_196ABDE:         If (var_238 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_196ABE1:         End If
  loc_196ABE3:         Close 1
  loc_196AC03:         var_134 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT"
  loc_196AC0A:         Open var_134 For Output As 1 Len = &HFF
  loc_196AC1A:         var_B4.MoveFirst
  loc_196AC1F:         ' Referenced from:   196B6BD
  loc_196AC2E:         If Not(var_B4.EOF) Then
  loc_196AC33:           var_92 = 0
  loc_196AC47:           If (var_92 = 0) Then
  loc_196AC4C:             Print 1
  loc_196AC80:             var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_196ACC7:             Call Proc_229_89_EFA78C(Proc_6_45_EAD428(Me.LblRest.Caption, &H14, 1, var_92), "D", &H28, var_240)
  loc_196ACD1:             Print 1, var_240
  loc_196AD0F:             Call Proc_229_89_EFA78C(Proc_6_45_EAD428("* NC Bill *", &H14, var_1A0), "D", &H28)
  loc_196AD19:             Print 1, var_134
  loc_196AD31:             Print 1
  loc_196AD39:             Print 1
  loc_196AD72:             Proc_6_39_E7C810(var_158, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_196AD94:             var_130 = (Chr(&HF) + "V No.     :   ")
  loc_196AD9E:             var_190 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EAD428(CStr(var_158), &HA, var_134)))
  loc_196ADA4:             Print 1, CVar(CStr(Format(var_DC, var_158)))
  loc_196AE56:             var_130 = (Chr(&HF) + "Date.     :   ")
  loc_196AE60:             var_178 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C0), &HC)))
  loc_196AE69:             var_190 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C0), &HC))), &HA, Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C0))) + " ")
  loc_196AE73:             var_1F8 = (CVar(CStr(Format(var_DC, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C0), &HC))))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_196AE79:             Print 1, "0"
  loc_196AECE:             var_10C = var_B4.Fields.Item("Remarks")
  loc_196AF0B:             var_130 = (Chr(&HF) + "Remarks :   ")
  loc_196AF15:             var_178 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C)), &H32)))
  loc_196AF1C:             var_1B0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C)), &H32))) + Chr(&H12))
  loc_196AF22:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_196AF5B:             Set var_108 = Me.Label1
  loc_196AF61:             Call 0.Method_cmdNCBill_Click0 (2, var_10C)
  loc_196AFF6:             var_178 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA)))
  loc_196AFFF:             var_190 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA))) + ":   ")
  loc_196B006:             var_228 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_196B009:             var_274 = (Chr(&H12) + var_228)
  loc_196B00F:             Print 1, Space(1)
  loc_196B05A:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196B060:             Print 1, CVar(var_10C)
  loc_196B06D:           End If
  loc_196B093:           var_148 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_196B0AD:           var_178 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C)))))
  loc_196B0B9:           var_190 = Space(3)
  loc_196B0C1:           var_1B0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C))))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA))) + var_190)
  loc_196B0DB:           var_1F8 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_196B0EF:           var_228 = ("000" + Space(3))
  loc_196B109:           var_288 = (var_228 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_196B14F:           var_130 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_196B155:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_196B178:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196B17E:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_196B191:           var_92 = (var_92 + 4)
  loc_196B197:           var_B8.MoveFirst
  loc_196B19C:           ' Referenced from:   196B4A3
  loc_196B1AB:           If Not(var_B8.EOF) Then
  loc_196B1FB:             Proc_6_39_E7C810(var_190, CVar(var_B8.Fields.Item("qty")))
  loc_196B246:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 7)), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_196B291:             Proc_6_39_E7C810(var_31C, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_196B2BC:             Proc_6_39_E7C810(var_344, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_196B30C:             var_130 = Space(3)
  loc_196B314:             var_158 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_130)
  loc_196B32A:             var_1F8 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_190, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_196B32D:             var_208 = (1 + var_1F8)
  loc_196B341:             var_274 = (Space(3) + Space(3))
  loc_196B357:             var_2CC = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))) 'String
  loc_196B35A:             var_2DC = (&H12 + var_2CC)
  loc_196B36E:             var_2FC = (Format(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_196B387:             var_3BC = (var_2FC + CVar(Proc_6_52_EAD4F4(CStr(Format((var_31C * var_344), "0.00")), &HA)))
  loc_196B413:             Proc_6_39_E7C810(var_130, CVar(var_B8.Fields.Item("qty")))
  loc_196B441:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_196B44D:             var_190 = (var_DC + (CVar(var_DC) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))))
  loc_196B452:             var_DC = CSng(var_190)
  loc_196B47F:             var_130 = (Chr(&HF) + CVar(CStr(Format((var_344 * (var_31C * var_344)), "0.00"))))
  loc_196B485:             Print 1, var_130
  loc_196B498:             var_92 = (var_92 + 1)
  loc_196B49E:             var_B8.MoveNext
  loc_196B4A3:             GoTo loc_196B19C
  loc_196B4A6:           End If
  loc_196B4BC:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196B4C2:           Print 1, var_130
  loc_196B4D4:           Print 1, vbNullString
  loc_196B55A:           var_148 = (Chr(&HF) + Space(&H25))
  loc_196B564:           var_178 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_196B56E:           var_228 = ((CVar(var_DC) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_DC, "0.00"))))), &HB, 1)))
  loc_196B574:           Print 1, Space(3)
  loc_196B5A5:           Print 1, vbNullString
  loc_196B5FF:           var_130 = (Chr(&HF) + "Waiter Name  :   ")
  loc_196B609:           var_178 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_196B60F:           Print 1, (CVar(var_DC) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))))
  loc_196B630:           Print 1
  loc_196B64B:           var_130 = (Chr(&HF) + "** ")
  loc_196B655:           var_148 = (Space(&H25) + CVar(MemVar_1F9221C))
  loc_196B65E:           var_158 = (CVar(var_B4.Fields.Item("WaiterName")) + " **")
  loc_196B664:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14))
  loc_196B678:           var_B4.MoveNext
  loc_196B67F:           Print 1
  loc_196B687:           Print 1
  loc_196B68F:           Print 1
  loc_196B697:           Print 1
  loc_196B69F:           Print 1
  loc_196B6A7:           Print 1
  loc_196B6AF:           Print 1
  loc_196B6B7:           Print 1
  loc_196B6BD:           GoTo loc_196AC1F
  loc_196B6C0:         End If
  loc_196B6C2:         Close 1
  loc_196B6FD:         If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_196B725:           Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_196B783:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_196B7A3:         Else
  loc_196B7CD:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_196B7DE:         End If
  loc_196B7E0:         Close 1
  loc_196B7EA:         If (MemVar_1F923B8 = "Y") Then
  loc_196B81C:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_196B82D:         Else
  loc_196B85C:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_196B86A:         End If
  loc_196B86D:       Else
  loc_196B878:         If Not (var_238 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_196B886:           If (var_238 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_196B889:           End If
  loc_196B88B:           Close 1
  loc_196B8B2:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_196B8C2:           var_B4.MoveFirst
  loc_196B8C7:           ' Referenced from:     196C305
  loc_196B8D6:           If Not(var_B4.EOF) Then
  loc_196B8E6:             var_90 = "* TOKEN *"
  loc_196B917:             var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_196B926:             If (0 = 0) Then
  loc_196B92B:               Print 1
  loc_196B95A:               var_178 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_196B99D:               var_2AC = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_196B9C7:               var_1D0 = (Chr(&HF) + Space(CLng(((CVar(var_DC) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))))
  loc_196B9CE:               var_228 = (CVar(CStr(Format(var_DC, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_196B9D5:               var_2DC = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_196B9DC:               var_2FC = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_196B9E2:               Print 1, var_2FC
  loc_196BA30:               var_158 = (42 - Len(Trim(var_90)))
  loc_196BA63:               var_228 = (42 - Len(Trim(var_90)))
  loc_196BA8D:               var_1B0 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_196BA97:               var_1D0 = (Space(CLng(((CVar(var_DC) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_196BA9E:               var_29C = (CVar(CStr(Format(var_DC, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_196BAA5:               var_2BC = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_196BAAB:               Print 1, ("0.00" / 2)
  loc_196BACA:               var_92 = &H12
  loc_196BACF:               Print 1
  loc_196BAD7:               Print 1
  loc_196BB10:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_196BB3F:               var_130 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_196BB49:               var_190 = (Trim(var_90) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_196BB50:               var_1D0 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_196BB56:               Print 1, CVar(CStr(Format(var_DC, "0.00")))
  loc_196BC19:               var_130 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_196BC23:               var_178 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_196BC2C:               var_190 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_196BC36:               var_1F8 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_196BC3D:               var_228 = (Trim(var_90) + Chr(&H12))
  loc_196BC43:               Print 1, Space(3)
  loc_196BC9C:               var_10C = var_B4.Fields.Item("Remarks")
  loc_196BCD9:               var_130 = (Chr(&HF) + "Remarks :     ")
  loc_196BCE3:               var_178 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C)), &H20)))
  loc_196BCEA:               var_1B0 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_196BCF0:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_196BD29:               Set var_108 = Me.Label1
  loc_196BD2F:               Call 0.Method_cmdNCBill_Click0 (2, var_10C)
  loc_196BDD1:               var_178 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA)))
  loc_196BDDA:               var_190 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_196BDE1:               var_228 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_196BDE4:               var_274 = (Chr(&H12) + var_228)
  loc_196BDEB:               var_29C = ((Space(3) / 2) + Chr(&H12))
  loc_196BDF1:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_196BE4D:               var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196BE54:               var_158 = (CVar(var_10C) + Chr(&H12))
  loc_196BE5A:               Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_10C))), &HA))
  loc_196BE6B:             End If
  loc_196BE91:             var_148 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_196BEAB:             var_178 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_196BEB7:             var_190 = Space(3)
  loc_196BEBF:             var_1B0 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_190)
  loc_196BED9:             var_1F8 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_196BF22:             var_130 = (Chr(&HF) + CVar(CStr("000")))
  loc_196BF29:             var_158 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_196BF2F:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_196BF63:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196BF6A:             var_158 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_196BF70:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_196BF87:             var_92 = (var_92 + 4)
  loc_196BF8D:             var_B8.MoveFirst
  loc_196BF92:             ' Referenced from:     196C161
  loc_196BFA1:             If Not(var_B8.EOF) Then
  loc_196BFF1:               Proc_6_39_E7C810(var_190, CVar(var_B8.Fields.Item("qty")))
  loc_196C03C:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_196C086:               var_158 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_196C09F:               var_208 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_190, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_196C0B3:               var_274 = (Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(3))
  loc_196C0CC:               var_2DC = (var_92 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_196C132:               var_130 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_196C139:               var_158 = (Space(3) + Chr(&H12))
  loc_196C13F:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_196C156:               var_92 = (var_92 + 1)
  loc_196C15C:               var_B8.MoveNext
  loc_196C161:               GoTo loc_196BF92
  loc_196C164:             End If
  loc_196C187:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196C18E:             var_158 = (Space(3) + Chr(&H12))
  loc_196C194:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_196C206:             var_130 = (Chr(&HF) + "Waiter Name  :     ")
  loc_196C210:             var_178 = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14)))
  loc_196C217:             var_1B0 = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_196C21D:             Print 1, "0.00"
  loc_196C265:             var_178 = Chr(&H12)
  loc_196C272:             var_130 = (Chr(&HF) + "***  ")
  loc_196C285:             var_190 = ("  ***" + var_178)
  loc_196C28F:             Print 1, Space(3) & Trim(var_C8) & Chr(&H12)
  loc_196C2A8:             Print 1
  loc_196C2C3:             var_130 = (Chr(&HF) + "** ")
  loc_196C2CD:             var_148 = (Space(3) + CVar(MemVar_1F9221C))
  loc_196C2D6:             var_158 = (Trim(var_C8) + " **")
  loc_196C2DC:             Print 1, Space(3) & Trim(var_C8)
  loc_196C2F0:             var_B4.MoveNext
  loc_196C2F7:             Print 1
  loc_196C2FF:             Print 1
  loc_196C305:             GoTo loc_196B8C7
  loc_196C308:           End If
  loc_196C30A:           Close 1
  loc_196C345:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_196C36D:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_196C3C5:             var_148 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_196C3CB:             Print 1, var_148
  loc_196C3EB:           Else
  loc_196C410:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_196C447:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_196C458:           End If
  loc_196C45A:           Close 1
  loc_196C45C:         End If
  loc_196C45C:       End If
  loc_196C45C:     End If
  loc_196C45F:   Else
  loc_196C4A9:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_C8), var_178, Chr(&H12))
  loc_196C4C4:   End If
  loc_196C4C7:   var_BC.MoveNext
  loc_196C4CC:   GoTo loc_1969B2D
  loc_196C4CF: End If
  loc_196C4D4: Set var_B4 = Nothing
  loc_196C4DC: Set var_B8 = Nothing
  loc_196C4E4: Set var_BC = Nothing
  loc_196C4EC: Set var_CC = Nothing
  loc_196C4F4: Set var_D0 = Nothing
  loc_196C4F7: Exit Sub
  loc_196C4F8: Proc_6_60_E62BC4(var_DC)
  loc_196C4FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1220378
  'Data Table: 542AD8
  Dim var_90 As String
  Dim var_9C As TextBox
  Dim var_114 As Double
  Dim var_10C As String
  Dim unk_542AEE As Connection15
  Dim var_94 As Fields15
  Dim var_AC As Variant
  Dim var_11C As Label
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_121FEA0: On Error Goto loc_1220371
  loc_121FEC6: Call Proc_229_83_100B3F4(Proc_5_1_100CB50("ADD", Me))
  loc_121FED1: Call Proc_229_82_FEC2B4(global_92)
  loc_121FEDB: var_90 = CStr(MemVar_1F920EC)
  loc_121FEE9: Set var_94 = Me.Txt
  loc_121FEEF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_121FEF7: var_9C.Text = var_90
  loc_121FF0C: Call Proc_229_86_11843B4(MemVar_1F92044)
  loc_121FF1F: Set var_94 = Me.Txt
  loc_121FF25: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_121FF2D: var_9C.Text = var_90
  loc_121FF7C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C, CStr(Format(Time, "hh:nn")))
  loc_121FF84: var_9C.Text = 1
  loc_121FF9F: var_AC = Time
  loc_121FFFA: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_AC, "HH:MM"))), 5)), ":", ".", 1, -1, 0)
  loc_1220017: var_114 = Val(var_8C)
  loc_1220048: var_10C = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND " & CStr(var_114) & " BETWEEN FromTime AND ToTime"
  loc_1220051: unk_542AEE.Execute var_10C, var_AC, -1
  loc_122005C: Set var_88 = Me.Txt
  loc_1220089: If (Me.Recordset15.RecordCount > 0) Then
  loc_122009E:   var_94 = Me.Recordset15.Fields
  loc_12200A6:   var_9C = var_94.Item("Name")
  loc_12200B7:   var_90 = Proc_6_38_E68A98(CVar(var_9C), var_94, var_114, 1)
  loc_12200C4:   Me.lblSession.Caption = var_90
  loc_12200D6: End If
  loc_12200E4: Set var_94 = Me.Txt
  loc_12200EA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_9C, var_96)
  loc_12200F2: 1 = var_9C.Visible
  loc_1220104: If (var_96 = &HFF) Then
  loc_1220112:   If (global_172 = "Auto") Then
  loc_1220115:     Call Command1_Click()
  loc_1220128:     Set var_94 = Me.Txt
  loc_122012E:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_9C, var_90)
  loc_1220136:     1 = var_9C.Tag
  loc_1220162:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_122017A:       var_90 = "INI"
  loc_1220188:       Call Proc_229_83_100B3F4(Proc_5_1_100CB50(var_90, Me), global_92)
  loc_12201AA:       If (Me.RecordCount > 0) Then
  loc_12201AD:         Call Proc_229_80_16C07AC(var_90)
  loc_12201B2:       End If
  loc_12201B2:       Exit Sub
  loc_12201B3:     End If
  loc_12201B3:   End If
  loc_12201C1:   Set var_94 = Me.Txt
  loc_12201C7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_9C)
  loc_12201E1:   If (var_9C.Enabled = &HFF) Then
  loc_12201EF:     Set var_94 = Me.Txt
  loc_12201F5:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB))
  loc_12201FD:     var_9C.SetFocus
  loc_122020C:   Else
  loc_122021A:     Set var_94 = Me.Txt
  loc_1220220:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C)
  loc_1220228:     var_96 = var_9C.Visible
  loc_1220241:     Set var_11C = Me.Txt
  loc_1220247:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_120, var_122)
  loc_122024F:     (var_96 = &HFF) = var_120.Enabled
  loc_1220266:     If (var_9C And (var_122 = &HFF)) Then
  loc_1220274:       Set var_94 = Me.Txt
  loc_122027A:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4))
  loc_1220282:       var_9C.SetFocus
  loc_1220291:     Else
  loc_1220295:       Set var_94 = Me.FGrid
  loc_12202A6:     End If
  loc_12202A6:   End If
  loc_12202A9: Else
  loc_12202B7:   Set var_94 = Me.Txt
  loc_12202BD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, var_96)
  loc_12202C5:   FGrid.DispID_8001 = var_9C.Visible
  loc_12202D7:   If (var_96 = &HFF) Then
  loc_12202E5:     Set var_94 = Me.Txt
  loc_12202EB:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C)
  loc_12202F3:     var_9C.SetFocus
  loc_1220302:   Else
  loc_1220310:     Set var_94 = Me.Txt
  loc_1220316:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_1220330:     If (var_9C.Visible = &HFF) Then
  loc_122033E:       Set var_94 = Me.Txt
  loc_1220344:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_122034C:       var_9C.SetFocus
  loc_122035B:     Else
  loc_122035F:       Set var_94 = Me.FGrid
  loc_1220370:     End If
  loc_1220370:   End If
  loc_1220370: End If
  loc_1220370: Exit Sub
  loc_1220371: ' Referenced from: 121FEA0
  loc_1220371: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_1220376: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB209C
  'Data Table: 542AD8
  loc_EB2010: On Error Goto loc_EB2095
  loc_EB204A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB2070:   Call Proc_229_83_100B3F4(Proc_5_1_100CB50("INI", Me))
  loc_EB207B:   Call Proc_229_80_16C07AC(global_92)
  loc_EB208C:   Me.FrmeDisc.Visible = False
  loc_EB2094: End If
  loc_EB2094: Exit Sub
  loc_EB2095: ' Referenced from: EB2010
  loc_EB2095: Proc_6_60_E62BC4()
  loc_EB209A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '147AB38
  'Data Table: 542AD8
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_110 As Fields15
  Dim var_154 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_174 As Variant
  Dim var_198 As String
  Dim unk_542AEE As Connection15
  Dim var_1BC As Recordset15
  Dim var_1C0 As Fields15
  Dim var_1D4 As Variant
  Dim var_98 As Recordset15
  Dim var_208 As String
  Dim var_20C As String
  Dim var_220 As String
  Dim var_164 As Variant
  Dim var_124 As TextBox
  Dim var_994 As Double
  Dim var_2D4 As TextBox
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_470 As Variant
  Dim var_4E0 As Variant
  Dim var_9A4 As Double
  Dim var_59C As Variant
  Dim var_638 As TextBox
  Dim var_75C As Variant
  Dim var_77C As Variant
  Dim var_9B4 As Double
  Dim var_9BC As Double
  Dim var_1B8 As Variant
  Dim var_1E4 As Variant
  Dim var_2AC As Variant
  Dim var_41C As Variant
  Dim var_65C As Variant
  Dim var_72C As Variant
  Dim var_8F4 As Variant
  Dim var_944 As Variant
  loc_147A084: On Error Goto loc_147AAEA
  loc_147A095: If (Proc_183_56_FE8818(global_92) = &HFF) Then
  loc_147A098:   Exit Sub
  loc_147A099: End If
  loc_147A0D5: var_110 = Me.Fields
  loc_147A0DD: var_124 = var_110.Item("SearchCode")
  loc_147A0E2: var_154 = 1
  loc_147A0EF: var_134 = CVar(var_124) 'Address
  loc_147A0F6: var_164 = Mid(var_134, 4, var_154)
  loc_147A101: var_1D0 = 0
  loc_147A12F: var_174 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_164 
  loc_147A146: unk_542AEE.Execute CStr(var_174 & "'<>'N'"), var_1B8, -1
  loc_147A14E: var_1BC = var_1BC.Fields
  loc_147A156: var_1D0 = var_1C0.Item(var_1C0)
  loc_147A15E: var_1D4 = var_1D4.Value
  loc_147A197: If (var_1E4 > 0) Then
  loc_147A1F0:   unk_542AEE.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_147A1FB:   Set var_98 = var_110
  loc_147A247:   var_10C = "**** Deletion Not Allowed ****"
  loc_147A267:   var_20C = "Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. "
  loc_147A288:   var_220 = var_20C & CStr(var_98.Fields.Item(0).Value) & vbCrLf & vbCrLf & vbCrLf
  loc_147A292:   MsgBox(CVar(var_220 & vbCrLf), &H10, var_10C, var_134, var_154)
  loc_147A2C0:   Exit Sub
  loc_147A2C1: End If
  loc_147A2F8: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_10C, var_134) = 6) Then
  loc_147A325:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_10C, var_134, var_154, var_164, var_174)
  loc_147A342:   unk_542AEE.BeginTrans var_224
  loc_147A358:   var_94 = Me.Bookmark 'Variant
  loc_147A3D0:   For var_22A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_22A 'Integer
  loc_147A3E2:     var_FC = CVar(CLng(&HA)) 'Long
  loc_147A3FC:     var_EC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_147A429:     Set var_BC = Me.FGrid
  loc_147A43A:     var_198 = CStr(var_BC.TextMatrix))
  loc_147A468:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_198)) <> CDbl(0))) Then
  loc_147A479:       Set var_A8 = Me.Txt
  loc_147A47F:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_BC, var_198, CVar(CLng(var_9E)), (Trim(var_EC) <> vbNullString))
  loc_147A487:       var_FC = var_BC.Text
  loc_147A49A:       Set var_110 = Me.Txt
  loc_147A4A0:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_20C, CVar(CLng(var_9E)))
  loc_147A4A8:       1 = var_124.Text
  loc_147A4B5:       var_994 = Val(var_20C)
  loc_147A4C3:       Set var_1BC = Me.Txt
  loc_147A4C9:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_1C0, var_994)
  loc_147A4D8:       Proc_6_7_F25D88(var_EC, CVar(var_1C0))
  loc_147A4FD:       Set var_2D0 = Me.Txt
  loc_147A503:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_2D4, var_220)
  loc_147A50B:       var_110 = var_2D4.Tag
  loc_147A514:       var_324 = CVar(CLng(var_9E)) 'Long
  loc_147A51C:       var_344 = CVar(CLng(0)) 'Long
  loc_147A56D:       var_42C = CVar(CLng(var_9E)) 'Long
  loc_147A575:       var_44C = CVar(CLng(&HA)) 'Long
  loc_147A584:       var_470 = Me.FGrid.TextMatrix)
  loc_147A59C:       var_4E0 = CVar(CLng(7)) 'Long
  loc_147A5BE:       var_9A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_147A5DC:       var_59C = Me.FGrid.TextMatrix)
  loc_147A624:       Set var_634 = Me.Txt
  loc_147A62A:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_638, var_63C, var_59C, CVar(CLng(9)), CVar(CLng(var_9E)), var_9A4)
  loc_147A632:       var_4E0 = var_638.Tag
  loc_147A645:       Proc_6_7_F25D88(var_6DC, Now, CVar(CLng(var_9E)), var_470)
  loc_147A64E:       var_75C = CVar(CLng(var_9E)) 'Long
  loc_147A656:       var_77C = CVar(CLng(8)) 'Long
  loc_147A6A9:       var_9B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_147A6DA:       var_9BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_147A701:       var_208 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values ('" & var_198
  loc_147A74A:       var_1B8 = CVar(var_208 & "'," & CStr(var_994) & ",") & var_EC & ",'" & CVar(global_156) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_147A79F:       var_2AC = var_1B8 & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_147A7DF:       var_41C = var_2AC & "','" & CVar(var_220) & "','Y'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Format(Time, "hh:nn") & "','" 
  loc_147A821:       var_65C = var_41C & CVar(CStr(var_470)) & "'," & CVar(var_9A4) & ",'" & IIf((CStr(var_59C) = "Yes"), "Y", "N") & "','" & CVar(var_63C) 
  loc_147A857:       var_72C = var_65C & "','" & CVar(MemVar_1F920C8) & "'," & var_6DC & ",'A','" & CVar(CStr(IIf((Me.ChkNCTOKEN.Value = 1), "Y", "N"))) 
  loc_147A893:       var_8F4 = CVar(Proc_6_38_E68A98(var_9C, var_9BC, CVar(CLng(8)), CVar(CLng(var_9E)), var_9B4, CVar(CLng(7)), CVar(CLng(var_9E)))) 'String
  loc_147A8A9:       var_944 = var_72C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar((var_9B4 * var_9BC)) & ",'" & var_8F4 & "','D','" & CVar(MemVar_1F92078) 
  loc_147A8C0:       unk_542AEE.Execute CStr(var_944 & "')"), var_988, -1
  loc_147A994:     End If
  loc_147A997:   Next var_22A 'Integer
  loc_147A9B0:   var_198 = "Update TOKEN Set DelFlag='Y',U_Name1='" & MemVar_1F920C8
  loc_147A9B7:   var_10C = CVar(var_198 & "',U_EntDt1=") 'String
  loc_147A9C8:   Proc_6_7_F25D88(var_EC, Date, var_10C)
  loc_147A9D0:   var_134 = var_1B8 & var_EC 
  loc_147AA21:   unk_542AEE.Execute CStr(var_134 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), -1, var_110
  loc_147AA51:   unk_542AEE.CommitTrans
  loc_147AA61:   Me.Requery -1
  loc_147AA81:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_147AA8E:     Me.Bookmark = var_94
  loc_147AA96:   Else
  loc_147AAAA:     If (Me.EOF = 0) Then
  loc_147AAB3:       Me.MoveLast
  loc_147AAB8:     End If
  loc_147AAB8:   End If
  loc_147AAB8:   Call Proc_229_80_16C07AC()
  loc_147AAD9:   Proc_5_0_110649C(&HFF, Me)
  loc_147AAE1: End If
  loc_147AAE6: Set var_98 = Nothing
  loc_147AAE9: Exit Sub
  loc_147AAEA: ' Referenced from: 147A084
  loc_147AAF0: unk_542AEE.RollbackTrans
  loc_147AAFD: Set var_A8 = Err()
  loc_147AB03: Call 0.Method_arg_2C (var_198, global_92)
  loc_147AB24: MsgBox(CVar(var_198), &H10, " Deletion Message", var_10C, var_134)
  loc_147AB37: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '121712C
  'Data Table: 542AD8
  Dim var_12C As Integer
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_542AEE As Connection15
  Dim var_118 As Variant
  Dim var_11C As Fields15
  Dim var_130 As Field20
  Dim var_140 As Integer
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_88 As Recordset15
  loc_1216C94: On Error Goto loc_1217123
  loc_1216CA5: If (Proc_183_55_FE7900(global_92) = &HFF) Then
  loc_1216CA8:   Exit Sub
  loc_1216CA9: End If
  loc_1216CAF: var_12C = 0
  loc_1216D0E: unk_542AEE.Execute CStr("Select count(*) from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And IsNull(ContraDocId,'')<>''"), var_114, -1
  loc_1216D16: var_118 = var_118.Fields
  loc_1216D1E: var_12C = var_11C.Item(var_11C)
  loc_1216D26: var_130 = var_130.Value
  loc_1216D53: If (var_140 > 0) Then
  loc_1216D92:   var_118 = Me.Fields
  loc_1216D9F:   var_140 = 1
  loc_1216DAC:   var_114 = CVar(var_118.Item("SearchCode")) 'Address
  loc_1216DE6:   var_180 = "Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(var_114, 4, var_140) & "'<>'N'" 
  loc_1216DF4:   unk_542AEE.Execute CStr(var_180), var_1A0, -1
  loc_1216DFF:   Set var_88 = var_130
  loc_1216E39:   If (var_88.RecordCount > 0) Then
  loc_1216E56:     var_A0 = var_88.Fields.Item(0)
  loc_1216EB6:     var_D0 = CVar("Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. " & CStr(var_A0.Value) & vbCrLf & vbCrLf & vbCrLf & vbCrLf) 'String
  loc_1216EB9:     MsgBox(var_D0, &H10, "**** Modification Not Allowed ****", var_114, var_140)
  loc_1216EE7:     Exit Sub
  loc_1216EE8:   End If
  loc_1216EE8: End If
  loc_1216F0B: Call Proc_229_83_100B3F4(Proc_5_1_100CB50("EDIT", Me, global_92), var_130)
  loc_1216F23: Set var_8C = Me.Txt
  loc_1216F29: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_1216F31: var_A0.Enabled = False
  loc_1216F49: Me.ChkNCTOKEN.Enabled = False
  loc_1216F5C: Set var_8C = Me.Txt
  loc_1216F62: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_A0)
  loc_1216F6A: var_A0.SetFocus
  loc_1216F8D: If (Me.RecordCount > 0) Then
  loc_1216FE6:   unk_542AEE.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From TOKEN K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_114, -1
  loc_1216FF1:   Set var_88 = var_118
  loc_121700E:   Set var_1C8 = var_88 
  loc_1217043:   global_136 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1217085:   global_148 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_12170C5:   global_140 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_1217103:   global_152 = CStr(var_88.Fields.Item("Pending").Value)
  loc_1217116:   Set var_1C8 = Nothing 
  loc_121711A: End If
  loc_121711F: Set var_88 = Nothing
  loc_1217122: Exit Sub
  loc_1217123: ' Referenced from: 1216C94
  loc_1217123: Proc_6_60_E62BC4(global_140, var_118)
  loc_1217128: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AEAC
  'Data Table: 542AD8
  loc_E1AEA1: Me.Global.Unload Me
  loc_E1AEA9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FFF3A8
  'Data Table: 542AD8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_542AEE As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Field20
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Integer
  Dim var_174 As String
  Dim var_19C As Recordset15
  Dim var_1A0 As Fields15
  Dim var_1B4 As Field20
  loc_FFF1EC: On Error Goto loc_FFF3A2
  loc_FFF206: If (Me.RecordCount <= 0) Then
  loc_FFF20F:   var_B8 = "Information"
  loc_FFF224:   var_A8 = "No Records To Search."
  loc_FFF22A:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_FFF23A:   Exit Sub
  loc_FFF23B: End If
  loc_FFF242: var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],CAST (K.VDate AS VARCHAR(11)) as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((TOKEN K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F92078
  loc_FFF257: Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_FFF25F: var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_FFF26E: var_D8 = 0
  loc_FFF29E: unk_542AEE.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_FFF2A6: var_118 = var_118.Fields
  loc_FFF2AE: var_D8 = var_11C.Item(var_11C)
  loc_FFF2B6: var_120 = var_120.Value
  loc_FFF2BE: var_140 = (var_130 + var_130)
  loc_FFF2CB: var_170 = ") AND (K.VType='T" & var_140 & "' OR K.VType='" 
  loc_FFF2D5: var_1B0 = 0
  loc_FFF2F5: var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_FFF305: unk_542AEE.Execute var_174 & "'", var_198, -1
  loc_FFF30D: var_19C = var_19C.Fields
  loc_FFF315: var_1B0 = var_1A0.Item(var_1A0)
  loc_FFF31D: var_1B4 = var_1B4.Value
  loc_FFF377: Proc_6_126_F1BCC0("800,1000,800,1000,2000,2000", CStr(var_1C4 & var_1C4 & "') Order by Docid"))
  loc_FFF385: MemVar_1F92120 = Me
  loc_FFF39C: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FFF3A1: Exit Sub
  loc_FFF3A2: ' Referenced from: FFF1EC
  loc_FFF3A2: Proc_6_60_E62BC4(var_170)
  loc_FFF3A7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3BB98
  'Data Table: 542AD8
  loc_E3BB88: Proc_5_0_110649C(&HFF, Me)
  loc_E3BB90: Call Proc_229_80_16C07AC(global_92)
  loc_E3BB95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3BB38
  'Data Table: 542AD8
  loc_E3BB28: Proc_5_0_110649C(&HFF, Me)
  loc_E3BB30: Call Proc_229_80_16C07AC(global_92)
  loc_E3BB35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37338
  'Data Table: 542AD8
  Dim arg_60FF As Double
  loc_E37328: Proc_5_0_110649C(&HFF, Me)
  loc_E37330: Call Proc_229_80_16C07AC(global_92)
  loc_E37335: Exit Sub
  loc_E37336: arg_60FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B8F8
  'Data Table: 542AD8
  loc_E3B8E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B8F0: Call Proc_229_80_16C07AC(global_92)
  loc_E3B8F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1C160F4
  'Data Table: 542AD8
  Dim var_130 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_144 As String
  Dim unk_542AEE As Connection15
  Dim var_100 As Recordset15
  Dim var_168 As Variant
  Dim var_120 As Variant
  Dim var_174 As String
  Dim var_BC As Recordset15
  Dim var_E6 As Integer
  Dim var_154 As Variant
  Dim var_188 As Fields15
  Dim var_184 As Variant
  Dim var_1CC As Variant
  Dim var_164 As Variant
  Dim var_E8 As Integer
  Dim Me As Recordset15
  Dim var_170 As Variant
  Dim var_1E4 As String
  Dim var_D0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_18C As Field20
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1F4 As Variant
  Dim var_1DC As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_B8 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_27C As Variant
  Dim var_304 As String
  Dim var_308 As String
  Dim var_19C As Variant
  Dim var_21C As Variant
  Dim var_34C As Variant
  Dim var_35C As Variant
  Dim var_DC As Recordset15
  Dim var_2FC As Variant
  Dim var_338 As Variant
  Dim var_300 As String
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2AC As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_3D4 As Variant
  Dim var_3E4 As Variant
  loc_1C103C0: On Error Goto loc_1C160ED
  loc_1C103E0: Proc_6_17_EAA2B0(var_120, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C103F6: unk_542AEE.Execute CStr(var_164 & var_120), -1, var_168
  loc_1C10401: Set var_100 = var_168
  loc_1C10427: If (var_100.RecordCount > 0) Then
  loc_1C10461:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C104A7:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C104ED:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C1050B:   var_168 = var_100.Fields
  loc_1C1051B:   var_120 = CVar(var_168.Item("KOTHeader4")) 'Address
  loc_1C10533:   var_FC = CStr(Trim(CVar(Proc_6_38_E68A98(var_120))))
  loc_1C10542: End If
  loc_1C10547: Set var_100 = Nothing
  loc_1C10571: unk_542AEE.Execute "Select CKOTPrintYN,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_120, -1
  loc_1C1057C: Set var_BC = var_168
  loc_1C105A0: If (var_BC.RecordCount > 0) Then
  loc_1C105CB:   var_140 = CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C105E5:   var_E4 = CStr(Ucase(Trim(var_140)))
  loc_1C1061C:   Proc_6_39_E7C810(var_140, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C10625:   var_E6 = CInt(var_140)
  loc_1C10658:   Proc_6_39_E7C810(var_140, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C1066C:   var_188 = var_BC.Fields
  loc_1C10683:   Proc_6_39_E7C810(var_19C, CVar(var_188.Item("NoOfKot")))
  loc_1C106B0:   var_E8 = CInt(IIf((var_140 <= 0), 1, var_19C))
  loc_1C106CB: End If
  loc_1C106D3: If (var_E4 = "Y") Then
  loc_1C106D9:   Call Proc_229_72_1B9BCD4(var_1DE, var_E8)
  loc_1C106E4:   If (var_1DE = 0) Then
  loc_1C106E7:     Exit Sub
  loc_1C106E8:   End If
  loc_1C106E8: End If
  loc_1C106EB: MemVar_1F923C0 = "N"
  loc_1C106F2: MemVar_1F923C4 = "N"
  loc_1C106F9: MemVar_1F923C8 = "K"
  loc_1C10704: var_144 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN, K.Remarks,K.TokenNo,K.U_Name , K.ContraDocId, D.ShortName " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode)"
  loc_1C10749: var_88 = CStr(CVar(var_144 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C10768: var_140 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C10788: var_170 = Me.Fields.Item("SearchCode")
  loc_1C10790: var_120 = var_170.Value
  loc_1C10798: var_164 = var_140 & var_120 
  loc_1C107A1: var_184 = var_164 & "'" 
  loc_1C107A6: var_8C = CStr(var_184)
  loc_1C107C3: If (var_88 = vbNullString) Then
  loc_1C107C6:   Exit Sub
  loc_1C107C7: End If
  loc_1C107CF: If (var_8C = vbNullString) Then
  loc_1C107D2:   Exit Sub
  loc_1C107D3: End If
  loc_1C107F7: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4), var_170, var_144, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_120)
  loc_1C107FF: -1 = var_170.Text
  loc_1C10818: unk_542AEE.Execute var_188 & var_144 & "' AND CONTRADOCID IS NULL", var_E6, Me.Txt
  loc_1C1084F: If (var_188.RecordCount = 1) Then
  loc_1C10855:   var_C8 = "New Order"
  loc_1C1085B: Else
  loc_1C10862:   Set var_168 = Me.LblState
  loc_1C10870:   var_C8 = var_168.Caption
  loc_1C10876: End If
  loc_1C1088C: unk_542AEE.Execute var_88, var_120, -1
  loc_1C10897: Set var_B4 = var_168
  loc_1C108B6: unk_542AEE.Execute "SELECT KOTPrinting FROM Enviro", var_120, -1
  loc_1C108C1: Set var_D0 = var_168
  loc_1C108D9: var_168 = var_B4.Fields
  loc_1C10903: If (Proc_6_38_E68A98(CVar(var_168.Item("ContraDocId")), var_168) <> vbNullString) Then
  loc_1C1091F:   MsgBox("Sale Bill Already Generated !!", &H40, var_140, var_164, var_184)
  loc_1C1092F:   Exit Sub
  loc_1C10930: End If
  loc_1C1093F: var_168 = var_D0.Fields
  loc_1C1094F: var_120 = CVar(var_168.Item("KOTPrinting")) 'Address
  loc_1C1097A: If (Trim(CVar(Proc_6_38_E68A98(var_120))) = vbNullString) Then
  loc_1C10991:   var_144 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C109A1:   unk_542AEE.Execute var_144 & "MK'", var_120, -1
  loc_1C109AC:   Set var_BC = var_168
  loc_1C109BF: Else
  loc_1C109D3:   var_140 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C10A1A:   unk_542AEE.Execute CStr(var_140 & Me.Fields.Item("SearchCode").Value & "'"), var_19C, -1
  loc_1C10A25:   Set var_BC = var_188
  loc_1C10A41:   ' Referenced from:   1C160D1
  loc_1C10A41: End If
  loc_1C10A50: If Not(var_BC.EOF) Then
  loc_1C10A9D:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrinting")), var_188))) = "Seperate for All Kitchen") Then
  loc_1C10AA7:     var_140 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C10B20:     var_1DC = var_140 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C10B5C:     var_8C = CStr(var_1DC & var_BC.Fields.Item("Code").Value & "'")
  loc_1C10B8A:   Else
  loc_1C10B91:     var_140 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C10BA9:     var_168 = Me.Fields
  loc_1C10BB9:     var_120 = var_168.Item("SearchCode").Value
  loc_1C10BCF:     var_8C = CStr(var_140 & var_120 & "'")
  loc_1C10BE4:   End If
  loc_1C10BFA:   unk_542AEE.Execute var_8C, var_120, -1
  loc_1C10C05:   Set var_B8 = var_168
  loc_1C10C14:   var_16C = var_B8.RecordCount
  loc_1C10C22:   If (var_16C > 0) Then
  loc_1C10C34:     var_168 = var_BC.Fields
  loc_1C10C53:     var_25C = Trim(CVar(var_168.Item("PrintType"))) 'Variant
  loc_1C10C68:     If (var_25C = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C10C78:       Call Proc_229_73_EF9A8C(New, var_168, var_168)
  loc_1C10C80:       Set var_D4 = var_168
  loc_1C10C86:       Me.Recordset15.MoveFirst
  loc_1C10C8B:       ' Referenced from: 1C11A19
  loc_1C10C9A:       If Not(var_B4.EOF) Then
  loc_1C10C9F:         var_92 = 0
  loc_1C10CB6:         var_168 = var_B4.Fields
  loc_1C10DC7:         var_2FC = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_168.Item("ShortName")), 1, var_92))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), var_168) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C10DD0:         var_90 = CStr(var_2FC)
  loc_1C10E14:         If (var_92 = 0) Then
  loc_1C10E1A:           var_1E4 = vbNullString
  loc_1C10E35:           Call Proc_229_74_F14B10(var_D4, vbNullString, vbNullString)
  loc_1C10E71:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C10EA8:           var_140 = CVar(Me.LblRest.Caption) 'String
  loc_1C10EAB:           var_164 = (Space(1) + var_140)
  loc_1C10EC0:           Call Proc_229_74_F14B10(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_92)))))
  loc_1C10EF2:           Call Proc_229_74_F14B10(var_D4, vbNullString, var_90, vbNullString)
  loc_1C10F21:           Call Proc_229_74_F14B10(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C10F55:           Proc_6_39_E7C810(var_140, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C10F89:           var_1E4 = vbNullString
  loc_1C10F92:           Call Proc_229_74_F14B10(var_D4, var_1E4, " TOKEN No.   : " & Proc_6_45_EAD428(CStr(var_140), &HA, vbNullString))
  loc_1C1104E:           var_308 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1C11062:           Call Proc_229_74_F14B10(var_D4, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_308)
  loc_1C110A9:           var_170 = var_B4.Fields.Item("Remarks")
  loc_1C110F4:           Call Proc_229_74_F14B10(var_D4, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_170), vbNullString), &H1E))
  loc_1C11126:           Set var_168 = Me.Label1
  loc_1C1112C:           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C11197:           var_304 = vbNullString
  loc_1C111A6:           var_19C = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA)))
  loc_1C111AF:           var_1AC = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_168.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1C111B6:           var_1DC = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1C111B9:           var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_168.Item("ShortName")), 1, &H12))), 1, 3)) + var_1DC)
  loc_1C111CE:           Call Proc_229_74_F14B10(var_D4, vbNullString, CStr("* NC LOT *"))
  loc_1C11205:           var_174 = vbNullString
  loc_1C1121A:           Call Proc_229_74_F14B10(var_D4, vbNullString, var_C0)
  loc_1C11226:         End If
  loc_1C1124C:         var_164 = (var_174 + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1C11260:         var_19C = (Trim(CVar(var_170)) + Space(1))
  loc_1C11277:         var_1AC = CVar(Proc_6_52_EAD4F4("Qty", 6, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_168.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1C1127A:         var_1CC = (var_304 + var_1AC)
  loc_1C1127F:         var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C1129D:         var_174 = vbNullString
  loc_1C112B2:         Call Proc_229_74_F14B10(var_D4, vbNullString, var_AC)
  loc_1C112C1:         var_174 = vbNullString
  loc_1C112D6:         Call Proc_229_74_F14B10(var_D4, vbNullString, var_C0)
  loc_1C112E8:         var_92 = (var_92 + 4)
  loc_1C112EE:         var_B8.MoveFirst
  loc_1C112F3:         ' Referenced from: 1C11674
  loc_1C11302:         If Not(var_B8.EOF) Then
  loc_1C1133B:           var_188 = var_B8.Fields
  loc_1C11352:           Proc_6_39_E7C810(var_1DC, CVar(var_188.Item("qty")), &H12)
  loc_1C1137D:           var_1BC = "Cancel"
  loc_1C113B7:           var_1F4 = "Y"
  loc_1C113F5:           var_184 = (1 + CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C11409:           var_1AC = (Space(1) + Space(1))
  loc_1C11422:           var_27C = (var_174 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1DC, "0")), 3, var_1AC)))
  loc_1C11438:           var_34C = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item(var_1BC).Value = var_1F4), "Void", vbNullString)), 5, CVar(var_B4.Fields.Item("NCTOKEN")))) 'String
  loc_1C1143B:           var_35C = (var_174 + var_34C)
  loc_1C1149A:           Call Proc_229_74_F14B10(var_D4, vbNullString, CStr(var_35C))
  loc_1C114AC:           var_92 = (var_92 + 1)
  loc_1C114E8:           If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C11519:             var_304 = vbNullString
  loc_1C11540:             Call Proc_229_74_F14B10(var_D4, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1C11560:             var_92 = (var_92 + 1)
  loc_1C11563:           End If
  loc_1C1156D:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C11588:             Call Proc_229_74_F14B10(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C115B2:             Call Proc_229_74_F14B10(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C115C6:             var_94 = (var_94 + 1)
  loc_1C115E6:             Call Proc_229_74_F14B10(var_D4, vbNullString, var_90, vbNullString, 0)
  loc_1C1160F:             Call Proc_229_74_F14B10(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C11633:             Call Proc_229_74_F14B10(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C11657:             Call Proc_229_74_F14B10(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C11669:             var_92 = (var_92 + 4)
  loc_1C1166C:           End If
  loc_1C1166F:           var_B8.MoveNext
  loc_1C11674:           GoTo loc_1C112F3
  loc_1C11677:         End If
  loc_1C11681:         If (&H12 < (&H45 - var_A6)) Then
  loc_1C11684:           ' Referenced from: 1C116C6
  loc_1C1168E:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C116AF:             Call Proc_229_74_F14B10(var_D4, vbNullString, vbNullString, vbNullString, &H12)
  loc_1C116C3:             var_92 = (var_92 + 1)
  loc_1C116C6:             GoTo loc_1C11684
  loc_1C116C9:           End If
  loc_1C116C9:         End If
  loc_1C116E1:         Call Proc_229_74_F14B10(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C1172F:         var_304 = vbNullString
  loc_1C1174F:         Call Proc_229_74_F14B10(var_D4, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1C117AA:         Call Proc_229_74_F14B10(var_D4, vbNullString, CStr(" ***  " & Trim(var_C8) & "  ***"), vbNullString)
  loc_1C11809:         var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C11817:         unk_542AEE.Execute CStr(var_164), Space(1), -1
  loc_1C11878:         If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C118A2:           Call Proc_229_74_F14B10(var_D4, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1C118B5:         Else
  loc_1C118C2:           var_130 = "Select Printed from TOKEN where docid='"
  loc_1C118F8:           var_154 = "'"
  loc_1C1190B:           unk_542AEE.Execute CStr(var_130 & Me.Fields.Item("SearchCode").Value & var_154), Space(1), -1
  loc_1C11933:           var_110 = 0
  loc_1C11969:           If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(var_110)), var_188, var_188) = "Y") Then
  loc_1C11993:             Call Proc_229_74_F14B10(var_D4, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1C119A6:           Else
  loc_1C119C4:             Call Proc_229_74_F14B10(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C119D2:           End If
  loc_1C119D2:         End If
  loc_1C119D7:         Set var_DC = Nothing
  loc_1C11A01:         Call Proc_229_74_F14B10(var_D4, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1C11A14:         var_B4.MoveNext
  loc_1C11A19:         GoTo loc_1C10C8B
  loc_1C11A1C:       End If
  loc_1C11A1F:       var_D8 = "WinTOKENPrint"
  loc_1C11A46:       Set var_168 = var_D4 
  loc_1C11A4D:       CreateFieldDefFile(var_168, MemVar_1F920B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C11A8F:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_110, var_168)
  loc_1C11A9A:       MemVar_1F921E4 = var_168
  loc_1C11AC3:       Call 0.Method_arg_64 (var_168, CVar(var_168), var_130, var_154)
  loc_1C11ACB:       Call 0.Method_arg_2C (var_304, var_304)
  loc_1C11B0C:       If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C11B59:         If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C11B88:           Call Proc_229_71_F0ED98(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C11B96:         End If
  loc_1C11B96:       End If
  loc_1C11BA5:       var_130 = CVar(var_E8) 'Integer
  loc_1C11BB4:       Call 0.Method_Me8 (False, var_130, var_154)
  loc_1C11BBE:       Set var_D4 = Nothing
  loc_1C11BC4:     Else
  loc_1C11BCF:       If (var_25C = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1C11BD5:         var_B4.MoveFirst
  loc_1C11BDA:         ' Referenced from:   1C129AE
  loc_1C11BE9:         If Not(var_B4.EOF) Then
  loc_1C11BEF:           var_110 = "ShortName"
  loc_1C11C1F:           var_184 = 3
  loc_1C11C42:           var_1BC = "NCTOKEN"
  loc_1C11C4E:           var_188 = var_B4.Fields
  loc_1C11C56:           var_18C = var_188.Item(var_1BC)
  loc_1C11C8B:           var_1F4 = (Proc_6_38_E68A98(CVar(var_18C), var_1F4) = "Y")
  loc_1C11CF8:           var_154 = "LAU"
  loc_1C11D02:           var_2EC = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_110)), var_1BC))), 1, var_184)) = var_154) 'Variant
  loc_1C11D0C:           var_2FC = IIf(var_2EC, IIf(var_1F4, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C11D15:           var_90 = CStr(var_2FC)
  loc_1C11D56:           var_D8 = "TOKENPrint"
  loc_1C11D7D:           Set var_168 = var_B8 
  loc_1C11D84:           CreateFieldDefFile(var_168, MemVar_1F920B4 & "\" & var_D8 & ".ttx")
  loc_1C11D90:           Set var_B8 = var_168
  loc_1C11DC6:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_110, var_168)
  loc_1C11DD1:           MemVar_1F921E4 = var_168
  loc_1C11DFA:           Call 0.Method_arg_64 (var_168, CVar(var_B8), var_130)
  loc_1C11E02:           Call 0.Method_arg_2C (var_154, &HFF)
  loc_1C11E10:           Call 0.Method_arg_150 (var_168)
  loc_1C11E5D:           var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C11E6B:           unk_542AEE.Execute CStr(var_164), var_184, -1
  loc_1C11ECC:           If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C11ED2:             var_CC = "Changed TOKEN"
  loc_1C11ED8:           Else
  loc_1C11F2E:             unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C11F62:             var_168 = var_188.Fields
  loc_1C11F6A:             var_170 = var_168.Item(0)
  loc_1C11F7B:             var_144 = Proc_6_38_E68A98(CVar(var_170), var_188)
  loc_1C11F8C:             If (var_144 = "Y") Then
  loc_1C11F92:               var_CC = "DUPLICATE TOKEN"
  loc_1C11F98:             Else
  loc_1C11F9B:               var_CC = vbNullString
  loc_1C11F9E:             End If
  loc_1C11F9E:           End If
  loc_1C11FA3:           Set var_DC = Nothing
  loc_1C11FB7:           Call 0.Method_arg_90 (var_168, var_16C, var_AE)
  loc_1C11FBF:           Call 0.Method_arg_24 (1)
  loc_1C11FCB:           For var_360 =  To CInt(var_16C):   var_188 = var_360 'Integer
  loc_1C11FE4:             Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C11FEC:             Call 0.Method_arg_20 (var_170)
  loc_1C11FF4:             Call 0.Method_arg_30 (var_144)
  loc_1C1200A:             var_370 = Ucase(CVar(var_144)) 'Variant
  loc_1C1203A:             If (var_370 = Ucase("comp_name")) Then
  loc_1C1205E:               Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C12066:               Call 0.Method_arg_20 (var_170)
  loc_1C1206E:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1C12084:             Else
  loc_1C120A6:               If (var_370 = Ucase("comp_add1")) Then
  loc_1C120CA:                 Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C120D2:                 Call 0.Method_arg_20 (var_170)
  loc_1C120DA:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1C120F0:               Else
  loc_1C12112:                 If (var_370 = Ucase("comp_pin")) Then
  loc_1C12136:                   Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C1213E:                   Call 0.Method_arg_20 (var_170)
  loc_1C12146:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1C1215C:                 Else
  loc_1C1217E:                   If (var_370 = Ucase("comp_GSTIN")) Then
  loc_1C121A2:                     Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C121AA:                     Call 0.Method_arg_20 (var_170)
  loc_1C121B2:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1C121C8:                   Else
  loc_1C121EA:                     If (var_370 = Ucase("RestName")) Then
  loc_1C121F7:                       Set var_168 = Me.LblRest
  loc_1C12220:                       Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C12228:                       Call 0.Method_arg_20 (var_188)
  loc_1C12230:                       Call 0.Method_arg_38 ("'" & var_168.Caption & "'")
  loc_1C1224A:                     Else
  loc_1C1226C:                       If (var_370 = Ucase("mTitle")) Then
  loc_1C12290:                         Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C12298:                         Call 0.Method_arg_20 (var_170)
  loc_1C122A0:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C122B6:                       Else
  loc_1C122BE:                         var_120 = "Header1"
  loc_1C122D8:                         If (var_370 = Ucase(var_120)) Then
  loc_1C122E6:                           Proc_6_17_EAA2B0(var_120)
  loc_1C12302:                           Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C1230A:                           Call 0.Method_arg_20 (CStr(var_120))
  loc_1C12312:                           Call 0.Method_arg_38 (var_F0)
  loc_1C12327:                         Else
  loc_1C1232F:                           var_120 = "Header2"
  loc_1C12349:                           If (var_370 = Ucase(var_120)) Then
  loc_1C12357:                             Proc_6_17_EAA2B0(var_120)
  loc_1C12373:                             Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C1237B:                             Call 0.Method_arg_20 (CStr(var_120))
  loc_1C12383:                             Call 0.Method_arg_38 (var_F4)
  loc_1C12398:                           Else
  loc_1C123A0:                             var_120 = "Header3"
  loc_1C123BA:                             If (var_370 = Ucase(var_120)) Then
  loc_1C123C8:                               Proc_6_17_EAA2B0(var_120)
  loc_1C123E4:                               Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C123EC:                               Call 0.Method_arg_20 (CStr(var_120))
  loc_1C123F4:                               Call 0.Method_arg_38 (var_F8)
  loc_1C12409:                             Else
  loc_1C12411:                               var_120 = "Header4"
  loc_1C1242B:                               If (var_370 = Ucase(var_120)) Then
  loc_1C12439:                                 Proc_6_17_EAA2B0(var_120)
  loc_1C12455:                                 Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C1245D:                                 Call 0.Method_arg_20 (CStr(var_120))
  loc_1C12465:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C1247A:                               Else
  loc_1C1248B:                                 var_140 = Ucase("TOKENNo")
  loc_1C1249C:                                 If (var_370 = var_140) Then
  loc_1C124CA:                                   Proc_6_39_E7C810(var_140, CVar(var_B4.Fields.Item("VNo")))
  loc_1C124D6:                                   var_154 = "'"
  loc_1C124F3:                                   Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C124FB:                                   Call 0.Method_arg_20 (var_18C)
  loc_1C12503:                                   Call 0.Method_arg_38 (CStr("'" & var_140 & var_154))
  loc_1C12522:                                 Else
  loc_1C12544:                                   If (var_370 = Ucase("TOKENDate")) Then
  loc_1C12590:                                     Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C12598:                                     Call 0.Method_arg_20 (var_18C)
  loc_1C125A0:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C125BD:                                   Else
  loc_1C125DF:                                     If (var_370 = Ucase("TOKENTime")) Then
  loc_1C1262B:                                       Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C12633:                                       Call 0.Method_arg_20 (var_18C)
  loc_1C1263B:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C12658:                                     Else
  loc_1C1267A:                                       If (var_370 = Ucase("Remarks")) Then
  loc_1C12697:                                         var_170 = var_B4.Fields.Item("Remarks")
  loc_1C126C6:                                         Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C126CE:                                         Call 0.Method_arg_20 (var_18C)
  loc_1C126D6:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_170)) & "'")
  loc_1C126F3:                                       Else
  loc_1C12715:                                         If (var_370 = Ucase("TableTitle")) Then
  loc_1C12726:                                           Set var_168 = Me.Label1
  loc_1C1272C:                                           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C12764:                                           Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C1276C:                                           Call 0.Method_arg_20 (var_18C)
  loc_1C12774:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_170)) & "'"))
  loc_1C12793:                                         Else
  loc_1C127B5:                                           If (var_370 = Ucase("TableNo")) Then
  loc_1C12801:                                             Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C12809:                                             Call 0.Method_arg_20 (var_18C)
  loc_1C12811:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1C1282E:                                           Else
  loc_1C12850:                                             If (var_370 = Ucase("Steward")) Then
  loc_1C12865:                                               var_168 = var_B4.Fields
  loc_1C1286D:                                               var_170 = var_168.Item("WaiterName")
  loc_1C1289C:                                               Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C128A4:                                               Call 0.Method_arg_20 (var_18C)
  loc_1C128AC:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_170)) & "'")
  loc_1C128C9:                                             Else
  loc_1C128EB:                                               If (var_370 = Ucase("TOKENStatus")) Then
  loc_1C1290F:                                                 Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C12917:                                                 Call 0.Method_arg_20 (var_170)
  loc_1C1291F:                                                 Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1C12935:                                               Else
  loc_1C12957:                                                 If (var_370 = Ucase("TOKENRemark")) Then
  loc_1C1297B:                                                   Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C12983:                                                   Call 0.Method_arg_20 (var_170)
  loc_1C1298B:                                                   Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C1299E:                                                 End If
  loc_1C1299E:                                               End If
  loc_1C1299E:                                             End If
  loc_1C1299E:                                           End If
  loc_1C1299E:                                         End If
  loc_1C1299E:                                       End If
  loc_1C1299E:                                     End If
  loc_1C1299E:                                   End If
  loc_1C1299E:                                 End If
  loc_1C1299E:                               End If
  loc_1C1299E:                             End If
  loc_1C1299E:                           End If
  loc_1C1299E:                         End If
  loc_1C1299E:                       End If
  loc_1C1299E:                     End If
  loc_1C1299E:                   End If
  loc_1C1299E:                 End If
  loc_1C1299E:               End If
  loc_1C1299E:             End If
  loc_1C129A1:           Next var_360 'Integer
  loc_1C129A9:           var_B4.MoveNext
  loc_1C129AE:           GoTo loc_1C11BDA
  loc_1C129B1:         End If
  loc_1C129D9:         var_144 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))
  loc_1C129EA:         If (var_144 <> vbNullString) Then
  loc_1C12A37:           If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C12A66:             Call Proc_229_71_F0ED98(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C12A74:           End If
  loc_1C12A74:         End If
  loc_1C12A7A:         If (var_E6 <= 0) Then
  loc_1C12A83:           Call 0.Method_arg_50 (var_144)
  loc_1C12A8D:           Set var_170 = Nothing
  loc_1C12AA7:           Set var_168 = MemVar_1F921E4 
  loc_1C12AB3:           Proc_6_99_1483714(var_168, 0, var_144)
  loc_1C12ABE:           MemVar_1F921E4 = var_168
  loc_1C12ACF:         Else
  loc_1C12AED:           Call 0.Method_Me8 (False, CVar(var_E6), var_154, var_1BC)
  loc_1C12AF2:         End If
  loc_1C12AF5:       Else
  loc_1C12B00:         If (var_25C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C12B05:           Close 1
  loc_1C12B2C:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C12B3C:           var_B4.MoveFirst
  loc_1C12B41:           ' Referenced from:     1C139E4
  loc_1C12B50:           If Not(var_B4.EOF) Then
  loc_1C12B55:             var_92 = 0
  loc_1C12B90:             var_184 = 3
  loc_1C12C30:             var_300 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), &HFF)
  loc_1C12C4C:             var_174 = var_300
  loc_1C12C73:             var_2EC = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_184)) = "LAU") 'Variant
  loc_1C12C7D:             var_2FC = IIf(var_2EC, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), var_1F4) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_174 = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C12C86:             var_90 = CStr(var_2FC)
  loc_1C12CCA:             If (var_92 = 0) Then
  loc_1C12CCF:               Print 1
  loc_1C12D03:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C12D14:               If (var_F0 <> vbNullString) Then
  loc_1C12D3D:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C12D43:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C12D55:               End If
  loc_1C12D5D:               If (var_F4 <> vbNullString) Then
  loc_1C12D86:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C12D8C:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C12D9E:               End If
  loc_1C12DA6:               If (var_F8 <> vbNullString) Then
  loc_1C12DCF:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C12DD5:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C12DE7:               End If
  loc_1C12DEF:               If (var_FC <> vbNullString) Then
  loc_1C12E18:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C12E1E:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C12E30:               End If
  loc_1C12E32:               Print 1
  loc_1C12E62:               Call Proc_229_89_EFA78C(Me.LblRest.Caption, "D", &H28)
  loc_1C12E6C:               Print 1, var_300
  loc_1C12E92:               Call Proc_229_89_EFA78C(var_90, "D", &H28)
  loc_1C12E9C:               Print 1, var_174
  loc_1C12EB0:               Print 1
  loc_1C12EB8:               Print 1
  loc_1C12EF1:               Proc_6_39_E7C810(var_184, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C12F13:               var_140 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1C12F1D:               var_1AC = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_184), &HA, Proc_6_45_EAD428(CStr(var_184), &HA, var_174))))
  loc_1C12F23:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_184))
  loc_1C12FD5:               var_140 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1C12FDF:               var_19C = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_300), &HC)))
  loc_1C12FE8:               var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_300), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_300), &HC))), &HA, var_174))) + " ")
  loc_1C12FF2:               var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_300), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C12FF8:               Print 1, "* NC LOT *"
  loc_1C1304D:               var_170 = var_B4.Fields.Item("Remarks")
  loc_1C1308A:               var_140 = (Chr(&HF) + "Remarks :     ")
  loc_1C13094:               var_19C = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_170)), &H32)))
  loc_1C1309B:               var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_170)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_170)))) + Chr(&H12))
  loc_1C130A1:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C130DA:               Set var_168 = Me.Label1
  loc_1C130E0:               Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C13131:               var_300 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C13151:               var_19C = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA)))
  loc_1C1315A:               var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_170)))) + ":     ")
  loc_1C13164:               var_21C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_300, 5)))
  loc_1C1316A:               Print 1, "* NC LOT *"
  loc_1C131AF:               var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C131B5:               Print 1, CVar(var_170)
  loc_1C131C2:             End If
  loc_1C131E8:             var_164 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1C131F4:             var_174 = "Qty"
  loc_1C13202:             var_19C = (Trim(CVar(var_170)) + CVar(Proc_6_52_EAD4F4(var_174, 6)))
  loc_1C13207:             var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_174, 6))), &HA, var_174)))
  loc_1C13234:             var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C1323A:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C1325D:             var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C13263:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C13276:             var_92 = (var_92 + 4)
  loc_1C1327C:             var_B8.MoveFirst
  loc_1C13281:             ' Referenced from:     1C13622
  loc_1C13290:             If Not(var_B8.EOF) Then
  loc_1C132C9:               var_188 = var_B8.Fields
  loc_1C132E0:               Proc_6_39_E7C810(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1C13383:               var_184 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C1339C:               var_22C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_174, 6)))))
  loc_1C133B2:               var_2FC = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C133B5:               var_338 = (&H12 + var_2FC)
  loc_1C1340E:               var_140 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C13414:               Print 1, Space(3)
  loc_1C13427:               var_92 = (var_92 + 1)
  loc_1C13463:               If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C134A6:                 var_140 = (Chr(&HF) + "(")
  loc_1C134B0:                 var_19C = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C134B9:                 var_1AC = (CVar(var_188.Item("qty")) + ")")
  loc_1C134BF:                 Print 1, Chr(&H12)
  loc_1C134E0:                 var_92 = (var_92 + 1)
  loc_1C134E3:               End If
  loc_1C134ED:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C13506:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C1350C:                 Print 1, Space(3)
  loc_1C1351E:                 Print 1, "Contd."
  loc_1C13536:                 Print 1, Chr(&HC)
  loc_1C13545:                 var_94 = (var_94 + 1)
  loc_1C1355B:                 Call Proc_229_90_11FF334(1, 0, &H28, var_30A)
  loc_1C1357A:                 Call Proc_229_89_EFA78C(var_90, "B", &H28, var_174, var_30A)
  loc_1C13584:                 Print 1, var_174
  loc_1C13593:                 var_92 = &H12
  loc_1C135AC:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C135B2:                 Print 1, Space(3)
  loc_1C135D5:                 var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C135DB:                 Print 1, Space(3)
  loc_1C135FE:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C13604:                 Print 1, Space(3)
  loc_1C13617:                 var_92 = (var_92 + 4)
  loc_1C1361A:               End If
  loc_1C1361D:               var_B8.MoveNext
  loc_1C13622:               GoTo loc_1C13281
  loc_1C13625:             End If
  loc_1C1362F:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C13632:               ' Referenced from:     1C13653
  loc_1C1363C:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C13644:                 Print 1, vbNullString
  loc_1C13650:                 var_92 = (var_92 + 1)
  loc_1C13653:                 GoTo loc_1C13632
  loc_1C13656:               End If
  loc_1C13656:             End If
  loc_1C1366C:             var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C13672:             Print 1, Space(3)
  loc_1C136D3:             var_140 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1C136DA:             var_184 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C136DD:             var_19C = (Space(3) + var_184)
  loc_1C136E3:             Print 1, CVar(var_188.Item("qty"))
  loc_1C13727:             var_140 = (Chr(&HF) + "***  ")
  loc_1C1372E:             var_184 = Space(3) & Trim(var_C8) 
  loc_1C1373D:             Print 1, var_184 & "  ***"
  loc_1C13798:             var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C137A6:             unk_542AEE.Execute CStr(var_164), var_184, -1
  loc_1C13807:             If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C13838:               Call Proc_229_89_EFA78C(Proc_6_45_EAD428("Changed TOKEN", &H14, var_188), "D", &H28, var_300)
  loc_1C13842:               Print 1, var_300
  loc_1C13858:             Else
  loc_1C138AE:               unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C1390C:               If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1C13922:                 var_304 = Proc_6_45_EAD428("DUPLICATE TOKEN", &H14)
  loc_1C1393D:                 Call Proc_229_89_EFA78C(var_304, "D", &H28)
  loc_1C13947:                 Print 1, var_300
  loc_1C1395D:               Else
  loc_1C1395F:                 Print 1
  loc_1C13965:               End If
  loc_1C13965:             End If
  loc_1C1396A:             Set var_DC = Nothing
  loc_1C13982:             var_140 = (Chr(&HF) + "** ")
  loc_1C1398C:             var_164 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C13995:             var_184 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C1399B:             Print 1, var_184
  loc_1C139AF:             var_B4.MoveNext
  loc_1C139B6:             Print 1
  loc_1C139BE:             Print 1
  loc_1C139C6:             Print 1
  loc_1C139CE:             Print 1
  loc_1C139D6:             Print 1
  loc_1C139DE:             Print 1
  loc_1C139E4:             GoTo loc_1C12B41
  loc_1C139E7:           End If
  loc_1C139E9:           Close 1
  loc_1C13A24:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_300) <> vbNullString) Then
  loc_1C13A4C:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C13AA4:             var_164 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C13AAA:             Print 1, var_164
  loc_1C13ACA:           Else
  loc_1C13AEF:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C13B26:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C13B37:           End If
  loc_1C13B39:           Close 1
  loc_1C13B43:           If (MemVar_1F923B8 = "Y") Then
  loc_1C13B75:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C13B86:           Else
  loc_1C13B8E:             For var_374 = 1 To var_E8:       var_EA = var_374 'Integer
  loc_1C13BC3:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C13BD4:             Next var_374 'Integer
  loc_1C13BD9:           End If
  loc_1C13BDC:         Else
  loc_1C13BE7:           If (var_25C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C13BEC:             Close 1
  loc_1C13C13:             Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C13C23:             var_B4.MoveFirst
  loc_1C13C28:             ' Referenced from:       1C14B1B
  loc_1C13C37:             If Not(var_B4.EOF) Then
  loc_1C13C77:               var_184 = 3
  loc_1C13CBF:               var_1E4 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")))
  loc_1C13D5A:               var_2EC = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_184)) = "LAU") 'Variant
  loc_1C13D64:               var_2FC = IIf(var_2EC, IIf((var_1E4 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C13D6D:               var_90 = CStr(var_2FC)
  loc_1C13DB1:               If (0 = 0) Then
  loc_1C13DB6:                 Print 1
  loc_1C13DEA:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C13DFB:                 If (var_F0 <> vbNullString) Then
  loc_1C13E24:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C13E2A:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C13E3C:                 End If
  loc_1C13E44:                 If (var_F4 <> vbNullString) Then
  loc_1C13E6D:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C13E73:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C13E85:                 End If
  loc_1C13E8D:                 If (var_F8 <> vbNullString) Then
  loc_1C13EB6:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C13EBC:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C13ECE:                 End If
  loc_1C13ED6:                 If (var_FC <> vbNullString) Then
  loc_1C13EFF:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C13F05:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C13F17:                 End If
  loc_1C13F19:                 Print 1
  loc_1C13F5D:                 Call Proc_229_89_EFA78C(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C13F67:                 Print 1, var_304
  loc_1C13FA5:                 Call Proc_229_89_EFA78C(Proc_6_45_EAD428(var_90, &H14), "D", &H28)
  loc_1C13FAF:                 Print 1, var_1E4
  loc_1C13FC7:                 Print 1
  loc_1C13FCF:                 Print 1
  loc_1C14008:                 Proc_6_39_E7C810(var_184, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C1402A:                 var_140 = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1C14034:                 var_1AC = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_184), &HA, var_1E4)))
  loc_1C1403A:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_184))
  loc_1C140EC:                 var_140 = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1C140F3:                 var_184 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C140F6:                 var_19C = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + var_184)
  loc_1C140FF:                 var_1AC = (CVar(Proc_6_45_EAD428(CStr(var_184), &HA, Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1C14109:                 var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_184)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C1410F:                 Print 1, "* NC LOT *"
  loc_1C14164:                 var_170 = var_B4.Fields.Item("Remarks")
  loc_1C141A1:                 var_140 = (Chr(&HF) + "Remarks :       ")
  loc_1C141AB:                 var_19C = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_170)), &H32)))
  loc_1C141B2:                 var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_170)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_170)), &H32))) + Chr(&H12))
  loc_1C141B8:                 Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C141F1:                 Set var_168 = Me.Label1
  loc_1C141F7:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C14248:                 var_300 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C14268:                 var_19C = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA)))
  loc_1C14271:                 var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA))) + ":       ")
  loc_1C1427B:                 var_21C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_300, 5)))
  loc_1C14281:                 Print 1, "* NC LOT *"
  loc_1C142C6:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C142CC:                 Print 1, CVar(var_170)
  loc_1C142D9:               End If
  loc_1C142FF:               var_164 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1C1430B:               var_174 = "Qty"
  loc_1C14319:               var_19C = (Trim(CVar(var_170)) + CVar(Proc_6_52_EAD4F4(var_174, 6)))
  loc_1C1431E:               var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_174, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_170))), &HA))))
  loc_1C1434B:               var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C14351:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C14374:               var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C1437A:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C1438D:               var_92 = (var_92 + 4)
  loc_1C14393:               var_B8.MoveFirst
  loc_1C14398:               ' Referenced from:       1C14739
  loc_1C143A7:               If Not(var_B8.EOF) Then
  loc_1C143E0:                 var_188 = var_B8.Fields
  loc_1C143F7:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1C1449A:                 var_184 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C144B3:                 var_22C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_174, 6)))))
  loc_1C144C9:                 var_2FC = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C144CC:                 var_338 = (&H12 + var_2FC)
  loc_1C14525:                 var_140 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C1452B:                 Print 1, Space(3)
  loc_1C1453E:                 var_92 = (var_92 + 1)
  loc_1C1457A:                 If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C145BD:                   var_140 = (Chr(&HF) + "(")
  loc_1C145C7:                   var_19C = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C145D0:                   var_1AC = (CVar(var_188.Item("qty")) + ")")
  loc_1C145D6:                   Print 1, Chr(&H12)
  loc_1C145F7:                   var_92 = (var_92 + 1)
  loc_1C145FA:                 End If
  loc_1C14604:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C1461D:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C14623:                   Print 1, Space(3)
  loc_1C14635:                   Print 1, "Contd."
  loc_1C1464D:                   Print 1, Chr(&HC)
  loc_1C1465C:                   var_94 = (var_94 + 1)
  loc_1C14672:                   Call Proc_229_90_11FF334(1, 0, &H28, var_30A)
  loc_1C14691:                   Call Proc_229_89_EFA78C(var_90, "B", &H28, var_174, var_30A)
  loc_1C1469B:                   Print 1, var_174
  loc_1C146AA:                   var_92 = &H12
  loc_1C146C3:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C146C9:                   Print 1, Space(3)
  loc_1C146EC:                   var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C146F2:                   Print 1, Space(3)
  loc_1C14715:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C1471B:                   Print 1, Space(3)
  loc_1C1472E:                   var_92 = (var_92 + 4)
  loc_1C14731:                 End If
  loc_1C14734:                 var_B8.MoveNext
  loc_1C14739:                 GoTo loc_1C14398
  loc_1C1473C:               End If
  loc_1C14746:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C14749:                 ' Referenced from:       1C1476A
  loc_1C14753:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C1475B:                   Print 1, vbNullString
  loc_1C14767:                   var_92 = (var_92 + 1)
  loc_1C1476A:                   GoTo loc_1C14749
  loc_1C1476D:                 End If
  loc_1C1476D:               End If
  loc_1C14783:               var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C14789:               Print 1, Space(3)
  loc_1C147DF:               var_1E4 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)
  loc_1C147EA:               var_140 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1C147F4:               var_19C = (Space(3) + CVar(var_1E4))
  loc_1C147FA:               Print 1, CVar(var_188.Item("qty"))
  loc_1C1483E:               var_140 = (Chr(&HF) + "***  ")
  loc_1C14845:               var_184 = Space(3) & Trim(var_C8) 
  loc_1C14854:               Print 1, var_184 & "  ***"
  loc_1C148AF:               var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C148BD:               unk_542AEE.Execute CStr(var_164), var_184, -1
  loc_1C1491E:               If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C1494F:                 Call Proc_229_89_EFA78C(Proc_6_45_EAD428("Changed TOKEN", &H14, var_188), "D", &H28, var_300)
  loc_1C14959:                 Print 1, var_300
  loc_1C1496F:               Else
  loc_1C149C5:                 unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C14A23:                 If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1C14A54:                   Call Proc_229_89_EFA78C(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C14A5E:                   Print 1, var_300
  loc_1C14A74:                 Else
  loc_1C14A76:                   Print 1
  loc_1C14A7C:                 End If
  loc_1C14A7C:               End If
  loc_1C14A81:               Set var_DC = Nothing
  loc_1C14A99:               var_140 = (Chr(&HF) + "** ")
  loc_1C14AA3:               var_164 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C14AAC:               var_184 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C14AB2:               Print 1, var_184
  loc_1C14AC6:               var_B4.MoveNext
  loc_1C14ACD:               Print 1
  loc_1C14AD5:               Print 1
  loc_1C14ADD:               Print 1
  loc_1C14AE5:               Print 1
  loc_1C14AED:               Print 1
  loc_1C14AF5:               Print 1
  loc_1C14AFD:               Print 1
  loc_1C14B05:               Print 1
  loc_1C14B0D:               Print 1
  loc_1C14B15:               Print 1
  loc_1C14B1B:               GoTo loc_1C13C28
  loc_1C14B1E:             End If
  loc_1C14B20:             Close 1
  loc_1C14B5B:             If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_300) <> vbNullString) Then
  loc_1C14B83:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C14BDB:               var_164 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C14BE1:               Print 1, var_164
  loc_1C14C01:             Else
  loc_1C14C26:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C14C5D:               Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C14C6E:             End If
  loc_1C14C70:             Close 1
  loc_1C14C7A:             If (MemVar_1F923B8 = "Y") Then
  loc_1C14CAC:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C14CBD:             Else
  loc_1C14CC5:               For var_378 = 1 To var_E8:         var_EA = var_378 'Integer
  loc_1C14CFA:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C14D0B:               Next var_378 'Integer
  loc_1C14D10:             End If
  loc_1C14D13:           Else
  loc_1C14D1E:             If Not (var_25C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C14D2C:               If (var_25C = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1C14D2F:               End If
  loc_1C14D31:               Close 1
  loc_1C14D58:               Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C14D68:               var_B4.MoveFirst
  loc_1C14D6D:               ' Referenced from:         1C15DFA
  loc_1C14D7C:               If Not(var_B4.EOF) Then
  loc_1C14EA9:                 var_2FC = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C14EB2:                 var_90 = CStr(var_2FC)
  loc_1C14F1E:                 var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1C14F2D:                 If (0 = 0) Then
  loc_1C14F32:                   Print 1
  loc_1C14F40:                   If (var_F0 <> vbNullString) Then
  loc_1C14F76:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H2A)))
  loc_1C14F7D:                     var_19C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C14F83:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C14F99:                   End If
  loc_1C14FA1:                   If (var_F4 <> vbNullString) Then
  loc_1C14FD7:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1C14FDE:                     var_19C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C14FE4:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C14FFA:                   End If
  loc_1C15002:                   If (var_F8 <> vbNullString) Then
  loc_1C15038:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1C1503F:                     var_19C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C15045:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C1505B:                   End If
  loc_1C15063:                   If (var_FC <> vbNullString) Then
  loc_1C15099:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1C150A0:                     var_19C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C150A6:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C150BC:                   End If
  loc_1C150BE:                   Print 1
  loc_1C150ED:                   var_19C = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C15130:                   var_2DC = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C15142:                   var_2FC = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)))
  loc_1C1515A:                   var_1DC = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C15161:                   var_24C = (CVar(var_B4.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1C15168:                   var_338 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") + var_2FC)
  loc_1C1516F:                   var_35C = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C15175:                   Print 1, var_35C
  loc_1C151C3:                   var_184 = (40 - Len(Trim(var_90)))
  loc_1C151F6:                   var_24C = (40 - Len(Trim(var_90)))
  loc_1C15208:                   var_2AC = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C15220:                   var_1CC = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C1522A:                   var_1DC = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C15231:                   var_2CC = (CVar(var_B4.Fields.Item("NCTOKEN")) + var_2AC)
  loc_1C15238:                   var_2EC = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C1523E:                   Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1C1525D:                   var_92 = &H12
  loc_1C152A0:                   var_184 = Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), 40)))
  loc_1C152AC:                   var_1AC = (var_92 - Len(var_184))
  loc_1C1531A:                   var_2CC = CVar(var_BC.Fields.Item("Name")) 'Address
  loc_1C15335:                   var_338 = (var_92 - Len(Trim(CVar(Proc_6_38_E68A98(var_2CC, 40)))))
  loc_1C1535F:                   var_21C = (Chr(&HF) + Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2))))
  loc_1C15366:                   var_2AC = (Trim(var_90) + Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name"))))))
  loc_1C1536D:                   var_388 = (var_2AC + Space(CLng((IIf((var_B8.Fields.Item("Name").Value = "Name"), "Void", vbNullString) / 2))))
  loc_1C15374:                   var_3A8 = (var_388 + Chr(&H12))
  loc_1C1537A:                   Print 1, var_3A8
  loc_1C153B0:                   Print 1
  loc_1C153E2:                   var_164 = CVar(var_B4.Fields.Item("TokenNo")) 'Address
  loc_1C153E9:                   Proc_6_39_E7C810(var_184)
  loc_1C15418:                   var_140 = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1C15422:                   var_1AC = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EAD428(CStr(var_184), &HA)))
  loc_1C15429:                   var_1DC = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C1542F:                   Print 1, Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2)))
  loc_1C1549B:                   var_300 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC)
  loc_1C154F2:                   var_140 = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1C154FC:                   var_19C = (CVar(var_BC.Fields.Item("Name")) + CVar(var_300))
  loc_1C15505:                   var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(var_300)), &HA)) + " ")
  loc_1C1550F:                   var_21C = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C15516:                   var_24C = (Trim(var_90) + Chr(&H12))
  loc_1C1551C:                   Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name"))))
  loc_1C155B2:                   var_140 = (Chr(&HF) + "Remarks :         ")
  loc_1C155BC:                   var_19C = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20)))
  loc_1C155C3:                   var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20))), &HA)) + Chr(&H12))
  loc_1C155C9:                   Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C1560F:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15616:                   var_184 = (CVar(var_BC.Fields.Item("Name")) + Chr(&H12))
  loc_1C1561C:                   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))), &H20))
  loc_1C1562D:                 End If
  loc_1C15653:                 var_164 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Space(1))
  loc_1C1566D:                 var_19C = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1C15679:                 var_1AC = Space(1)
  loc_1C15681:                 var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 7))), &HA)) + var_1AC)
  loc_1C1569B:                 var_21C = (CVar(var_B4.Fields.Item("VTIME")) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1C156E4:                 var_140 = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C156EB:                 var_184 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C156F1:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C15725:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C1572C:                 var_184 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C15732:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C15749:                 var_92 = (var_92 + 4)
  loc_1C1574F:                 var_B8.MoveFirst
  loc_1C15754:                 ' Referenced from:         1C15A62
  loc_1C15763:                 If Not(var_B8.EOF) Then
  loc_1C1579C:                   var_188 = var_B8.Fields
  loc_1C157B3:                   Proc_6_39_E7C810(var_1AC, CVar(var_188.Item("qty")))
  loc_1C157FE:                   Proc_6_39_E7C810(var_2CC, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C158A1:                   var_184 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1, 1)) + Space(1))
  loc_1C158BA:                   var_22C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1AC, "0.000")), 7, CVar(Proc_6_52_EAD4F4("Qty", 7)))))
  loc_1C158CE:                   var_27C = (Chr(&H12) + Space(1))
  loc_1C158E4:                   var_2FC = CVar(Proc_6_52_EAD4F4(CStr(Format(var_2CC, "0.00")), 7, Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name"))))))) 'String
  loc_1C158E7:                   var_338 = (var_92 + var_2FC)
  loc_1C158FD:                   var_3D4 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C15900:                   var_3E4 = (IIf((var_B8.Fields.Item("Rate").Value = "0.00"), "Void", vbNullString) + var_3D4)
  loc_1C1597A:                   var_140 = (Chr(&HF) + CVar(CStr(var_3E4)))
  loc_1C15981:                   var_184 = (Space(1) + Chr(&H12))
  loc_1C15987:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C1599E:                   var_92 = (var_92 + 1)
  loc_1C159DA:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_92) <> vbNullString) Then
  loc_1C15A1D:                     var_140 = (Chr(&HF) + "(")
  loc_1C15A27:                     var_19C = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C15A30:                     var_1AC = (CVar(var_188.Item("qty")) + ")")
  loc_1C15A36:                     Print 1, var_1AC
  loc_1C15A57:                     var_92 = (var_92 + 1)
  loc_1C15A5A:                   End If
  loc_1C15A5D:                   var_B8.MoveNext
  loc_1C15A62:                   GoTo loc_1C15754
  loc_1C15A65:                 End If
  loc_1C15A88:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15A8F:                 var_184 = (Space(1) + Chr(&H12))
  loc_1C15A95:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1C15AFA:                 var_1AC = Chr(&H12)
  loc_1C15B07:                 var_140 = (Chr(&HF) + "User Name  :         ")
  loc_1C15B0E:                 var_184 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_92), &H14)) 'String
  loc_1C15B11:                 var_19C = (Space(1) + var_184)
  loc_1C15B18:                 var_1CC = (CVar(var_188.Item("qty")) + var_1AC)
  loc_1C15B1E:                 Print 1, "0.000"
  loc_1C15B89:                 var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C15B97:                 unk_542AEE.Execute CStr(var_164), var_184, -1
  loc_1C15BF8:                 If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C15C29:                   Call Proc_229_89_EFA78C(Proc_6_45_EAD428("Changed TOKEN", &H14), "D", &H28)
  loc_1C15C33:                   Print 1, var_300
  loc_1C15C49:                 Else
  loc_1C15C9F:                   unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C15CFD:                   If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, var_300) = "Y") Then
  loc_1C15D2E:                     Call Proc_229_89_EFA78C(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C15D38:                     Print 1, var_300
  loc_1C15D4E:                   Else
  loc_1C15D50:                     Print 1
  loc_1C15D56:                   End If
  loc_1C15D56:                 End If
  loc_1C15D5B:                 Set var_DC = Nothing
  loc_1C15D73:                 var_140 = (Chr(&HF) + "** ")
  loc_1C15D7D:                 var_164 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C15D86:                 var_184 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C15D8C:                 Print 1, var_184
  loc_1C15DA0:                 var_B4.MoveNext
  loc_1C15DA7:                 Print 1
  loc_1C15DAF:                 Print 1
  loc_1C15DB7:                 Print 1
  loc_1C15DBF:                 Print 1
  loc_1C15DE5:                 var_164 = (Chr(&H1B) + Chr(&H6D))
  loc_1C15DEB:                 Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C15DFA:                 GoTo loc_1C14D6D
  loc_1C15DFD:               End If
  loc_1C15DFF:               Close 1
  loc_1C15E3A:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_300) <> vbNullString) Then
  loc_1C15E62:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C15EBA:                 var_164 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C15EC0:                 Print 1, var_164
  loc_1C15EE0:               Else
  loc_1C15F05:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C15F3C:                 Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C15F4D:               End If
  loc_1C15F4F:               Close 1
  loc_1C15F59:               If (MemVar_1F923B8 = "Y") Then
  loc_1C15F8B:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C15F9C:               Else
  loc_1C15FA4:                 For var_3E8 = 1 To var_E8:           var_EA = var_3E8 'Integer
  loc_1C15FD9:                   var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C15FEA:                 Next var_3E8 'Integer
  loc_1C15FEF:               End If
  loc_1C15FEF:             End If
  loc_1C15FEF:           End If
  loc_1C15FEF:         End If
  loc_1C15FEF:       End If
  loc_1C15FEF:     End If
  loc_1C16045:     unk_542AEE.Execute CStr("UPDATE TOKEN SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C16064:   Else
  loc_1C160AE:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_184, CVar(var_188.Item("qty")), var_1AC)
  loc_1C160C9:   End If
  loc_1C160CC:   var_BC.MoveNext
  loc_1C160D1:   GoTo loc_1C10A41
  loc_1C160D4: End If
  loc_1C160D9: Set var_B4 = Nothing
  loc_1C160E1: Set var_B8 = Nothing
  loc_1C160E9: Set var_BC = Nothing
  loc_1C160EC: Exit Sub
  loc_1C160ED: ' Referenced from: 1C103C0
  loc_1C160ED: Proc_6_60_E62BC4(var_188)
  loc_1C160F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58070
  'Data Table: 542AD8
  Dim Me As Recordset15
  loc_E58037: Me.Requery -1
  loc_E58047: Me.Requery -1
  loc_E58057: Me.Requery -1
  loc_E58067: Me.Requery -1
  loc_E5806C: Exit Sub
  loc_E5806D: Set .global_24672 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1A9ABB0
  'Data Table: 542AD8
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A8 As Variant
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_1A0 As String
  Dim unk_542AEE As Connection15
  Dim var_AC As Variant
  Dim MemVar_1F920EC As Double
  Dim var_1A8 As Variant
  Dim var_1AC As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_88 As Variant
  Dim var_14C As Double
  Dim var_1BC As String
  Dim var_19C As Variant
  Dim var_1DC As Variant
  Dim var_210 As Field20
  Dim var_254 As Variant
  Dim var_268 As Variant
  Dim var_2FC As Variant
  Dim var_2EC As Variant
  Dim var_300 As Variant
  Dim var_354 As Variant
  Dim var_3AC As Variant
  Dim var_39C As Variant
  Dim var_3B0 As Variant
  Dim var_404 As Variant
  Dim var_3F4 As Variant
  Dim var_408 As Variant
  Dim var_44C As Variant
  Dim var_460 As Variant
  Dim var_57C As Variant
  Dim var_56C As Fields15
  Dim var_580 As Variant
  Dim var_5C4 As Fields15
  Dim var_5D8 As Field20
  Dim var_630 As Variant
  Dim var_674 As Variant
  Dim var_688 As Variant
  Dim var_75C As Variant
  Dim var_7B4 As Fields15
  Dim var_7C8 As Variant
  Dim var_820 As Field20
  Dim var_17C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_288 As Variant
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_378 As Variant
  Dim var_438 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_4D8 As Variant
  Dim var_4F8 As Variant
  Dim var_548 As Variant
  Dim var_5C0 As Variant
  Dim var_618 As Variant
  Dim var_650 As Variant
  Dim var_670 As Variant
  Dim var_6A8 As Variant
  Dim var_758 As Variant
  Dim var_790 As Variant
  Dim var_850 As Variant
  Dim var_8B8 As Variant
  Dim var_8F0 As Variant
  Dim var_900 As Variant
  Dim var_988 As Variant
  Dim var_9F0 As Variant
  Dim var_A00 As Variant
  Dim var_1C4 As TextBox
  Dim var_AAC As Double
  Dim var_A54 As String
  Dim var_AB4 As Double
  Dim var_ABC As Double
  Dim var_A5C As String
  Dim var_A60 As String
  Dim var_A70 As Variant
  Dim var_A34 As String
  Dim var_1D8 As Variant
  Dim var_220 As Variant
  Dim var_278 As Variant
  Dim var_3C0 As Variant
  Dim var_418 As Variant
  Dim var_470 As Variant
  Dim var_A94 As String
  Dim var_590 As Variant
  Dim var_728 As Variant
  Dim var_E80 As Double
  Dim var_A50 As String
  Dim var_E88 As Double
  Dim var_B68 As Variant
  Dim var_E94 As Double
  Dim var_BF8 As Variant
  Dim var_C18 As Variant
  Dim var_C38 As Variant
  Dim var_E9C As Double
  Dim var_C78 As Variant
  Dim var_C98 As Variant
  Dim var_CB8 As Variant
  Dim var_D48 As Variant
  Dim var_DD8 As Variant
  Dim var_DF8 As Variant
  Dim var_E18 As Variant
  Dim var_718 As Variant
  Dim var_BB8 As Variant
  Dim var_A20 As Variant
  Dim var_CC8 As Variant
  Dim var_CD8 As Variant
  Dim var_D58 As Variant
  Dim var_DA8 As Variant
  Dim var_B98 As Variant
  Dim var_CA8 As Variant
  Dim var_A2C As String
  loc_1A97050: On Error Goto loc_1A9AB96
  loc_1A9705E: Set var_A4 = Me.Txt
  loc_1A97064: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1A9708D: If (Proc_6_27_EA565C(var_A8, "Voucher Date") = 0) Then
  loc_1A97090:   Exit Sub
  loc_1A97091: End If
  loc_1A9709C: Set var_A4 = Me.Txt
  loc_1A970A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1A970CB: If (Proc_6_27_EA565C(var_A8, "Voucher No") = 0) Then
  loc_1A970CE:   Exit Sub
  loc_1A970CF: End If
  loc_1A970DA: If (LocalRestCode = vbNullString) Then
  loc_1A970F6:   MsgBox("Open RestaurantChange Master", 0, var_F0, var_110, var_130)
  loc_1A97106:   Exit Sub
  loc_1A97107: End If
  loc_1A97112: Set var_A4 = Me.Txt
  loc_1A97118: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_1A97141: If (Proc_6_27_EA565C(var_A8, "TOKEN Time") = 0) Then
  loc_1A97144:   Exit Sub
  loc_1A97145: End If
  loc_1A97145: var_C0 = 1
  loc_1A9714E: var_100 = 1
  loc_1A9716C: var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A97172: var_110 = Trim(var_F0)
  loc_1A9718E: If (var_110 = vbNullString) Then
  loc_1A971AA:   MsgBox("Fill Item Name ", 0, var_F0, var_110, var_130)
  loc_1A971CD:   Me.FGrid.Row = 1
  loc_1A971D9:   Set var_A4 = Me.FGrid
  loc_1A971FD:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A97205:   Exit Sub
  loc_1A97206: End If
  loc_1A97206: var_C0 = 1
  loc_1A97212: var_100 = CVar(CLng(4)) 'Long
  loc_1A9722C: var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A97232: var_110 = Trim(var_F0)
  loc_1A9724E: If (var_110 = vbNullString) Then
  loc_1A9726A:   MsgBox("Item Detail Required ", 0, var_F0, var_110, var_130)
  loc_1A9728D:   Me.FGrid.Row = 1
  loc_1A97299:   Set var_A4 = Me.FGrid
  loc_1A972AE:   var_C0 = CVar(CLng("14737632")) 'Long
  loc_1A972BD:   Me.FGrid.CellBackColor = var_C0
  loc_1A972C5:   Exit Sub
  loc_1A972C6: End If
  loc_1A972C9: Call Proc_229_81_1081A10(var_142, FGrid.DispID_8001, var_100, var_C0)
  loc_1A972D4: If (var_142 = 0) Then
  loc_1A972D7:   Exit Sub
  loc_1A972D8: End If
  loc_1A972E3: Set var_A4 = Me.TxtGrid
  loc_1A972E9: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A8, 0, FGrid.DispID_8001)
  loc_1A972F1: var_A8.Visible = var_100
  loc_1A972FD: Call Proc_229_84_F6D19C(var_C0)
  loc_1A97310: Set var_A4 = Me.Txt
  loc_1A97316: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1A9733E: If (Proc_6_91_EF2D40(CDate(var_A8.Text)) = 0) Then
  loc_1A9734C:   Set var_A4 = Me.Txt
  loc_1A97352:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1A9735A:   var_A8.SetFocus
  loc_1A97366:   Exit Sub
  loc_1A97367: End If
  loc_1A9739C: var_110 = IIf((Me.ChkNCTOKEN.Value = 1), "Y", "N")
  loc_1A973A5: var_9C = CStr(var_110)
  loc_1A973BA: Set var_A4 = Me.TopCtrl1
  loc_1A973C0: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_A8)
  loc_1A973D9: If (CStr() = "Add") Then
  loc_1A973F7:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A9740E:     var_F0 = "Reason"
  loc_1A97419:     var_D0 = "Please Specify, Reason of Editing ?"
  loc_1A9742A:     global_188 = InputBox(var_D0, var_F0, var_110, var_130, var_15C, var_17C, var_19C)
  loc_1A97442:   End If
  loc_1A97448:   var_E0 = 0
  loc_1A97465:   var_B0 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F92078
  loc_1A97475:   unk_542AEE.Execute var_B0 & "'", var_D0, -1
  loc_1A9747D:   var_A4 = var_A4.Fields
  loc_1A97485:   var_E0 = var_A8.Item(var_A8)
  loc_1A9748D:   var_AC = var_AC.Value
  loc_1A97497:   MemVar_1F920EC = CDate(var_F0)
  loc_1A974DE:   Set var_A4 = Me.Txt
  loc_1A974E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "Select Count(*) From TOKEN Where DocID='", var_D0, -1, var_AC)
  loc_1A97505:   unk_542AEE.Execute 0 & var_B0 & "'", var_1AC, var_F0
  loc_1A9750D:   MemVar_1F920EC = var_AC.Fields
  loc_1A97515:    = var_A8.Text.Item(var_F0)
  loc_1A9751D:    = var_1AC.Value
  loc_1A9754A:   If (var_F0 > 0) Then
  loc_1A97553:     Call Proc_229_86_11843B4(MemVar_1F92044)
  loc_1A97566:     Set var_A4 = Me.Txt
  loc_1A9756C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1A97574:     var_A8.Text = var_B0
  loc_1A97583:   End If
  loc_1A97586: Else
  loc_1A9759A:   var_F0 = "Reason"
  loc_1A975B6:   global_188 = InputBox("Please Specify, Reason of Editing ?", var_F0, var_110, var_130, var_15C, var_17C, var_19C)
  loc_1A975EB:   var_A8 = Me.Fields.Item("DocID")
  loc_1A97602:   global_112 = CStr(var_A8.Value)
  loc_1A97613: End If
  loc_1A97615: var_8A = &HFF
  loc_1A97621: unk_542AEE.BeginTrans var_1B0
  loc_1A9762A: Set var_A4 = Me.TopCtrl1
  loc_1A97630: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8A)
  loc_1A97638: var_B0 = CStr(var_B0)
  loc_1A97649: If (var_B0 = "Add") Then
  loc_1A97652:   Call Proc_229_86_11843B4(MemVar_1F92044)
  loc_1A97665:   Set var_A4 = Me.Txt
  loc_1A9766B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1A97673:   var_A8.Text = var_B0
  loc_1A97696:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1A976BC:   var_110 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_156 & "' And VP.Date_From<=") 'String
  loc_1A976CD:   Set var_A4 = Me.Txt
  loc_1A976D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8, var_1BC, var_110)
  loc_1A976DB:   var_17C = var_A8.Text
  loc_1A976E9:   Proc_6_7_F25D88(var_F0, CVar(var_1BC), -1)
  loc_1A97708:   unk_542AEE.Execute CStr(var_AC & var_F0 & " Order By VP.Date_From DESC"), var_B0, 
  loc_1A97713:   Set var_88 = var_AC
  loc_1A97751:   If (var_88.RecordCount > 0) Then
  loc_1A97762:     Set var_A4 = Me.Txt
  loc_1A97768:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1A97792:     var_AC = var_88.Fields
  loc_1A977CD:     Proc_6_7_F25D88(var_17C, CVar(var_88.Fields.Item("Date_From")))
  loc_1A97800:     var_1BC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_A8.Text)) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1A9781D:     var_130 = CVar(var_1BC & MemVar_1F92078 & "') and V_Type='") & var_AC.Item("V_Type").Value & "' and Date_From=" 
  loc_1A97832:     unk_542AEE.Execute CStr(var_130 & var_17C), var_1D8, -1
  loc_1A9786C:   End If
  loc_1A9786F: Else
  loc_1A978C5:   unk_542AEE.Execute CStr("Select * from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_1A978D0:   Set var_88 = var_AC
  loc_1A978EA:   ' Referenced from:   1A97F7E
  loc_1A978F9:   If Not(var_88.EOF) Then
  loc_1A97935:     var_AC = var_88.Fields
  loc_1A97945:     var_130 = var_AC.Item("VNo").Value
  loc_1A97961:     var_1C4 = var_88.Fields.Item("VDate")
  loc_1A97970:     Proc_6_7_F25D88(var_1D8, CVar(var_1C4), var_AC)
  loc_1A9798F:     var_210 = var_88.Fields.Item("vType")
  loc_1A979B6:     var_268 = var_88.Fields.Item("vPrefix")
  loc_1A97AEF:     var_580 = var_88.Fields.Item("Item")
  loc_1A97B5C:     var_674 = var_88.Fields
  loc_1A97B74:     var_718 = Now
  loc_1A97B7F:     Proc_6_7_F25D88(var_728, var_718, 1)
  loc_1A97BC5:     var_7C8 = var_88.Fields.Item("NCTOKEN")
  loc_1A97CA2:     var_E0 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKot,Rate,Amount,Reasons,DELFLAG,LogSite_Code,FreeSno,ItemRestCode) Values ('"
  loc_1A97CEA:     var_288 = var_E0 & var_88.Fields.Item("DocID").Value & "'," & var_130 & "," & var_1D8 & ",'" & var_210.Value & "','" & var_268.Value 
  loc_1A97D1D:     var_378 = var_288 & "','" & CVar(MemVar_1F92070) & "','" & var_88.Fields.Item("RestCode").Value & "','" & var_88.Fields.Item("RoomCat").Value 
  loc_1A97D4D:     var_480 = var_378 & "','" & var_88.Fields.Item("Roomtype").Value & "','" & var_88.Fields.Item("RoomNo").Value & "','" & var_88.Fields.Item("Pending").Value 
  loc_1A97D56:     var_4A0 = var_480 & "'," 
  loc_1A97D66:     var_4F8 = var_4A0 & var_88.Fields.Item("SNo").Value & ",'" 
  loc_1A97D9D:     var_650 = var_4F8 & Format(Time, "hh:nn") & "','" & var_580.Value & "'," & var_88.Fields.Item("qty").Value & ",'" & var_88.Fields.Item("VoidYN").Value 
  loc_1A97DE0:     var_790 = var_650 & "','" & var_674.Item("Waiter").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_728 & ",'" & var_88.Fields.Item("U_AE").Value 
  loc_1A97E19:     var_8B8 = var_790 & "','" & var_7C8.Value & "'," & var_88.Fields.Item("Rate").Value & "," & var_88.Fields.Item("Amount").Value & ",'" 
  loc_1A97E43:     var_988 = var_8B8 & var_88.Fields.Item("Reasons").Value & "','E','" & CVar(MemVar_1F92078) & "'," & var_88.Fields.Item("FreeSno").Value 
  loc_1A97E6A:     unk_542AEE.Execute CStr(var_988 & ",'" & var_88.Fields.Item("ItemRestcode").Value & "')"), var_A20, -1
  loc_1A97F79:     var_88.MoveNext
  loc_1A97F7E:     GoTo loc_1A978EA
  loc_1A97F81:   End If
  loc_1A97F98:   If (Me.RecordCount > 0) Then
  loc_1A97FF1:     unk_542AEE.Execute CStr("Delete From TOKEN Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_1A98063:     unk_542AEE.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_1A980AE:     var_A8 = Me.Fields.Item("SearchCode")
  loc_1A980B6:     var_D0 = var_A8.Value
  loc_1A980CB:     var_B0 = CStr("Delete From Stock Where DocID='" & var_D0 & "'")
  loc_1A980D5:     unk_542AEE.Execute var_B0, var_130, -1
  loc_1A980F1:   End If
  loc_1A9810F:   Set var_A4 = Me.Txt
  loc_1A98115:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "Delete From TOKEN Where DocID='", var_D0, -1, var_AC)
  loc_1A9811D:   var_AC = var_A8.Text
  loc_1A98136:   unk_542AEE.Execute var_AC & var_B0 & "'", var_AC, var_A24
  loc_1A98150: End If
  loc_1A9816B: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A98193:   For var_A28 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A28 'Integer
  loc_1A9819D:     var_C0 = CVar(CLng(var_92)) 'Long
  loc_1A981A5:     var_100 = CVar(CLng(9)) 'Long
  loc_1A981EE:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "YES") Then
  loc_1A981F4:       var_A0 = "Y"
  loc_1A981FA:     Else
  loc_1A981FD:       var_A0 = "N"
  loc_1A98200:     End If
  loc_1A9822C:     var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A98253:     Set var_A8 = Me.FGrid
  loc_1A98264:     var_B0 = CStr(var_A8.TextMatrix))
  loc_1A982B3:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1A982C4:       Set var_A4 = Me.Txt
  loc_1A982CA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (var_110 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A982D2:       var_100 = var_A8.Text
  loc_1A982EC:       Set var_AC = Me.FGrid
  loc_1A98305:       var_14C = Val(CStr(var_AC.TextMatrix)))
  loc_1A98328:       Set var_1AC = Me.Txt
  loc_1A9832E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_A40, var_14C, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A98336:       var_C0 = var_1C4.Text
  loc_1A98343:       var_AAC = Val(var_A40)
  loc_1A98351:       Set var_1DC = Me.Txt
  loc_1A98357:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210, var_AAC, 1)
  loc_1A98366:       Proc_6_7_F25D88(var_110, CVar(var_210), 1)
  loc_1A98379:       Set var_254 = Me.Txt
  loc_1A9837F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_268, var_A50)
  loc_1A98387:       var_1DC = var_268.Tag
  loc_1A98390:       var_2D8 = CVar(CLng(var_92)) 'Long
  loc_1A98398:       var_330 = CVar(CLng(&HA)) 'Long
  loc_1A983B7:       var_3AC = CVar(CLng(var_92)) 'Long
  loc_1A983BF:       var_404 = CVar(CLng(5)) 'Long
  loc_1A983CE:       var_320 = Me.FGrid.TextMatrix)
  loc_1A98408:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A98439:       var_ABC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9844A:       Proc_6_7_F25D88(var_4A0, Date, var_ABC, CVar(CLng(8)), CVar(CLng(var_92)), var_AB4, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A98453:       Set var_39C = Me.TopCtrl1
  loc_1A98459:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_320)
  loc_1A984AD:       var_3F4 = Me.Fields.Item("SearchCode")
  loc_1A984BE:       var_850 = CVar(CLng(var_92)) 'Long
  loc_1A984C6:       var_8A8 = CVar(CLng(0)) 'Long
  loc_1A984EF:       var_9F0 = CVar(CLng(var_92)) 'Long
  loc_1A984F7:       var_A70 = CVar(CLng(1)) 'Long
  loc_1A98500:       Set var_44C = Me.FGrid
  loc_1A98526:       var_1A0 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B0
  loc_1A9856D:       var_A44 = var_1A0 & "'," & CStr(var_14C) & ",'" & global_156 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "',"
  loc_1A985C8:       var_220 = CVar(var_A44 & CStr(var_AAC) & ",") & var_110 & ",'" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A98617:       var_3C0 = var_220 & "','" & CVar(var_A50) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_320)) & "'," & CVar(var_AB4) 
  loc_1A9865E:       var_548 = var_3C0 & "," & CVar(var_ABC) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4A0 & ",'" & IIf((CStr(var_4F8) = "Add"), "A", "E") 
  loc_1A986A8:       var_670 = var_548 & "','" & var_3F4.Value & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(var_A0) & "','" & CVar(MemVar_1F92078) 
  loc_1A986D3:       unk_542AEE.Execute CStr(var_670 & "','" & CVar(CStr(var_44C.TextMatrix))) & "')"), var_718, -1
  loc_1A987A8:     Else
  loc_1A987D4:       var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A987FB:       Set var_A8 = Me.FGrid
  loc_1A9880C:       var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9883A:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A9884B:         Set var_A4 = Me.Txt
  loc_1A98851:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (var_110 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A98859:         var_460 = var_A8.Text
  loc_1A98873:         Set var_AC = Me.FGrid
  loc_1A9888C:         var_14C = Val(CStr(var_AC.TextMatrix)))
  loc_1A9889C:         var_A2C = Me.LblVPrefix.Caption
  loc_1A988AF:         Set var_1AC = Me.Txt
  loc_1A988B5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_A40, var_14C, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A988BD:         var_6A8 = var_1C4.Text
  loc_1A988CA:         var_AAC = Val(var_A40)
  loc_1A988D8:         Set var_1DC = Me.Txt
  loc_1A988DE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210, var_AAC, var_A70)
  loc_1A988ED:         Proc_6_7_F25D88(var_110, CVar(var_210), var_9F0)
  loc_1A98900:         Set var_254 = Me.Txt
  loc_1A98906:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_268, var_A50)
  loc_1A9890E:         var_AC4 = var_268.Tag
  loc_1A98917:         var_2D8 = CVar(CLng(var_92)) 'Long
  loc_1A9891F:         var_330 = CVar(CLng(&HA)) 'Long
  loc_1A9893E:         var_3AC = CVar(CLng(var_92)) 'Long
  loc_1A98946:         var_404 = CVar(CLng(5)) 'Long
  loc_1A9894F:         Set var_300 = Me.FGrid
  loc_1A98955:         var_320 = var_300.TextMatrix)
  loc_1A98987:         var_A54 = CStr(Me.FGrid.TextMatrix))
  loc_1A9898F:         var_AB4 = Val(var_A54)
  loc_1A989C0:         var_ABC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A989D1:         Proc_6_7_F25D88(var_4A0, Date, var_ABC, CVar(CLng(8)), CVar(CLng(var_92)), var_AB4, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A989DA:         Set var_39C = Me.TopCtrl1
  loc_1A989E0:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_320)
  loc_1A98A1B:         var_8A8 = CVar(CLng(var_92)) 'Long
  loc_1A98A23:         var_900 = CVar(CLng(1)) 'Long
  loc_1A98A52:         var_1A0 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B0
  loc_1A98A84:         var_A34 = var_1A0 & "'," & CStr(var_14C) & ",'" & global_156 & "','" & var_A2C
  loc_1A98A99:         var_A44 = var_A34 & "','" & MemVar_1F92070 & "',"
  loc_1A98AB2:         var_15C = CVar(var_A44 & CStr(var_AAC) & ",") & var_110 
  loc_1A98B07:         var_278 = var_15C & ",'" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) & "','" & CVar(var_A50) 
  loc_1A98B57:         var_418 = var_278 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_320)) & "'," & CVar(var_AB4) & "," & CVar(var_ABC) 
  loc_1A98B9D:         var_590 = var_418 & ",'" & CVar(MemVar_1F920C8) & "'," & var_4A0 & ",'" & IIf((CStr(var_4F8) = "Add"), "A", "E") & "','" & CVar(var_A0) 
  loc_1A98BC1:         var_618 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A98BD1:         var_A60 = CStr(var_590 & "','" & CVar(MemVar_1F92078) & "','" & var_618 & "')")
  loc_1A98BDB:         unk_542AEE.Execute var_A60, var_670, -1
  loc_1A98C99:       End If
  loc_1A98C99:     End If
  loc_1A98C9C:   Next var_A28 'Integer
  loc_1A98CA4: Else
  loc_1A98CA8:   Set var_A4 = Me.TopCtrl1
  loc_1A98CAE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1A98CC7:   If (CStr() = "Edit") Then
  loc_1A98CE1:     If (Me.RecordCount > 0) Then
  loc_1A98CF8:       var_B0 = "UPDATE TOKEN SET NCTOKEN='" & var_9C
  loc_1A98CFF:       var_F0 = CVar(var_B0 & "' Where DocID='") 'String
  loc_1A98D1F:       var_A8 = Me.Fields.Item("SearchCode")
  loc_1A98D46:       unk_542AEE.Execute CStr(var_F0 & var_A8.Value & "'"), var_15C, -1
  loc_1A98D68:     End If
  loc_1A98D86:     Set var_A4 = Me.Txt
  loc_1A98D8C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "Delete From TOKEN Where CONTRADocID='")
  loc_1A98D94:     var_D0 = var_A8.Text
  loc_1A98D9D:     var_1A0 = -1 & var_B0
  loc_1A98DAD:     unk_542AEE.Execute CStr(var_F0 & var_A8.Value & "'") & "'", var_AC, var_AC
  loc_1A98DC7:   End If
  loc_1A98DC7: End If
  loc_1A98DCB: Set var_A4 = Me.TopCtrl1
  loc_1A98DD1: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1A98DEA: If (CStr() = "Add") Then
  loc_1A98DF3:   var_E0 = 0
  loc_1A98E13:   var_B0 = "Select IsNull(Max(TokenNo),0)+1 From Token Where VType='" & global_156
  loc_1A98E28:   var_1B4 = CStr() & "' And Logsite_code='" & MemVar_1F92078 & "' And RestCode='"
  loc_1A98E42:   unk_542AEE.Execute var_1B4 & LocalRestCode & "' And IsNull(CancelYN,'')<>'Y'", var_D0, -1
  loc_1A98E4A:   var_A4 = var_A4.Fields
  loc_1A98E52:   var_E0 = var_A8.Item(var_A8)
  loc_1A98E5A:   var_AC = var_AC.Value
  loc_1A98E71:   Set var_1A8 = Me.Txt
  loc_1A98E77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_1AC)
  loc_1A98E7F:   var_1AC.Text = CStr(var_F0)
  loc_1A98EA9: End If
  loc_1A98ECE: For var_AC8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_AC8 'Integer
  loc_1A98EEF:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A98EF6:     Set var_A4 = Me.TopCtrl1
  loc_1A98EFC:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(1)
  loc_1A98F15:     If (CStr(var_F0) = "Edit") Then
  loc_1A98F1C:       var_C0 = CVar(CLng(var_92)) 'Long
  loc_1A98F24:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1A98F3E:       var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A98F6B:       Set var_A8 = Me.FGrid
  loc_1A98F7C:       var_B0 = CStr(var_A8.TextMatrix))
  loc_1A98FAA:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A98FBB:         Set var_A4 = Me.Txt
  loc_1A98FC1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)))
  loc_1A98FC9:         (Trim(var_F0) <> vbNullString) = var_A8.Text
  loc_1A98FDC:         Set var_AC = Me.Txt
  loc_1A98FE2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B4)
  loc_1A98FEA:         var_100 = var_1A8.Text
  loc_1A98FF7:         var_14C = Val(var_1B4)
  loc_1A99005:         Set var_1AC = Me.Txt
  loc_1A9900B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4)
  loc_1A99013:         var_D0 = CVar(var_1C4) 'Address
  loc_1A9901A:         Proc_6_7_F25D88(var_F0, var_D0)
  loc_1A9903F:         Set var_210 = Me.Txt
  loc_1A99045:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_254, var_A2C)
  loc_1A99056:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A9905E:         var_354 = CVar(CLng(0)) 'Long
  loc_1A99080:         var_AAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99091:         Set var_2EC = Me.Txt
  loc_1A99097:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_300, var_A34, var_AAC)
  loc_1A9909F:         var_354 = var_300.Text
  loc_1A990A8:         var_438 = CVar(CLng(var_92)) 'Long
  loc_1A990BF:         var_418 = Me.FGrid.TextMatrix)
  loc_1A990D7:         var_57C = CVar(CLng(7)) 'Long
  loc_1A990F9:         var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99117:         var_4D8 = Me.FGrid.TextMatrix)
  loc_1A9915F:         Set var_3B0 = Me.Txt
  loc_1A99165:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3F4, var_A40, var_4D8, CVar(CLng(9)), CVar(CLng(var_92)), var_AB4)
  loc_1A9916D:         var_57C = var_3F4.Tag
  loc_1A99180:         Proc_6_7_F25D88(var_618, Date, CVar(CLng(var_92)), var_418)
  loc_1A99193:         Set var_408 = Me.Txt
  loc_1A99199:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_44C, var_A44, CVar(CLng(&HA)))
  loc_1A991A1:         var_438 = var_44C.Text
  loc_1A991B5:         var_900 = CVar(CLng(var_92)) 'Long
  loc_1A991DF:         var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99210:         var_E80 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99241:         var_E88 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99254:         var_E8C = Proc_6_38_E68A98(global_188, var_E88, CVar(CLng(8)), CVar(CLng(var_92)), var_E80, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A99265:         Set var_56C = Me.Txt
  loc_1A9926B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_580, var_A54, var_AC4, CVar(CLng(8)))
  loc_1A99273:         var_900 = var_580.Text
  loc_1A99295:         var_5D8 = Me.Fields.Item("SearchCode")
  loc_1A992A6:         var_B68 = CVar(CLng(var_92)) 'Long
  loc_1A992D0:         var_E94 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A992DE:         Set var_630 = Me.Txt
  loc_1A992E4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_674, var_E94, CVar(CLng(0)))
  loc_1A9931E:         var_C18 = CVar(CLng(var_92)) 'Long
  loc_1A99326:         var_C38 = CVar(CLng(&HB)) 'Long
  loc_1A99340:         var_A5C = CStr(Me.FGrid.TextMatrix))
  loc_1A9934F:         var_C78 = CVar(CLng(var_92)) 'Long
  loc_1A99357:         var_C98 = CVar(CLng(&HC)) 'Long
  loc_1A99360:         Set var_75C = Me.FGrid
  loc_1A99366:         var_CB8 = var_75C.TextMatrix)
  loc_1A9938D:         var_D48 = Me.FGrid.TextMatrix)
  loc_1A993A7:         Set var_7B4 = Me.Txt
  loc_1A993AD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_7C8, var_A60, var_D48, CVar(CLng(6)), CVar(CLng(var_92)), var_CB8)
  loc_1A993B5:         var_C98 = var_7C8.Tag
  loc_1A993BE:         var_DD8 = CVar(CLng(var_92)) 'Long
  loc_1A993C6:         var_DF8 = CVar(CLng(1)) 'Long
  loc_1A993D5:         var_E18 = Me.FGrid.TextMatrix)
  loc_1A993F5:         var_1A0 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,TokenNo,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,FreeSno,SchemeCode,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A99420:         var_C0 = ",'"
  loc_1A99445:         var_1EC = CVar(var_1A0 & var_B0 & "'," & CStr(var_254.Tag) & ",") & var_F0 & var_C0 & CVar(global_156) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1A9949A:         var_2C8 = var_1EC & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A994F1:         var_470 = var_2C8 & "','" & CVar(var_A2C) & "','N'," & CVar(var_AAC) & ",'" & CVar(var_A34) & "','" & CVar(CStr(var_418)) & "'," 
  loc_1A99532:         var_5C0 = var_470 & CVar(var_AB4) & ",'" & IIf((CStr(var_4D8) = "Yes"), "Y", "N") & "','" & CVar(var_A40) & "','" & CVar(MemVar_1F920C8) 
  loc_1A99595:         var_758 = var_5C0 & "'," & var_618 & ",'A','" & CVar(var_9C) & "'," & CVar(Val(var_A44)) & "," & CVar(var_AC4) & "," & CVar((var_E80 * var_E88)) 
  loc_1A995F2:         var_8F0 = var_758 & ",'" & CVar(var_E8C) & "','" & CVar(var_A54) & "','" & var_5D8.Value & "'," & CVar(var_E94) & ",'" & CVar(MemVar_1F92078) 
  loc_1A9962A:         var_CD8 = var_8F0 & "','" & IIf((var_9C = "Y"), Trim(CVar(var_674)), vbNullString) & "'," & CVar(Val(var_A5C)) & ",'" & CVar(CStr(var_CB8)) 
  loc_1A99651:         var_DA8 = var_CD8 & "','" & CVar(CStr(var_D48)) & "','" & CVar(var_A60) 
  loc_1A9967C:         unk_542AEE.Execute CStr(var_DA8 & "','" & CVar(CStr(var_E18)) & "')"), var_E78, -1
  loc_1A997BC:       End If
  loc_1A997BF:     Else
  loc_1A997E5:       var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A99812:       Set var_A8 = Me.FGrid
  loc_1A99823:       var_B0 = CStr(var_A8.TextMatrix))
  loc_1A99851:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A99862:         Set var_A4 = Me.Txt
  loc_1A99868:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (Trim(var_F0) <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A99870:         var_820 = var_A8.Text
  loc_1A99883:         Set var_AC = Me.Txt
  loc_1A99889:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B4, var_E18, var_DF8)
  loc_1A99891:         var_DD8 = var_1A8.Text
  loc_1A9989E:         var_14C = Val(var_1B4)
  loc_1A998AC:         Set var_1AC = Me.Txt
  loc_1A998B2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_14C)
  loc_1A998BA:         var_D0 = CVar(var_1C4) 'Address
  loc_1A998C1:         Proc_6_7_F25D88(var_F0, var_D0, var_C78)
  loc_1A998E6:         Set var_210 = Me.Txt
  loc_1A998EC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_254, var_A2C)
  loc_1A998F4:         var_E9C = var_254.Tag
  loc_1A998FD:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A99905:         var_354 = CVar(CLng(0)) 'Long
  loc_1A99927:         var_AAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99938:         Set var_2EC = Me.Txt
  loc_1A9993E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_300, var_A34, var_AAC)
  loc_1A99946:         var_354 = var_300.Text
  loc_1A9994F:         var_438 = CVar(CLng(var_92)) 'Long
  loc_1A99966:         var_418 = Me.FGrid.TextMatrix)
  loc_1A9997E:         var_57C = CVar(CLng(7)) 'Long
  loc_1A999A0:         var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A999BE:         var_4D8 = Me.FGrid.TextMatrix)
  loc_1A99A06:         Set var_3B0 = Me.Txt
  loc_1A99A0C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3F4, var_A40, var_4D8, CVar(CLng(9)), CVar(CLng(var_92)), var_AB4)
  loc_1A99A14:         var_57C = var_3F4.Tag
  loc_1A99A27:         Proc_6_7_F25D88(var_618, Date, CVar(CLng(var_92)), var_418)
  loc_1A99A3A:         Set var_408 = Me.Txt
  loc_1A99A40:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_44C, var_A44, CVar(CLng(&HA)))
  loc_1A99A48:         var_438 = var_44C.Text
  loc_1A99A55:         var_ABC = Val(var_A44)
  loc_1A99A5C:         var_900 = CVar(CLng(var_92)) 'Long
  loc_1A99A86:         var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99AB7:         var_E80 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99AE8:         var_E88 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A99AFB:         var_A94 = Proc_6_38_E68A98(global_188, var_E88, CVar(CLng(8)), CVar(CLng(var_92)), var_E80, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A99B0C:         Set var_56C = Me.Txt
  loc_1A99B12:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_580, var_A54, var_AC4, CVar(CLng(8)))
  loc_1A99B1A:         var_900 = var_580.Text
  loc_1A99B2A:         Set var_5C4 = Me.Txt
  loc_1A99B30:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D8, var_ABC)
  loc_1A99B6A:         var_B98 = CVar(CLng(var_92)) 'Long
  loc_1A99B72:         var_BB8 = CVar(CLng(&HB)) 'Long
  loc_1A99B9B:         var_BF8 = CVar(CLng(var_92)) 'Long
  loc_1A99BA3:         var_C18 = CVar(CLng(&HC)) 'Long
  loc_1A99BB2:         var_988 = Me.FGrid.TextMatrix)
  loc_1A99BD9:         var_A00 = Me.FGrid.TextMatrix)
  loc_1A99BF3:         Set var_688 = Me.Txt
  loc_1A99BF9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_75C, var_A5C, var_A00, CVar(CLng(6)), CVar(CLng(var_92)), var_988)
  loc_1A99C01:         var_C18 = var_75C.Tag
  loc_1A99C0A:         var_CA8 = CVar(CLng(var_92)) 'Long
  loc_1A99C12:         var_D08 = CVar(CLng(1)) 'Long
  loc_1A99C21:         var_D58 = Me.FGrid.TextMatrix)
  loc_1A99C41:         var_1A0 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,TokenNo,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,FreeSno,SchemeCode,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A99C91:         var_1EC = CVar(var_1A0 & var_B0 & "'," & CStr(var_14C) & ",") & var_F0 & ",'" & CVar(global_156) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1A99CE6:         var_2C8 = var_1EC & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A99D3D:         var_470 = var_2C8 & "','" & CVar(var_A2C) & "','N'," & CVar(var_AAC) & ",'" & CVar(var_A34) & "','" & CVar(CStr(var_418)) & "'," 
  loc_1A99D7E:         var_5C0 = var_470 & CVar(var_AB4) & ",'" & IIf((CStr(var_4D8) = "Yes"), "Y", "N") & "','" & CVar(var_A40) & "','" & CVar(MemVar_1F920C8) 
  loc_1A99DE1:         var_758 = var_5C0 & "'," & var_618 & ",'A','" & CVar(var_9C) & "'," & CVar(var_ABC) & "," & CVar(var_AC4) & "," & CVar((var_E80 * var_E88)) 
  loc_1A99E2A:         var_8F0 = var_758 & ",'" & CVar(var_A94) & "','" & CVar(var_A54) & "','" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D8)), vbNullString) 
  loc_1A99E6F:         var_CC8 = var_8F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_988)) & "','" & CVar(CStr(var_A00)) & "','" 
  loc_1A99EA4:         unk_542AEE.Execute CStr(var_CC8 & CVar(var_A5C) & "','" & CVar(CStr(var_D58)) & "')"), var_DA8, -1
  loc_1A99FD0:       End If
  loc_1A99FD0:     End If
  loc_1A99FD3:   Else
  loc_1A99FEE:     var_D0 = Me.FGrid.TextMatrix)
  loc_1A99FF9:     var_F0 = CVar(CStr(var_D0)) 'String
  loc_1A9A026:     Set var_A8 = Me.FGrid
  loc_1A9A037:     var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9A065:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A9A076:       Set var_A4 = Me.Txt
  loc_1A9A07C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (Trim(var_F0) <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A9A084:       var_7B4 = var_A8.Text
  loc_1A9A097:       Set var_AC = Me.Txt
  loc_1A9A09D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B4, var_D58, var_D08)
  loc_1A9A0A5:       var_CA8 = var_1A8.Text
  loc_1A9A0B2:       var_14C = Val(var_1B4)
  loc_1A9A0C0:       Set var_1AC = Me.Txt
  loc_1A9A0C6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_14C)
  loc_1A9A0CE:       var_D0 = CVar(var_1C4) 'Address
  loc_1A9A0D5:       Proc_6_7_F25D88(var_F0, var_D0, var_BF8)
  loc_1A9A0FA:       Set var_210 = Me.Txt
  loc_1A9A100:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_254, var_A2C)
  loc_1A9A108:       var_E94 = var_254.Tag
  loc_1A9A111:       var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A9A119:       var_354 = CVar(CLng(0)) 'Long
  loc_1A9A13B:       var_AAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9A14C:       Set var_2EC = Me.Txt
  loc_1A9A152:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_300, var_A34, var_AAC)
  loc_1A9A15A:       var_354 = var_300.Text
  loc_1A9A163:       var_438 = CVar(CLng(var_92)) 'Long
  loc_1A9A17A:       var_418 = Me.FGrid.TextMatrix)
  loc_1A9A192:       var_57C = CVar(CLng(7)) 'Long
  loc_1A9A1B4:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9A1D2:       var_4D8 = Me.FGrid.TextMatrix)
  loc_1A9A21A:       Set var_3B0 = Me.Txt
  loc_1A9A220:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3F4, var_A40, var_4D8, CVar(CLng(9)), CVar(CLng(var_92)), var_AB4)
  loc_1A9A228:       var_57C = var_3F4.Tag
  loc_1A9A23B:       Proc_6_7_F25D88(var_618, Date, CVar(CLng(var_92)), var_418)
  loc_1A9A24E:       Set var_408 = Me.Txt
  loc_1A9A254:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_44C, var_A44, CVar(CLng(&HA)))
  loc_1A9A25C:       var_438 = var_44C.Text
  loc_1A9A269:       var_ABC = Val(var_A44)
  loc_1A9A270:       var_900 = CVar(CLng(var_92)) 'Long
  loc_1A9A29A:       var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9A2CB:       var_E80 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9A2FC:       var_E88 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9A30F:       var_A94 = Proc_6_38_E68A98(global_188, var_E88, CVar(CLng(8)), CVar(CLng(var_92)), var_E80, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A9A320:       Set var_56C = Me.Txt
  loc_1A9A326:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_580, var_A54, var_AC4, CVar(CLng(8)))
  loc_1A9A32E:       var_900 = var_580.Text
  loc_1A9A33E:       Set var_5C4 = Me.Txt
  loc_1A9A344:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D8, var_ABC)
  loc_1A9A37E:       var_B98 = CVar(CLng(var_92)) 'Long
  loc_1A9A386:       var_BB8 = CVar(CLng(&HB)) 'Long
  loc_1A9A3AF:       var_BF8 = CVar(CLng(var_92)) 'Long
  loc_1A9A3B7:       var_C18 = CVar(CLng(&HC)) 'Long
  loc_1A9A3C6:       var_988 = Me.FGrid.TextMatrix)
  loc_1A9A3ED:       var_A00 = Me.FGrid.TextMatrix)
  loc_1A9A407:       Set var_688 = Me.Txt
  loc_1A9A40D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_75C, var_A5C, var_A00, CVar(CLng(6)), CVar(CLng(var_92)), var_988)
  loc_1A9A415:       var_C18 = var_75C.Tag
  loc_1A9A41E:       var_CA8 = CVar(CLng(var_92)) 'Long
  loc_1A9A426:       var_D08 = CVar(CLng(1)) 'Long
  loc_1A9A455:       var_1A0 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,TokenNo,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,FreeSno,SchemeCode,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A9A4A2:       var_1D8 = CVar(Me.LblVPrefix.Caption) 'String
  loc_1A9A4AE:       var_1FC = CVar(var_1A0 & var_B0 & "'," & CStr(var_14C) & ",") & var_F0 & ",'" & CVar(global_156) & "','" & var_1D8 & "','" 
  loc_1A9A4FA:       var_2C8 = var_1FC & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A9A551:       var_470 = var_2C8 & "','" & CVar(var_A2C) & "','Y'," & CVar(var_AAC) & ",'" & CVar(var_A34) & "','" & CVar(CStr(var_418)) & "'," 
  loc_1A9A592:       var_5C0 = var_470 & CVar(var_AB4) & ",'" & IIf((CStr(var_4D8) = "Yes"), "Y", "N") & "','" & CVar(var_A40) & "','" & CVar(MemVar_1F920C8) 
  loc_1A9A5F5:       var_758 = var_5C0 & "'," & var_618 & ",'A','" & CVar(var_9C) & "'," & CVar(var_ABC) & "," & CVar(var_AC4) & "," & CVar((var_E80 * var_E88)) 
  loc_1A9A63E:       var_8F0 = var_758 & ",'" & CVar(var_A94) & "','" & CVar(var_A54) & "','" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D8)), vbNullString) 
  loc_1A9A683:       var_CC8 = var_8F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_988)) & "','" & CVar(CStr(var_A00)) & "','" 
  loc_1A9A6B8:       unk_542AEE.Execute CStr(var_CC8 & CVar(var_A5C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_DA8, -1
  loc_1A9A7E4:     End If
  loc_1A9A7E4:   End If
  loc_1A9A7E7: Next var_AC8 'Integer
  loc_1A9A7F0: Set var_A4 = Me.TopCtrl1
  loc_1A9A7F6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1A9A80F: If (CStr() = "Add") Then
  loc_1A9A835:   var_B0 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F92078
  loc_1A9A84A:   var_1B8 = var_B0 & "' AND UNAME='" & MemVar_1F920C8 & "' AND ENAME='"
  loc_1A9A853:   Call 0.Method_arg_50 (var_1B4, var_1B8, var_D0, -1, var_A4)
  loc_1A9A86C:   unk_542AEE.Execute var_A8 & var_1B4 & "' ", 0, var_AC
  loc_1A9A874:   var_F0 = var_A4.Fields
  loc_1A9A87C:    = var_A8.Item()
  loc_1A9A884:    = var_AC.Value
  loc_1A9A8B5:   If (var_F0 > 0) Then
  loc_1A9A8D6:     Set var_A4 = Me.Txt
  loc_1A9A8DC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "UPDATE LASTVOU  SET DOCID='")
  loc_1A9A8E4:     var_D0 = var_A8.Text
  loc_1A9A8ED:     var_1A0 = -1 & var_B0
  loc_1A9A90B:     Call 0.Method_arg_50 (var_1B8, var_B0 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1A9A924:     unk_542AEE.Execute var_AC & var_1B8 & "'  ", , 
  loc_1A9A94B:   Else
  loc_1A9A96F:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "','", var_1D8)
  loc_1A9A978:     var_1B4 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='"
  loc_1A9A97F:     var_1BC = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1A9A990:     Set var_A4 = Me.Txt
  loc_1A9A996:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_1B8)
  loc_1A9A99E:     var_1BC = var_A8.Text
  loc_1A9A9BC:     var_110 = CVar(var_AC & var_1B8 & "','" & MemVar_1F92070 & "',") 'String
  loc_1A9A9CD:     Proc_6_7_F25D88(var_F0, Date)
  loc_1A9A9D5:     var_130 = var_110 & var_F0 
  loc_1A9A9D9:     var_C0 = ",'A','"
  loc_1A9A9FF:     unk_542AEE.Execute CStr(var_130 & var_C0 & CVar(MemVar_1F92078) & "')"), , 
  loc_1A9AA37:   End If
  loc_1A9AA37: End If
  loc_1A9AA3D: unk_542AEE.CommitTrans
  loc_1A9AA44: var_8A = 0
  loc_1A9AA55: Set var_A4 = Me.Txt
  loc_1A9AA5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1A9AA77: var_8A = 0
  loc_1A9AA85: Me.Requery -1
  loc_1A9AAA1: If (Me.RecordCount > 0) Then
  loc_1A9AABF:   If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_1A9AAE7:     Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_1A9AAF6:   Else
  loc_1A9AAFC:     Me.MoveLast
  loc_1A9AB01:   End If
  loc_1A9AB01: End If
  loc_1A9AB24: Call Proc_229_83_100B3F4(Proc_5_1_100CB50("INI", Me, global_92), var_C0)
  loc_1A9AB2F: Call Proc_229_80_16C07AC(var_8A)
  loc_1A9AB4B: If (Me.RecordCount > 0) Then
  loc_1A9AB85:   If (MsgBox("Print TOKEN ?", &H24, "Print", var_110, var_130) = 6) Then
  loc_1A9AB88:     Call TopCtrl1_UnknownEvent_14()
  loc_1A9AB8D:   End If
  loc_1A9AB8D: End If
  loc_1A9AB92: Set var_88 = Nothing
  loc_1A9AB95: Exit Sub
  loc_1A9AB96: ' Referenced from: 1A97050
  loc_1A9AB9C: If (var_8A = &HFF) Then
  loc_1A9ABA5:   unk_542AEE.RollbackTrans
  loc_1A9ABAA: End If
  loc_1A9ABAA: Proc_6_60_E62BC4(var_8A)
  loc_1A9ABAF: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_9 'F56720
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56600: On Error Goto loc_F5671A
  loc_F56612: Me.DGWaiter.Visible = False
  loc_F56631: If (Me.RecordCount > 0) Then
  loc_F56670:   Set var_B4 = Me.Txt
  loc_F56676:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5667E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F566B1:   var_B0 = Me.Fields.Item("Code")
  loc_F566D0:   Set var_B4 = Me.Txt
  loc_F566D6:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F566DE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F566F4: End If
  loc_F566FF: Set var_A8 = Me.Txt
  loc_F56705: Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5))
  loc_F5670D: var_B0.SetFocus
  loc_F56719: Exit Sub
  loc_F5671A: ' Referenced from: F56600
  loc_F5671A: Proc_6_60_E62BC4(var_B0)
  loc_F5671F: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_1F 'E6DF80
  'Data Table: 542AD8
  loc_E6DF3E: Proc_6_153_E91194(Me.DGWaiter, arg_14)
  loc_E6DF55: Set var_8C = Me.FGPoint
  loc_E6DF71: Proc_6_138_106D6F8(Me.DGWaiter, global_96, CInt(5))
  loc_E6DF7F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED2138
  'Data Table: 542AD8
  loc_ED209C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED209F:   Call DGTable_UnknownEvent_9()
  loc_ED20A4: End If
  loc_ED20C0: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_ED20C3:   Call DGWaiter_UnknownEvent_9()
  loc_ED20C8: End If
  loc_ED20E4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_ED20E7:   Call DGItem_UnknownEvent_9()
  loc_ED20EC: End If
  loc_ED2108: If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_ED210B:   Call DGNCType_UnknownEvent_9()
  loc_ED2110: End If
  loc_ED212C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED212F:   Call DGRest_UnknownEvent_9()
  loc_ED2134: End If
  loc_ED2134: Exit Sub
End Sub

Private Sub Command1_Click() 'F7BE50
  'Data Table: 542AD8
  Dim unk_542AEE As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  loc_F7BD18: On Error Goto loc_F7BE4A
  loc_F7BD3F: unk_542AEE.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_B0, -1
  loc_F7BD4A: Set var_88 = var_B4
  loc_F7BD6E: If (var_88.RecordCount > 0) Then
  loc_F7BD80:   var_B4 = var_88.Fields
  loc_F7BD99:   var_C0 = Proc_6_38_E68A98(CVar(var_B4.Item("Interface")))
  loc_F7BDAA:   If (var_C0 = "SmartCard_ACR") Then
  loc_F7BDAD:     Call Proc_229_70_DFBD9C(var_B4)
  loc_F7BDB5:   Else
  loc_F7BDBD:     If (var_C0 = "NBSD_Mifare") Then
  loc_F7BDD9:       MsgBox("Procedure Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7BDEC:     Else
  loc_F7BE05:       MsgBox("Smart Card Interface Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7BE15:     End If
  loc_F7BE15:   End If
  loc_F7BE18: Else
  loc_F7BE31:   MsgBox("Member Environment Settings NOT SET!", 0, var_E0, var_100, var_120)
  loc_F7BE41: End If
  loc_F7BE46: Set var_88 = Nothing
  loc_F7BE49: Exit Sub
  loc_F7BE4A: ' Referenced from: F7BD18
  loc_F7BE4A: Proc_6_60_E62BC4()
  loc_F7BE4F: Exit Sub
End Sub

Private Sub txtDisc_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A5C0
  'Data Table: 542AD8
  Dim var_88 As Variant
  loc_E6A56E: If (KeyCode = &HD) Then
  loc_E6A575:   Set var_88 = Me.FGrid
  loc_E6A599:   Me.FGrid.Col = 6
  loc_E6A5A7:   global_216 = "Back"
  loc_E6A5B7:   Me.Timer1.Enabled = True
  loc_E6A5BF: End If
  loc_E6A5BF: Exit Sub
End Sub

Private Sub txtDisc_LostFocus() 'E4967C
  'Data Table: 542AD8
  loc_E49663: If (Me.FrmeDisc.Visible = &HFF) Then
  loc_E49670:   Me.txtDisc.SetFocus
  loc_E49678: End If
  loc_E49678: Exit Sub
End Sub

Private Sub Timer1_Timer() '10BD190
  'Data Table: 542AD8
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_B0 As Variant
  loc_10BCEB4: Set var_88 = Me.TopCtrl1
  loc_10BCEBA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_10BCECE: Set var_A0 = Me.TopCtrl1
  loc_10BCED4: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((CStr() = "Edit"))
  loc_10BCEFA: If ( Or (CStr() = "Add")) Then
  loc_10BCF08:   If (global_216 = "Go") Then
  loc_10BCF17:     Me.FrmeDisc.Visible = True
  loc_10BCF29:     Me.txtDisc.SetFocus
  loc_10BCF47:     Me.FrmeDisc.Width = CDbl((global_212 * 430))
  loc_10BCF64:     Me.FrmeDisc.Height = CDbl((global_212 * &H3C))
  loc_10BCF90:     Me.FrmeDisc.Top = (Me.FrmeDisc.Top + CDbl(&HA))
  loc_10BCFC0:     Me.FrmeDisc.Left = (Me.FrmeDisc.Left + CDbl(&HA))
  loc_10BCFDA:     If ((global_212 * 250) > 2700) Then
  loc_10BCFE9:       Me.Timer1.Enabled = False
  loc_10BCFF7:       global_216 = vbNullString
  loc_10BCFFB:     End If
  loc_10BD007:     global_212 = (global_212 + 1)
  loc_10BD00A:   End If
  loc_10BD015:   If (global_216 = "Back") Then
  loc_10BD024:     global_212 = (global_212 - 1)
  loc_10BD03D:     Me.FrmeDisc.Width = CDbl((global_212 * 430))
  loc_10BD05A:     Me.FrmeDisc.Height = CDbl((global_212 * &H3C))
  loc_10BD086:     Me.FrmeDisc.Top = (Me.FrmeDisc.Top - CDbl(&HA))
  loc_10BD0B6:     Me.FrmeDisc.Left = (Me.FrmeDisc.Left - CDbl(&HA))
  loc_10BD0CB:     If (global_212 = 0) Then
  loc_10BD0E1:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BD0E9:       var_E8 = CVar(CLng(6)) 'Long
  loc_10BD103:       var_B0 = CVar(Me.txtDisc.Text) 'String
  loc_10BD10B:       Set var_10C = Me.FGrid
  loc_10BD111:       LateIdCallSt
  loc_10BD13F:       Me.FGrid.Col = CVar(CLng(global_214))
  loc_10BD14B:       Set var_88 = Me.FGrid
  loc_10BD168:       Me.Timer1.Enabled = False
  loc_10BD176:       global_216 = vbNullString
  loc_10BD186:       Me.FrmeDisc.Visible = False
  loc_10BD18E:     End If
  loc_10BD18E:   End If
  loc_10BD18E: End If
  loc_10BD18E: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '11DEC2C
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  loc_11DE7E7: Me.DGItem.Visible = False
  loc_11DE806: If (Me.RecordCount > 0) Then
  loc_11DE843:   Set var_B4 = Me.TxtGrid
  loc_11DE849:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_11DE87A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE882:   var_EC = CVar(CLng(4)) 'Long
  loc_11DE8B5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_11DE8BD:   Set var_B8 = Me.FGrid
  loc_11DE8C3:   LateIdCallSt
  loc_11DE8F2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE8FA:   var_EC = CVar(CLng(&HA)) 'Long
  loc_11DE92D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_11DE93B:   LateIdCallSt
  loc_11DE9A2:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_11DE9AA:   Set var_B8 = Me.FGrid
  loc_11DE9B0:   LateIdCallSt
  loc_11DEA18:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_11DEA26:   LateIdCallSt
  loc_11DEA7A:   Set var_B4 = Me.Txt
  loc_11DEA80:   Call 0.Method_DGItem_UnknownEvent_90 (CInt(1), Me.FGrid, var_138, Me.FGrid, var_11C, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_11DEA88:   var_B8 = CStr(Me.Fields.Item("Name").Value)
  loc_11DEAD1:   Call Proc_229_91_F202F8(CStr(Me.Fields.Item("Code").Value), var_138, CStr(Me.Fields.Item("OutletCode").Value), var_148, var_11C)
  loc_11DEAE9:   var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DEAF1:   var_18C = CVar(CLng(8)) 'Long
  loc_11DEB1E:   var_1AC = CVar(CStr(Format(CVar(var_148), "0.00"))) 'String
  loc_11DEB26:   Set var_1C0 = Me.FGrid
  loc_11DEB2C:   LateIdCallSt
  loc_11DEB74:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DEB7C:   var_EC = CVar(CLng(&HD)) 'Long
  loc_11DEB9E:   var_B0 = Me.Fields.Item("PriceType")
  loc_11DEBAF:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_11DEBB7:   Set var_B8 = Me.FGrid
  loc_11DEBBD:   LateIdCallSt
  loc_11DEBD9: End If
  loc_11DEBE5: Set var_A8 = Me.TxtGrid
  loc_11DEBEB: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1C2, var_B8, var_11C, var_EC, var_A4)
  loc_11DEBF3: var_1C0 = var_B0.Visible
  loc_11DEC05: If (var_1C2 = &HFF) Then
  loc_11DEC11:   Set var_A8 = Me.TxtGrid
  loc_11DEC17:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1AC, 1)
  loc_11DEC1F:   var_B0.SetFocus
  loc_11DEC2B: End If
  loc_11DEC2B: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E6DDC4
  'Data Table: 542AD8
  loc_E6DD82: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E6DD99: Set var_8C = Me.FGPoint
  loc_E6DDB3: Proc_6_138_106D6F8(Me.DGItem, global_88, 0)
  loc_E6DDC1: Exit Sub
End Sub

Private Sub Form_Load() '1499EC4
  'Data Table: 542AD8
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_DC As Variant
  Dim Me As Recordset15
  Dim var_E0 As String
  Dim var_E4 As String
  Dim unk_542AEE As Connection15
  Dim var_88 As Recordset15
  Dim var_F8 As Variant
  Dim var_11C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Fields15
  Dim var_1C0 As Field20
  Dim var_108 As Variant
  Dim var_14C As Variant
  Dim var_16C As String
  Dim var_118 As Variant
  loc_1499264: On Error Goto loc_1499EBD
  loc_1499276: Call 0.Method_arg_7C (CDbl(0))
  loc_1499282: Call 0.Method_arg_74 (CDbl(0))
  loc_1499291: Set var_B4 = Me.TopCtrl1
  loc_1499297: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B("AEDP")
  loc_14992A5: Call 0.Method_arg_50 (var_B8)
  loc_14992AD: var_C8 = CVar(var_B8) 'String
  loc_14992B5: Set var_B4 = Me.TopCtrl1
  loc_14992BB: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030007(var_C8)
  loc_14992CC: If (MemVar_1F920B8 <> 1) Then
  loc_14992D3:   Set var_B4 = Me.TopCtrl1
  loc_14992D9:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B(1)
  loc_1499303:   var_D8 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_149930B:   Set var_DC = Me.TopCtrl1
  loc_1499311:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B(var_D8)
  loc_1499327: End If
  loc_1499356: global_76 = LocalRestCode
  loc_149936A: Me.LblRest.Caption = global_80
  loc_1499393: If CBool(Trim(global_68) <> "Room Service") Then
  loc_14993A3:   Set var_B4 = Me.Label1
  loc_14993A9:   Call 0.Method_Form_Load0 (CInt(7), var_DC, 0)
  loc_14993B1:   var_DC.Visible = Proc_96_17_FDBD80(LocalRestCode, global_68, global_80)
  loc_14993CA:   Set var_B4 = Me.Label1
  loc_14993D0:   Call 0.Method_Form_Load0 (CInt(8), var_DC, 0)
  loc_14993D8:   var_DC.Visible = global_72
  loc_14993F1:   Set var_B4 = Me.Label1
  loc_14993F7:   Call 0.Method_Form_Load0 (CInt(9), var_DC)
  loc_14993FF:   var_DC.Visible = False
  loc_1499418:   Set var_B4 = Me.Txt
  loc_149941E:   Call 0.Method_Form_Load0 (CInt(8), var_DC)
  loc_1499426:   var_DC.Visible = False
  loc_149943F:   Set var_B4 = Me.Txt
  loc_1499445:   Call 0.Method_Form_Load0 (CInt(9), var_DC)
  loc_149944D:   var_DC.Visible = False
  loc_1499466:   Set var_B4 = Me.Txt
  loc_149946C:   Call 0.Method_Form_Load0 (CInt(&HA), var_DC)
  loc_1499474:   var_DC.Visible = False
  loc_1499480: End If
  loc_149948A: Set global_180 = New 
  loc_149949C: Me.CursorLocation = 3
  loc_14994D0: var_E4 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_14994E1: Me.Open CVar(var_E4 & "'"), CVar(MemVar_1F92044), 3
  loc_1499509: If (Me.RecordCount > 0) Then
  loc_1499526:   var_DC = Me.Fields.Item("MemberInfo")
  loc_149952E:   var_C8 = CVar(var_DC) 'Address
  loc_1499548:   If (Proc_6_38_E68A98(var_C8, 1) = "Y") Then
  loc_1499558:     Set var_B4 = Me.Txt
  loc_149955E:     Call 0.Method_Form_Load0 (CInt(&HB), var_DC, &HFF)
  loc_1499566:     var_DC.Visible = True
  loc_149957D:     Set var_B4 = Me.Label1
  loc_1499583:     Call 0.Method_Form_Load0 (&HB, var_DC)
  loc_149958B:     var_DC.Visible = True
  loc_14995A4:     Set var_B4 = Me.Txt
  loc_14995AA:     Call 0.Method_Form_Load0 (CInt(&HC), var_DC)
  loc_14995B2:     var_DC.Visible = True
  loc_14995DB:     Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_108)
  loc_14995E3:     var_D8 = -1 & var_C8 
  loc_14995F1:     unk_542AEE.Execute CStr(var_D8), var_B4, global_84
  loc_14995FC:     Set var_88 = var_B4
  loc_1499622:     If (var_88.RecordCount > 0) Then
  loc_149963C:       var_DC = var_88.Fields.Item("MemberVarificationInKOT")
  loc_1499653:       global_172 = Proc_6_38_E68A98(CVar(var_DC))
  loc_1499660:     End If
  loc_1499660:   End If
  loc_1499660: End If
  loc_149966A: Set global_176 = New 
  loc_149967C: Me.CursorLocation = 3
  loc_14996A6: var_E0 = "Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_14996BE: Me.Open CVar(var_E0 & MemVar_1F92078 & "') Order By Name"), CVar(MemVar_1F92044), 3
  loc_14996D8: CVarUnk
  loc_14996DD: VerifyVarObj
  loc_14996E3: Set var_B4 = Me.DGMember
  loc_14996E9: LateIdStAd
  loc_1499701: Set global_88 = New 
  loc_1499713: Me.DGMember.CursorLocation = 3
  loc_1499736: var_B8 = "Select I.Code,I.Name as Name,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_149973D: var_C8 = CVar(var_B8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by I.Name") 'String
  loc_1499747: Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_149975B: CVarUnk
  loc_1499760: VerifyVarObj
  loc_1499766: Set var_B4 = Me.DGItem
  loc_149976C: LateIdStAd
  loc_1499796: Me.DGItem.CursorLocation = 3
  loc_14997C0: var_C8 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_14997CA: Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_14997DE: CVarUnk
  loc_14997E3: VerifyVarObj
  loc_14997E9: Set var_B4 = Me.DGRest
  loc_14997EF: LateIdStAd
  loc_1499819: Me.DGRest.CursorLocation = 3
  loc_1499841: Me.Open "SELECT NCType,NcPer FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F92044), 3
  loc_149984F: CVarUnk
  loc_1499854: VerifyVarObj
  loc_149985A: Set var_B4 = Me.DGNCType
  loc_1499860: LateIdStAd
  loc_149988A: Me.DGNCType.CursorLocation = 3
  loc_14998B4: var_C8 = CVar("Select W.Code,W.Name As Name From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by W.Name") 'String
  loc_14998D2: CVarUnk
  loc_14998D7: VerifyVarObj
  loc_14998DD: Set var_B4 = Me.DGWaiter
  loc_14998E3: LateIdStAd
  loc_14998F1: Call Proc_229_88_11FE978(var_B4, New, 1, -1, var_B4, New, 1)
  loc_1499900: Set global_92 = New 
  loc_1499912: Me.DGWaiter.CursorLocation = 3
  loc_1499922: Proc_6_7_F25D88(var_C8, MemVar_1F920EC, -1, var_B4, New)
  loc_149992D: var_F8 = 0
  loc_149995D: unk_542AEE.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_118, -1
  loc_1499965: var_B4 = var_B4.Fields
  loc_149996D: var_F8 = var_DC.Item(var_DC)
  loc_1499975: var_11C = var_11C.Value
  loc_1499980: var_1BC = 0
  loc_14999A0: var_180 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_14999B0: unk_542AEE.Execute var_180 & "'", var_1A4, -1
  loc_14999B8: var_1A8 = var_1A8.Fields
  loc_14999C0: var_1BC = var_1AC.Item(var_1AC)
  loc_14999C8: var_1C0 = var_1C0.Value
  loc_14999EB: var_B8 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE  From TOKEN K WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_14999F2: var_D8 = CVar(var_B8 & "' AND (K.Pending='Y' AND NCTOKEN='N' And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") 'String
  loc_1499A04: var_14C = (" And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='T" + var_12C)
  loc_1499A2C: r_C8, CVar(MemVar_1F92044), 3 var_D8 & var_C8 & var_14C & "' OR K.VType='" & var_1D0 & "') Order by Docid", CVar(MemVar_1F92044), 3
  loc_1499A72: var_B8 = "RESTCODE='" & LocalRestCode
  loc_1499A79: var_C8 = CVar(var_B8 & "'") 'String
  loc_1499A83: Me.Filter = var_C8
  loc_1499AB3: Call 0.Method_arg_50 (var_B8, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_C8, -1, var_B4, var_DC, 0, var_11C)
  loc_1499ADA: unk_542AEE.Execute var_D8 & var_B8 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_1499AE2: var_1D0 = var_B4.Fields
  loc_1499AEA: 1 = var_DC.Item(var_12C)
  loc_1499AF2: -1 = var_11C.Value
  loc_1499B1F: If (var_D8 > 0) Then
  loc_1499B5A:   Call 0.Method_arg_50 (var_B8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_C8, -1, var_B4, var_DC, 0)
  loc_1499B81:   unk_542AEE.Execute var_11C & var_B8 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_D8, "SearchCode='"
  loc_1499B89:   0 = var_B4.Fields
  loc_1499B91:   var_16C = var_DC.Item(1)
  loc_1499B99:    = var_11C.Value
  loc_1499BB8:   Me.Find CStr(var_D8 & "'"), , 
  loc_1499BE0: End If
  loc_1499BF7: If (Me.RecordCount > 0) Then
  loc_1499C0E:   If (Me.EOF = &HFF) Then
  loc_1499C17:     Me.MoveLast
  loc_1499C1C:   End If
  loc_1499C1C: End If
  loc_1499C25: Call 0.Method_arg_160 (var_B4)
  loc_1499C33: Call 0.Method_arg_164 (var_B4)
  loc_1499C5E: Call Proc_229_83_100B3F4(Proc_5_1_100CB50("INI", Me))
  loc_1499C81: Proc_6_23_DFBA28(Me, 7350)
  loc_1499C90: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), 11670)
  loc_1499CA8: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_1499CBE: Me.FrTOKEN.BackColor = CLng(MemVar_1F921B0)
  loc_1499CD4: Me.ChkNCTOKEN.BackColor = CLng(MemVar_1F921B0)
  loc_1499CDC: Call Proc_229_68_1303EF0(global_92)
  loc_1499D03: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1499D57: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_1499D66: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_1499DA1: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1499DD2: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1499DEB: var_D8 = Me.FGrid.Width
  loc_1499DFE: var_108 = Me.DGRest.Width
  loc_1499E26: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_D8) - CDbl(var_108)))) 'Single
  loc_1499E35: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_1499E70: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1499E7F: Call Proc_229_80_16C07AC(var_108, var_D8)
  loc_1499E90: Me.Timer1.Enabled = False
  loc_1499EA4: Me.lblclr.Visible = True
  loc_1499EB1: Set var_90 = Nothing
  loc_1499EB9: Set var_88 = Nothing
  loc_1499EBC: Exit Sub
  loc_1499EBD: ' Referenced from: 1499264
  loc_1499EBD: Proc_6_60_E62BC4(var_108)
  loc_1499EC2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB13A8
  'Data Table: 542AD8
  loc_EB1317: Set global_100 = Nothing
  loc_EB1329: Set global_88 = Nothing
  loc_EB133B: Set global_104 = Nothing
  loc_EB134D: Set global_96 = Nothing
  loc_EB135F: Set global_92 = Nothing
  loc_EB1371: Set global_196 = Nothing
  loc_EB1383: Set global_180 = Nothing
  loc_EB1395: Set global_176 = Nothing
  loc_EB13A1: MasterFormExit = 0
  loc_EB13A4: Exit Sub
End Sub

Private Sub Form_Activate() 'F8D3D8
  'Data Table: 542AD8
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_542AEE As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F8D2BF: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_F8D2CD: var_F8 = CVar(var_90 & MemVar_1F92078 & "') AND V_Type='") 'String
  loc_F8D2D6: var_D4 = 0
  loc_F8D2F6: var_98 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F8D306: unk_542AEE.Execute var_98 & "'", var_BC, -1
  loc_F8D30E: var_C0 = var_C0.Fields
  loc_F8D316: var_D4 = var_C4.Item(var_C4)
  loc_F8D31E: var_D8 = var_D8.Value
  loc_F8D326: var_108 = var_E8 & var_E8 
  loc_F8D33D: unk_542AEE.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F8D388: If (var_150.RecordCount > 0) Then
  loc_F8D38B:   GoTo loc_F8D3CD
  loc_F8D38E: End If
  loc_F8D3A7: MsgBox("TOKEN Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F8D3C4: Me.Global.Unload Me
  loc_F8D3CC: Exit Sub
  loc_F8D3CD: ' Referenced from: F8D38B
  loc_F8D3D2: Set var_88 = Nothing
  loc_F8D3D5: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25A14
  'Data Table: 542AD8
  loc_E259F9: If (MasterFormExit = &HFF) Then
  loc_E25A09:   Me.Global.Unload Me
  loc_E25A11: End If
  loc_E25A11: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'ED2404
  'Data Table: 542AD8
  Dim var_88 As Variant
  loc_ED2350: On Error Goto loc_ED23FC
  loc_ED2357: Set var_88 = Me.TopCtrl1
  loc_ED235D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_ED2376: If (CStr() = "Edit") Then
  loc_ED2386:   If ((KeyCode = &H4D) And (Shift = 2)) Then
  loc_ED2397:     Me.FrmeDisc.Width = CDbl(1)
  loc_ED23AD:     Me.FrmeDisc.Height = CDbl(1)
  loc_ED23BA:     global_212 = 1
  loc_ED23C3:     global_216 = "Go"
  loc_ED23D3:     Me.Timer1.Enabled = True
  loc_ED23DB:   End If
  loc_ED23DB: End If
  loc_ED23F3: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_ED23FB: Exit Sub
  loc_ED23FC: ' Referenced from: ED2350
  loc_ED23FC: Proc_6_60_E62BC4(MasterFormExit)
  loc_ED2401: Exit Sub
  loc_ED2402: If global_212 Then Exit Sub
  loc_ED2402: End If
End Sub

Private Sub DGTable_UnknownEvent_9 'F57260
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57140: On Error Goto loc_F5725A
  loc_F57152: Me.DGTable.Visible = False
  loc_F57171: If (Me.RecordCount > 0) Then
  loc_F571B0:   Set var_B4 = Me.Txt
  loc_F571B6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F571BE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F571F1:   var_B0 = Me.Fields.Item("Code")
  loc_F57210:   Set var_B4 = Me.Txt
  loc_F57216:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5721E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F57234: End If
  loc_F5723F: Set var_A8 = Me.Txt
  loc_F57245: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F5724D: var_B0.SetFocus
  loc_F57259: Exit Sub
  loc_F5725A: ' Referenced from: F57140
  loc_F5725A: Proc_6_60_E62BC4(var_B0)
  loc_F5725F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E6DD30
  'Data Table: 542AD8
  loc_E6DCEE: Proc_6_153_E91194(Me.DGTable, arg_14)
  loc_E6DD05: Set var_8C = Me.FGPoint
  loc_E6DD21: Proc_6_138_106D6F8(Me.DGTable, global_100, CInt(4))
  loc_E6DD2F: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F57800
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F576E0: On Error Goto loc_F577FA
  loc_F576F2: Me.DGMember.Visible = False
  loc_F57711: If (Me.RecordCount > 0) Then
  loc_F57750:   Set var_B4 = Me.Txt
  loc_F57756:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F5775E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F57791:   var_B0 = Me.Fields.Item("Code")
  loc_F577B0:   Set var_B4 = Me.Txt
  loc_F577B6:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F577BE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F577D4: End If
  loc_F577DF: Set var_A8 = Me.Txt
  loc_F577E5: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB))
  loc_F577ED: var_B0.SetFocus
  loc_F577F9: Exit Sub
  loc_F577FA: ' Referenced from: F576E0
  loc_F577FA: Proc_6_60_E62BC4(var_B0)
  loc_F577FF: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E6E4B4
  'Data Table: 542AD8
  loc_E6E472: Proc_6_153_E91194(Me.DGMember, arg_14)
  loc_E6E489: Set var_8C = Me.FGPoint
  loc_E6E4A5: Proc_6_138_106D6F8(Me.DGMember, global_176, CInt(&HB))
  loc_E6E4B3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '114AF7C
  'Data Table: 542AD8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_114ABEE: Set var_88 = Me.Txt
  loc_114ABF4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_114AC02: Proc_6_74_E226B0(var_8C)
  loc_114AC0E: Call Proc_229_84_F6D19C(var_8C)
  loc_114AC16: var_92 = Index
  loc_114AC21: If (var_92 = CInt(7)) Then
  loc_114AC3B:   If (Me.RecordCount > 0) Then
  loc_114AC49:     Set var_8C = Me.FGPoint
  loc_114AC61:     Proc_6_137_1193554(Me.DGNCType, global_196, Index)
  loc_114AC6F:   End If
  loc_114ACBD:   Set var_88 = Me.Txt
  loc_114ACC3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114ACCB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114ACE3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_114ACE6:     Exit Sub
  loc_114ACE7:   End If
  loc_114ACF4:   Set var_88 = Me.Txt
  loc_114ACFA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114AD02:   var_A0 = var_8C.Text
  loc_114AD0A:   var_D4 = CVar(var_A0) 'String
  loc_114AD4F:   If CBool(var_D4 <> Me.Fields.Item("NCType").Value) Then
  loc_114AD58:     Me.MoveFirst
  loc_114AD7D:     Set var_88 = Me.Txt
  loc_114AD83:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "NCType =")
  loc_114AD8B:     0 = var_8C.Text
  loc_114AD99:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_114ADAF:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_114ADC7:   End If
  loc_114ADCA: Else
  loc_114ADD2:   If (var_92 = CInt(&HB)) Then
  loc_114ADEC:     If (Me.RecordCount > 0) Then
  loc_114ADFA:       Set var_8C = Me.FGPoint
  loc_114AE12:       Proc_6_137_1193554(Me.DGMember, global_176)
  loc_114AE20:     End If
  loc_114AE6E:     Set var_88 = Me.Txt
  loc_114AE74:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114AE7C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114AE94:     If (Index Or (var_A0 = vbNullString)) Then
  loc_114AE97:       Exit Sub
  loc_114AE98:     End If
  loc_114AEA5:     Set var_88 = Me.Txt
  loc_114AEAB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114AEB3:     var_A0 = var_8C.Text
  loc_114AEBB:     var_D4 = CVar(var_A0) 'String
  loc_114AF00:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_114AF09:       Me.MoveFirst
  loc_114AF2E:       Set var_88 = Me.Txt
  loc_114AF34:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_114AF3C:       0 = var_8C.Text
  loc_114AF4A:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_114AF60:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_114AF78:     End If
  loc_114AF78:   End If
  loc_114AF78: End If
  loc_114AF78: Exit Sub
  loc_114AF79: DOC
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10F37B4
  'Data Table: 542AD8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_10F34A3: var_86 = Shift
  loc_10F34B0: If (CLng(Shift) = &H1B) Then
  loc_10F34B3:   Call Proc_229_84_F6D19C(var_86)
  loc_10F34B8:   Exit Sub
  loc_10F34B9: End If
  loc_10F34BC: var_88 = KeyCode
  loc_10F34C7: If (var_88 = CInt(7)) Then
  loc_10F34E7:   Set var_A0 = Me.FGPoint
  loc_10F34F2:   Set var_9C = Nothing
  loc_10F3524:   Proc_6_69_134A198(Me.DGNCType, Me.Txt, CInt(7), global_196, Shift, 0)
  loc_10F3593:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10F35B9:     Proc_6_138_106D6F8(Me.DGNCType, global_196, KeyCode, Me.FGPoint, 0)
  loc_10F35C7:   End If
  loc_10F35CA: Else
  loc_10F35D2:   If (var_88 = CInt(&HB)) Then
  loc_10F35FD:     Set var_9C = Nothing
  loc_10F362F:     Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&HB), global_176, Shift, 0, 1)
  loc_10F369E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10F36A5:       Set var_9C = Me.DGMember
  loc_10F36C4:       Proc_6_138_106D6F8(var_9C, global_176, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_10F36D2:     End If
  loc_10F36D2:   End If
  loc_10F36D2: End If
  loc_10F3703: Set var_9C = Me.DGTable
  loc_10F371A: Set var_A0 = Me.DGNCType
  loc_10F375E: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGWaiter.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_10F3776:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10F377F:     Proc_6_75_E527CC(Shift, arg_14, 0, var_9C)
  loc_10F3784:   End If
  loc_10F378C:   If (KeyCode <> CInt(4)) Then
  loc_10F37A4:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10F37AD:       Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_10F37B2:     End If
  loc_10F37B2:   End If
  loc_10F37B2: End If
  loc_10F37B2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FA4BE0
  'Data Table: 542AD8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FA4A58: On Error Goto loc_FA4BDA
  loc_FA4A5E: Proc_6_58_E054C0(arg_10)
  loc_FA4A66: var_86 = KeyAscii
  loc_FA4A71: If (var_86 = CInt(0)) Then
  loc_FA4A7E:   Set var_8C = Me.Txt
  loc_FA4A84:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FA4A9F:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_FA4AAE: Else
  loc_FA4AB6:   If (var_86 = CInt(7)) Then
  loc_FA4AD5:     If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_FA4AE7:       var_AC = "NCType"
  loc_FA4B02:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_196, arg_10)
  loc_FA4B34:       Proc_6_138_106D6F8(Me.DGNCType, global_196, KeyAscii, Me.FGPoint)
  loc_FA4B42:     End If
  loc_FA4B45:   Else
  loc_FA4B4D:     If (var_86 = CInt(&HB)) Then
  loc_FA4B6C:       If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_FA4B7E:         var_AC = "Name"
  loc_FA4B99:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_176, arg_10, var_AC)
  loc_FA4BCB:         Proc_6_138_106D6F8(Me.DGMember, global_176, KeyAscii, Me.FGPoint, 0)
  loc_FA4BD9:       End If
  loc_FA4BD9:     End If
  loc_FA4BD9:   End If
  loc_FA4BD9: End If
  loc_FA4BD9: Exit Sub
  loc_FA4BDA: ' Referenced from: FA4A58
  loc_FA4BDA: Proc_6_60_E62BC4(var_AC, 0)
  loc_FA4BDF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE1EC
  'Data Table: 542AD8
  Dim var_86 As Integer
  loc_DFE1E7: var_86 = KeyCode
  loc_DFE1EA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E491FC
  'Data Table: 542AD8
  loc_E491DA: Set var_88 = Me.Txt
  loc_E491E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E491EE: Proc_6_73_E22704(var_8C)
  loc_E491FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1551C94
  'Data Table: 542AD8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim var_B0 As Variant
  Dim var_A0 As String
  Dim var_128 As String
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_170 As Variant
  Dim var_194 As Variant
  Dim var_94 As Variant
  Dim var_14C As String
  Dim unk_542AEE As Connection15
  Dim var_9C As Variant
  Dim var_19C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_1AC As Double
  loc_1550C84: On Error Goto loc_1551C8B
  loc_1550C8A: var_8E = Cancel
  loc_1550C95: If (var_8E = CInt(0)) Then
  loc_1550CA3:   Set var_94 = Me.Txt
  loc_1550CA9:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1550CB1:   var_A0 = "Vr. No"
  loc_1550CD2:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1550CE0:     Set var_94 = Me.Txt
  loc_1550CE6:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1550CEE:     var_98.SetFocus
  loc_1550CFC:     arg_10 = &HFF
  loc_1550CFF:     Exit Sub
  loc_1550D00:   End If
  loc_1550D0E:   Set var_94 = Me.Txt
  loc_1550D14:   Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_1550D1C:   arg_10 = var_98.Text
  loc_1550D34:   If (CDbl(var_A0) = CDbl(0)) Then
  loc_1550D50:     MsgBox("Vr. No Can Not Be 0", 0, var_E0, var_100, var_120)
  loc_1550D6A:     Set var_94 = Me.Txt
  loc_1550D70:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1550D78:     var_98.SetFocus
  loc_1550D86:     arg_10 = &HFF
  loc_1550D89:     Exit Sub
  loc_1550D8A:   End If
  loc_1550D8E:   Set var_94 = Me.TopCtrl1
  loc_1550D94:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_1550DAD:   If (CStr(var_8E) = "Add") Then
  loc_1550DE1:     var_C0 = Space((5 - Len(global_156)))
  loc_1550DE9:     var_100 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_156) + "Vr. No Can Not Be 0")
  loc_1550DFD:     var_120 = Space((5 - Len(global_116)))
  loc_1550E05:     var_138 = (var_100 + var_120)
  loc_1550E12:     var_148 = (var_138 + CVar(global_116))
  loc_1550E29:     Set var_94 = Me.Txt
  loc_1550E2F:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_14C)
  loc_1550E37:     8 = var_98.Text
  loc_1550E44:     var_15C = Space((var_148 - Len(var_14C)))
  loc_1550E4C:     var_16C = ( + var_15C)
  loc_1550E5E:     Set var_9C = Me.Txt
  loc_1550E64:     Call 0.Method_Txt_Validate0 (CInt(0), var_170)
  loc_1550E77:     var_194 = (var_16C + CVar(var_170.Text))
  loc_1550EC4:     Set var_94 = Me.Txt
  loc_1550ECA:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1550ED2:     var_98.Text = CStr(var_194)
  loc_1550EEE:     Me.LblVPrefix.Caption = global_116
  loc_1550EF6:   End If
  loc_1550EFA:   Set var_94 = Me.TopCtrl1
  loc_1550F00:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1550F08:   var_A0 = CStr()
  loc_1550F19:   If (var_A0 = "Add") Then
  loc_1550F49:     Set var_94 = Me.Txt
  loc_1550F4F:     Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_A0, "Select Count(*) From TOKEN Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1550F60:     var_128 = var_170 & var_A0
  loc_1550F70:     unk_542AEE.Execute var_128 & "'", 0, var_19C
  loc_1550F80:      = var_170.Item()
  loc_1550F88:      = var_19C.Value
  loc_1550FB5:     If (var_98.Text.Fields > 0) Then
  loc_1550FBE:       Call 0.Method_arg_50 (var_A0)
  loc_1550FDF:       MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_100, var_120)
  loc_1550FF5:       Call Proc_229_86_11843B4(MemVar_1F92044)
  loc_1551005:       If (var_A0 = vbNullString) Then
  loc_1551012:         Set var_94 = Me.Txt
  loc_1551018:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551020:         var_98.SetFocus
  loc_155102E:         arg_10 = &HFF
  loc_1551031:         Exit Sub
  loc_1551032:       End If
  loc_1551038:       Call Proc_229_86_11843B4(MemVar_1F92044, var_A0)
  loc_155104B:       Set var_94 = Me.Txt
  loc_1551051:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_A0)
  loc_1551059:       var_98.Text = arg_10
  loc_155106A:       arg_10 = &HFF
  loc_155106D:       Exit Sub
  loc_155106E:     End If
  loc_155106E:   End If
  loc_1551071: Else
  loc_1551079:   If (var_8E = CInt(1)) Then
  loc_155108A:     Set var_94 = Me.Txt
  loc_1551090:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_1551098:     arg_10 = var_98.Text
  loc_15510AE:     var_100 = Len(Trim(CVar(var_A0)))
  loc_15510C8:     If (var_100 = 0) Then
  loc_15510DE:       Set var_94 = Me.Txt
  loc_15510E4:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_15510EC:       var_98.Text = CStr(MemVar_1F920EC)
  loc_15510FE:     Else
  loc_1551108:       Set var_94 = Me.Txt
  loc_155110E:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155112E:       Set var_170 = Me.Txt
  loc_1551134:       Call 0.Method_Txt_Validate0 (Cancel, var_19C)
  loc_155113C:       var_19C.Text = Proc_6_33_1512840(var_98)
  loc_155114F:     End If
  loc_155115C:     Set var_94 = Me.Txt
  loc_1551162:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155116A:     var_A0 = var_98.Text
  loc_1551185:     Set var_9C = Me.Txt
  loc_155118B:     Call 0.Method_Txt_Validate0 (Cancel, var_170, var_128)
  loc_1551193:     (CDate(var_A0) >= MemVar_1F920F4) = var_170.Text
  loc_15511B5:     If Not((var_A0 And (CDate(var_128) <= MemVar_1F920FC))) Then
  loc_15511CE:       var_B0 = "V.Date Not Between Current Fin. Year"
  loc_15511D9:       MsgBox(var_B0, 0, "Date Validate", var_100, var_120)
  loc_15511F3:       Set var_94 = Me.Txt
  loc_15511F9:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_1551201:       var_98.SetFocus
  loc_155120F:       arg_10 = &HFF
  loc_1551212:       Exit Sub
  loc_1551213:     End If
  loc_1551217:     Set var_94 = Me.TopCtrl1
  loc_155121D:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_1551225:     var_A0 = CStr(var_98)
  loc_155123B:     Set var_98 = Me.Txt
  loc_1551241:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C)
  loc_155126A:     If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1551273:       Call Proc_229_86_11843B4(MemVar_1F92044)
  loc_1551286:       Set var_94 = Me.Txt
  loc_155128C:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1551294:       var_98.Text = var_A0
  loc_15512A3:     End If
  loc_15512A6:   Else
  loc_15512AE:     If (var_8E = CInt(&HB)) Then
  loc_15512F2:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1551302:         Set var_94 = Me.Txt
  loc_1551308:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551327:         If (var_98.Text = vbNullString) Then
  loc_1551337:           Set var_94 = Me.Txt
  loc_155133D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551345:           var_98.Text = vbNullString
  loc_155135E:           Set var_94 = Me.Txt
  loc_1551364:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155136C:           var_98.Tag = vbNullString
  loc_1551386:           Set var_94 = Me.Txt
  loc_155138C:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_98)
  loc_1551394:           var_98.Text = vbNullString
  loc_15513A0:         End If
  loc_15513A3:       Else
  loc_15513B0:         Set var_94 = Me.Txt
  loc_15513B6:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15513D5:         If (var_98.Text = vbNullString) Then
  loc_15513E5:           Set var_94 = Me.Txt
  loc_15513EB:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155140A:           If (var_98.Text = vbNullString) Then
  loc_155141A:             Set var_94 = Me.Txt
  loc_1551420:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551428:             var_98.Text = vbNullString
  loc_1551441:             Set var_94 = Me.Txt
  loc_1551447:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155144F:             var_98.Tag = vbNullString
  loc_1551469:             Set var_94 = Me.Txt
  loc_155146F:             Call 0.Method_Txt_Validate0 (CInt(&HC), var_98)
  loc_1551477:             var_98.Text = vbNullString
  loc_1551483:           End If
  loc_1551486:         Else
  loc_1551494:           Set var_94 = Me.Txt
  loc_155149A:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_15514A2:           var_A0 = var_98.Tag
  loc_15514B9:           If (var_A0 <> vbNullString) Then
  loc_15514DB:             Set var_94 = Me.Txt
  loc_15514E1:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98, var_A0, "Code='")
  loc_15514E9:             0 = var_98.Tag
  loc_1551502:             Me.Find 1 & var_A0 & "'", var_B0, var_A0
  loc_1551517:           End If
  loc_1551552:           Set var_9C = Me.Txt
  loc_1551558:           Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1551560:           var_170.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15515B1:           Set var_9C = Me.Txt
  loc_15515B7:           Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_15515BF:           var_170.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15515F2:           var_98 = Me.Fields.Item("CardNo")
  loc_1551611:           Set var_9C = Me.Txt
  loc_1551617:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_170)
  loc_155161F:           var_170.Text = CStr(var_98.Value)
  loc_155164F:           Set var_94 = Me.Txt
  loc_1551655:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551677:           If (Proc_96_1_F8C534(var_98.Tag) = 0) Then
  loc_1551687:             Set var_94 = Me.Txt
  loc_155168D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15516A1:             Proc_96_2_100DE2C(var_98.Tag)
  loc_15516A6:             var_1AC = 0
  loc_15516AF:             var_B0 = "Member Varification"
  loc_15516D9:             var_C0 = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1AC)) 'String
  loc_15516DC:             MsgBox(var_C0, &H40, var_B0, var_100, var_120)
  loc_15516FE:           End If
  loc_15516FE:         End If
  loc_15516FE:       End If
  loc_1551701:     Else
  loc_1551709:       If (var_8E = CInt(&HC)) Then
  loc_1551716:         Set var_94 = Me.Txt
  loc_155171C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551733:         var_A0 = CStr(Trim(CVar(var_98)))
  loc_1551741:         Set var_9C = Me.Txt
  loc_1551747:         Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_155174F:         var_170.Text = var_A0
  loc_155177E:         If (Me.RecordCount > 0) Then
  loc_1551787:           Me.MoveFirst
  loc_15517AA:           Set var_94 = Me.Txt
  loc_15517B0:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0, "CardNo='")
  loc_15517B8:           0 = var_98.Text
  loc_15517D1:           Me.Find 1 & var_A0 & "'", var_B0, var_1AC
  loc_155180F:           If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_1551820:             Set var_94 = Me.Txt
  loc_1551826:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_155182E:             var_98.Text = vbNullString
  loc_1551848:             Set var_94 = Me.Txt
  loc_155184E:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_1551856:             var_98.Tag = vbNullString
  loc_155186F:             Set var_94 = Me.Txt
  loc_1551875:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155187D:             var_98.Text = vbNullString
  loc_155188C:           Else
  loc_15518C8:             Set var_9C = Me.Txt
  loc_15518CE:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_170)
  loc_15518D6:             var_170.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1551928:             Set var_9C = Me.Txt
  loc_155192E:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_170)
  loc_1551936:             var_170.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1551969:             var_98 = Me.Fields.Item("CardNo")
  loc_1551987:             Set var_9C = Me.Txt
  loc_155198D:             Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1551995:             var_170.Text = CStr(var_98.Value)
  loc_15519C6:             Set var_94 = Me.Txt
  loc_15519CC:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_15519EE:             If (Proc_96_1_F8C534(var_98.Tag) = 0) Then
  loc_15519FF:               Set var_94 = Me.Txt
  loc_1551A05:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_1551A19:               Proc_96_2_100DE2C(var_98.Tag)
  loc_1551A1E:               var_1AC = 0
  loc_1551A51:               var_C0 = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1AC)) 'String
  loc_1551A54:               MsgBox(var_C0, &H40, "Member Varification", var_100, var_120)
  loc_1551A76:             End If
  loc_1551A76:           End If
  loc_1551A76:         End If
  loc_1551A79:       Else
  loc_1551A81:         If (var_8E = CInt(7)) Then
  loc_1551A8E:           Set var_94 = Me.Txt
  loc_1551A94:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551A9C:           var_A0 = "NC Category"
  loc_1551ABD:           If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1551ACA:             Set var_94 = Me.Txt
  loc_1551AD0:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551AD8:             var_98.SetFocus
  loc_1551AE6:             arg_10 = &HFF
  loc_1551AE9:             Exit Sub
  loc_1551AEA:           End If
  loc_1551B38:           Set var_94 = Me.Txt
  loc_1551B3E:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1551B46:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1551B5E:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1551B6E:             Set var_94 = Me.Txt
  loc_1551B74:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551B7C:             var_98.Text = vbNullString
  loc_1551B95:             Set var_94 = Me.Txt
  loc_1551B9B:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551BA3:             var_98.Tag = vbNullString
  loc_1551BB2:           Else
  loc_1551BED:             Set var_9C = Me.Txt
  loc_1551BF3:             Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1551BFB:             var_170.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_1551C4C:             Set var_9C = Me.Txt
  loc_1551C52:             Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1551C5A:             var_170.Tag = CStr(Me.Fields.Item("NCPer").Value)
  loc_1551C70:           End If
  loc_1551C70:         End If
  loc_1551C70:       End If
  loc_1551C70:     End If
  loc_1551C70:   End If
  loc_1551C70: End If
  loc_1551C82: Me.FGrid.Col = CVar(CLng(3))
  loc_1551C8A: Exit Sub
  loc_1551C8B: ' Referenced from: 1550C84
  loc_1551C8B: Proc_6_60_E62BC4(var_1AC)
  loc_1551C90: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE6E48
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE6C83: Me.DGRest.Visible = False
  loc_FE6CA2: If (Me.RecordCount > 0) Then
  loc_FE6CDF:   Set var_B4 = Me.TxtGrid
  loc_FE6CE5:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE6CED:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE6D16:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6D1E:   var_EC = CVar(CLng(2)) 'Long
  loc_FE6D51:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE6D59:   Set var_B8 = Me.FGrid
  loc_FE6D5F:   LateIdCallSt
  loc_FE6D8E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6D96:   var_EC = CVar(CLng(1)) 'Long
  loc_FE6DB8:   var_B0 = Me.Fields.Item("Code")
  loc_FE6DC9:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE6DD1:   Set var_B8 = Me.FGrid
  loc_FE6DD7:   LateIdCallSt
  loc_FE6DF3: End If
  loc_FE6DFF: Set var_A8 = Me.TxtGrid
  loc_FE6E05: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE6E0D: var_A4 = var_B0.Visible
  loc_FE6E1F: If (var_12E = &HFF) Then
  loc_FE6E2B:   Set var_A8 = Me.TxtGrid
  loc_FE6E31:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE6E39:   var_B0.SetFocus
  loc_FE6E45: End If
  loc_FE6E45: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6DEEC
  'Data Table: 542AD8
  loc_E6DEAA: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E6DEDB: Proc_6_138_106D6F8(Me.DGRest, global_104, 0)
  loc_E6DEE9: Exit Sub
  loc_E6DEEA: Get , , arg_18 'get Me.FGPoint bytes
End Sub

Private Sub DGNCType_UnknownEvent_9 'F570F8
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56FD8: On Error Goto loc_F570F2
  loc_F56FEA: Me.DGNCType.Visible = False
  loc_F57009: If (Me.RecordCount > 0) Then
  loc_F57048:   Set var_B4 = Me.Txt
  loc_F5704E:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F57056:   var_B8.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_F57089:   var_B0 = Me.Fields.Item("NCPer")
  loc_F570A8:   Set var_B4 = Me.Txt
  loc_F570AE:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F570B6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F570CC: End If
  loc_F570D7: Set var_A8 = Me.Txt
  loc_F570DD: Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7))
  loc_F570E5: var_B0.SetFocus
  loc_F570F1: Exit Sub
  loc_F570F2: ' Referenced from: F56FD8
  loc_F570F2: Proc_6_60_E62BC4(var_B0)
  loc_F570F7: Exit Sub
End Sub

Private Sub lblclr_Click() 'F137CC
  'Data Table: 542AD8
  Dim arg_20 As Variant
  Dim var_B4 As Variant
  loc_F136E6: arg_20 = Me.cdl._Action
  loc_F1370E: Me.lblclr.BackColor = CLng(Me.cdl.Color)
  loc_F13742: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F1374C:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F13784:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_F137B2:     Proc_96_0_E6BE98(Me.FGrid, var_86, Me.lblclr.BackColor, CVar(CLng(&HB)))
  loc_F137C0:   End If
  loc_F137C3: Next var_A4 'Integer
  loc_F137C8: Exit Sub
  loc_F137C9: CopyBytes 2048
End Sub

Private Sub FGrid_UnknownEvent_0 'E608B4
  'Data Table: 542AD8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6087F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60892: Set var_A8 = Me.TxtGrid
  loc_E60898: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E608A0: var_AC.Visible = False
  loc_E608AC: Call Proc_229_84_F6D19C()
  loc_E608B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67780
  'Data Table: 542AD8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6773C: Set var_88 = Me.TxtGrid
  loc_E67742: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6775C: If (var_8C.Visible = 0) Then
  loc_E67775:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E6777D: End If
  loc_E6777D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E492CC
  'Data Table: 542AD8
  loc_E492A4: Set var_88 = Me.TopCtrl1
  loc_E492AA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E492C3: If (CStr() <> "Browse") Then
  loc_E492C6:   Call Proc_229_76_E41238()
  loc_E492CB: End If
  loc_E492CB: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '12BAE40
  'Data Table: 542AD8
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim arg_C As Integer
  Dim var_110 As Long
  Dim var_120 As String
  loc_12BA7F8: Set var_88 = Me.TopCtrl1
  loc_12BA7FE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_12BA812: Set var_A0 = Me.TopCtrl1
  loc_12BA818: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((CStr() = "Edit"))
  loc_12BA83E: If ( Or (CStr() = "Add")) Then
  loc_12BA84E:   If ((arg_C = &H4D) And (arg_10 = 2)) Then
  loc_12BA868:     global_214 = CInt(CLng(Me.FGrid.Col))
  loc_12BA884:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BA889:     var_E4 = 6
  loc_12BA8B4:     Me.txtDisc.Text = CStr(Me.FGrid.TextMatrix))
  loc_12BA8DB:     Me.txtDisc.SelLength = 0
  loc_12BA903:     Me.txtDisc.SelStart = Len(Me.txtDisc.Text)
  loc_12BA912:     var_C4 = 6
  loc_12BA925:     Me.FGrid.Col = var_C4
  loc_12BA937:     var_B0 = Me.FGrid.CellTop
  loc_12BA96A:     Me.FrmeDisc.Top = ((CDbl(Me.FGrid.Top) + CDbl(CLng(var_B0))) + CDbl(200))
  loc_12BA9A4:     Me.FrmeDisc.Left = CDbl((CLng(Me.FGrid.CellLeft) + &HC8))
  loc_12BA9C1:     Me.FrmeDisc.Width = CDbl(1)
  loc_12BA9D7:     Me.FrmeDisc.Height = CDbl(1)
  loc_12BA9E4:     global_212 = 1
  loc_12BA9ED:     global_216 = "Go"
  loc_12BA9FD:     Me.Timer1.Enabled = True
  loc_12BAA05:   End If
  loc_12BAA05: End If
  loc_12BAA09: Set var_88 = Me.TopCtrl1
  loc_12BAA0F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(global_212)
  loc_12BAA54: If ((CStr(var_B0) = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_12BAA5D:   Call Form_KeyDown(arg_C, arg_10)
  loc_12BAA62: End If
  loc_12BAA66: Set var_88 = Me.TopCtrl1
  loc_12BAA6C: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_E4)
  loc_12BAA85: If (CStr(var_C4) = "Browse") Then
  loc_12BAA88:   Exit Sub
  loc_12BAA89: End If
  loc_12BAAA6: var_108 = Me.FGrid.Rows
  loc_12BAAFD: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_108) - 1))))) Then
  loc_12BAB16:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12BAB26:   var_9C = "+{Tab}"
  loc_12BAB2C:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0, var_108)
  loc_12BAB36:   arg_C = 0
  loc_12BAB3C: Else
  loc_12BAB46:   var_B0 = Me.FGrid.Rows
  loc_12BAB93:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12BABAC:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12BABB4:     Call Proc_229_85_F0BD60(var_B0, arg_C)
  loc_12BABBB:     arg_C = 0
  loc_12BABBE:   End If
  loc_12BABBE: End If
  loc_12BABC4: global_128 = arg_C
  loc_12BABEA: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12BAC0E: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_12BAC24:   var_110 = CLng(Me.FGrid.Col)
  loc_12BAC34:   If (var_110 = CLng(4)) Then
  loc_12BAC4A:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BAC62:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BAC67:     var_120 = vbNullString
  loc_12BAC71:     Set var_F8 = Me.FGrid
  loc_12BAC77:     LateIdCallSt
  loc_12BACA2:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BACAA:     var_E4 = CVar(CLng(&HA)) 'Long
  loc_12BACAF:     var_120 = vbNullString
  loc_12BACB9:     Set var_A0 = Me.FGrid
  loc_12BACBF:     LateIdCallSt
  loc_12BACE4:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BACEC:     var_E4 = CVar(CLng(7)) 'Long
  loc_12BACF1:     var_120 = vbNullString
  loc_12BACFB:     Set var_A0 = Me.FGrid
  loc_12BAD01:     LateIdCallSt
  loc_12BAD26:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BAD2E:     var_E4 = CVar(CLng(&HD)) 'Long
  loc_12BAD33:     var_120 = vbNullString
  loc_12BAD3D:     Set var_A0 = Me.FGrid
  loc_12BAD43:     LateIdCallSt
  loc_12BAD58:   Else
  loc_12BAD5F:     If Not (var_110 = CLng(7)) Then
  loc_12BAD69:       If (var_110 = CLng(3)) Then
  loc_12BAD6C:       End If
  loc_12BAD7F:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BAD97:       var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BAD9C:       var_120 = vbNullString
  loc_12BADA6:       Set var_F8 = Me.FGrid
  loc_12BADAC:       LateIdCallSt
  loc_12BADC7:     Else
  loc_12BADCE:       If (var_110 = CLng(9)) Then
  loc_12BADE4:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BADFC:         var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BAE01:         var_120 = vbNullString
  loc_12BAE0B:         Set var_F8 = Me.FGrid
  loc_12BAE11:         LateIdCallSt
  loc_12BAE29:       End If
  loc_12BAE29:     End If
  loc_12BAE29:   End If
  loc_12BAE29: End If
  loc_12BAE2F: If (arg_C = &HD) Then
  loc_12BAE37:   global_130 = 0
  loc_12BAE3A: End If
  loc_12BAE3C: arg_C = 0
  loc_12BAE3F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'FB562C
  'Data Table: 542AD8
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_134 As String
  loc_FB54A0: Set var_88 = Me.TopCtrl1
  loc_FB54A6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FB54BF: If (CStr() = "Browse") Then
  loc_FB54C2:   Exit Sub
  loc_FB54C3: End If
  loc_FB54E0: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_FB54F6:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB550E:   var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5554:   If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "YES") Then
  loc_FB556A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB5582:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5587:     var_134 = "No"
  loc_FB5591:     Set var_F4 = Me.FGrid
  loc_FB5597:     LateIdCallSt
  loc_FB55B2:   Else
  loc_FB55C5:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB55DD:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB55E2:     var_134 = "Yes"
  loc_FB55EC:     Set var_F4 = Me.FGrid
  loc_FB55F2:     LateIdCallSt
  loc_FB560A:   End If
  loc_FB560D: Else
  loc_FB5616:   Call FGrid_UnknownEvent_C()
  loc_FB5620:   global_130 = 0
  loc_FB5623: End If
  loc_FB5623: Call Proc_229_92_125F304(global_130, CInt(&HD), var_F4, var_134, var_E0, var_C0)
  loc_FB5628: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1197184
  'Data Table: 542AD8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As Long
  Dim var_F8 As MSHFlexGrid
  Dim var_10C As Variant
  Dim var_12E As Integer
  loc_1196D90: Set var_88 = Me.TopCtrl1
  loc_1196D96: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1196DAF: If (CStr() = "Browse") Then
  loc_1196DB2:   Exit Sub
  loc_1196DB3: End If
  loc_1196DC6: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1196DCE: var_CC = CVar(CLng(&HB)) 'Long
  loc_1196E06: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1196E09:   Exit Sub
  loc_1196E0A: End If
  loc_1196E1D: var_F4 = CLng(Me.FGrid.Col)
  loc_1196E2D: If (var_F4 = CLng(4)) Then
  loc_1196E34:   Set var_88 = Me.TopCtrl1
  loc_1196E3A:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_F4)
  loc_1196E42:   var_9C = CStr(var_CC)
  loc_1196E54:   var_F0 = Me.FGrid.Col
  loc_1196E75:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1196EBD:   If (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_1196EC0:     Exit Sub
  loc_1196EC1:   End If
  loc_1196EC5:   Set var_10C = Me.FGrid
  loc_1196EE1:   var_F0 = Ucase(Chr(CLng(Index)))
  loc_1196EE9:   var_9C = CStr(var_F0)
  loc_1196F16:   Set var_E0 = var_10C
  loc_1196F28:   Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0, Asc(var_9C))
  loc_1196F50:   Set var_88 = Me.TxtGrid
  loc_1196F56:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C, 0)
  loc_1196F5E:   var_12E = var_E0.Text
  loc_1196F77:   If (Len(var_9C) <= 1) Then
  loc_1196F86:     Set var_88 = Me.TxtGrid
  loc_1196F8C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C)
  loc_1196F94:     var_AC = var_E0.Text
  loc_1196FA5:     Set var_F8 = Me.TxtGrid
  loc_1196FAB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_10C, var_9C)
  loc_1196FB3:     var_10C.Text = ((var_9C = "Edit") And (CLng(var_F0) <> CLng(9)))
  loc_1196FC6:   End If
  loc_1196FD2:   Set var_88 = Me.TxtGrid
  loc_1196FD8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1196FF2:   Set var_F8 = Me.TxtGrid
  loc_1196FF8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_10C)
  loc_1197000:   var_10C.SelStart = Len(var_E0.Text)
  loc_1197016: Else
  loc_119701D:   If (var_F4 = CLng(3)) Then
  loc_119703B:     If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_1197050:       Me.FGrid.Col = CVar(CLng(4))
  loc_1197058:     End If
  loc_1197096:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11970AB:   Else
  loc_11970B2:     If Not (var_F4 = CLng(9)) Then
  loc_11970BC:       If (var_F4 = CLng(2)) Then
  loc_11970BF:       End If
  loc_11970FD:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_1197112:     Else
  loc_1197119:       If (var_F4 = CLng(7)) Then
  loc_119715A:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_119716C:       End If
  loc_119716C:     End If
  loc_119716C:   End If
  loc_119716C: End If
  loc_1197176: If (CLng(Index) <> &HD) Then
  loc_119717E:   global_130 = &HFF
  loc_1197181: End If
  loc_1197181: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '1003678
  'Data Table: 542AD8
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1003480: Set var_88 = Me.TopCtrl1
  loc_1003486: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_100349F: If (CStr() = "Browse") Then
  loc_10034A2:   Exit Sub
  loc_10034A3: End If
  loc_10034A7: Set var_88 = Me.TopCtrl1
  loc_10034AD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_10034C6: If (CStr() = "Edit") Then
  loc_10034C9:   Exit Sub
  loc_10034CA: End If
  loc_10034E7: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10034EA:   Exit Sub
  loc_10034EB: End If
  loc_10034FC: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_100351E:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1003558:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_100357A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1003590:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1003599:         Set var_110 = Me.FGrid
  loc_10035B4:       Else
  loc_10035C7:         Me.FGrid.Rows = 1
  loc_10035ED:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_10035F5:         Set var_110 = Me.FGrid
  loc_1003622:         Me.FGrid.FixedRows = 1
  loc_100362A:       End If
  loc_100362A:     End If
  loc_100362D:   Else
  loc_100364E:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_100365E:   End If
  loc_1003662:   Set var_88 = Me.FGrid
  loc_1003673: End If
  loc_1003673: Exit Sub
  loc_1003674: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'EDFA68
  'Data Table: 542AD8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EDF9CB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EDF9D3: var_C8 = CVar(CLng(&HB)) 'Long
  loc_EDFA0B: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_EDFA52:   Proc_96_0_E6BE98(Me.FGrid, CInt(CLng(Me.FGrid.Row)), Me.lblclr.BackColor)
  loc_EDFA65: End If
  loc_EDFA65: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45314
  'Data Table: 542AD8
  Dim var_8C As TextBox
  loc_E452E8: Call Proc_229_84_F6D19C()
  loc_E452F8: Set var_88 = Me.TxtGrid
  loc_E452FE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45306: var_8C.Visible = False
  loc_E45312: Exit Sub
End Sub

Private Sub ChkNCTOKEN_Click() '11AE8D0
  'Data Table: 542AD8
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_D8 As Integer
  Dim var_B4 As String
  Dim unk_542AEE As Connection15
  Dim var_DC As Field20
  Dim var_88 As Recordset15
  loc_11AE4C8: Set var_8C = Me.TopCtrl1
  loc_11AE4CE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11AE4E7: If (CStr() = "Browse") Then
  loc_11AE4EA:   Exit Sub
  loc_11AE4EB: End If
  loc_11AE506: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_11AE517:   Set var_8C = Me.Txt
  loc_11AE51D:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11AE537:   If (var_A8.Visible = 0) Then
  loc_11AE547:     Set var_8C = Me.Txt
  loc_11AE54D:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11AE555:     var_A8.Visible = True
  loc_11AE56C:     Set var_8C = Me.Label1
  loc_11AE572:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_A8)
  loc_11AE57A:     var_A8.Visible = True
  loc_11AE586:   End If
  loc_11AE5A1:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_11AE5B8:   var_D8 = 0
  loc_11AE5D8:   var_B4 = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_11AE5E8:   unk_542AEE.Execute var_B4 & "'", var_9C, -1
  loc_11AE5F0:   var_8C = var_8C.Fields
  loc_11AE5F8:   var_D8 = var_A8.Item(var_A8)
  loc_11AE600:   var_DC = var_DC.Value
  loc_11AE61F:   unk_542AEE.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F92078 & "') AND V_Type='"), var_150
  loc_11AE62A:   Set var_88 = var_154
  loc_11AE66A:   If (var_88.RecordCount > 0) Then
  loc_11AE687:     var_A8 = var_88.Fields.Item(0)
  loc_11AE68F:     var_9C = var_A8.Value
  loc_11AE698:     var_A0 = CStr(var_9C)
  loc_11AE69E:     global_156 = var_A0
  loc_11AE6B5:     Call Proc_229_86_11843B4(MemVar_1F92044, var_A0)
  loc_11AE6C8:     Set var_8C = Me.Txt
  loc_11AE6CE:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_A8, var_A0)
  loc_11AE6D6:     var_A8.Text = -1
  loc_11AE6E5:   End If
  loc_11AE6E8: Else
  loc_11AE6F6:   Set var_8C = Me.Txt
  loc_11AE6FC:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11AE716:   If (var_A8.Visible = &HFF) Then
  loc_11AE726:     Set var_8C = Me.Txt
  loc_11AE72C:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11AE734:     var_A8.Visible = False
  loc_11AE74B:     Set var_8C = Me.Label1
  loc_11AE751:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_A8)
  loc_11AE759:     var_A8.Visible = False
  loc_11AE765:   End If
  loc_11AE780:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_11AE797:   var_D8 = 0
  loc_11AE7B7:   var_B4 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_11AE7C7:   unk_542AEE.Execute var_B4 & "'", var_9C, -1
  loc_11AE7CF:   var_8C = var_8C.Fields
  loc_11AE7D7:   var_D8 = var_A8.Item(var_A8)
  loc_11AE7DF:   var_DC = var_DC.Value
  loc_11AE7FE:   unk_542AEE.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F92078 & "') AND V_Type='"), var_150
  loc_11AE809:   Set var_88 = var_154
  loc_11AE849:   If (var_88.RecordCount > 0) Then
  loc_11AE866:     var_A8 = var_88.Fields.Item(0)
  loc_11AE877:     var_A0 = CStr(var_A8.Value)
  loc_11AE87D:     global_156 = var_A0
  loc_11AE894:     Call Proc_229_86_11843B4(MemVar_1F92044, var_A0, -1)
  loc_11AE8A7:     Set var_8C = Me.Txt
  loc_11AE8AD:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_A8, var_A0)
  loc_11AE8B5:     var_A8.Text = var_154
  loc_11AE8C4:   End If
  loc_11AE8C4: End If
  loc_11AE8C9: Set var_88 = Nothing
  loc_11AE8CC: Exit Sub
End Sub

Public Function MasterFormExitGet() '5446D4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5446E3
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '5446F2
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '544701
  LocalRestCode = Value
End Sub

Public Function SpecialRateGet() '544710
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '54471F
  SpecialRate = Value
End Sub

Public Property Let pRestCode(vNewValue) 'E122A4
  'Data Table: 542AD8
  loc_E1229C: global_208 = vNewValue
  loc_E122A0: Exit Sub
End Sub

Public Property Get pRestCode() 'E123C4
  'Data Table: 542AD8
  loc_E123B8: var_88 = global_208
  loc_E123BB: pRestCode = 
End Sub

Public Property Get OpenMode() 'E05D40
  'Data Table: 542AD8
  loc_E05D39: OpenMode = global_204
End Sub

Public Property Let OpenMode(vNewValue) 'E020A8
  'Data Table: 542AD8
  loc_E020A5: Exit Sub
  loc_E020A6: Set arg_6078 = vNewValue
End Sub

Public Sub SEARCHBACK(MyValue) 'E94558
  'Data Table: 542AD8
  Dim Me As Recordset15
  loc_E944E6: On Error Goto loc_E9454F
  loc_E944EF: Me.MoveFirst
  loc_E94519: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94541: Proc_5_0_110649C(&HFF, Me, global_92)
  loc_E94549: Call Proc_229_80_16C07AC(0)
  loc_E9454E: Exit Sub
  loc_E9454F: ' Referenced from: E944E6
  loc_E9454F: Proc_6_60_E62BC4(var_A0)
  loc_E94554: Exit Sub
End Sub

Public Sub Proc_229_68_1303EF0
  'Data Table: 542AD8
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_13037E2: Me.FGrid.Left = CVar(CDbl(&H7D))
  loc_13037FD: Me.FGrid.Top = CVar(CDbl(1770))
  loc_1303818: Me.FGrid.Height = CVar(CDbl(4920))
  loc_1303833: Me.FGrid.Width = CVar(CDbl(10625))
  loc_130384E: Me.DGItem.Left = CVar(CDbl(3420))
  loc_1303869: Me.DGItem.Top = CVar(CDbl(825))
  loc_130387F: Set var_A8 = Me.Txt
  loc_1303885: Call 0.Method_Proc_229_68_1303EF00 (CInt(4), var_AC)
  loc_13038A4: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13038C0: Set var_B4 = Me.Txt
  loc_13038C6: Call 0.Method_Proc_229_68_1303EF00 (CInt(4), var_B8)
  loc_13038E1: Set var_A8 = Me.Txt
  loc_13038E7: Call 0.Method_Proc_229_68_1303EF00 (CInt(4), var_AC)
  loc_13038FF: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_130390E: Me.DGTable.Top = CVar(var_AC.Left)
  loc_130392E: Set var_A8 = Me.Txt
  loc_1303934: Call 0.Method_Proc_229_68_1303EF00 (CInt(5), var_AC)
  loc_1303953: Me.DGWaiter.Left = CVar(var_AC.Left)
  loc_130396F: Set var_B4 = Me.Txt
  loc_1303975: Call 0.Method_Proc_229_68_1303EF00 (CInt(5), var_B8)
  loc_1303990: Set var_A8 = Me.Txt
  loc_1303996: Call 0.Method_Proc_229_68_1303EF00 (CInt(5), var_AC)
  loc_13039AE: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13039BD: Me.DGWaiter.Top = CVar(var_AC.Left)
  loc_13039DD: Set var_A8 = Me.Txt
  loc_13039E3: Call 0.Method_Proc_229_68_1303EF00 (CInt(&HB), var_AC)
  loc_1303A02: Me.DGMember.Left = CVar(var_AC.Left)
  loc_1303A1E: Set var_B4 = Me.Txt
  loc_1303A24: Call 0.Method_Proc_229_68_1303EF00 (CInt(&HB), var_B8)
  loc_1303A3F: Set var_A8 = Me.Txt
  loc_1303A45: Call 0.Method_Proc_229_68_1303EF00 (CInt(&HB), var_AC)
  loc_1303A5D: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1303A6C: Me.DGMember.Top = CVar(var_AC.Left)
  loc_1303A82: Set var_C4 = Me.FGrid
  loc_1303A99: global_108 = CStr(CLng(var_C4.BackColor))
  loc_1303AAF: var_C4.Cols = &HE
  loc_1303AB7: var_94 = CVar(CLng(0)) 'Long
  loc_1303ABC: var_E8 = &H1C2
  loc_1303AC8: LateIdCallSt
  loc_1303AD0: var_94 = 0
  loc_1303ADC: var_E8 = CVar(CLng(1)) 'Long
  loc_1303AE1: var_108 = "Rest"
  loc_1303AEA: LateIdCallSt
  loc_1303AF5: var_94 = CVar(CLng(1)) 'Long
  loc_1303B00: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303B07: LateIdCallSt
  loc_1303B12: var_94 = CVar(CLng(1)) 'Long
  loc_1303B17: var_E8 = 0
  loc_1303B23: LateIdCallSt
  loc_1303B2B: var_94 = 0
  loc_1303B37: var_E8 = CVar(CLng(2)) 'Long
  loc_1303B3C: var_108 = "Rest."
  loc_1303B45: LateIdCallSt
  loc_1303B50: var_94 = CVar(CLng(2)) 'Long
  loc_1303B5B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303B62: LateIdCallSt
  loc_1303B6D: var_94 = CVar(CLng(2)) 'Long
  loc_1303B72: var_E8 = &H352
  loc_1303B7E: LateIdCallSt
  loc_1303B86: var_94 = 0
  loc_1303B92: var_E8 = CVar(CLng(3)) 'Long
  loc_1303B97: var_108 = "Code"
  loc_1303BA0: LateIdCallSt
  loc_1303BAB: var_94 = CVar(CLng(3)) 'Long
  loc_1303BB6: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303BBD: LateIdCallSt
  loc_1303BC8: var_94 = CVar(CLng(3)) 'Long
  loc_1303BCD: var_E8 = &H352
  loc_1303BD9: LateIdCallSt
  loc_1303BE1: var_94 = 0
  loc_1303BED: var_E8 = CVar(CLng(4)) 'Long
  loc_1303BF2: var_108 = "Item Name"
  loc_1303BFB: LateIdCallSt
  loc_1303C06: var_94 = CVar(CLng(4)) 'Long
  loc_1303C11: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303C18: LateIdCallSt
  loc_1303C23: var_94 = CVar(CLng(4)) 'Long
  loc_1303C28: var_E8 = &HDAC
  loc_1303C34: LateIdCallSt
  loc_1303C3C: var_94 = 0
  loc_1303C48: var_E8 = CVar(CLng(5)) 'Long
  loc_1303C4D: var_108 = "Unit"
  loc_1303C56: LateIdCallSt
  loc_1303C61: var_94 = CVar(CLng(5)) 'Long
  loc_1303C6C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303C73: LateIdCallSt
  loc_1303C7E: var_94 = CVar(CLng(5)) 'Long
  loc_1303C83: var_E8 = &H519
  loc_1303C8F: LateIdCallSt
  loc_1303C97: var_94 = 0
  loc_1303CA3: var_E8 = CVar(CLng(6)) 'Long
  loc_1303CA8: var_108 = "Description"
  loc_1303CB1: LateIdCallSt
  loc_1303CBC: var_94 = CVar(CLng(6)) 'Long
  loc_1303CC7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303CCE: LateIdCallSt
  loc_1303CD9: var_94 = CVar(CLng(6)) 'Long
  loc_1303CE4: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303CEB: LateIdCallSt
  loc_1303CF6: var_94 = CVar(CLng(6)) 'Long
  loc_1303CFB: var_E8 = &H1DB
  loc_1303D07: LateIdCallSt
  loc_1303D0F: var_94 = 0
  loc_1303D1B: var_E8 = CVar(CLng(7)) 'Long
  loc_1303D20: var_108 = "Qty"
  loc_1303D29: LateIdCallSt
  loc_1303D34: var_94 = CVar(CLng(7)) 'Long
  loc_1303D3F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1303D46: LateIdCallSt
  loc_1303D51: var_94 = CVar(CLng(7)) 'Long
  loc_1303D5C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1303D63: LateIdCallSt
  loc_1303D6E: var_94 = CVar(CLng(7)) 'Long
  loc_1303D73: var_E8 = &H41A
  loc_1303D7F: LateIdCallSt
  loc_1303D87: var_94 = 0
  loc_1303D93: var_E8 = CVar(CLng(8)) 'Long
  loc_1303D98: var_108 = "Rate"
  loc_1303DA1: LateIdCallSt
  loc_1303DAC: var_94 = CVar(CLng(8)) 'Long
  loc_1303DB7: var_E8 = CVar(CInt(7)) 'Integer
  loc_1303DBE: LateIdCallSt
  loc_1303DC9: var_94 = CVar(CLng(8)) 'Long
  loc_1303DD4: var_E8 = CVar(CInt(7)) 'Integer
  loc_1303DDB: LateIdCallSt
  loc_1303DE6: var_94 = CVar(CLng(8)) 'Long
  loc_1303DEB: var_E8 = &H41A
  loc_1303DF7: LateIdCallSt
  loc_1303DFF: var_94 = 0
  loc_1303E0B: var_E8 = CVar(CLng(9)) 'Long
  loc_1303E10: var_108 = "Cancel"
  loc_1303E19: LateIdCallSt
  loc_1303E24: var_94 = CVar(CLng(9)) 'Long
  loc_1303E2F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303E36: LateIdCallSt
  loc_1303E41: var_94 = CVar(CLng(9)) 'Long
  loc_1303E4C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1303E53: LateIdCallSt
  loc_1303E5E: var_94 = CVar(CLng(9)) 'Long
  loc_1303E63: var_E8 = &H2EE
  loc_1303E6F: LateIdCallSt
  loc_1303E7A: var_94 = CVar(CLng(&HA)) 'Long
  loc_1303E7F: var_E8 = 0
  loc_1303E8B: LateIdCallSt
  loc_1303E96: var_94 = CVar(CLng(&HB)) 'Long
  loc_1303E9B: var_E8 = 0
  loc_1303EA7: LateIdCallSt
  loc_1303EB2: var_94 = CVar(CLng(&HC)) 'Long
  loc_1303EB7: var_E8 = 0
  loc_1303EC3: LateIdCallSt
  loc_1303ECE: var_94 = CVar(CLng(&HD)) 'Long
  loc_1303ED3: var_E8 = 0
  loc_1303EDF: LateIdCallSt
  loc_1303EE9: Set var_C4 = Nothing 
  loc_1303EED: Exit Sub
End Sub

Public Sub Proc_229_69_19445FC
  'Data Table: 542AD8
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_124 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As String
  Dim var_15C As String
  Dim unk_542AEE As Connection15
  Dim var_160 As Variant
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_114 As Variant
  Dim var_B8 As Recordset15
  Dim var_96 As Integer
  Dim var_17C As String
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_280 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3C4 As Variant
  Dim var_294 As Variant
  loc_1941A0F: MemVar_1F923C0 = "N"
  loc_1941A16: MemVar_1F923C4 = "N"
  loc_1941A1D: MemVar_1F923C8 = "K"
  loc_1941A3C: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_1941A44:   Proc_229_69_19445FC = 0
  loc_1941A4A: End If
  loc_1941A51: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1941A96: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1941AB5: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1941AD5: var_104 = Me.Fields.Item("SearchCode")
  loc_1941AF3: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_1941B10: If (var_8C = vbNullString) Then
  loc_1941B18:   Proc_229_69_19445FC = 0
  loc_1941B1E: End If
  loc_1941B26: If (var_90 = vbNullString) Then
  loc_1941B2E:   Proc_229_69_19445FC = 0
  loc_1941B34: End If
  loc_1941B52: Set var_E8 = Me.Txt
  loc_1941B58: Call 0.Method_Proc_229_69_19445FC0 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1941B60: var_114 = var_104.Text
  loc_1941B69: var_158 = -1 & var_F0
  loc_1941B79: unk_542AEE.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_1941BA2: var_144 = 0
  loc_1941BD2: unk_542AEE.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_1941BE2: var_144 = var_104.Item(var_104)
  loc_1941BEA: var_160 = var_160.Value
  loc_1941BF7: var_D4 = Proc_6_38_E68A98(var_124)
  loc_1941C25: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1941C35: unk_542AEE.Execute var_F0 & "MK'", var_114, -1
  loc_1941C40: Set var_C0 = var_E8.Fields
  loc_1941C64: If (var_160.RecordCount = 1) Then
  loc_1941C6A:   var_CC = "New Order"
  loc_1941C70: Else
  loc_1941C77:   Set var_E8 = Me.LblState
  loc_1941C85:   var_CC = var_E8.Caption
  loc_1941C8B: End If
  loc_1941CA1: unk_542AEE.Execute var_8C, var_114, -1
  loc_1941CAC: Set var_B8 = var_E8
  loc_1941CB5: ' Referenced from: 19445BA
  loc_1941CC4: If Not(var_C0.EOF) Then
  loc_1941CDD:   unk_542AEE.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_1941CE8:   Set var_D0 = var_E8
  loc_1941CF8:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1941D10:   var_E8 = Me.Fields
  loc_1941D20:   var_114 = var_E8.Item("SearchCode").Value
  loc_1941D61:   unk_542AEE.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_1941D6C:   Set var_BC = var_E8
  loc_1941D89:   If (var_BC.RecordCount > 0) Then
  loc_1941D9B:     var_E8 = var_C0.Fields
  loc_1941DBA:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_1941DCF:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1941DDF:       Call Proc_229_73_EF9A8C(New, var_E8, var_E8, var_E8)
  loc_1941DE7:       Set var_D8 = var_E8
  loc_1941DED:       Me.Recordset15.MoveFirst
  loc_1941DF2:       ' Referenced from: 1942A6C
  loc_1941E01:       If Not(var_B8.EOF) Then
  loc_1941E1A:         If (0 = 0) Then
  loc_1941E3B:           Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_1941E77:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1941EAE:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_1941EB1:           var_134 = (Space(1) + var_124)
  loc_1941EC6:           Call Proc_229_74_F14B10(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_1941EF8:           Call Proc_229_74_F14B10(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_1941F06:           var_96 = &H12
  loc_1941F27:           Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_1941F53:           Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1941F70:           var_E8 = var_B8.Fields
  loc_1941F87:           Proc_6_39_E7C810(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_1941FC4:           Call Proc_229_74_F14B10(var_D8, vbNullString, " V No.     : " & Proc_6_45_EAD428(CStr(var_124), &HA, var_E8))
  loc_1941FF1:           var_E8 = var_B8.Fields
  loc_1942094:           Call Proc_229_74_F14B10(var_D8, vbNullString, " Date.     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_19420DB:           var_104 = var_B8.Fields.Item("Remarks")
  loc_1942126:           Call Proc_229_74_F14B10(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104), vbNullString), &H1E))
  loc_1942158:           Set var_E8 = Me.Label1
  loc_194215E:           Call 0.Method_Proc_229_69_19445FC0 (2, var_104)
  loc_19421E7:           var_190 = Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_19421ED:           var_17C = vbNullString
  loc_19421FC:           var_1B4 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1942205:           var_1C4 = (var_1B4 + ": ")
  loc_194220F:           var_234 = (var_1C4 + CVar(var_190))
  loc_1942224:           Call Proc_229_74_F14B10(var_D8, vbNullString, CStr(var_234))
  loc_1942276:           Call Proc_229_74_F14B10(var_D8, vbNullString, var_C4, vbNullString)
  loc_1942282:         End If
  loc_19422A8:         var_134 = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H12, Space(1))))
  loc_19422BC:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_19422D6:         var_1D4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 3, var_1B4)))
  loc_19422E2:         var_1E4 = Space(1)
  loc_19422EA:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_1942304:         var_224 = ("000" + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1942318:         var_248 = (CVar(var_190) + Space(1))
  loc_1942332:         var_26C = (var_248 + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_1942369:         var_158 = vbNullString
  loc_194237E:         Call Proc_229_74_F14B10(var_D8, vbNullString, CStr(var_26C))
  loc_194238D:         var_158 = vbNullString
  loc_19423A2:         Call Proc_229_74_F14B10(var_D8, vbNullString, var_C4)
  loc_19423B4:         var_96 = (var_96 + 4)
  loc_19423BA:         var_BC.MoveFirst
  loc_19423BF:         ' Referenced from: 19426D9
  loc_19423CE:         If Not(var_BC.EOF) Then
  loc_19423F3:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_194241E:           Proc_6_39_E7C810(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_1942446:           var_280 = "Rate"
  loc_1942469:           Proc_6_39_E7C810(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_1942478:           var_2A4 = "0.00"
  loc_19424B4:           Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_19424DF:           Proc_6_39_E7C810(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_1942537:           var_154 = (1 + CVar(Proc_6_45_EAD428(CStr(var_124), &H12, Space(1), 1)))
  loc_194254B:           var_1C4 = (Space(1) + Space(1))
  loc_1942564:           var_234 = (var_158 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, Space(1))))))
  loc_1942578:           var_25C = (Space(1) + Space(1))
  loc_1942591:           var_2E4 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_294, var_2A4)), 6)))
  loc_19425A5:           var_304 = (var_2E4 + Space(1))
  loc_19425BE:           var_3E4 = (var_304 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_1942624:           var_1F4 = CVar(var_E4) 'Double
  loc_194264E:           Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_194267C:           Proc_6_39_E7C810(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_1942688:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_194268D:           var_E4 = CSng(CVar(Proc_6_52_EAD4F4("Qty", 3, (var_1F4 * Space(1)))))
  loc_19426A7:           var_158 = vbNullString
  loc_19426BC:           Call Proc_229_74_F14B10(var_D8, vbNullString, CStr(var_3E4))
  loc_19426CE:           var_96 = (var_96 + 1)
  loc_19426D4:           var_BC.MoveNext
  loc_19426D9:           GoTo loc_19423BF
  loc_19426DC:         End If
  loc_19426F4:         Call Proc_229_74_F14B10(var_D8, vbNullString, var_C4, vbNullString)
  loc_194271E:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942759:         var_144 = "0.00"
  loc_194275E:         var_154 = var_144
  loc_19427AB:         var_134 = (Space(&H16) + CVar(Proc_6_45_EAD428("TOTAL  :", 8, var_96)))
  loc_19427B5:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_19427CA:         Call Proc_229_74_F14B10(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_1942815:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942826:         var_100 = "WaiterName"
  loc_1942865:         var_17C = vbNullString
  loc_1942885:         Call Proc_229_74_F14B10(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_19428BF:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19428F4:         Call Proc_229_74_F14B10(var_D8, vbNullString, " ** " & MemVar_1F9221C & " **", vbNullString)
  loc_1942907:         var_B8.MoveNext
  loc_194292A:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942956:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942982:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19429AE:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19429DA:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942A06:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942A32:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942A5E:         Call Proc_229_74_F14B10(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1942A6C:         GoTo loc_1941DF2
  loc_1942A6F:       End If
  loc_1942A72:       var_DC = "WinTOKENPrint"
  loc_1942A99:       Set var_E8 = var_D8 
  loc_1942AA0:       CreateFieldDefFile(var_E8, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1942AD2:       var_158 = MemVar_1F920B4 & "\" & var_DC
  loc_1942AE2:       Call 0.Method_arg_1C (var_158 & ".RPT", var_100, var_E8)
  loc_1942AED:       MemVar_1F921E4 = var_E8
  loc_1942B16:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_1942B1E:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_1942B2E:       If (var_D4 <> vbNullString) Then
  loc_1942B4F:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_1942B55:           Call Proc_229_71_F0ED98(var_D4)
  loc_1942B5A:         End If
  loc_1942B5A:       End If
  loc_1942B77:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_1942B81:       Set var_D8 = Nothing
  loc_1942B87:     Else
  loc_1942B92:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1942BA0:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1942BA3:         End If
  loc_1942BA5:         Close 1
  loc_1942BC5:         var_15C = "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT"
  loc_1942BCC:         Open var_15C For Output As 1 Len = &HFF
  loc_1942BDC:         var_B8.MoveFirst
  loc_1942BE1:         ' Referenced from:   194367F
  loc_1942BF0:         If Not(var_B8.EOF) Then
  loc_1942BF5:           var_96 = 0
  loc_1942C09:           If (var_96 = 0) Then
  loc_1942C0E:             Print 1
  loc_1942C42:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_1942C89:             Call Proc_229_89_EFA78C(Proc_6_45_EAD428(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_1942C93:             Print 1, var_17C
  loc_1942CD1:             Call Proc_229_89_EFA78C(Proc_6_45_EAD428("* NC Bill *", &H14, var_280), "D", &H28)
  loc_1942CDB:             Print 1, var_15C
  loc_1942CF3:             Print 1
  loc_1942CFB:             Print 1
  loc_1942D34:             Proc_6_39_E7C810(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1942D56:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_1942D60:             var_1C4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(CStr(var_154), &HA, var_15C)))
  loc_1942D66:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_1942E18:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_1942E22:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_1942E2B:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_1942E35:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1942E3B:             Print 1, "0"
  loc_1942E90:             var_104 = var_B8.Fields.Item("Remarks")
  loc_1942ECD:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_1942ED7:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32)))
  loc_1942EDE:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))) + Chr(&H12))
  loc_1942EE4:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1942F1D:             Set var_E8 = Me.Label1
  loc_1942F23:             Call 0.Method_Proc_229_69_19445FC0 (2, var_104)
  loc_1942FB8:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1942FC1:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_1942FC8:             var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1942FCB:             var_234 = (Chr(&H12) + var_224)
  loc_1942FD1:             Print 1, Space(1)
  loc_194301C:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1943022:             Print 1, CVar(var_104)
  loc_194302F:           End If
  loc_1943055:           var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_194306F:           var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104)))))
  loc_194307B:           var_1C4 = Space(3)
  loc_1943083:           var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_194309D:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_19430B1:           var_224 = ("000" + Space(3))
  loc_19430CB:           var_248 = (var_224 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_1943111:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_1943117:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_194313A:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1943140:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1943153:           var_96 = (var_96 + 4)
  loc_1943159:           var_BC.MoveFirst
  loc_194315E:           ' Referenced from:   1943465
  loc_194316D:           If Not(var_BC.EOF) Then
  loc_19431BD:             Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1943208:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1943253:             Proc_6_39_E7C810(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_194327E:             Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_19432CE:             var_124 = Space(3)
  loc_19432D6:             var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_19432EC:             var_204 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_19432EF:             var_214 = (1 + var_204)
  loc_1943303:             var_234 = (Space(3) + Space(3))
  loc_1943319:             var_2B4 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))) 'String
  loc_194331C:             var_2C4 = (&H12 + var_2B4)
  loc_1943330:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_1943349:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_19433D5:             Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_1943403:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_194340F:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_1943414:             var_E4 = CSng(var_1C4)
  loc_1943441:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_1943447:             Print 1, var_124
  loc_194345A:             var_96 = (var_96 + 1)
  loc_1943460:             var_BC.MoveNext
  loc_1943465:             GoTo loc_194315E
  loc_1943468:           End If
  loc_194347E:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1943484:           Print 1, var_124
  loc_1943496:           Print 1, vbNullString
  loc_194351C:           var_134 = (Chr(&HF) + Space(&H25))
  loc_1943526:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_1943530:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_1943536:           Print 1, Space(3)
  loc_1943567:           Print 1, vbNullString
  loc_19435C1:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_19435CB:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_19435D1:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_19435F2:           Print 1
  loc_194360D:           var_124 = (Chr(&HF) + "** ")
  loc_1943617:           var_134 = (Space(&H25) + CVar(MemVar_1F9221C))
  loc_1943620:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_1943626:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_194363A:           var_B8.MoveNext
  loc_1943641:           Print 1
  loc_1943649:           Print 1
  loc_1943651:           Print 1
  loc_1943659:           Print 1
  loc_1943661:           Print 1
  loc_1943669:           Print 1
  loc_1943671:           Print 1
  loc_1943679:           Print 1
  loc_194367F:           GoTo loc_1942BE1
  loc_1943682:         End If
  loc_1943684:         Close 1
  loc_19436BF:         If (Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_19436E7:           Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1943745:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") & var_C0.Fields.Item("Printer").Value
  loc_1943765:         Else
  loc_194378F:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_19437A0:         End If
  loc_19437A2:         Close 1
  loc_19437AC:         If (MemVar_1F923B8 = "Y") Then
  loc_19437DE:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_19437EF:         Else
  loc_194381E:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_194382C:         End If
  loc_194382F:       Else
  loc_194383A:         If Not (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1943848:           If (var_174 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_194384B:           End If
  loc_194384D:           Close 1
  loc_1943874:           Open "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1943884:           var_B8.MoveFirst
  loc_1943889:           ' Referenced from:     19442C7
  loc_1943898:           If Not(var_B8.EOF) Then
  loc_19438A8:             var_94 = "* TOKEN *"
  loc_19438D9:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_19438E8:             If (0 = 0) Then
  loc_19438ED:               Print 1
  loc_194391C:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_194395F:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1943989:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_1943990:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_1943997:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_194399E:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_19439A4:               Print 1, var_2E4
  loc_19439F2:               var_154 = (42 - Len(Trim(var_94)))
  loc_1943A25:               var_224 = (42 - Len(Trim(var_94)))
  loc_1943A4F:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1943A59:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_1943A60:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_1943A67:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1943A6D:               Print 1, ("0.00" / 2)
  loc_1943A8C:               var_96 = &H12
  loc_1943A91:               Print 1
  loc_1943A99:               Print 1
  loc_1943AD2:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96)
  loc_1943B01:               var_124 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1943B0B:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_1943B12:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1943B18:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_1943BDB:               var_124 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1943BE5:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_1943BEE:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_1943BF8:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1943BFF:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_1943C05:               Print 1, Space(3)
  loc_1943C5E:               var_104 = var_B8.Fields.Item("Remarks")
  loc_1943C9B:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_1943CA5:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H20)))
  loc_1943CAC:               var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_1943CB2:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1943CEB:               Set var_E8 = Me.Label1
  loc_1943CF1:               Call 0.Method_Proc_229_69_19445FC0 (2, var_104)
  loc_1943D93:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1943D9C:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_1943DA3:               var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1943DA6:               var_234 = (Chr(&H12) + var_224)
  loc_1943DAD:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_1943DB3:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_1943E0F:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1943E16:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_1943E1C:               Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))
  loc_1943E2D:             End If
  loc_1943E53:             var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1943E6D:             var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_1943E79:             var_1C4 = Space(3)
  loc_1943E81:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1C4)
  loc_1943E9B:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1943EE4:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_1943EEB:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1943EF1:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1943F25:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1943F2C:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1943F32:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1943F49:             var_96 = (var_96 + 4)
  loc_1943F4F:             var_BC.MoveFirst
  loc_1943F54:             ' Referenced from:     1944123
  loc_1943F63:             If Not(var_BC.EOF) Then
  loc_1943FB3:               Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1943FFE:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1944048:               var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1944061:               var_214 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_1944075:               var_234 = (Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_194408E:               var_2C4 = (var_96 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_19440F4:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_19440FB:               var_154 = (Space(3) + Chr(&H12))
  loc_1944101:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1944118:               var_96 = (var_96 + 1)
  loc_194411E:               var_BC.MoveNext
  loc_1944123:               GoTo loc_1943F54
  loc_1944126:             End If
  loc_1944149:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1944150:             var_154 = (Space(3) + Chr(&H12))
  loc_1944156:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19441C8:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_19441D2:             var_1B4 = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96), &H14)))
  loc_19441D9:             var_1D4 = (CVar(var_BC.Fields.Item("qty")) + Chr(&H12))
  loc_19441DF:             Print 1, "0.00"
  loc_1944227:             var_1B4 = Chr(&H12)
  loc_1944234:             var_124 = (Chr(&HF) + "***  ")
  loc_1944247:             var_1C4 = ("  ***" + var_1B4)
  loc_1944251:             Print 1, Space(3) & Trim(var_CC) & Chr(&H12)
  loc_194426A:             Print 1
  loc_1944285:             var_124 = (Chr(&HF) + "** ")
  loc_194428F:             var_134 = (Space(3) + CVar(MemVar_1F9221C))
  loc_1944298:             var_154 = (Trim(var_CC) + " **")
  loc_194429E:             Print 1, Space(3) & Trim(var_CC)
  loc_19442B2:             var_B8.MoveNext
  loc_19442B9:             Print 1
  loc_19442C1:             Print 1
  loc_19442C7:             GoTo loc_1943889
  loc_19442CA:           End If
  loc_19442CC:           Close 1
  loc_1944307:           If (Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Printer"))) <> vbNullString) Then
  loc_194432F:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1944381:             var_124 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") 'String
  loc_1944387:             var_134 = var_124 & var_C0.Fields.Item("Printer").Value 
  loc_194438D:             Print 1, var_134
  loc_19443AD:           Else
  loc_19443D2:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1944409:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_194441A:           End If
  loc_194441C:           Close 1
  loc_1944426:           If (MemVar_1F923B8 = "Y") Then
  loc_1944458:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1944495:             If (MsgBox("Press OK to cut TOKEN", &H40, var_124, var_134, Space(3) & Trim(var_CC)) = 1) Then
  loc_19444B1:               var_A8 = CVar(Shell("C:\reptmp\SCUTTER.PIF", 0)) 'Variant
  loc_19444B8:             End If
  loc_19444BB:           Else
  loc_19444EA:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1944527:             If (MsgBox("Press OK to cut TOKEN", &H40, var_124, var_134, Space(3) & Trim(var_CC)) = 1) Then
  loc_1944543:               var_A8 = CVar(Shell("C:\reptmp\SCUTTER.bat", 0)) 'Variant
  loc_194454A:             End If
  loc_194454A:           End If
  loc_194454A:         End If
  loc_194454A:       End If
  loc_194454A:     End If
  loc_194454D:   Else
  loc_1944597:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_19445B2:   End If
  loc_19445B5:   var_C0.MoveNext
  loc_19445BA:   GoTo loc_1941CB5
  loc_19445BD: End If
  loc_19445C2: Set var_B8 = Nothing
  loc_19445CA: Set var_BC = Nothing
  loc_19445D2: Set var_C0 = Nothing
  loc_19445DA: Set var_D0 = Nothing
  loc_19445E2: Set var_D8 = Nothing
  loc_19445EA: Proc_229_69_19445FC = &HFF
  loc_19445F0: Proc_6_60_E62BC4(var_E4)
  loc_19445F5: Proc_229_69_19445FC = 
End Sub

Public Sub Proc_229_70_DFBD9C
  'Data Table: 542AD8
  loc_DFBD98: Exit Sub
End Sub

Public Sub Proc_229_71_F0ED98(arg_C) 'F0ED98
  'Data Table: 542AD8
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0ECC7: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0ECF0: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0ECF9: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0ED29: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0ED3E: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0ED58: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0ED6D: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0ED8F: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0ED94: Exit Sub
End Sub

Public Sub Proc_229_72_1B9BCD4
  'Data Table: 542AD8
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim var_13C As String
  Dim unk_542AEE As Connection15
  Dim var_F8 As Recordset15
  Dim var_160 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_168 As Variant
  Dim var_15C As Variant
  Dim var_178 As Variant
  Dim var_17C As String
  Dim var_180 As String
  Dim var_D4 As Recordset15
  Dim var_184 As Variant
  Dim var_B8 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_194 As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_274 As Variant
  Dim var_14C As Variant
  Dim var_2FC As String
  Dim var_300 As String
  Dim var_1D8 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_21C As Variant
  Dim var_24C As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_E4 As Recordset15
  Dim var_23C As Variant
  Dim var_2F4 As Variant
  Dim var_330 As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  loc_1B96A78: On Error Goto loc_1B9BCC8
  loc_1B96A98: Proc_6_17_EAA2B0(var_118, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1B96AAE: unk_542AEE.Execute CStr(var_15C & var_118), -1, var_160
  loc_1B96AB9: Set var_F8 = var_160
  loc_1B96ADF: If (var_F8.RecordCount > 0) Then
  loc_1B96B19:   var_E8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F8.Fields.Item("KOTHeader1"))))))
  loc_1B96B5F:   var_EC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F8.Fields.Item("KOTHeader2"))))))
  loc_1B96BA5:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F8.Fields.Item("KOTHeader3"))))))
  loc_1B96BEB:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F8.Fields.Item("KOTHeader4"))))))
  loc_1B96BFA: End If
  loc_1B96BFD: MemVar_1F923C0 = "N"
  loc_1B96C04: MemVar_1F923C4 = "N"
  loc_1B96C0B: MemVar_1F923C8 = "K"
  loc_1B96C16: var_13C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN,K.Remarks , K.ContraDocId, D.ShortName " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode) "
  loc_1B96C5B: var_8C = CStr(CVar(var_13C & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1B96C7A: var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1B96C9A: var_168 = Me.Fields.Item("SearchCode")
  loc_1B96CAA: var_15C = var_138 & var_168.Value 
  loc_1B96CB3: var_178 = var_15C & "'" 
  loc_1B96CB8: var_90 = CStr(var_178)
  loc_1B96CD5: If (var_8C = vbNullString) Then
  loc_1B96CDD:   Proc_229_72_1B9BCD4 = 0
  loc_1B96CE3: End If
  loc_1B96CEB: If (var_90 = vbNullString) Then
  loc_1B96CF3:   Proc_229_72_1B9BCD4 = 0
  loc_1B96CF9: End If
  loc_1B96D17: Set var_160 = Me.Txt
  loc_1B96D1D: Call 0.Method_Proc_229_72_1B9BCD40 (CInt(4), var_168, var_13C, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1B96D25: var_118 = var_168.Text
  loc_1B96D2E: var_17C = -1 & var_13C
  loc_1B96D3E: unk_542AEE.Execute var_17C & "' AND CONTRADOCID IS NULL", var_184, 
  loc_1B96D75: If (var_184.RecordCount = 1) Then
  loc_1B96D7B:   var_CC = "New Order"
  loc_1B96D81: Else
  loc_1B96D88:   Set var_160 = Me.LblState
  loc_1B96D96:   var_CC = var_160.Caption
  loc_1B96D9C: End If
  loc_1B96DB2: unk_542AEE.Execute var_8C, var_118, -1
  loc_1B96DBD: Set var_B8 = var_160
  loc_1B96DDC: unk_542AEE.Execute "SELECT KOTPrinting FROM Enviro", var_118, -1
  loc_1B96DE7: Set var_D4 = var_160
  loc_1B96DF6: var_128 = 0
  loc_1B96E26: unk_542AEE.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_118, -1
  loc_1B96E2E: var_160 = var_160.Fields
  loc_1B96E36: var_128 = var_168.Item(var_168)
  loc_1B96E3E: var_184 = var_184.Value
  loc_1B96E4B: var_D8 = Proc_6_38_E68A98(var_138, var_138)
  loc_1B96E74: var_160 = var_B8.Fields
  loc_1B96E9E: If (Proc_6_38_E68A98(CVar(var_160.Item("ContraDocId")), var_160) <> vbNullString) Then
  loc_1B96EB4:   var_118 = "Sale Bill Already Generated !!"
  loc_1B96EBA:   MsgBox(var_118, &H40, var_138, var_15C, var_178)
  loc_1B96ECF:   Proc_229_72_1B9BCD4 = 0
  loc_1B96ED5: End If
  loc_1B96EEC: var_13C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1B96EFC: unk_542AEE.Execute var_13C & "'", var_118, -1
  loc_1B96F07: Set var_C0 = var_160
  loc_1B96F17: ' Referenced from: 1B9BCA2
  loc_1B96F26: If Not(var_C0.EOF) Then
  loc_1B96F30:   var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1B96F48:   var_160 = Me.Fields
  loc_1B96F58:   var_118 = var_160.Item("SearchCode").Value
  loc_1B96F99:   unk_542AEE.Execute CStr(var_138 & var_118 & "'"), var_118, -1
  loc_1B96FA4:   Set var_BC = var_160
  loc_1B96FB3:   var_164 = var_BC.RecordCount
  loc_1B96FC1:   If (var_164 > 0) Then
  loc_1B96FD3:     var_160 = var_C0.Fields
  loc_1B96FF2:     var_1A8 = Trim(CVar(var_160.Item("PrintType"))) 'Variant
  loc_1B97007:     If (var_1A8 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1B97017:       Call Proc_229_73_EF9A8C(New, var_160, var_160)
  loc_1B9701F:       Set var_E0 = var_160
  loc_1B97025:       Me.Recordset15.MoveFirst
  loc_1B9702A:       ' Referenced from: 1B97DB8
  loc_1B97039:       If Not(var_B8.EOF) Then
  loc_1B9703E:         var_96 = 0
  loc_1B97055:         var_160 = var_B8.Fields
  loc_1B97166:         var_2F4 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_160.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_160) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B9716F:         var_94 = CStr(var_2F4)
  loc_1B971B3:         If (var_96 = 0) Then
  loc_1B971B9:           var_180 = vbNullString
  loc_1B971D4:           Call Proc_229_74_F14B10(var_E0, vbNullString, vbNullString)
  loc_1B97210:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1B97247:           var_138 = CVar(Me.LblRest.Caption) 'String
  loc_1B9724A:           var_15C = (Space(1) + var_138)
  loc_1B9725F:           Call Proc_229_74_F14B10(var_E0, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1B97291:           Call Proc_229_74_F14B10(var_E0, vbNullString, var_94, vbNullString)
  loc_1B972C0:           Call Proc_229_74_F14B10(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1B972F4:           Proc_6_39_E7C810(var_138, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1B97328:           var_180 = vbNullString
  loc_1B97331:           Call Proc_229_74_F14B10(var_E0, var_180, " TOKEN No.   : " & Proc_6_45_EAD428(CStr(var_138), &HA, vbNullString))
  loc_1B973ED:           var_300 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1B97401:           Call Proc_229_74_F14B10(var_E0, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_300)
  loc_1B97448:           var_168 = var_B8.Fields.Item("Remarks")
  loc_1B97493:           Call Proc_229_74_F14B10(var_E0, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168), vbNullString), &H1E))
  loc_1B974C5:           Set var_160 = Me.Label1
  loc_1B974CB:           Call 0.Method_Proc_229_72_1B9BCD40 (2, var_168)
  loc_1B97536:           var_2FC = vbNullString
  loc_1B97545:           var_1B8 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B9754E:           var_1C8 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_160.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1B97555:           var_1EC = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1B97558:           var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_160.Item("ShortName")), 1, &H12))), 1, 3)) + var_1EC)
  loc_1B9756D:           Call Proc_229_74_F14B10(var_E0, vbNullString, CStr("* NC LOT *"))
  loc_1B975A4:           var_17C = vbNullString
  loc_1B975B9:           Call Proc_229_74_F14B10(var_E0, vbNullString, var_C4)
  loc_1B975C5:         End If
  loc_1B975EB:         var_15C = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1B975FF:         var_1B8 = (Trim(CVar(var_168)) + Space(1))
  loc_1B97616:         var_1C8 = CVar(Proc_6_52_EAD4F4("Qty", 3, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_160.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1B97619:         var_1D8 = (var_2FC + var_1C8)
  loc_1B9761E:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9763C:         var_17C = vbNullString
  loc_1B97651:         Call Proc_229_74_F14B10(var_E0, vbNullString, var_B0)
  loc_1B97660:         var_17C = vbNullString
  loc_1B97675:         Call Proc_229_74_F14B10(var_E0, vbNullString, var_C4)
  loc_1B97687:         var_96 = (var_96 + 4)
  loc_1B9768D:         var_BC.MoveFirst
  loc_1B97692:         ' Referenced from: 1B97A13
  loc_1B976A1:         If Not(var_BC.EOF) Then
  loc_1B976DA:           var_184 = var_BC.Fields
  loc_1B976F1:           Proc_6_39_E7C810(var_1EC, CVar(var_184.Item("qty")), &H12)
  loc_1B9771C:           var_194 = "Cancel"
  loc_1B97756:           var_1FC = "Y"
  loc_1B97794:           var_178 = (1 + CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1B977A8:           var_1C8 = (Space(1) + Space(1))
  loc_1B977C1:           var_274 = (var_17C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1EC, "0")), 3, var_1C8)))
  loc_1B977D7:           var_344 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item(var_194).Value = var_1FC), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCTOKEN")))) 'String
  loc_1B977DA:           var_354 = (var_17C + var_344)
  loc_1B97839:           Call Proc_229_74_F14B10(var_E0, vbNullString, CStr(var_354))
  loc_1B9784B:           var_96 = (var_96 + 1)
  loc_1B97887:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B978B8:             var_2FC = vbNullString
  loc_1B978DF:             Call Proc_229_74_F14B10(var_E0, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1B978FF:             var_96 = (var_96 + 1)
  loc_1B97902:           End If
  loc_1B9790C:           If (&H12 = (&H45 - var_AA)) Then
  loc_1B97927:             Call Proc_229_74_F14B10(var_E0, vbNullString, var_C4, vbNullString)
  loc_1B97951:             Call Proc_229_74_F14B10(var_E0, vbNullString, " Contd.", vbNullString)
  loc_1B97965:             var_98 = (var_98 + 1)
  loc_1B97985:             Call Proc_229_74_F14B10(var_E0, vbNullString, var_94, vbNullString, 0)
  loc_1B979AE:             Call Proc_229_74_F14B10(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1B979D2:             Call Proc_229_74_F14B10(var_E0, vbNullString, var_B0, vbNullString)
  loc_1B979F6:             Call Proc_229_74_F14B10(var_E0, vbNullString, var_C4, vbNullString)
  loc_1B97A08:             var_96 = (var_96 + 4)
  loc_1B97A0B:           End If
  loc_1B97A0E:           var_BC.MoveNext
  loc_1B97A13:           GoTo loc_1B97692
  loc_1B97A16:         End If
  loc_1B97A20:         If (&H12 < (&H45 - var_AA)) Then
  loc_1B97A23:           ' Referenced from: 1B97A65
  loc_1B97A2D:           If (&H12 = (&H45 - var_AA)) Then
  loc_1B97A4E:             Call Proc_229_74_F14B10(var_E0, vbNullString, vbNullString, vbNullString, &H12)
  loc_1B97A62:             var_96 = (var_96 + 1)
  loc_1B97A65:             GoTo loc_1B97A23
  loc_1B97A68:           End If
  loc_1B97A68:         End If
  loc_1B97A80:         Call Proc_229_74_F14B10(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1B97ACE:         var_2FC = vbNullString
  loc_1B97AEE:         Call Proc_229_74_F14B10(var_E0, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1B97B49:         Call Proc_229_74_F14B10(var_E0, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1B97BA8:         var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B97BB6:         unk_542AEE.Execute CStr(var_15C), Space(1), -1
  loc_1B97C17:         If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B97C41:           Call Proc_229_74_F14B10(var_E0, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1B97C54:         Else
  loc_1B97C61:           var_128 = "Select Printed from TOKEN where docid='"
  loc_1B97C97:           var_14C = "'"
  loc_1B97CAA:           unk_542AEE.Execute CStr(var_128 & Me.Fields.Item("SearchCode").Value & var_14C), Space(1), -1
  loc_1B97CD2:           var_108 = 0
  loc_1B97D08:           If (Proc_6_38_E68A98(CVar(var_184.Fields.Item(var_108)), var_184, var_184) = "Y") Then
  loc_1B97D32:             Call Proc_229_74_F14B10(var_E0, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1B97D45:           Else
  loc_1B97D63:             Call Proc_229_74_F14B10(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1B97D71:           End If
  loc_1B97D71:         End If
  loc_1B97D76:         Set var_E4 = Nothing
  loc_1B97DA0:         Call Proc_229_74_F14B10(var_E0, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1B97DB3:         var_B8.MoveNext
  loc_1B97DB8:         GoTo loc_1B9702A
  loc_1B97DBB:       End If
  loc_1B97DBE:       var_DC = "WinTOKENPrint"
  loc_1B97DE5:       Set var_160 = var_E0 
  loc_1B97DEC:       CreateFieldDefFile(var_160, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1B97E2E:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_108, var_160)
  loc_1B97E39:       MemVar_1F921E4 = var_160
  loc_1B97E62:       Call 0.Method_arg_64 (var_160, CVar(var_160), var_128, var_14C)
  loc_1B97E6A:       Call 0.Method_arg_2C (var_2FC, var_2FC)
  loc_1B97E7A:       If (var_D8 <> vbNullString) Then
  loc_1B97E9B:         If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1B97EA1:           Call Proc_229_71_F0ED98(var_D8)
  loc_1B97EA6:         End If
  loc_1B97EA6:       End If
  loc_1B97EB2:       var_128 = 1
  loc_1B97EC3:       Call 0.Method_Me8 (False, var_128, var_14C)
  loc_1B97ECD:       Set var_E0 = Nothing
  loc_1B97ED3:     Else
  loc_1B97EDE:       If (var_1A8 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1B97EE4:         var_B8.MoveFirst
  loc_1B97EE9:         ' Referenced from:   1B98CBD
  loc_1B97EF8:         If Not(var_B8.EOF) Then
  loc_1B97EFE:           var_108 = "ShortName"
  loc_1B97F2E:           var_178 = 3
  loc_1B97F5D:           var_184 = var_B8.Fields
  loc_1B97F65:           var_1DC = var_184.Item("NCTOKEN")
  loc_1B98007:           var_14C = "LAU"
  loc_1B98011:           var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_108)), "NCTOKEN"))), 1, var_178)) = var_14C) 'Variant
  loc_1B9801B:           var_2F4 = IIf(var_2E4, IIf((Proc_6_38_E68A98(CVar(var_1DC), (Proc_6_38_E68A98(CVar(var_1DC), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B98024:           var_94 = CStr(var_2F4)
  loc_1B98065:           var_DC = "TOKENPrint"
  loc_1B9808C:           Set var_160 = var_BC 
  loc_1B98093:           CreateFieldDefFile(var_160, MemVar_1F920B4 & "\" & var_DC & ".ttx")
  loc_1B9809F:           Set var_BC = var_160
  loc_1B980D5:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_108, var_160)
  loc_1B980E0:           MemVar_1F921E4 = var_160
  loc_1B98109:           Call 0.Method_arg_64 (var_160, CVar(var_BC), var_128)
  loc_1B98111:           Call 0.Method_arg_2C (var_14C, &HFF)
  loc_1B9811F:           Call 0.Method_arg_150 (var_160)
  loc_1B9816C:           var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9817A:           unk_542AEE.Execute CStr(var_15C), var_178, -1
  loc_1B981DB:           If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B981E1:             var_D0 = "Changed TOKEN"
  loc_1B981E7:           Else
  loc_1B9823D:             unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B98271:             var_160 = var_184.Fields
  loc_1B98279:             var_168 = var_160.Item(0)
  loc_1B9828A:             var_13C = Proc_6_38_E68A98(CVar(var_168), var_184)
  loc_1B9829B:             If (var_13C = "Y") Then
  loc_1B982A1:               var_D0 = "DUPLICATE TOKEN"
  loc_1B982A7:             Else
  loc_1B982AA:               var_D0 = vbNullString
  loc_1B982AD:             End If
  loc_1B982AD:           End If
  loc_1B982B2:           Set var_E4 = Nothing
  loc_1B982C6:           Call 0.Method_arg_90 (var_160, var_164, var_B2)
  loc_1B982CE:           Call 0.Method_arg_24 (1)
  loc_1B982DA:           For var_358 =  To CInt(var_164):   var_184 = var_358 'Integer
  loc_1B982F3:             Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B982FB:             Call 0.Method_arg_20 (var_168)
  loc_1B98303:             Call 0.Method_arg_30 (var_13C)
  loc_1B98319:             var_368 = Ucase(CVar(var_13C)) 'Variant
  loc_1B98349:             If (var_368 = Ucase("comp_name")) Then
  loc_1B9836D:               Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B98375:               Call 0.Method_arg_20 (var_168)
  loc_1B9837D:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1B98393:             Else
  loc_1B983B5:               If (var_368 = Ucase("comp_add1")) Then
  loc_1B983D9:                 Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B983E1:                 Call 0.Method_arg_20 (var_168)
  loc_1B983E9:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1B983FF:               Else
  loc_1B98421:                 If (var_368 = Ucase("comp_pin")) Then
  loc_1B98445:                   Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9844D:                   Call 0.Method_arg_20 (var_168)
  loc_1B98455:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1B9846B:                 Else
  loc_1B9848D:                   If (var_368 = Ucase("comp_GSTIN")) Then
  loc_1B984B1:                     Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B984B9:                     Call 0.Method_arg_20 (var_168)
  loc_1B984C1:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1B984D7:                   Else
  loc_1B984F9:                     If (var_368 = Ucase("RestName")) Then
  loc_1B98506:                       Set var_160 = Me.LblRest
  loc_1B9852F:                       Call 0.Method_arg_90 (var_168, CLng(var_B2))
  loc_1B98537:                       Call 0.Method_arg_20 (var_184)
  loc_1B9853F:                       Call 0.Method_arg_38 ("'" & var_160.Caption & "'")
  loc_1B98559:                     Else
  loc_1B9857B:                       If (var_368 = Ucase("mTitle")) Then
  loc_1B9859F:                         Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B985A7:                         Call 0.Method_arg_20 (var_168)
  loc_1B985AF:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1B985C5:                       Else
  loc_1B985CD:                         var_118 = "Header1"
  loc_1B985E7:                         If (var_368 = Ucase(var_118)) Then
  loc_1B985F5:                           Proc_6_17_EAA2B0(var_118)
  loc_1B98611:                           Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B98619:                           Call 0.Method_arg_20 (CStr(var_118))
  loc_1B98621:                           Call 0.Method_arg_38 (var_E8)
  loc_1B98636:                         Else
  loc_1B9863E:                           var_118 = "Header2"
  loc_1B98658:                           If (var_368 = Ucase(var_118)) Then
  loc_1B98666:                             Proc_6_17_EAA2B0(var_118)
  loc_1B98682:                             Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B9868A:                             Call 0.Method_arg_20 (CStr(var_118))
  loc_1B98692:                             Call 0.Method_arg_38 (var_EC)
  loc_1B986A7:                           Else
  loc_1B986AF:                             var_118 = "Header3"
  loc_1B986C9:                             If (var_368 = Ucase(var_118)) Then
  loc_1B986D7:                               Proc_6_17_EAA2B0(var_118)
  loc_1B986F3:                               Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B986FB:                               Call 0.Method_arg_20 (CStr(var_118))
  loc_1B98703:                               Call 0.Method_arg_38 (var_F0)
  loc_1B98718:                             Else
  loc_1B98720:                               var_118 = "Header4"
  loc_1B9873A:                               If (var_368 = Ucase(var_118)) Then
  loc_1B98748:                                 Proc_6_17_EAA2B0(var_118)
  loc_1B98764:                                 Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B9876C:                                 Call 0.Method_arg_20 (CStr(var_118))
  loc_1B98774:                                 Call 0.Method_arg_38 (var_F4)
  loc_1B98789:                               Else
  loc_1B9879A:                                 var_138 = Ucase("TOKENNo")
  loc_1B987AB:                                 If (var_368 = var_138) Then
  loc_1B987D9:                                   Proc_6_39_E7C810(var_138, CVar(var_B8.Fields.Item("VNo")))
  loc_1B987E5:                                   var_14C = "'"
  loc_1B98802:                                   Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9880A:                                   Call 0.Method_arg_20 (var_1DC)
  loc_1B98812:                                   Call 0.Method_arg_38 (CStr("'" & var_138 & var_14C))
  loc_1B98831:                                 Else
  loc_1B98853:                                   If (var_368 = Ucase("TOKENDate")) Then
  loc_1B9889F:                                     Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B988A7:                                     Call 0.Method_arg_20 (var_1DC)
  loc_1B988AF:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1B988CC:                                   Else
  loc_1B988EE:                                     If (var_368 = Ucase("TOKENTime")) Then
  loc_1B9893A:                                       Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B98942:                                       Call 0.Method_arg_20 (var_1DC)
  loc_1B9894A:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1B98967:                                     Else
  loc_1B98989:                                       If (var_368 = Ucase("Remarks")) Then
  loc_1B989A6:                                         var_168 = var_B8.Fields.Item("Remarks")
  loc_1B989D5:                                         Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B989DD:                                         Call 0.Method_arg_20 (var_1DC)
  loc_1B989E5:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_168)) & "'")
  loc_1B98A02:                                       Else
  loc_1B98A24:                                         If (var_368 = Ucase("TableTitle")) Then
  loc_1B98A35:                                           Set var_160 = Me.Label1
  loc_1B98A3B:                                           Call 0.Method_Proc_229_72_1B9BCD40 (2, var_168)
  loc_1B98A73:                                           Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B98A7B:                                           Call 0.Method_arg_20 (var_1DC)
  loc_1B98A83:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_168)) & "'"))
  loc_1B98AA2:                                         Else
  loc_1B98AC4:                                           If (var_368 = Ucase("TableNo")) Then
  loc_1B98B10:                                             Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B98B18:                                             Call 0.Method_arg_20 (var_1DC)
  loc_1B98B20:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1B98B3D:                                           Else
  loc_1B98B5F:                                             If (var_368 = Ucase("Steward")) Then
  loc_1B98B74:                                               var_160 = var_B8.Fields
  loc_1B98B7C:                                               var_168 = var_160.Item("WaiterName")
  loc_1B98BAB:                                               Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B98BB3:                                               Call 0.Method_arg_20 (var_1DC)
  loc_1B98BBB:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_168)) & "'")
  loc_1B98BD8:                                             Else
  loc_1B98BFA:                                               If (var_368 = Ucase("TOKENStatus")) Then
  loc_1B98C1E:                                                 Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B98C26:                                                 Call 0.Method_arg_20 (var_168)
  loc_1B98C2E:                                                 Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1B98C44:                                               Else
  loc_1B98C66:                                                 If (var_368 = Ucase("TOKENRemark")) Then
  loc_1B98C8A:                                                   Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B98C92:                                                   Call 0.Method_arg_20 (var_168)
  loc_1B98C9A:                                                   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1B98CAD:                                                 End If
  loc_1B98CAD:                                               End If
  loc_1B98CAD:                                             End If
  loc_1B98CAD:                                           End If
  loc_1B98CAD:                                         End If
  loc_1B98CAD:                                       End If
  loc_1B98CAD:                                     End If
  loc_1B98CAD:                                   End If
  loc_1B98CAD:                                 End If
  loc_1B98CAD:                               End If
  loc_1B98CAD:                             End If
  loc_1B98CAD:                           End If
  loc_1B98CAD:                         End If
  loc_1B98CAD:                       End If
  loc_1B98CAD:                     End If
  loc_1B98CAD:                   End If
  loc_1B98CAD:                 End If
  loc_1B98CAD:               End If
  loc_1B98CAD:             End If
  loc_1B98CB0:           Next var_358 'Integer
  loc_1B98CB8:           var_B8.MoveNext
  loc_1B98CBD:           GoTo loc_1B97EE9
  loc_1B98CC0:         End If
  loc_1B98CC8:         If (var_D8 <> vbNullString) Then
  loc_1B98CE9:           If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1B98CEF:             Call Proc_229_71_F0ED98(var_D8)
  loc_1B98CF4:           End If
  loc_1B98CF4:         End If
  loc_1B98D11:         Call 0.Method_Me8 (False, 1, var_14C)
  loc_1B98D19:       Else
  loc_1B98D24:         If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1B98D29:           Close 1
  loc_1B98D32:           Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1B98D39:           var_B8.MoveFirst
  loc_1B98D3E:           ' Referenced from:     1B99BE1
  loc_1B98D4D:           If Not(var_B8.EOF) Then
  loc_1B98D52:             var_96 = 0
  loc_1B98D8D:             var_178 = 3
  loc_1B98DB0:             var_194 = "NCTOKEN"
  loc_1B98E2D:             var_2F8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")))
  loc_1B98E49:             var_17C = var_2F8
  loc_1B98E70:             var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_178)) = "LAU") 'Variant
  loc_1B98E7A:             var_2F4 = IIf(var_2E4, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_194)), var_194) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_17C = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B98E83:             var_94 = CStr(var_2F4)
  loc_1B98EC7:             If (var_96 = 0) Then
  loc_1B98ECC:               Print 1
  loc_1B98F00:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1B98F11:               If (var_E8 <> vbNullString) Then
  loc_1B98F3A:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1B98F40:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B98F52:               End If
  loc_1B98F5A:               If (var_EC <> vbNullString) Then
  loc_1B98F83:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1B98F89:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B98F9B:               End If
  loc_1B98FA3:               If (var_F0 <> vbNullString) Then
  loc_1B98FCC:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1B98FD2:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B98FE4:               End If
  loc_1B98FEC:               If (var_F4 <> vbNullString) Then
  loc_1B99015:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1B9901B:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9902D:               End If
  loc_1B9902F:               Print 1
  loc_1B9905F:               Call Proc_229_89_EFA78C(Me.LblRest.Caption, "D", &H28)
  loc_1B99069:               Print 1, var_2F8
  loc_1B9908F:               Call Proc_229_89_EFA78C(var_94, "D", &H28)
  loc_1B99099:               Print 1, var_17C
  loc_1B990AD:               Print 1
  loc_1B990B5:               Print 1
  loc_1B990EE:               Proc_6_39_E7C810(var_178, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1B99110:               var_138 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1B9911A:               var_1C8 = (CVar(Proc_6_45_EAD428(var_F4, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_178), &HA, Proc_6_45_EAD428(CStr(var_178), &HA, var_17C))))
  loc_1B99120:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_178))
  loc_1B991D2:               var_138 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1B991DC:               var_1B8 = (CVar(Proc_6_45_EAD428(var_F4, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC)))
  loc_1B991E5:               var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC))), &HA, var_17C))) + " ")
  loc_1B991EF:               var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1B991F5:               Print 1, "* NC LOT *"
  loc_1B9924A:               var_168 = var_B8.Fields.Item("Remarks")
  loc_1B99287:               var_138 = (Chr(&HF) + "Remarks :     ")
  loc_1B99291:               var_1B8 = (CVar(Proc_6_45_EAD428(var_F4, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168)), &H32)))
  loc_1B99298:               var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_168)))) + Chr(&H12))
  loc_1B9929E:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1B992D7:               Set var_160 = Me.Label1
  loc_1B992DD:               Call 0.Method_Proc_229_72_1B9BCD40 (2, var_168)
  loc_1B9932E:               var_2F8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9934E:               var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B99357:               var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_168)))) + ":     ")
  loc_1B99361:               var_21C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2F8, 5)))
  loc_1B99367:               Print 1, "* NC LOT *"
  loc_1B993AC:               var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B993B2:               Print 1, CVar(var_168)
  loc_1B993BF:             End If
  loc_1B993E5:             var_15C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1B993F1:             var_17C = "Qty"
  loc_1B993FF:             var_1B8 = (Trim(CVar(var_168)) + CVar(Proc_6_52_EAD4F4(var_17C, 6)))
  loc_1B99404:             var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_17C, 6))), &HA, var_17C)))
  loc_1B99431:             var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B99437:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1B9945A:             var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B99460:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1B99473:             var_96 = (var_96 + 4)
  loc_1B99479:             var_BC.MoveFirst
  loc_1B9947E:             ' Referenced from:     1B9981F
  loc_1B9948D:             If Not(var_BC.EOF) Then
  loc_1B994C6:               var_184 = var_BC.Fields
  loc_1B994DD:               Proc_6_39_E7C810(Chr(&H12), CVar(var_184.Item("qty")))
  loc_1B99580:               var_178 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1B99599:               var_23C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_17C, 6)))))
  loc_1B995AF:               var_2F4 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1B995B2:               var_330 = (&H12 + var_2F4)
  loc_1B9960B:               var_138 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1B99611:               Print 1, Space(3)
  loc_1B99624:               var_96 = (var_96 + 1)
  loc_1B99660:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B996A3:                 var_138 = (Chr(&HF) + "(")
  loc_1B996AD:                 var_1B8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1B996B6:                 var_1C8 = (CVar(var_184.Item("qty")) + ")")
  loc_1B996BC:                 Print 1, Chr(&H12)
  loc_1B996DD:                 var_96 = (var_96 + 1)
  loc_1B996E0:               End If
  loc_1B996EA:               If (&H12 = (&H45 - var_AA)) Then
  loc_1B99703:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B99709:                 Print 1, Space(3)
  loc_1B9971B:                 Print 1, "Contd."
  loc_1B99733:                 Print 1, Chr(&HC)
  loc_1B99742:                 var_98 = (var_98 + 1)
  loc_1B99758:                 Call Proc_229_90_11FF334(1, 0, &H28, var_302)
  loc_1B99777:                 Call Proc_229_89_EFA78C(var_94, "B", &H28, var_17C, var_302)
  loc_1B99781:                 Print 1, var_17C
  loc_1B99790:                 var_96 = &H12
  loc_1B997A9:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B997AF:                 Print 1, Space(3)
  loc_1B997D2:                 var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B997D8:                 Print 1, Space(3)
  loc_1B997FB:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B99801:                 Print 1, Space(3)
  loc_1B99814:                 var_96 = (var_96 + 4)
  loc_1B99817:               End If
  loc_1B9981A:               var_BC.MoveNext
  loc_1B9981F:               GoTo loc_1B9947E
  loc_1B99822:             End If
  loc_1B9982C:             If (var_96 < (&H45 - var_AA)) Then
  loc_1B9982F:               ' Referenced from:     1B99850
  loc_1B99839:               If (var_96 = (&H45 - var_AA)) Then
  loc_1B99841:                 Print 1, vbNullString
  loc_1B9984D:                 var_96 = (var_96 + 1)
  loc_1B99850:                 GoTo loc_1B9982F
  loc_1B99853:               End If
  loc_1B99853:             End If
  loc_1B99869:             var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9986F:             Print 1, Space(3)
  loc_1B998D0:             var_138 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1B998D7:             var_178 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1B998DA:             var_1B8 = (Space(3) + var_178)
  loc_1B998E0:             Print 1, CVar(var_184.Item("qty"))
  loc_1B99924:             var_138 = (Chr(&HF) + "***  ")
  loc_1B9992B:             var_178 = Space(3) & Trim(var_CC) 
  loc_1B9993A:             Print 1, var_178 & "  ***"
  loc_1B99995:             var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B999A3:             unk_542AEE.Execute CStr(var_15C), var_178, -1
  loc_1B99A04:             If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B99A35:               Call Proc_229_89_EFA78C(Proc_6_45_EAD428("Changed TOKEN", &H14, var_184), "D", &H28, var_2F8)
  loc_1B99A3F:               Print 1, var_2F8
  loc_1B99A55:             Else
  loc_1B99AAB:               unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B99B09:               If (Proc_6_38_E68A98(CVar(var_184.Fields.Item(0)), var_184, 1) = "Y") Then
  loc_1B99B1F:                 var_2FC = Proc_6_45_EAD428("DUPLICATE TOKEN", &H14)
  loc_1B99B3A:                 Call Proc_229_89_EFA78C(var_2FC, "D", &H28)
  loc_1B99B44:                 Print 1, var_2F8
  loc_1B99B5A:               Else
  loc_1B99B5C:                 Print 1
  loc_1B99B62:               End If
  loc_1B99B62:             End If
  loc_1B99B67:             Set var_E4 = Nothing
  loc_1B99B7F:             var_138 = (Chr(&HF) + "** ")
  loc_1B99B89:             var_15C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1B99B92:             var_178 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1B99B98:             Print 1, var_178
  loc_1B99BAC:             var_B8.MoveNext
  loc_1B99BB3:             Print 1
  loc_1B99BBB:             Print 1
  loc_1B99BC3:             Print 1
  loc_1B99BCB:             Print 1
  loc_1B99BD3:             Print 1
  loc_1B99BDB:             Print 1
  loc_1B99BE1:             GoTo loc_1B98D3E
  loc_1B99BE4:           End If
  loc_1B99BE6:           Close 1
  loc_1B99BF0:           If (var_D8 <> vbNullString) Then
  loc_1B99BFA:             Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B99C0A:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1B99C16:           Else
  loc_1B99C22:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1B99C2B:           End If
  loc_1B99C2D:           Close 1
  loc_1B99C37:           If (MemVar_1F923B8 = "Y") Then
  loc_1B99C53:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1B99C5D:           Else
  loc_1B99C76:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1B99C7D:           End If
  loc_1B99C80:         Else
  loc_1B99C8B:           If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1B99C90:             Close 1
  loc_1B99C99:             Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1B99CA0:             var_B8.MoveFirst
  loc_1B99CA5:             ' Referenced from:       1B9AB98
  loc_1B99CB4:             If Not(var_B8.EOF) Then
  loc_1B99CB9:               var_96 = 0
  loc_1B99CF4:               var_178 = 3
  loc_1B99D3C:               var_180 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_2F8)
  loc_1B99DD7:               var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_178)) = "LAU") 'Variant
  loc_1B99DE1:               var_2F4 = IIf(var_2E4, IIf((var_180 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B99DEA:               var_94 = CStr(var_2F4)
  loc_1B99E2E:               If (var_96 = 0) Then
  loc_1B99E33:                 Print 1
  loc_1B99E67:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1B99E78:                 If (var_E8 <> vbNullString) Then
  loc_1B99EA1:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1B99EA7:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B99EB9:                 End If
  loc_1B99EC1:                 If (var_EC <> vbNullString) Then
  loc_1B99EEA:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1B99EF0:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B99F02:                 End If
  loc_1B99F0A:                 If (var_F0 <> vbNullString) Then
  loc_1B99F33:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1B99F39:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B99F4B:                 End If
  loc_1B99F53:                 If (var_F4 <> vbNullString) Then
  loc_1B99F7C:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1B99F82:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B99F94:                 End If
  loc_1B99F96:                 Print 1
  loc_1B99FDA:                 Call Proc_229_89_EFA78C(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1B99FE4:                 Print 1, var_2FC
  loc_1B9A022:                 Call Proc_229_89_EFA78C(Proc_6_45_EAD428(var_94, &H14), "D", &H28)
  loc_1B9A02C:                 Print 1, var_180
  loc_1B9A044:                 Print 1
  loc_1B9A04C:                 Print 1
  loc_1B9A085:                 Proc_6_39_E7C810(var_178, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1B9A0A7:                 var_138 = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1B9A0B1:                 var_1C8 = (CVar(Proc_6_45_EAD428(var_F4, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_178), &HA, var_180)))
  loc_1B9A0B7:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_178))
  loc_1B9A169:                 var_138 = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1B9A170:                 var_178 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1B9A173:                 var_1B8 = (CVar(Proc_6_45_EAD428(var_F4, &H28)) + var_178)
  loc_1B9A17C:                 var_1C8 = (CVar(Proc_6_45_EAD428(CStr(var_178), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1B9A186:                 var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_178)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1B9A18C:                 Print 1, "* NC LOT *"
  loc_1B9A1E1:                 var_168 = var_B8.Fields.Item("Remarks")
  loc_1B9A21E:                 var_138 = (Chr(&HF) + "Remarks :       ")
  loc_1B9A228:                 var_1B8 = (CVar(Proc_6_45_EAD428(var_F4, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168)), &H32)))
  loc_1B9A22F:                 var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168)), &H32))) + Chr(&H12))
  loc_1B9A235:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1B9A26E:                 Set var_160 = Me.Label1
  loc_1B9A274:                 Call 0.Method_Proc_229_72_1B9BCD40 (2, var_168)
  loc_1B9A2C5:                 var_2F8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9A2E5:                 var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B9A2EE:                 var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA))) + ":       ")
  loc_1B9A2F8:                 var_21C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2F8, 5)))
  loc_1B9A2FE:                 Print 1, "* NC LOT *"
  loc_1B9A343:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9A349:                 Print 1, CVar(var_168)
  loc_1B9A356:               End If
  loc_1B9A37C:               var_15C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1B9A388:               var_17C = "Qty"
  loc_1B9A396:               var_1B8 = (Trim(CVar(var_168)) + CVar(Proc_6_52_EAD4F4(var_17C, 6)))
  loc_1B9A39B:               var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_17C, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA))))
  loc_1B9A3C8:               var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B9A3CE:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1B9A3F1:               var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9A3F7:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1B9A40A:               var_96 = (var_96 + 4)
  loc_1B9A410:               var_BC.MoveFirst
  loc_1B9A415:               ' Referenced from:       1B9A7B6
  loc_1B9A424:               If Not(var_BC.EOF) Then
  loc_1B9A45D:                 var_184 = var_BC.Fields
  loc_1B9A474:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_184.Item("qty")))
  loc_1B9A517:                 var_178 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1B9A530:                 var_23C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_17C, 6)))))
  loc_1B9A546:                 var_2F4 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1B9A549:                 var_330 = (&H12 + var_2F4)
  loc_1B9A5A2:                 var_138 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1B9A5A8:                 Print 1, Space(3)
  loc_1B9A5BB:                 var_96 = (var_96 + 1)
  loc_1B9A5F7:                 If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B9A63A:                   var_138 = (Chr(&HF) + "(")
  loc_1B9A644:                   var_1B8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1B9A64D:                   var_1C8 = (CVar(var_184.Item("qty")) + ")")
  loc_1B9A653:                   Print 1, Chr(&H12)
  loc_1B9A674:                   var_96 = (var_96 + 1)
  loc_1B9A677:                 End If
  loc_1B9A681:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1B9A69A:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9A6A0:                   Print 1, Space(3)
  loc_1B9A6B2:                   Print 1, "Contd."
  loc_1B9A6CA:                   Print 1, Chr(&HC)
  loc_1B9A6D9:                   var_98 = (var_98 + 1)
  loc_1B9A6EF:                   Call Proc_229_90_11FF334(1, 0, &H28, var_302)
  loc_1B9A70E:                   Call Proc_229_89_EFA78C(var_94, "B", &H28, var_17C, var_302)
  loc_1B9A718:                   Print 1, var_17C
  loc_1B9A727:                   var_96 = &H12
  loc_1B9A740:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9A746:                   Print 1, Space(3)
  loc_1B9A769:                   var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B9A76F:                   Print 1, Space(3)
  loc_1B9A792:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9A798:                   Print 1, Space(3)
  loc_1B9A7AB:                   var_96 = (var_96 + 4)
  loc_1B9A7AE:                 End If
  loc_1B9A7B1:                 var_BC.MoveNext
  loc_1B9A7B6:                 GoTo loc_1B9A415
  loc_1B9A7B9:               End If
  loc_1B9A7C3:               If (var_96 < (&H45 - var_AA)) Then
  loc_1B9A7C6:                 ' Referenced from:       1B9A7E7
  loc_1B9A7D0:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1B9A7D8:                   Print 1, vbNullString
  loc_1B9A7E4:                   var_96 = (var_96 + 1)
  loc_1B9A7E7:                   GoTo loc_1B9A7C6
  loc_1B9A7EA:                 End If
  loc_1B9A7EA:               End If
  loc_1B9A800:               var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9A806:               Print 1, Space(3)
  loc_1B9A85C:               var_180 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1B9A867:               var_138 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1B9A871:               var_1B8 = (Space(3) + CVar(var_180))
  loc_1B9A877:               Print 1, CVar(var_184.Item("qty"))
  loc_1B9A8BB:               var_138 = (Chr(&HF) + "***  ")
  loc_1B9A8C2:               var_178 = Space(3) & Trim(var_CC) 
  loc_1B9A8D1:               Print 1, var_178 & "  ***"
  loc_1B9A92C:               var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9A93A:               unk_542AEE.Execute CStr(var_15C), var_178, -1
  loc_1B9A99B:               If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9A9CC:                 Call Proc_229_89_EFA78C(Proc_6_45_EAD428("Changed TOKEN", &H14, var_184), "D", &H28, var_2F8)
  loc_1B9A9D6:                 Print 1, var_2F8
  loc_1B9A9EC:               Else
  loc_1B9AA42:                 unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B9AAA0:                 If (Proc_6_38_E68A98(CVar(var_184.Fields.Item(0)), var_184, 1) = "Y") Then
  loc_1B9AAD1:                   Call Proc_229_89_EFA78C(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1B9AADB:                   Print 1, var_2F8
  loc_1B9AAF1:                 Else
  loc_1B9AAF3:                   Print 1
  loc_1B9AAF9:                 End If
  loc_1B9AAF9:               End If
  loc_1B9AAFE:               Set var_E4 = Nothing
  loc_1B9AB16:               var_138 = (Chr(&HF) + "** ")
  loc_1B9AB20:               var_15C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1B9AB29:               var_178 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1B9AB2F:               Print 1, var_178
  loc_1B9AB43:               var_B8.MoveNext
  loc_1B9AB4A:               Print 1
  loc_1B9AB52:               Print 1
  loc_1B9AB5A:               Print 1
  loc_1B9AB62:               Print 1
  loc_1B9AB6A:               Print 1
  loc_1B9AB72:               Print 1
  loc_1B9AB7A:               Print 1
  loc_1B9AB82:               Print 1
  loc_1B9AB8A:               Print 1
  loc_1B9AB92:               Print 1
  loc_1B9AB98:               GoTo loc_1B99CA5
  loc_1B9AB9B:             End If
  loc_1B9AB9D:             Close 1
  loc_1B9ABA7:             If (var_D8 <> vbNullString) Then
  loc_1B9ABB1:               Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9ABC1:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1B9ABCD:             Else
  loc_1B9ABD9:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1B9ABE2:             End If
  loc_1B9ABE4:             Close 1
  loc_1B9ABEE:             If (MemVar_1F923B8 = "Y") Then
  loc_1B9AC0A:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1B9AC14:             Else
  loc_1B9AC2D:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1B9AC34:             End If
  loc_1B9AC37:           Else
  loc_1B9AC42:             If Not (var_1A8 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1B9AC50:               If (var_1A8 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1B9AC53:               End If
  loc_1B9AC55:               Close 1
  loc_1B9AC5E:               Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1B9AC65:               var_B8.MoveFirst
  loc_1B9AC6A:               ' Referenced from:         1B9BBD9
  loc_1B9AC79:               If Not(var_B8.EOF) Then
  loc_1B9AC7E:                 var_96 = 0
  loc_1B9AD9C:                 var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1B9ADA6:                 var_2F4 = IIf(var_2E4, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B9ADAF:                 var_94 = CStr(var_2F4)
  loc_1B9AE1B:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1B9AE2A:                 If (var_96 = 0) Then
  loc_1B9AE2F:                   Print 1
  loc_1B9AE3D:                   If (var_E8 <> vbNullString) Then
  loc_1B9AE66:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1B9AE6C:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9AE7E:                   End If
  loc_1B9AE86:                   If (var_EC <> vbNullString) Then
  loc_1B9AEAF:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1B9AEB5:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9AEC7:                   End If
  loc_1B9AECF:                   If (var_F0 <> vbNullString) Then
  loc_1B9AEF8:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1B9AEFE:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9AF10:                   End If
  loc_1B9AF18:                   If (var_F4 <> vbNullString) Then
  loc_1B9AF41:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1B9AF47:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9AF59:                   End If
  loc_1B9AF5B:                   Print 1
  loc_1B9AF8A:                   var_1B8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1B9AF9C:                   var_1D8 = Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1B9AFCD:                   var_2D4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1B9AFD6:                   var_2E4 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1B9AFF7:                   var_1EC = (Chr(&HF) + var_1D8)
  loc_1B9AFFE:                   var_24C = (CVar(var_B8.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1B9B005:                   var_330 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng(var_2E4)))
  loc_1B9B00C:                   var_354 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1B9B012:                   Print 1, var_354
  loc_1B9B060:                   var_178 = (42 - Len(Trim(var_94)))
  loc_1B9B093:                   var_24C = (42 - Len(Trim(var_94)))
  loc_1B9B09C:                   var_274 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1B9B0BD:                   var_1D8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1B9B0C7:                   var_1EC = (var_1D8 + CVar(var_94))
  loc_1B9B0CE:                   var_2C4 = (CVar(var_B8.Fields.Item("NCTOKEN")) + Space(CLng(var_274)))
  loc_1B9B0D5:                   var_2E4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1B9B0DB:                   Print 1, var_2E4
  loc_1B9B0FF:                   Print 1
  loc_1B9B107:                   Print 1
  loc_1B9B140:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")))
  loc_1B9B16F:                   var_138 = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1B9B179:                   var_1C8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)))
  loc_1B9B180:                   var_1EC = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1B9B186:                   Print 1, CVar(var_B8.Fields.Item("NCTOKEN"))
  loc_1B9B249:                   var_138 = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1B9B253:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)))
  loc_1B9B25C:                   var_1C8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + " ")
  loc_1B9B266:                   var_21C = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1B9B26D:                   var_24C = (Trim(var_94) + Chr(&H12))
  loc_1B9B273:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1B9B2CC:                   var_168 = var_B8.Fields.Item("Remarks")
  loc_1B9B309:                   var_138 = (Chr(&HF) + "Remarks :         ")
  loc_1B9B313:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_168)), &H20)))
  loc_1B9B31A:                   var_1D8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + Chr(&H12))
  loc_1B9B320:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1B9B359:                   Set var_160 = Me.Label1
  loc_1B9B35F:                   Call 0.Method_Proc_229_72_1B9BCD40 (2, var_168)
  loc_1B9B3B0:                   var_2F8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9B3DD:                   var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B9B3E6:                   var_1C8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + ":         ")
  loc_1B9B3F0:                   var_21C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2F8, 5)))
  loc_1B9B3F7:                   var_24C = (Trim(var_94) + Chr(&H12))
  loc_1B9B3FD:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_2F8) = "Y"), "* NC LOT *", "* LOT *")
  loc_1B9B453:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9B45A:                   var_178 = (CVar(var_168) + Chr(&H12))
  loc_1B9B460:                   Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_168))), &HA))
  loc_1B9B471:                 End If
  loc_1B9B497:                 var_15C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1B9B4B1:                 var_1B8 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1B9B4BD:                 var_1C8 = Space(3)
  loc_1B9B4C5:                 var_1D8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + var_1C8)
  loc_1B9B4DF:                 var_21C = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1B9B528:                 var_138 = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1B9B52F:                 var_178 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1B9B535:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1B9B569:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9B570:                 var_178 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1B9B576:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1B9B58D:                 var_96 = (var_96 + 4)
  loc_1B9B593:                 var_BC.MoveFirst
  loc_1B9B598:                 ' Referenced from:         1B9B820
  loc_1B9B5A7:                 If Not(var_BC.EOF) Then
  loc_1B9B5E0:                   var_184 = var_BC.Fields
  loc_1B9B5F7:                   Proc_6_39_E7C810(var_1C8, CVar(var_184.Item("qty")))
  loc_1B9B642:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1B9B651:                   var_1FC = "0.00"
  loc_1B9B68C:                   var_178 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1B9B6A5:                   var_23C = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C8, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1B9B6B9:                   var_274 = (Chr(&H12) + Space(3))
  loc_1B9B6D2:                   var_330 = (&H12 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_1FC)), 6, var_274)))
  loc_1B9B738:                   var_138 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_1FC), "Void", vbNullString))))
  loc_1B9B73F:                   var_178 = (Space(3) + Chr(&H12))
  loc_1B9B745:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1B9B75C:                   var_96 = (var_96 + 1)
  loc_1B9B798:                   If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B9B7DB:                     var_138 = (Chr(&HF) + "(")
  loc_1B9B7E5:                     var_1B8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1B9B7EE:                     var_1C8 = (CVar(var_184.Item("qty")) + ")")
  loc_1B9B7F4:                     Print 1, var_1C8
  loc_1B9B815:                     var_96 = (var_96 + 1)
  loc_1B9B818:                   End If
  loc_1B9B81B:                   var_BC.MoveNext
  loc_1B9B820:                   GoTo loc_1B9B598
  loc_1B9B823:                 End If
  loc_1B9B846:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9B84D:                 var_178 = (Space(3) + Chr(&H12))
  loc_1B9B853:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description"))))
  loc_1B9B8C5:                 var_138 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1B9B8CF:                 var_1B8 = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1B9B8D6:                 var_1D8 = (CVar(var_184.Item("qty")) + Chr(&H12))
  loc_1B9B8DC:                 Print 1, "0.00"
  loc_1B9B924:                 var_1B8 = Chr(&H12)
  loc_1B9B931:                 var_138 = (Chr(&HF) + "***  ")
  loc_1B9B938:                 var_178 = Space(3) & Trim(var_CC) 
  loc_1B9B944:                 var_1C8 = ("  ***" + var_1B8)
  loc_1B9B94E:                 Print 1, var_178 & Chr(&H12)
  loc_1B9B9AD:                 var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9B9BB:                 unk_542AEE.Execute CStr(var_15C), var_178, -1
  loc_1B9BA1C:                 If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9BA4D:                   Call Proc_229_89_EFA78C(Proc_6_45_EAD428("Changed TOKEN", &H14), "D", &H28)
  loc_1B9BA57:                   Print 1, var_2F8
  loc_1B9BA6D:                 Else
  loc_1B9BAC3:                   unk_542AEE.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B9BB21:                   If (Proc_6_38_E68A98(CVar(var_184.Fields.Item(0)), var_184, var_2F8) = "Y") Then
  loc_1B9BB52:                     Call Proc_229_89_EFA78C(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1B9BB5C:                     Print 1, var_2F8
  loc_1B9BB72:                   Else
  loc_1B9BB74:                     Print 1
  loc_1B9BB7A:                   End If
  loc_1B9BB7A:                 End If
  loc_1B9BB7F:                 Set var_E4 = Nothing
  loc_1B9BB97:                 var_138 = (Chr(&HF) + "** ")
  loc_1B9BBA1:                 var_15C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1B9BBAA:                 var_178 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1B9BBB0:                 Print 1, var_178
  loc_1B9BBC4:                 var_B8.MoveNext
  loc_1B9BBCB:                 Print 1
  loc_1B9BBD3:                 Print 1
  loc_1B9BBD9:                 GoTo loc_1B9AC6A
  loc_1B9BBDC:               End If
  loc_1B9BBDE:               Close 1
  loc_1B9BBE8:               If (var_D8 <> vbNullString) Then
  loc_1B9BBF2:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9BC02:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1B9BC0E:               Else
  loc_1B9BC15:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9BC25:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1B9BC2E:               End If
  loc_1B9BC30:               Close 1
  loc_1B9BC32:             End If
  loc_1B9BC32:           End If
  loc_1B9BC32:         End If
  loc_1B9BC32:       End If
  loc_1B9BC32:     End If
  loc_1B9BC35:   Else
  loc_1B9BC7F:     MsgBox("Please Check Printer Setting of Central TOKEN For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_178, var_1B8, Chr(&H12))
  loc_1B9BC9A:   End If
  loc_1B9BC9D:   var_C0.MoveNext
  loc_1B9BCA2:   GoTo loc_1B96F17
  loc_1B9BCA5: End If
  loc_1B9BCAA: Set var_B8 = Nothing
  loc_1B9BCB2: Set var_BC = Nothing
  loc_1B9BCBA: Set var_C0 = Nothing
  loc_1B9BCC2: Proc_229_72_1B9BCD4 = &HFF
  loc_1B9BCC8: ' Referenced from: 1B96A78
  loc_1B9BCC8: Proc_6_60_E62BC4(var_2F8, var_184)
  loc_1B9BCCD: Proc_229_72_1B9BCD4 = var_1FC
End Sub

Public Sub Proc_229_73_EF9A8C(arg_C) 'EF9A8C
  'Data Table: 542AD8
  Dim var_8C As Recordset15
  loc_EF99B5: Set var_8C = arg_C 
  loc_EF99DD: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EF9A09: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EF9A35: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EF9A45: var_8C.CursorType = 3
  loc_EF9A52: var_8C.LockType = 3
  loc_EF9A71: var_8C.Open var_A0, var_B0, -1
  loc_EF9A78: Set var_8C = Nothing 
  loc_EF9A7F: Set var_88 = arg_C 
  loc_EF9A83: Proc_229_73_EF9A8C = -1
End Sub

Public Sub Proc_229_74_F14B10(arg_C, arg_10, arg_14, arg_18) 'F14B10
  'Data Table: 542AD8
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F14A1F: Set var_88 = arg_C 
  loc_F14A2E: var_88.AddNew var_98, var_A8
  loc_F14A66: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F14AA8: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F14ABA: var_98 = arg_18
  loc_F14ACE: var_A8 = "Mark"
  loc_F14AEA: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F14B04: var_88.Update var_98, var_A8
  loc_F14B0B: Set var_88 = Nothing 
  loc_F14B0F: Exit Sub
End Sub

Public Sub Proc_229_75_1544598
  'Data Table: 542AD8
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_542AEE As Connection15
  Dim var_160 As String
  Dim var_BC As Recordset15
  Dim var_F8 As Variant
  Dim var_15C As Fields15
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_158 As Variant
  Dim var_1E8 As Variant
  Dim var_238 As Variant
  Dim var_21C As String
  loc_1543604: On Error Goto loc_1544592
  loc_154360A: MemVar_1F923C0 = "N"
  loc_1543611: MemVar_1F923C4 = "N"
  loc_1543618: MemVar_1F923C8 = "K"
  loc_1543623: var_D0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1543668: var_88 = CStr(CVar(var_D0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1543687: var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15436C5: var_8C = CStr(var_108 & Me.Fields.Item("SearchCode").Value & "'")
  loc_15436EE: var_108 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_154370E: var_E8 = Me.Fields.Item("SearchCode")
  loc_154372B: var_D0 = CStr(var_108 & var_E8.Value & "'")
  loc_1543735: unk_542AEE.Execute var_D0, var_158, -1
  loc_1543740: Set var_BC = var_15C
  loc_1543764: If (var_88 = vbNullString) Then
  loc_1543767:   Exit Sub
  loc_1543768: End If
  loc_1543770: If (var_8C = vbNullString) Then
  loc_1543773:   Exit Sub
  loc_1543774: End If
  loc_1543792: Set var_D4 = Me.Txt
  loc_1543798: Call 0.Method_Proc_229_75_15445980 (CInt(4), var_E8, var_D0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_15437A0: var_F8 = var_E8.Text
  loc_15437A9: var_160 = -1 & var_D0
  loc_15437B9: unk_542AEE.Execute var_160 & "' AND CONTRADOCID IS NULL", var_15C, var_15C
  loc_15437F0: If (var_15C.RecordCount = 1) Then
  loc_15437F6:   var_C8 = "New Order"
  loc_15437FC: Else
  loc_1543803:   Set var_D4 = Me.LblState
  loc_1543811:   var_C8 = var_D4.Caption
  loc_1543817: End If
  loc_154382D: unk_542AEE.Execute var_88, var_F8, -1
  loc_1543838: Set var_B4 = var_D4
  loc_1543841: ' Referenced from: 1544576
  loc_1543850: If Not(var_BC.EOF) Then
  loc_1543869:   unk_542AEE.Execute "SELECT KOTPrinting FROM Enviro", var_F8, -1
  loc_154388C:   var_D4 = var_D4.Fields
  loc_15438C7:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D4.Item("KOTPrinting")), var_D4))) = "Seperate for All Kitchen") Then
  loc_15438D1:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_154394A:     var_1C0 = var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1543986:     var_8C = CStr(var_1C0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_15439B4:   Else
  loc_15439BB:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15439D3:     var_D4 = Me.Fields
  loc_15439E3:     var_F8 = var_D4.Item("SearchCode").Value
  loc_15439F4:     var_138 = var_108 & var_F8 & "' and K.VoidYN<>'Y'" 
  loc_15439F9:     var_8C = CStr(var_138)
  loc_1543A0E:   End If
  loc_1543A24:   unk_542AEE.Execute var_8C, var_F8, -1
  loc_1543A2F:   Set var_B8 = var_D4
  loc_1543A4C:   If (var_B8.RecordCount > 0) Then
  loc_1543A51:     Close 1
  loc_1543A6A:     var_160 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition)
  loc_1543A78:     Open var_160 & ".TXT" For Output As 1 Len = &HFF
  loc_1543A88:     var_B4.MoveFirst
  loc_1543A8D:     ' Referenced from: 1544359
  loc_1543A9C:     If Not(var_B4.EOF) Then
  loc_1543AAC:       var_90 = "* TOKEN *"
  loc_1543AB5:       If (0 = 0) Then
  loc_1543ABA:         Print 1
  loc_1543AEE:         var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1543B21:         Call Proc_229_89_EFA78C(Me.LblRest.Caption, "D", &H28, var_21C)
  loc_1543B2B:         Print 1, var_21C
  loc_1543B51:         Call Proc_229_89_EFA78C(var_90, "D", &H28, var_160)
  loc_1543B5B:         Print 1, var_160
  loc_1543B6A:         var_92 = &H12
  loc_1543B6F:         Print 1
  loc_1543B77:         Print 1
  loc_1543BB0:         Proc_6_39_E7C810(var_138, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_1543BD2:         var_108 = (Chr(&HF) + "TOKEN No.   : ")
  loc_1543BDC:         var_180 = (var_108 + CVar(Proc_6_45_EAD428(CStr(var_138), &HA, var_92)))
  loc_1543BE2:         Print 1, var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value
  loc_1543C1D:         var_D4 = var_B4.Fields
  loc_1543C94:         var_108 = (Chr(&HF) + "TOKEN Dt.   : ")
  loc_1543C9E:         var_158 = (var_108 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D4.Item("VDate")), var_D4), &HC)))
  loc_1543CA7:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D4.Item("VDate")), var_D4), &HC))), &HA, var_92)) + " ")
  loc_1543CB1:         var_1E8 = (var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1543CB7:         Print 1, var_BC.Fields.Item("Code").Value
  loc_1543D0C:         var_E8 = var_B4.Fields.Item("Remarks")
  loc_1543D49:         var_108 = (Chr(&HF) + "Remarks : ")
  loc_1543D53:         var_158 = (var_108 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8)), &H32)))
  loc_1543D5A:         var_1A0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_1543D60:         Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1543D99:         Set var_D4 = Me.Label1
  loc_1543D9F:         Call 0.Method_Proc_229_75_15445980 (2, var_E8)
  loc_1543E34:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_E8))), &HA)))
  loc_1543E3D:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_E8))), &HA))), &HA, var_92)) + ": ")
  loc_1543E44:         var_218 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1543E47:         var_238 = (Chr(&H12) + var_218)
  loc_1543E4D:         Print 1, var_238
  loc_1543E98:         var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1543E9E:         Print 1, CVar(var_E8)
  loc_1543EAB:       End If
  loc_1543ED1:       var_118 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1543EDD:       var_160 = "Qty"
  loc_1543EEB:       var_158 = (1 + CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_E8)))))
  loc_1543EF0:       var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_E8))))), &HA, var_92)))
  loc_1543F1D:       var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1543F23:       Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1543F46:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1543F4C:       Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1543F5F:       var_92 = (var_92 + 4)
  loc_1543F65:       var_B8.MoveFirst
  loc_1543F6A:       ' Referenced from: 15441CC
  loc_1543F79:       If Not(var_B8.EOF) Then
  loc_1543FC9:         Proc_6_39_E7C810(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1544013:         var_138 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1544029:         var_1E8 = CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_154402C:         var_1F8 = (1 + var_1E8)
  loc_1544071:         var_108 = (Chr(&HF) + CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000"))))
  loc_1544077:         Print 1, Space(3)
  loc_154408A:         var_92 = (var_92 + 1)
  loc_1544097:         If (var_92 = (&H45 - var_A6)) Then
  loc_15440B0:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15440B6:           Print 1, Space(3)
  loc_15440C8:           Print 1, "Contd."
  loc_15440E0:           Print 1, Chr(&HC)
  loc_15440EF:           var_94 = (var_94 + 1)
  loc_1544105:           Call Proc_229_90_11FF334(1, 0, &H28, var_21E, 0)
  loc_1544124:           Call Proc_229_89_EFA78C(var_90, "B", &H28, var_160, var_21E)
  loc_154412E:           Print 1, var_160
  loc_154413D:           var_92 = &H12
  loc_1544156:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_154415C:           Print 1, Space(3)
  loc_154417F:           var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1544185:           Print 1, Space(3)
  loc_15441A8:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15441AE:           Print 1, Space(3)
  loc_15441C1:           var_92 = (var_92 + 4)
  loc_15441C4:         End If
  loc_15441C7:         var_B8.MoveNext
  loc_15441CC:         GoTo loc_1543F6A
  loc_15441CF:       End If
  loc_15441D9:       If (var_92 < (&H45 - var_A6)) Then
  loc_15441DC:         ' Referenced from: 15441FD
  loc_15441E6:         If (var_92 = (&H45 - var_A6)) Then
  loc_15441EE:           Print 1, vbNullString
  loc_15441FA:           var_92 = (var_92 + 1)
  loc_15441FD:           GoTo loc_15441DC
  loc_1544200:         End If
  loc_1544200:       End If
  loc_1544216:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_154421C:       Print 1, Space(3)
  loc_154427D:       var_108 = (Chr(&HF) + "Waiter Name  : ")
  loc_1544284:       var_138 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, 1)) 'String
  loc_1544287:       var_158 = (Space(3) + var_138)
  loc_154428D:       Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_15442D1:       var_108 = (Chr(&HF) + "***  ")
  loc_15442E1:       var_158 = Space(3) & Trim(var_C8) & "  ***" 
  loc_15442E7:       Print 1, var_158
  loc_15442FC:       Print 1
  loc_1544317:       var_108 = (Chr(&HF) + "** ")
  loc_1544321:       var_118 = (Space(3) + CVar(MemVar_1F9221C))
  loc_154432A:       var_138 = (Trim(var_C8) + " **")
  loc_1544330:       Print 1, Space(3) & Trim(var_C8)
  loc_1544344:       var_B4.MoveNext
  loc_154434B:       Print 1
  loc_1544353:       Print 1
  loc_1544359:       GoTo loc_1543A8D
  loc_154435C:     End If
  loc_154435E:     Close 1
  loc_1544399:     If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_15443C1:       Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_154441F:       Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_154443F:     Else
  loc_1544469:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_154447A:     End If
  loc_154447C:     Close 1
  loc_1544486:     If (MemVar_1F923B8 = "Y") Then
  loc_15444B8:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_15444C9:     Else
  loc_15444F8:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1544506:     End If
  loc_1544509:   Else
  loc_1544553:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_C8), var_158, Chr(&H12))
  loc_154456E:   End If
  loc_1544571:   var_BC.MoveNext
  loc_1544576:   GoTo loc_1543841
  loc_1544579: End If
  loc_154457E: Set var_B4 = Nothing
  loc_1544586: Set var_B8 = Nothing
  loc_154458E: Set var_BC = Nothing
  loc_1544591: Exit Sub
  loc_1544592: ' Referenced from: 1543604
  loc_1544592: Proc_6_60_E62BC4(var_92)
  loc_1544597: Exit Sub
End Sub

Public Sub Proc_229_76_E41238
  'Data Table: 542AD8
  loc_E41214: Set var_88 = Me.TopCtrl1
  loc_E4121A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E41233: If (CStr() = "Browse") Then
  loc_E41236:   Exit Sub
  loc_E41237: End If
  loc_E41237: Exit Sub
End Sub

Public Sub Proc_229_77_1700BE0(arg_C) '1700BE0
  'Data Table: 542AD8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_1EC As Double
  Dim var_204 As Variant
  Dim var_208 As MSHFlexGrid
  Dim var_90 As Double
  Dim var_88 As Integer
  loc_16FF080: If (arg_C = 0) Then
  loc_16FF096:   var_AC = CLng(Me.FGrid.Col)
  loc_16FF0A6:   If (var_AC = CLng(2)) Then
  loc_16FF0F7:     Set var_98 = Me.TxtGrid
  loc_16FF0FD:     Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, var_BC)
  loc_16FF105:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_16FF11D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_16FF133:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF13B:       var_EC = CVar(CLng(2)) 'Long
  loc_16FF140:       var_10C = vbNullString
  loc_16FF14A:       Set var_B8 = Me.FGrid
  loc_16FF150:       LateIdCallSt
  loc_16FF175:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF17D:       var_EC = CVar(CLng(1)) 'Long
  loc_16FF182:       var_10C = vbNullString
  loc_16FF18C:       Set var_B8 = Me.FGrid
  loc_16FF192:       LateIdCallSt
  loc_16FF1A7:     Else
  loc_16FF1C0:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF1C8:       var_EC = CVar(CLng(1)) 'Long
  loc_16FF1E2:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_16FF200:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF208:       var_150 = CVar(CLng(1)) 'Long
  loc_16FF222:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_16FF28D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_16FF2A3:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF2AB:         var_FC = CVar(CLng(2)) 'Long
  loc_16FF2DE:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_16FF2E6:         Set var_164 = Me.FGrid
  loc_16FF2EC:         LateIdCallSt
  loc_16FF31B:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF323:         var_FC = CVar(CLng(1)) 'Long
  loc_16FF356:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_16FF35E:         Set var_164 = Me.FGrid
  loc_16FF364:         LateIdCallSt
  loc_16FF393:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF39B:         var_EC = CVar(CLng(4)) 'Long
  loc_16FF3A0:         var_10C = vbNullString
  loc_16FF3AA:         Set var_B8 = Me.FGrid
  loc_16FF3B0:         LateIdCallSt
  loc_16FF3D5:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF3DD:         var_EC = CVar(CLng(&HA)) 'Long
  loc_16FF3E2:         var_10C = vbNullString
  loc_16FF3EC:         Set var_B8 = Me.FGrid
  loc_16FF3F2:         LateIdCallSt
  loc_16FF417:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF41F:         var_EC = CVar(CLng(3)) 'Long
  loc_16FF424:         var_10C = vbNullString
  loc_16FF42E:         Set var_B8 = Me.FGrid
  loc_16FF434:         LateIdCallSt
  loc_16FF446:       End If
  loc_16FF446:     End If
  loc_16FF449:   Else
  loc_16FF450:     If (var_AC = CLng(3)) Then
  loc_16FF45F:       Set var_98 = Me.TxtGrid
  loc_16FF465:       Call 0.Method_Proc_229_77_1700BE00 (0, var_B8, var_BC, var_B8, var_10C, var_EC, var_CC)
  loc_16FF46D:       var_B8 = var_B8.Text
  loc_16FF484:       If (var_BC = "9999") Then
  loc_16FF491:         Set global_168 = New RsSpecItemEntry
  loc_16FF4A7:         RsSpecItemEntry.PKOTForm = Me
  loc_16FF4BB:         RsSpecItemEntry.pRestCode = LocalRestCode
  loc_16FF4C7:         Set var_98 = var_10C(var_BC)
  loc_16FF4CD:         var_EC = RsSpecItemEntry.Label.Caption
  loc_16FF4DB:         RsSpecItemEntry.PRestName = var_BC
  loc_16FF4F9:         Call 0.Method_arg_2B0 (1, var_DC, 1)
  loc_16FF501:       Else
  loc_16FF518:         If (Me.RecordCount > 0) Then
  loc_16FF521:           Me.MoveFirst
  loc_16FF526:         End If
  loc_16FF53D:         If (Me.RecordCount > 0) Then
  loc_16FF54C:           Set var_98 = Me.TxtGrid
  loc_16FF552:           Call 0.Method_Proc_229_77_1700BE00 (0, var_B8, var_BC)
  loc_16FF55A:           var_B8 = var_B8.Text
  loc_16FF567:           var_1EC = Val(var_BC)
  loc_16FF58D:           Me.Find "DispCode=" & CStr(var_1EC), 0, 1
  loc_16FF5A2:         End If
  loc_16FF5F0:         Set var_98 = Me.TxtGrid
  loc_16FF5F6:         Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16FF5FE:         var_CC = var_B8.Text
  loc_16FF616:         If (var_1EC Or (var_BC = vbNullString)) Then
  loc_16FF62C:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF634:           var_EC = CVar(CLng(4)) 'Long
  loc_16FF639:           var_10C = vbNullString
  loc_16FF643:           Set var_B8 = Me.FGrid
  loc_16FF649:           LateIdCallSt
  loc_16FF66E:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF676:           var_EC = CVar(CLng(&HA)) 'Long
  loc_16FF67B:           var_10C = vbNullString
  loc_16FF685:           Set var_B8 = Me.FGrid
  loc_16FF68B:           LateIdCallSt
  loc_16FF6B0:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF6B8:           var_EC = CVar(CLng(3)) 'Long
  loc_16FF6BD:           var_10C = vbNullString
  loc_16FF6C7:           Set var_B8 = Me.FGrid
  loc_16FF6CD:           LateIdCallSt
  loc_16FF6F2:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF6FA:           var_EC = CVar(CLng(5)) 'Long
  loc_16FF6FF:           var_10C = vbNullString
  loc_16FF709:           Set var_B8 = Me.FGrid
  loc_16FF70F:           LateIdCallSt
  loc_16FF734:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF73C:           var_EC = CVar(CLng(8)) 'Long
  loc_16FF741:           var_10C = vbNullString
  loc_16FF74B:           Set var_B8 = Me.FGrid
  loc_16FF751:           LateIdCallSt
  loc_16FF776:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF77E:           var_EC = CVar(CLng(&HD)) 'Long
  loc_16FF783:           var_10C = vbNullString
  loc_16FF78D:           Set var_B8 = Me.FGrid
  loc_16FF793:           LateIdCallSt
  loc_16FF7A8:         Else
  loc_16FF7C1:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF7C9:           var_EC = CVar(CLng(&HA)) 'Long
  loc_16FF7E3:           var_BC = CStr(Me.FGrid.TextMatrix))
  loc_16FF801:           var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF809:           var_150 = CVar(CLng(&HA)) 'Long
  loc_16FF823:           var_178 = CStr(Me.FGrid.TextMatrix))
  loc_16FF88E:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_16FF8A4:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF8AC:             var_FC = CVar(CLng(4)) 'Long
  loc_16FF8DF:             var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_16FF8E7:             Set var_164 = Me.FGrid
  loc_16FF8ED:             LateIdCallSt
  loc_16FF91C:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF924:             var_FC = CVar(CLng(&HA)) 'Long
  loc_16FF957:             var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_16FF95F:             Set var_164 = Me.FGrid
  loc_16FF965:             LateIdCallSt
  loc_16FF994:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FF99C:             var_FC = CVar(CLng(3)) 'Long
  loc_16FF9CF:             var_140 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_16FF9D7:             Set var_164 = Me.FGrid
  loc_16FF9DD:             LateIdCallSt
  loc_16FFA0C:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFA14:             var_FC = CVar(CLng(5)) 'Long
  loc_16FFA47:             var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_16FFA55:             LateIdCallSt
  loc_16FFABC:             var_140 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_140, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_16FFAC4:             Set var_164 = Me.FGrid
  loc_16FFACA:             LateIdCallSt
  loc_16FFB1C:             Set var_130 = Me.Txt
  loc_16FFB22:             Call 0.Method_Proc_229_77_1700BE00 (CInt(1), var_164, var_178, var_164, var_140, var_164)
  loc_16FFB2A:             var_140 = var_164.Text
  loc_16FFB4C:             var_1D0 = Me.Fields.Item("OutletCode")
  loc_16FFB73:             Call Proc_229_91_F202F8(CStr(Me.Fields.Item("Code").Value), var_178, CStr(var_1D0.Value), var_1EC)
  loc_16FFB8B:             var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFB93:             var_150 = CVar(CLng(8)) 'Long
  loc_16FFBC0:             var_204 = CVar(CStr(Format(CVar(var_1EC), "0.00"))) 'String
  loc_16FFBC8:             Set var_208 = Me.FGrid
  loc_16FFBCE:             LateIdCallSt
  loc_16FFC16:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFC1E:             var_EC = CVar(CLng(&HA)) 'Long
  loc_16FFC2D:             var_12C = Me.FGrid.TextMatrix)
  loc_16FFC63:             var_174 = Me.FGrid.TextMatrix)
  loc_16FFC7D:             Set var_17C = Me.Txt
  loc_16FFC83:             Call 0.Method_Proc_229_77_1700BE00 (CInt(1), var_1D0, var_1F0, var_174, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_16FFC8B:             var_EC = var_1D0.Text
  loc_16FFCA3:             var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFCF1:             Call Proc_229_79_1285270(CStr(var_12C), CStr(var_174), var_1F0, Val(CStr(Me.FGrid.TextMatrix))), var_214, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_16FFCF9:             var_90 = var_214
  loc_16FFD30:             If (var_90 <> CDbl(0)) Then
  loc_16FFD46:               var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFD4E:               var_10C = CVar(CLng(8)) 'Long
  loc_16FFD7C:               var_174 = CVar(CStr(Format(var_90, "0.00"))) 'String
  loc_16FFD84:               Set var_B8 = Me.FGrid
  loc_16FFD8A:               LateIdCallSt
  loc_16FFDA4:             End If
  loc_16FFDB8:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_16FFDC5:             var_CC = CVar(CLng(var_88)) 'Long
  loc_16FFDCD:             var_EC = CVar(CLng(0)) 'Long
  loc_16FFDD7:             var_A8 = CVar(CStr(var_88)) 'String
  loc_16FFDDF:             Set var_98 = Me.FGrid
  loc_16FFDE5:             LateIdCallSt
  loc_16FFDF7:             var_CC = CVar(CLng(var_88)) 'Long
  loc_16FFDFF:             var_EC = CVar(CLng(&HD)) 'Long
  loc_16FFE2F:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_16FFE36:               var_CC = CVar(CLng(var_88)) 'Long
  loc_16FFE3E:               var_EC = CVar(CLng(7)) 'Long
  loc_16FFE6E:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_16FFE75:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_16FFE7D:                 var_EC = CVar(CLng(7)) 'Long
  loc_16FFE82:                 var_10C = "1.0"
  loc_16FFE8C:                 Set var_98 = Me.FGrid
  loc_16FFE92:                 LateIdCallSt
  loc_16FFE9D:               End If
  loc_16FFEA0:             Else
  loc_16FFEA4:               var_CC = CVar(CLng(var_88)) 'Long
  loc_16FFEAC:               var_EC = CVar(CLng(7)) 'Long
  loc_16FFEC6:               var_BC = CStr(Me.FGrid.TextMatrix))
  loc_16FFEDC:               If (CDbl(Val(var_BC)) = CDbl(0)) Then
  loc_16FFEE3:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_16FFEEB:                 var_EC = CVar(CLng(7)) 'Long
  loc_16FFEF0:                 var_10C = "1"
  loc_16FFEFA:                 Set var_98 = Me.FGrid
  loc_16FFF00:                 LateIdCallSt
  loc_16FFF0B:               End If
  loc_16FFF0B:             End If
  loc_16FFF0B:           End If
  loc_16FFF0B:         End If
  loc_16FFF0B:       End If
  loc_16FFF0E:     Else
  loc_16FFF15:       If (var_AC = CLng(4)) Then
  loc_16FFF6C:         Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.TxtGrid, var_10C, var_EC)
  loc_16FFF74:         var_CC = var_B8.Text
  loc_16FFF8C:         If (var_EC Or (var_BC = vbNullString)) Then
  loc_16FFFA2:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFFAA:           var_EC = CVar(CLng(4)) 'Long
  loc_16FFFAF:           var_10C = vbNullString
  loc_16FFFB9:           Set var_B8 = Me.FGrid
  loc_16FFFBF:           LateIdCallSt
  loc_16FFFE4:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFFEC:           var_EC = CVar(CLng(&HA)) 'Long
  loc_16FFFF1:           var_10C = vbNullString
  loc_16FFFFB:           Set var_B8 = Me.FGrid
  loc_1700001:           LateIdCallSt
  loc_1700026:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170002E:           var_EC = CVar(CLng(3)) 'Long
  loc_1700033:           var_10C = vbNullString
  loc_170003D:           Set var_B8 = Me.FGrid
  loc_1700043:           LateIdCallSt
  loc_1700068:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700070:           var_EC = CVar(CLng(5)) 'Long
  loc_1700075:           var_10C = vbNullString
  loc_170007F:           Set var_B8 = Me.FGrid
  loc_1700085:           LateIdCallSt
  loc_17000AA:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17000B2:           var_EC = CVar(CLng(8)) 'Long
  loc_17000B7:           var_10C = vbNullString
  loc_17000C1:           Set var_B8 = Me.FGrid
  loc_17000C7:           LateIdCallSt
  loc_17000EC:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17000F4:           var_EC = CVar(CLng(&HD)) 'Long
  loc_17000F9:           var_10C = vbNullString
  loc_1700103:           Set var_B8 = Me.FGrid
  loc_1700109:           LateIdCallSt
  loc_170011E:         Else
  loc_1700137:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170013F:           var_EC = CVar(CLng(&HA)) 'Long
  loc_1700159:           var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1700177:           var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170017F:           var_150 = CVar(CLng(&HA)) 'Long
  loc_1700199:           var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1700204:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_170021B:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_1700237:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170023F:             var_FC = CVar(CLng(4)) 'Long
  loc_1700272:             var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_170027A:             Set var_164 = Me.FGrid
  loc_1700280:             LateIdCallSt
  loc_17002AF:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17002B7:             var_FC = CVar(CLng(&HA)) 'Long
  loc_17002EA:             var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_17002F2:             Set var_164 = Me.FGrid
  loc_17002F8:             LateIdCallSt
  loc_1700327:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170032F:             var_FC = CVar(CLng(3)) 'Long
  loc_1700362:             var_140 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_170036A:             Set var_164 = Me.FGrid
  loc_1700370:             LateIdCallSt
  loc_170039F:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17003A7:             var_FC = CVar(CLng(5)) 'Long
  loc_17003DA:             var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_17003E8:             LateIdCallSt
  loc_170044F:             var_140 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_140, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_170045D:             LateIdCallSt
  loc_170047B:             var_CC = CVar(CLng(var_88)) 'Long
  loc_170048D:             var_A8 = CVar(CStr(var_88)) 'String
  loc_1700495:             Set var_98 = Me.FGrid
  loc_170049B:             LateIdCallSt
  loc_17004AF:             var_CC = "Code"
  loc_17004BE:             var_98 = Me.Fields
  loc_17004CE:             var_A8 = var_98.Item(var_CC).Value
  loc_17004E1:             Set var_130 = Me.Txt
  loc_17004E7:             Call 0.Method_Proc_229_77_1700BE00 (CInt(1), Me.FGrid, var_178, var_98, var_A8, CVar(CLng(0)), var_CC)
  loc_17004EF:             var_164 = var_164.Text
  loc_1700511:             var_1D0 = Me.Fields.Item("OutletCode")
  loc_1700538:             Call Proc_229_91_F202F8(CStr(var_A8), var_178, CStr(var_1D0.Value), var_1EC, var_140)
  loc_1700550:             var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700558:             var_150 = CVar(CLng(8)) 'Long
  loc_1700585:             var_204 = CVar(CStr(Format(CVar(var_1EC), "0.00"))) 'String
  loc_170058D:             Set var_208 = Me.FGrid
  loc_1700593:             LateIdCallSt
  loc_17005DB:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17005E3:             var_EC = CVar(CLng(&HA)) 'Long
  loc_17005F2:             var_12C = Me.FGrid.TextMatrix)
  loc_1700622:             Set var_164 = Me.FGrid
  loc_1700628:             var_174 = var_164.TextMatrix)
  loc_1700642:             Set var_17C = Me.Txt
  loc_1700648:             Call 0.Method_Proc_229_77_1700BE00 (CInt(1), var_1D0, var_1F0, var_174, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1700650:             var_EC = var_1D0.Text
  loc_1700668:             var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17006B6:             Call Proc_229_79_1285270(CStr(var_12C), CStr(var_174), var_1F0, Val(CStr(Me.FGrid.TextMatrix))), var_214, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_17006BE:             var_90 = var_214
  loc_17006F5:             If (var_90 <> CDbl(0)) Then
  loc_1700702:               var_140 = Me.FGrid.Row
  loc_170070B:               var_EC = CVar(CLng(var_140)) 'Long
  loc_1700713:               var_10C = CVar(CLng(8)) 'Long
  loc_1700741:               var_174 = CVar(CStr(Format(var_90, "0.00"))) 'String
  loc_1700749:               Set var_B8 = Me.FGrid
  loc_170074F:               LateIdCallSt
  loc_1700769:             End If
  loc_170076D:             var_CC = CVar(CLng(var_88)) 'Long
  loc_1700775:             var_EC = CVar(CLng(&HD)) 'Long
  loc_17007A5:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_17007AC:               var_CC = CVar(CLng(var_88)) 'Long
  loc_17007B4:               var_EC = CVar(CLng(7)) 'Long
  loc_17007E4:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_17007EB:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_17007F3:                 var_EC = CVar(CLng(7)) 'Long
  loc_17007F8:                 var_10C = "1.0"
  loc_1700802:                 Set var_98 = Me.FGrid
  loc_1700808:                 LateIdCallSt
  loc_1700813:               End If
  loc_1700816:             Else
  loc_170081A:               var_CC = CVar(CLng(var_88)) 'Long
  loc_1700822:               var_EC = CVar(CLng(7)) 'Long
  loc_1700852:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1700859:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_1700861:                 var_EC = CVar(CLng(7)) 'Long
  loc_1700866:                 var_10C = "1"
  loc_1700870:                 Set var_98 = Me.FGrid
  loc_1700876:                 LateIdCallSt
  loc_1700881:               End If
  loc_1700881:             End If
  loc_1700881:           End If
  loc_1700881:         End If
  loc_1700884:       Else
  loc_170088B:         If (var_AC = CLng(7)) Then
  loc_17008A1:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17008A9:           var_EC = CVar(CLng(&HB)) 'Long
  loc_17008B2:           Set var_B8 = Me.FGrid
  loc_17008B8:           var_12C = var_B8.TextMatrix)
  loc_17008C3:           var_BC = CStr(var_12C)
  loc_17008E1:           If (CDbl(Val(var_BC)) > CDbl(0)) Then
  loc_17008F2:             var_CC = "Free Qty Can't Edit "
  loc_17008FD:             MsgBox(var_CC, 0, var_12C, var_140, var_174)
  loc_170090D:             Proc_229_77_1700BE0 = var_EC
  loc_1700913:           End If
  loc_1700923:           Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, var_CC, Me.TxtGrid, var_10C, var_EC)
  loc_1700942:           Set var_130 = Me.TxtGrid
  loc_1700948:           Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_164, var_BC, Not(IsNumeric(CVar(var_B8))), var_CC)
  loc_1700950:           var_EC = var_164.Text
  loc_1700972:           If (var_CC Or (CDbl(Val(var_BC)) <= CDbl(0))) Then
  loc_170098C:             Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, CStr(0))
  loc_1700994:             var_B8.Text = Me.TxtGrid
  loc_17009A8:             Proc_229_77_1700BE0 = 0
  loc_17009AE:           End If
  loc_17009C1:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17009D2:           Set var_B8 = Me.FGrid
  loc_17009E3:           var_BC = CStr(var_B8.TextMatrix))
  loc_1700A01:           If (CDbl(Val(var_BC)) = CDbl(0)) Then
  loc_1700A11:             Set var_98 = Me.TxtGrid
  loc_1700A17:             Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, var_BC, CVar(CLng(&HD)))
  loc_1700A1F:             var_CC = var_B8.Text
  loc_1700A37:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700A4F:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1700A7B:             var_1E0 = CVar(CStr(Format(CVar(var_BC), "0.00"))) 'String
  loc_1700A83:             Set var_17C = Me.FGrid
  loc_1700A89:             LateIdCallSt
  loc_1700AB0:           Else
  loc_1700ABD:             Set var_98 = Me.TxtGrid
  loc_1700AC3:             Call 0.Method_Proc_229_77_1700BE00 (arg_C, var_B8, var_BC, var_17C, var_1E0, 1)
  loc_1700ACB:             1 = var_B8.Text
  loc_1700AE3:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700AFB:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1700B27:             var_1E0 = CVar(CStr(Format(CVar(var_BC), "0"))) 'String
  loc_1700B2F:             Set var_17C = Me.FGrid
  loc_1700B35:             LateIdCallSt
  loc_1700B59:           End If
  loc_1700B5C:         Else
  loc_1700B63:           If (var_AC = CLng(9)) Then
  loc_1700B92:             Set var_98 = Me.TxtGrid
  loc_1700B98:             Call 0.Method_Proc_229_77_1700BE00 (0, var_B8, var_BC, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_17C, var_1E0)
  loc_1700BA0:             1 = var_B8.Text
  loc_1700BB6:             LateIdCallSt
  loc_1700BD0:             Call Proc_229_92_125F304(Me.FGrid, CVar(var_BC), 1, var_FC)
  loc_1700BD5:           End If
  loc_1700BD5:         End If
  loc_1700BD5:       End If
  loc_1700BD5:     End If
  loc_1700BD5:   End If
  loc_1700BD5: End If
  loc_1700BDA: Proc_229_77_1700BE0 = &HFF
End Sub

Public Sub Proc_229_78_155C2D8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '155C2D8
  'Data Table: 542AD8
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_170 As String
  Dim var_118 As Integer
  Dim var_188 As String
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_138 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_158 As Variant
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_248 As Variant
  Dim unk_542AEE As Connection15
  Dim var_8C As Recordset15
  Dim var_274 As Variant
  Dim var_EA As Integer
  Dim var_114 As Double
  Dim var_208 As Variant
  Dim var_90 As Recordset15
  Dim var_278 As Variant
  Dim var_25C As Variant
  Dim var_29C As Field20
  Dim var_288 As Variant
  Dim var_2C4 As Variant
  Dim var_26C As Variant
  Dim var_86 As Integer
  loc_155B2F8: var_128 = CVar(CLng(arg_1C)) 'Long
  loc_155B330: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_155B333:   Proc_229_78_155C2D8 = CVar(CLng(&HB))
  loc_155B339: End If
  loc_155B35E: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_174 'Integer
  loc_155B388:   If (CLng(var_116) > (CLng(Me.FGrid.Rows) - 1)) Then
  loc_155B38B:     GoTo loc_155B3F4
  loc_155B38E:   End If
  loc_155B392:   var_128 = CVar(CLng(var_116)) 'Long
  loc_155B39A:   var_148 = CVar(CLng(&HB)) 'Long
  loc_155B3CB:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(arg_20)) Then
  loc_155B3D2:     var_128 = CVar(CLng(var_116)) 'Long
  loc_155B3DB:     Set var_15C = Me.FGrid
  loc_155B3EC:   End If
  loc_155B3EF: Next var_174 'Integer
  loc_155B3F4: ' Referenced from: 155B38B
  loc_155B3F8: Set var_15C = Me.FGrid
  loc_155B3FE: var_16C = var_15C.Row
  loc_155B408: var_118 = CInt(CLng(var_16C))
  loc_155B446: var_188 = "SELECT SD.* FROM SchemeItemDetail SD WHERE SD.restCode='" & arg_10 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18)
  loc_155B45B: Proc_6_7_F25D88(var_16C, arg_14, CVar(var_188 & " AND "), var_26C)
  loc_155B463: var_1A8 = -1 & var_16C 
  loc_155B47F: var_1D8 = var_1A8 & " Between SD.appdate And SD.Enddate AND SD.LogSite_Code='" & CVar(MemVar_1F92078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_155B4C8: unk_542AEE.Execute CStr(var_1D8 & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc"), var_15C, var_118
  loc_155B4D3: Set var_8C = var_15C
  loc_155B519: If (var_8C.RecordCount > 0) Then
  loc_155B5AD:   If CBool(InStr(1, Trim(Str(CVar(var_8C.Fields.Item("DAYS")))), Trim(Str(Weekday(arg_14, 1))), 0) <> 0) Then
  loc_155B5DB:     var_94 = CStr(var_8C.Fields.Item("FromTime").Value)
  loc_155B5FA:     var_15C = var_8C.Fields
  loc_155B613:     var_98 = CStr(var_15C.Item("ToTime").Value)
  loc_155B64B:     var_A8 = Format(Time, "HH") 'Variant
  loc_155B681:     var_B8 = Format(Time, "NN") 'Variant
  loc_155B6B1:     var_C8 = CVar(Val(CStr(Left(var_94, 2)))) 'Variant
  loc_155B6E0:     var_D8 = CVar(Val(CStr(Right(var_94, 2)))) 'Variant
  loc_155B70F:     var_E8 = CVar(Val(CStr(Left(var_98, 2)))) 'Variant
  loc_155B73B:     var_EA = CInt(Val(CStr(Right(var_98, 2))))
  loc_155B74C:     If (var_E8 < var_C8) Then
  loc_155B757:       var_16C = (var_E8 + 24)
  loc_155B75B:       var_E8 = Right(var_98, 2) 'Variant
  loc_155B75F:     End If
  loc_155B76A:     If (var_A8 <= 12) Then
  loc_155B775:       var_16C = (var_A8 + 24)
  loc_155B779:       var_A8 = Right(var_98, 2) 'Variant
  loc_155B77D:     End If
  loc_155B791:     var_198 = (var_C8 + (var_D8 / 60))
  loc_155B7A0:     var_FC = Round("NN", 2) 'Variant
  loc_155B7BB:     var_16C = (var_E8 + CVar((CDbl(var_EA) / CDbl(&H3C))))
  loc_155B7CA:     var_10C = Round((var_D8 / 60), 2) 'Variant
  loc_155B7E5:     var_198 = (var_A8 + (var_B8 / 60))
  loc_155B7F5:     var_114 = CSng(Round(Round((var_D8 / 60), 2), 2))
  loc_155B82F:     var_1A8 = (Left(var_94, 2) + Right(var_94, 2))
  loc_155B880:     var_1A8 = (Left(var_98, 2) + Right(var_98, 2))
  loc_155B900:     var_208 = (1 + Format(Time, "nn"))
  loc_155B905:     var_114 = CSng(Str(Weekday(arg_14, 1)))
  loc_155B924:     var_16C = (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) <= CVar(var_114))
  loc_155B93D:     If CBool(var_16C And (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) >= CVar(var_114))) Then
  loc_155B954:       var_170 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, IM.NAME, IM.Unit, IM.Code, FD.FreeQty, SD.ItemCode As Itemcode, SD.Qty,SD.SchemeCode FROM SchemeItemDetail SD  JOIN FreeItemDetail FD ON SD.Code = FD.Code Join Depart on SD.RestCode=Depart.Code JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode WHERE SD.RestCode='" & arg_10
  loc_155B98A:       Proc_6_7_F25D88(var_16C, arg_14, CVar(var_170 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18) & " AND "), var_26C, -1, var_15C, var_114, 1)
  loc_155B9A5:       var_1C8 = (Format(Time, "HH") * 100) & var_16C & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_155B9E9:       var_248 = var_1C8 & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc" 
  loc_155B9F7:       unk_542AEE.Execute CStr(var_248), 1, 1
  loc_155BA02:       Set var_90 = var_15C
  loc_155BA48:       If (var_90.RecordCount > 0) Then
  loc_155BA4F:         var_128 = CVar(CLng(var_118)) 'Long
  loc_155BA57:         var_148 = CVar(CLng(&HA)) 'Long
  loc_155BA98:         var_90.Find "Itemcode='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_155BAC5:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BACD:         var_148 = CVar(CLng(4)) 'Long
  loc_155BB00:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_155BB1C:           var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BB25:           Set var_274 = Me.FGrid
  loc_155BB3D:         End If
  loc_155BB3D:         var_128 = vbNullString
  loc_155BB47:         Set var_15C = Me.FGrid
  loc_155BB71:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BB79:         var_25C = CVar(CLng(0)) 'Long
  loc_155BB97:         var_128 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_155BB9F:         var_148 = CVar(CLng(0)) 'Long
  loc_155BBC4:         var_1B8 = CVar(CStr((CDbl(CStr(Me.FGrid.TextMatrix))) + CDbl(1)))) 'String
  loc_155BBCC:         Set var_29C = Me.FGrid
  loc_155BBD2:         LateIdCallSt
  loc_155BC0C:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BC14:         var_158 = CVar(CLng(1)) 'Long
  loc_155BC44:         var_1A8 = CVar(CStr(var_90.Fields.Item("RestCode").Value)) 'String
  loc_155BC4C:         Set var_29C = Me.FGrid
  loc_155BC52:         LateIdCallSt
  loc_155BC87:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BC8F:         var_158 = CVar(CLng(2)) 'Long
  loc_155BCBF:         var_1A8 = CVar(CStr(var_90.Fields.Item("ShortName").Value)) 'String
  loc_155BCC7:         Set var_29C = Me.FGrid
  loc_155BCCD:         LateIdCallSt
  loc_155BD02:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BD0A:         var_158 = CVar(CLng(3)) 'Long
  loc_155BD3A:         var_1A8 = CVar(CStr(var_90.Fields.Item("DispCode").Value)) 'String
  loc_155BD42:         Set var_29C = Me.FGrid
  loc_155BD48:         LateIdCallSt
  loc_155BD7D:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BD85:         var_158 = CVar(CLng(4)) 'Long
  loc_155BDB5:         var_1A8 = CVar(CStr(var_90.Fields.Item("Name").Value)) 'String
  loc_155BDBD:         Set var_29C = Me.FGrid
  loc_155BDC3:         LateIdCallSt
  loc_155BDF8:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BE00:         var_158 = CVar(CLng(5)) 'Long
  loc_155BE30:         var_1A8 = CVar(CStr(var_90.Fields.Item("Unit").Value)) 'String
  loc_155BE38:         Set var_29C = Me.FGrid
  loc_155BE3E:         LateIdCallSt
  loc_155BE9B:         var_29C = var_90.Fields.Item("qty")
  loc_155BEA3:         var_1A8 = var_29C.Value
  loc_155BEC4:         var_158 = CVar(arg_18) 'Integer
  loc_155BED3:         Proc_6_142_14A55B0(CSng((var_158 / var_1A8)), CByte(0), "L", CByte(4), var_29C, var_1A8, var_158, " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='")
  loc_155BF1B:         var_288 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BF23:         var_2C4 = CVar(CLng(7)) 'Long
  loc_155BF51:         var_1C8 = ((CVar(arg_18) / var_90.Fields.Item("qty").Value) + CVar(var_29C))
  loc_155BF6F:         var_26C = CVar(CStr(Format((var_1C8 * var_90.Fields.Item("FreeQty").Value), "0.00"))) 'String
  loc_155BF77:         Set var_2E8 = Me.FGrid
  loc_155BF7D:         LateIdCallSt
  loc_155BFC9:         var_148 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155BFD1:         var_1E8 = CVar(CLng(8)) 'Long
  loc_155C002:         var_1C8 = CVar(CStr(Format("0.01", "0.00"))) 'String
  loc_155C00A:         Set var_274 = Me.FGrid
  loc_155C010:         LateIdCallSt
  loc_155C045:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C04D:         var_158 = CVar(CLng(&HA)) 'Long
  loc_155C07D:         var_1A8 = CVar(CStr(var_90.Fields.Item("Code").Value)) 'String
  loc_155C085:         Set var_29C = Me.FGrid
  loc_155C08B:         LateIdCallSt
  loc_155C0C0:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C0D2:         var_198 = CVar(CStr(arg_20)) 'String
  loc_155C0DA:         Set var_274 = Me.FGrid
  loc_155C0E0:         LateIdCallSt
  loc_155C100:         var_198 = Me.FGrid.Rows
  loc_155C10F:         var_138 = CVar((CLng(var_198) - 1)) 'Long
  loc_155C11F:         var_128 = "SchemeCode"
  loc_155C133:         var_274 = var_90.Fields.Item(var_128)
  loc_155C14C:         Set var_29C = Me.FGrid
  loc_155C152:         LateIdCallSt
  loc_155C170:         Set var_29C = Me.FGrid
  loc_155C1B6:         Proc_96_0_E6BE98(var_29C, CInt((CLng(Me.FGrid.Rows) - 1)), Me.lblclr.BackColor, Me.FGrid.Rows, var_29C, CVar(Proc_6_38_E68A98(CVar(Me.lblclr), CVar(CLng(&HC)), "0.00", Me.lblclr, var_198, CVar(CLng(&HB)), var_128)))
  loc_155C1CB:         var_86 = &HFF
  loc_155C1E7:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C1EF:         var_25C = CVar(CLng(9)) 'Long
  loc_155C1F8:         var_128 = CVar(CLng(var_118)) 'Long
  loc_155C200:         var_148 = CVar(CLng(9)) 'Long
  loc_155C21A:         var_1A8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_155C222:         Set var_278 = Me.FGrid
  loc_155C228:         LateIdCallSt
  loc_155C267:         For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_2F8 'Integer
  loc_155C271:           var_128 = CVar(CLng(var_116)) 'Long
  loc_155C279:           var_148 = CVar(CLng(0)) 'Long
  loc_155C283:           var_16C = CVar(CStr(var_116)) 'String
  loc_155C28B:           Set var_15C = Me.FGrid
  loc_155C291:           LateIdCallSt
  loc_155C2A2:         Next var_2F8 'Integer
  loc_155C2AC:         Set var_8C = Nothing
  loc_155C2B4:         Set var_90 = Nothing
  loc_155C2B7:         Proc_229_78_155C2D8 = 
  loc_155C2BD:       End If
  loc_155C2BD:     End If
  loc_155C2BD:   End If
  loc_155C2BD: End If
  loc_155C2C7: Set var_8C = Nothing
  loc_155C2CF: Set var_90 = Nothing
  loc_155C2D2: Proc_229_78_155C2D8 = 0
End Sub

Public Sub Proc_229_79_1285270(arg_C, arg_10, arg_14, arg_18) '1285270
  'Data Table: 542AD8
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1F4 As Variant
  Dim var_254 As Variant
  Dim unk_542AEE As Connection15
  Dim var_90 As Recordset15
  Dim var_2BC As Fields15
  Dim var_E2 As Integer
  Dim var_134 As Variant
  Dim var_114 As Double
  Dim var_194 As Variant
  Dim var_8C As Double
  loc_1284D0D: Proc_6_17_EAA2B0(var_134, arg_10, "SELECT * FROM HappyHours where RestCode =")
  loc_1284D2D: Proc_6_17_EAA2B0(var_194, arg_C, var_2B8 & var_134 & " AND itemCode=")
  loc_1284D35: var_1A4 = -1 & var_194 
  loc_1284D4D: Proc_6_7_F25D88(var_1E4, arg_14)
  loc_1284D71: var_254 = var_1A4 & " AND " & var_1E4 & " Between AppDate And EndDate AND  Site_Code='" & CVar(MemVar_1F92070) & "' AND (LogSite_code='" 
  loc_1284D92: unk_542AEE.Execute CStr(var_254 & CVar(MemVar_1F92078) & "' OR Logsite_Code='HO') AND Active='Y' ORDER BY AppDate DESC"), var_2BC, 
  loc_1284D9D: Set var_90 = var_2BC
  loc_1284DD9: If (var_90.RecordCount > 0) Then
  loc_1284E07:   var_E8 = CStr(var_90.Fields.Item("FromTime").Value)
  loc_1284E3F:   var_EC = CStr(var_90.Fields.Item("ToTime").Value)
  loc_1284E77:   var_E0 = Format(Time, "HH") 'Variant
  loc_1284EAE:   var_E2 = CInt(Format(Time, "NN"))
  loc_1284EDF:   var_A0 = CVar(Val(CStr(Left(var_E8, 2)))) 'Variant
  loc_1284F0E:   var_B0 = CVar(Val(CStr(Right(var_E8, 2)))) 'Variant
  loc_1284F3D:   var_C0 = CVar(Val(CStr(Left(var_EC, 2)))) 'Variant
  loc_1284F6C:   var_D0 = CVar(Val(CStr(Right(var_EC, 2)))) 'Variant
  loc_1284F7E:   If (var_C0 < var_A0) Then
  loc_1284F89:     var_134 = (var_C0 + 24)
  loc_1284F8D:     var_C0 = Right(var_EC, 2) 'Variant
  loc_1284F91:   End If
  loc_1284F9C:   If (var_E0 <= 12) Then
  loc_1284FA7:     var_134 = (var_E0 + 24)
  loc_1284FAB:     var_E0 = Right(var_EC, 2) 'Variant
  loc_1284FAF:   End If
  loc_1284FC3:   var_154 = (var_A0 + (var_B0 / 60))
  loc_1284FD2:   var_FC = Round("NN", 2) 'Variant
  loc_1284FED:   var_154 = (var_C0 + (var_D0 / 60))
  loc_1284FFC:   var_10C = Round("NN", 2) 'Variant
  loc_1285017:   var_134 = (var_E0 + CVar((CDbl(var_E2) / CDbl(&H3C))))
  loc_1285027:   var_114 = CSng(Round((var_D0 / 60), 2))
  loc_1285061:   var_174 = (Left(var_E8, 2) + Right(var_E8, 2))
  loc_12850B2:   var_174 = (Left(var_EC, 2) + Right(var_EC, 2))
  loc_128510B:   var_194 = (Format(Time, "HH") * 100)
  loc_1285132:   var_1F4 = (1 + Format(Time, "NN"))
  loc_1285137:   var_114 = CSng(Time & " AND " & Format(Time, "NN"))
  loc_128516F:   If CBool((CVar(Val(CStr(Round("NN", 2)))) <= CVar(var_114)) And (CVar(Val(CStr(Round("NN", 2)))) >= CVar(var_114))) Then
  loc_12851AE:     If (var_90.Fields.Item("DiscountType").Value = "Amount") Then
  loc_12851E2:       var_154 = (CVar(arg_18) - var_90.Fields.Item("DiscountValue").Value)
  loc_12851E7:       var_8C = CSng("HH")
  loc_12851F7:     Else
  loc_128523C:       var_194 = (CVar(arg_18) - (CVar(arg_18) * (var_90.Fields.Item("DiscountValue").Value / 100)))
  loc_1285241:       var_8C = CSng(var_194)
  loc_128524E:     End If
  loc_1285251:   Else
  loc_1285254:     var_8C = CDbl(0)
  loc_1285257:   End If
  loc_128525A: Else
  loc_128525D:   var_8C = CDbl(0)
  loc_1285260: End If
  loc_1285265: Set var_90 = Nothing
  loc_1285268: Proc_229_79_1285270 = var_8C
End Sub

Public Sub Proc_229_80_16C07AC
  'Data Table: 542AD8
  Dim Me As Variant
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_542AEE As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_144 As String
  Dim var_148 As String
  Dim var_12C As Variant
  Dim var_C4 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_150 As Field20
  Dim var_160 As Variant
  Dim var_128 As Variant
  Dim var_8E As Integer
  Dim var_118 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_170 As Variant
  Dim var_98 As Recordset15
  loc_16BEE2B: If (Me.RecordCount > 0) Then
  loc_16BEE6D:   var_E4 = "Select K.*,R.name as RName From TOKEN K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_16BEE84:   unk_542AEE.Execute CStr(var_E4 & "' order by K.Sno"), var_128, -1
  loc_16BEE8F:   Set var_88 = var_12C
  loc_16BEEAC:   Set var_130 = var_88 
  loc_16BEEE9:   Set var_12C = Me.Txt
  loc_16BEEEF:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(3), var_134)
  loc_16BEEF7:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_16BEF27:   var_B4 = var_130.Fields.Item("vType")
  loc_16BEF2F:   var_C4 = var_B4.Value
  loc_16BEF55:   var_D4 = 0
  loc_16BEF87:   var_140 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='"
  loc_16BEFA1:   unk_542AEE.Execute var_140 & CStr(var_C4) & "'", var_C4, -1
  loc_16BEFA9:   var_A0 = var_A0.Fields
  loc_16BEFB1:   var_D4 = var_B4.Item(var_B4)
  loc_16BEFB9:   var_12C = var_12C.Value
  loc_16BEFC8:   global_124 = CStr(var_E4)
  loc_16BF026:   Set var_12C = Me.Txt
  loc_16BF02C:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(0), var_134, CStr(var_130.Fields.Item("VNo").Value))
  loc_16BF034:   var_134.Text = var_E4
  loc_16BF083:   Set var_12C = Me.Txt
  loc_16BF089:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HD), var_134)
  loc_16BF091:   var_134.Text = CStr(var_130.Fields.Item("TokenNo").Value)
  loc_16BF0D2:   var_E4 = "DD/MMM/YYYY"
  loc_16BF0F9:   Set var_12C = Me.Txt
  loc_16BF0FF:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(1), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), var_E4)))
  loc_16BF107:   var_134.Text = 1
  loc_16BF159:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_16BF1A3:   Set var_12C = Me.Txt
  loc_16BF1A9:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(6), var_134)
  loc_16BF1B1:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), 1)
  loc_16BF1FD:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E4)
  loc_16BF201:   var_138 = -1 & var_108
  loc_16BF211:   unk_542AEE.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "'", var_12C, var_12C
  loc_16BF21C:   Set var_8C = var_12C
  loc_16BF24A:   If (var_8C.RecordCount > 0) Then
  loc_16BF286:     Set var_12C = Me.Txt
  loc_16BF28C:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HB), var_134)
  loc_16BF294:     var_134.Tag = CStr(var_8C.Fields.Item(0).Value)
  loc_16BF2E3:     Set var_12C = Me.Txt
  loc_16BF2E9:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HB), var_134)
  loc_16BF2F1:     var_134.Text = CStr(var_8C.Fields.Item(1).Value)
  loc_16BF321:     var_B4 = var_8C.Fields.Item(2)
  loc_16BF340:     Set var_12C = Me.Txt
  loc_16BF346:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HC), var_134)
  loc_16BF34E:     var_134.Text = CStr(var_B4.Value)
  loc_16BF367:   Else
  loc_16BF375:     Set var_A0 = Me.Txt
  loc_16BF37B:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HB), var_B4)
  loc_16BF383:     var_B4.Tag = vbNullString
  loc_16BF39D:     Set var_A0 = Me.Txt
  loc_16BF3A3:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HB), var_B4)
  loc_16BF3AB:     var_B4.Text = vbNullString
  loc_16BF3C5:     Set var_A0 = Me.Txt
  loc_16BF3CB:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HC), var_B4)
  loc_16BF3D3:     var_B4.Text = vbNullString
  loc_16BF3DF:   End If
  loc_16BF407:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Waiter")))
  loc_16BF415:   Set var_12C = Me.Txt
  loc_16BF41B:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(5), var_134)
  loc_16BF423:   var_134.Tag = var_108
  loc_16BF451:   var_B4 = var_130.Fields.Item("Waiter")
  loc_16BF473:   If CBool(var_B4.Value <> vbNullString) Then
  loc_16BF494:     Set var_A0 = Me.Txt
  loc_16BF49A:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(5), var_B4, var_108, "Select Name From Waiter Where Code='")
  loc_16BF4A2:     var_C4 = var_B4.Tag
  loc_16BF4AB:     var_138 = -1 & var_108
  loc_16BF4B2:     var_13C = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_16BF4BB:     unk_542AEE.Execute var_13C, var_12C, 
  loc_16BF4C6:     Set var_94 = var_12C
  loc_16BF4F2:     If (var_94.RecordCount > 0) Then
  loc_16BF50F:       var_B4 = var_94.Fields.Item("Name")
  loc_16BF52E:       Set var_12C = Me.Txt
  loc_16BF534:       Call 0.Method_Proc_229_80_16C07AC0 (CInt(5), var_134)
  loc_16BF53C:       var_134.Text = CStr(var_B4.Value)
  loc_16BF552:     End If
  loc_16BF557:     Set var_94 = Nothing
  loc_16BF55D:   Else
  loc_16BF56B:     Set var_A0 = Me.Txt
  loc_16BF571:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(5), var_B4)
  loc_16BF579:     var_B4.Text = vbNullString
  loc_16BF585:   End If
  loc_16BF59C:   If ((global_164 = "TB") Or (global_164 = "RO")) Then
  loc_16BF5D5:     Set var_12C = Me.Txt
  loc_16BF5DB:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(4), var_134)
  loc_16BF5E3:     var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RoomNo")))
  loc_16BF5FA:   Else
  loc_16BF630:     Set var_12C = Me.Txt
  loc_16BF636:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(4), var_134)
  loc_16BF63E:     var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RName")))
  loc_16BF652:   End If
  loc_16BF66C:   var_B4 = var_130.Fields.Item("Pending")
  loc_16BF674:   var_C4 = var_B4.Value
  loc_16BF68E:   If (var_C4 = "Y") Then
  loc_16BF6CF:     Set var_A0 = Me.Txt
  loc_16BF6D5:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(4), var_B4, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_C4, -1)
  loc_16BF6ED:     var_144 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_16BF6F6:     unk_542AEE.Execute var_144, 0, var_150
  loc_16BF706:      = var_134.Item()
  loc_16BF70E:      = var_150.Value
  loc_16BF73F:     If (var_B4.Text.Fields = 1) Then
  loc_16BF74F:       Me.LblState.Caption = "New Order"
  loc_16BF75A:     Else
  loc_16BF767:       Me.LblState.Caption = "Running Order"
  loc_16BF76F:     End If
  loc_16BF772:   Else
  loc_16BF77F:     Me.LblState.Caption = "Completed Order"
  loc_16BF787:   End If
  loc_16BF7A1:   var_B4 = var_130.Fields.Item("NCTOKEN")
  loc_16BF7E2:   Me.ChkNCTOKEN.Value = CInt(IIf((var_B4.Value = "Y"), 1, 0))
  loc_16BF818:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_16BF828:     Set var_A0 = Me.Txt
  loc_16BF82E:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(7), var_B4)
  loc_16BF836:     var_B4.Visible = True
  loc_16BF84D:     Set var_A0 = Me.Label1
  loc_16BF853:     Call 0.Method_Proc_229_80_16C07AC0 (4, var_B4)
  loc_16BF85B:     var_B4.Visible = True
  loc_16BF86A:   Else
  loc_16BF877:     Set var_A0 = Me.Txt
  loc_16BF87D:     Call 0.Method_Proc_229_80_16C07AC0 (CInt(7), var_B4)
  loc_16BF885:     var_B4.Visible = False
  loc_16BF89C:     Set var_A0 = Me.Label1
  loc_16BF8A2:     Call 0.Method_Proc_229_80_16C07AC0 (4, var_B4)
  loc_16BF8AA:     var_B4.Visible = False
  loc_16BF8B6:   End If
  loc_16BF8EC:   Set var_12C = Me.Txt
  loc_16BF8F2:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(7), var_134)
  loc_16BF8FA:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("NCType")))
  loc_16BF963:   global_192 = CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), 1, 0))
  loc_16BF9A7:   var_128 = 1
  loc_16BFA10:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RoomNo")), CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), var_128, 0)))
  loc_16BFA1E:   Set var_12C = Me.Txt
  loc_16BFA24:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(4), var_134)
  loc_16BFA2C:   var_134.Tag = var_108
  loc_16BFA6B:   var_E4 = "hh:nn"
  loc_16BFA92:   Set var_12C = Me.Txt
  loc_16BFA98:   Call 0.Method_Proc_229_80_16C07AC0 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VTIME")), var_E4)))
  loc_16BFAA0:   var_134.Text = 1
  loc_16BFB02:   var_13C = Replace(CStr(var_130.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_16BFB34:   var_148 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_16BFB44:   unk_542AEE.Execute var_148 & " BETWEEN FromTime AND ToTime", var_E4, -1
  loc_16BFB4F:   Set var_94 = var_12C
  loc_16BFB75:   Set var_130 = Nothing 
  loc_16BFB88:   Me.FGrid.Redraw = False
  loc_16BFBA3:   Me.FGrid.Rows = 1
  loc_16BFBAD:   var_8E = 1
  loc_16BFBBD:   var_D4 = "Select K1.*,I.name as ItemName,I.Unit,IsNull(U.PriceType,0) As PriceType,DispCode,D.Code as DepartCode,D.ShortName as DepartName From (TOKEN K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where K1.DocId='"
  loc_16BFC06:   unk_542AEE.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_128, -1
  loc_16BFC11:   Set var_88 = var_12C
  loc_16BFC3F:   If (var_88.RecordCount > 0) Then
  loc_16BFC42:     ' Referenced from: 16C02ED
  loc_16BFC51:     If Not(var_88.EOF) Then
  loc_16BFC54:       var_B0 = vbNullString
  loc_16BFC5E:       Set var_A0 = Me.FGrid
  loc_16BFC73:       Set var_180 = Me.FGrid
  loc_16BFC7A:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16BFC82:       var_118 = CVar(CLng(0)) 'Long
  loc_16BFCB2:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16BFCB9:       LateIdCallSt
  loc_16BFCD3:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16BFCDB:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16BFD0B:       var_E4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_16BFD12:       LateIdCallSt
  loc_16BFD61:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_180, var_E4, CVar(CLng(3)), CVar(CLng(var_8E)))) 'String
  loc_16BFD68:       LateIdCallSt
  loc_16BFDB3:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_180, var_E4, var_180)) 'String
  loc_16BFDBA:       LateIdCallSt
  loc_16BFE05:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_8E)), var_180, var_E4)) 'String
  loc_16BFE0C:       LateIdCallSt
  loc_16BFE57:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_8E)), var_180, var_E4)) 'String
  loc_16BFE5E:       LateIdCallSt
  loc_16BFE90:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16BFE98:       var_190 = CVar(CLng(7)) 'Long
  loc_16BFEC5:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.00"))) 'String
  loc_16BFECC:       LateIdCallSt
  loc_16BFF3E:       LateIdCallSt
  loc_16BFF7C:       var_138 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoidYN")), var_180, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(var_8E)))
  loc_16BFFC8:       LateIdCallSt
  loc_16C0022:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_180, CVar(CStr(IIf((var_138 = "Y"), "Yes", "No"))), CVar(CLng(9)), CVar(CLng(var_8E)))) 'String
  loc_16C0029:       LateIdCallSt
  loc_16C0074:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_180, var_E4, var_180)) 'String
  loc_16C007B:       LateIdCallSt
  loc_16C00C4:       Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("FreeSno")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_180, var_E4)
  loc_16C00D4:       LateIdCallSt
  loc_16C0121:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SchemeCode")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_180, CVar(CStr(var_E4)))) 'String
  loc_16C0128:       LateIdCallSt
  loc_16C0171:       Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_180, var_E4)
  loc_16C017A:       var_104 = CVar(CStr(var_E4)) 'String
  loc_16C0181:       LateIdCallSt
  loc_16C0199:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16C01A1:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_16C01D1:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_16C01D8:         var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16C01E0:         var_F4 = CVar(CLng(7)) 'Long
  loc_16C01FF:         var_1A0 = CVar(CLng(var_8E)) 'Long
  loc_16C0207:         var_1C0 = CVar(CLng(7)) 'Long
  loc_16C0234:         var_160 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0"))) 'String
  loc_16C023C:         Set var_B4 = Me.FGrid
  loc_16C0242:         LateIdCallSt
  loc_16C025E:       End If
  loc_16C0260:       Set var_180 = Nothing 
  loc_16C02A0:       If (var_88.Fields.Item("FreeSno").Value > 0) Then
  loc_16C02CE:         Proc_96_0_E6BE98(Me.FGrid, var_8E, Me.lblclr.BackColor, Me.FGrid, var_160, 1, 1)
  loc_16C02DC:       End If
  loc_16C02E2:       var_8E = (var_8E + 1)
  loc_16C02E8:       var_88.MoveNext
  loc_16C02ED:       GoTo loc_16BFC42
  loc_16C02F0:     End If
  loc_16C0303:     Me.FGrid.FixedRows = 1
  loc_16C030B:   End If
  loc_16C0319:   Me.FGrid.Redraw = True
  loc_16C0327:   If (var_8E = 1) Then
  loc_16C033D:     Me.FGrid.Rows = 1
  loc_16C0349:     Set var_12C = Me.FGrid
  loc_16C0363:     var_C4 = CVar(CStr(Proc_6_127_F24F80(var_12C, CInt(0), var_8E, var_1C0, var_1A0))) 'String
  loc_16C036B:     Set var_B4 = Me.FGrid
  loc_16C0398:     Me.FGrid.FixedRows = 1
  loc_16C03A0:   End If
  loc_16C03AB:   If (global_68 = "Room Service") Then
  loc_16C03CE:     If (Me.LblState.Caption = "Running Order") Then
  loc_16C03E5:       var_108 = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_16C03FD:       Set var_A0 = Me.Txt
  loc_16C0403:       Call 0.Method_Proc_229_80_16C07AC0 (CInt(4), var_B4, var_138, var_108 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_C4, -1, var_12C)
  loc_16C040B:       FGrid.DispID_10000 = var_B4.Tag
  loc_16C0424:       unk_542AEE.Execute var_C4 & var_138 & "'  Order by RC.ROOMNO", var_C4, var_F4
  loc_16C042F:       Set var_98 = var_12C
  loc_16C044E:     Else
  loc_16C045B:       var_D4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, TOKEN.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  TOKEN ON PayCharge.DocId = TOKEN.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (TOKEN.DocId = '"
  loc_16C0466:       var_B0 = "DocID"
  loc_16C048D:       var_E4 = var_D4 & Me.Fields.Item(var_B0).Value 
  loc_16C0491:       var_F4 = "') AND  TOKEN.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '"
  loc_16C04BB:       Set var_12C = Me.Txt
  loc_16C04C1:       Call 0.Method_Proc_229_80_16C07AC0 (CInt(4), var_134, var_108, var_E4 & var_F4 & CVar(MemVar_1F92078) & "TOUT') AND  TOKEN.RoomNo='", var_214)
  loc_16C04C9:       -1 = var_134.Tag
  loc_16C04D1:       var_170 = CVar(var_108) 'String
  loc_16C04EB:       unk_542AEE.Execute CStr(var_150 & var_170 & "'"), var_B0, var_F4
  loc_16C04F6:       Set var_98 = var_150
  loc_16C051E:     End If
  loc_16C0532:     If (var_98.RecordCount > 0) Then
  loc_16C0535:       ' Referenced from: 16C0659
  loc_16C0546:       If (var_98.EOF = 0) Then
  loc_16C057F:         Set var_12C = Me.Txt
  loc_16C0585:         Call 0.Method_Proc_229_80_16C07AC0 (CInt(8), var_134)
  loc_16C058D:         var_134.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Comments1")))
  loc_16C05D7:         Set var_12C = Me.Txt
  loc_16C05DD:         Call 0.Method_Proc_229_80_16C07AC0 (CInt(9), var_134)
  loc_16C05E5:         var_134.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Comments2")))
  loc_16C05FC:         var_B0 = "Comments3"
  loc_16C0610:         var_B4 = var_98.Fields.Item(var_B0)
  loc_16C0618:         var_C4 = CVar(var_B4) 'Address
  loc_16C062F:         Set var_12C = Me.Txt
  loc_16C0635:         Call 0.Method_Proc_229_80_16C07AC0 (CInt(&HA), var_134)
  loc_16C063D:         var_134.Text = Proc_6_38_E68A98(var_C4)
  loc_16C0654:         var_98.MoveNext
  loc_16C0659:         GoTo loc_16C0535
  loc_16C065C:       End If
  loc_16C065C:     End If
  loc_16C065C:   End If
  loc_16C065F: Else
  loc_16C065F:   Call Proc_229_82_FEC2B4(var_B0)
  loc_16C067F:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_16C0696:   var_D4 = 0
  loc_16C06B6:   var_140 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_16C06C6:   unk_542AEE.Execute var_C4 & var_138 & "'", var_C4, -1
  loc_16C06CE:   var_A0 = var_A0.Fields
  loc_16C06D6:   var_D4 = var_B4.Item(var_B4)
  loc_16C06DE:   var_12C = var_12C.Value
  loc_16C06FD:   unk_542AEE.Execute CStr(var_E4 & var_E4 & "' Order by Description"), CVar(var_138 & MemVar_1F92078 & "') and V_Type='"), var_170
  loc_16C0708:   Set var_88 = var_134
  loc_16C0748:   If (var_88.RecordCount > 0) Then
  loc_16C077C:     global_156 = CStr(var_88.Fields.Item(0).Value)
  loc_16C078D:   End If
  loc_16C078D: End If
  loc_16C078D: Call Proc_229_84_F6D19C(-1)
  loc_16C0797: Set var_88 = Nothing
  loc_16C079F: Set var_98 = Nothing
  loc_16C07A2: Exit Sub
  loc_16C07A3: Proc_6_60_E62BC4(var_134)
  loc_16C07A8: Exit Sub
End Sub

Public Sub Proc_229_81_1081A10
  'Data Table: 542AD8
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_542AEE As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  loc_1081789: Set var_8C = Me.TopCtrl1
  loc_108178F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_1081797: var_A0 = CStr()
  loc_10817A8: If (var_A0 = "Add") Then
  loc_10817D8:   Set var_8C = Me.Txt
  loc_10817DE:   Call 0.Method_Proc_229_81_1081A100 (CInt(3), var_A4, var_A0, "Select Count(*) From TOKEN Where DocID='", var_9C, -1)
  loc_10817FF:   unk_542AEE.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_108180F:    = var_C4.Item()
  loc_1081817:    = var_D8.Value
  loc_1081844:   If (var_A4.Text.Fields > 0) Then
  loc_108184D:     Call 0.Method_arg_50 (var_A0)
  loc_108186E:     MsgBox("Duplicate TOKEN No.", &H40, CVar(var_A0), var_108, var_118)
  loc_1081884:     Call Proc_229_86_11843B4(MemVar_1F92044)
  loc_1081897:     Set var_8C = Me.Txt
  loc_108189D:     Call 0.Method_Proc_229_81_1081A100 (CInt(3), var_A4)
  loc_10818A5:     var_A4.Text = var_A0
  loc_10818B9:     Proc_229_81_1081A10 = 0
  loc_10818BF:   End If
  loc_10818BF: End If
  loc_10818E4: For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_11C 'Integer
  loc_10818EE:   var_BC = CVar(CLng(var_88)) 'Long
  loc_10818F6:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_1081916:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1081932:   If CBool(var_108 <> vbNullString) Then
  loc_1081939:     var_BC = CVar(CLng(var_88)) 'Long
  loc_1081941:     var_F8 = CVar(CLng(7)) 'Long
  loc_1081971:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1081999:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_118)
  loc_10819BF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10819CB:       Set var_8C = Me.FGrid
  loc_10819EF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_10819FC:       Proc_229_81_1081A10 = 0
  loc_1081A02:     End If
  loc_1081A02:   End If
  loc_1081A05: Next var_11C 'Integer
  loc_1081A0A: Proc_229_81_1081A10 = 
End Sub

Public Sub Proc_229_82_FEC2B4
  'Data Table: 542AD8
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_FEC0D5: Me.LblVPrefix.Caption = vbNullString
  loc_FEC0EB: Set var_8C = Me.Txt
  loc_FEC0F1: Call 0.Method_Proc_229_82_FEC2B4C (var_8E, var_86)
  loc_FEC101: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FEC117:   Set var_8C = Me.Txt
  loc_FEC11D:   Call 0.Method_Proc_229_82_FEC2B40 (CInt(var_86), var_98)
  loc_FEC125:   var_98.Text = vbNullString
  loc_FEC141:   Set var_8C = Me.Txt
  loc_FEC147:   Call 0.Method_Proc_229_82_FEC2B40 (CInt(var_86), var_98)
  loc_FEC14F:   var_98.Tag = vbNullString
  loc_FEC15E: Next var_92 'Byte
  loc_FEC172: Set var_8C = Me.Txt
  loc_FEC178: Call 0.Method_Proc_229_82_FEC2B40 (CInt(2), var_98)
  loc_FEC180: var_98.Text = "00:00"
  loc_FEC19A: Set var_8C = Me.Txt
  loc_FEC1A0: Call 0.Method_Proc_229_82_FEC2B40 (CInt(2), var_98)
  loc_FEC1A8: var_98.Tag = vbNullString
  loc_FEC1C7: Me.FGrid.Rows = 1
  loc_FEC1ED: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_FEC1F5: Set var_98 = Me.FGrid
  loc_FEC20F: var_A8 = 1
  loc_FEC21B: var_DC = CVar(CLng(1)) 'Long
  loc_FEC22E: Set var_8C = Me.FGrid
  loc_FEC234: LateIdCallSt
  loc_FEC23F: var_A8 = 1
  loc_FEC24B: var_DC = CVar(CLng(2)) 'Long
  loc_FEC25E: Set var_8C = Me.FGrid
  loc_FEC264: LateIdCallSt
  loc_FEC282: Me.FGrid.FixedRows = 1
  loc_FEC296: Me.ChkNCTOKEN.Value = 0
  loc_FEC2AB: Me.LblState.Caption = vbNullString
  loc_FEC2B3: Exit Sub
End Sub

Public Sub Proc_229_83_100B3F4(arg_C) '100B3F4
  'Data Table: 542AD8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_100B1E2: Set var_8C = Me.Txt
  loc_100B1E8: Call 0.Method_Proc_229_83_100B3F4C (var_8E, var_86)
  loc_100B1F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_100B20E:   Set var_8C = Me.Txt
  loc_100B214:   Call 0.Method_Proc_229_83_100B3F40 (CInt(var_86), var_98)
  loc_100B21C:   var_98.Enabled = arg_C
  loc_100B22B: Next var_92 'Byte
  loc_100B23F: Me.cmdNCBill.Enabled = Not(arg_C)
  loc_100B254: Set var_8C = Me.Txt
  loc_100B25A: Call 0.Method_Proc_229_83_100B3F40 (CInt(2), var_98)
  loc_100B262: var_98.Enabled = False
  loc_100B27B: Set var_8C = Me.Txt
  loc_100B281: Call 0.Method_Proc_229_83_100B3F40 (CInt(3), var_98)
  loc_100B289: var_98.Enabled = False
  loc_100B2A2: Set var_8C = Me.Txt
  loc_100B2A8: Call 0.Method_Proc_229_83_100B3F40 (CInt(1), var_98)
  loc_100B2B0: var_98.Enabled = False
  loc_100B2C9: Set var_8C = Me.Txt
  loc_100B2CF: Call 0.Method_Proc_229_83_100B3F40 (CInt(0), var_98)
  loc_100B2D7: var_98.Enabled = False
  loc_100B2F0: Set var_8C = Me.Txt
  loc_100B2F6: Call 0.Method_Proc_229_83_100B3F40 (CInt(&HD), var_98)
  loc_100B2FE: var_98.Enabled = False
  loc_100B317: Set var_8C = Me.Txt
  loc_100B31D: Call 0.Method_Proc_229_83_100B3F40 (CInt(8), var_98)
  loc_100B325: var_98.Enabled = False
  loc_100B33E: Set var_8C = Me.Txt
  loc_100B344: Call 0.Method_Proc_229_83_100B3F40 (CInt(9), var_98)
  loc_100B34C: var_98.Enabled = False
  loc_100B365: Set var_8C = Me.Txt
  loc_100B36B: Call 0.Method_Proc_229_83_100B3F40 (CInt(&HA), var_98)
  loc_100B373: var_98.Enabled = False
  loc_100B38C: Me.ChkNCTOKEN.Enabled = arg_C
  loc_100B39F: If (global_172 = "Auto") Then
  loc_100B3AF:   Set var_8C = Me.Txt
  loc_100B3B5:   Call 0.Method_Proc_229_83_100B3F40 (CInt(&HB), var_98)
  loc_100B3BD:   var_98.Enabled = False
  loc_100B3D6:   Set var_8C = Me.Txt
  loc_100B3DC:   Call 0.Method_Proc_229_83_100B3F40 (CInt(&HC), var_98)
  loc_100B3E4:   var_98.Enabled = False
  loc_100B3F0: End If
  loc_100B3F0: Exit Sub
  loc_100B3F1: StAryRecMove
End Sub

Public Sub Proc_229_84_F6D19C
  'Data Table: 542AD8
  loc_F6D070: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6D082:   Me.DGItem.Visible = False
  loc_F6D08A: End If
  loc_F6D0A6: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_F6D0B8:   Me.DGWaiter.Visible = False
  loc_F6D0C0: End If
  loc_F6D0DC: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6D0EE:   Me.DGMember.Visible = False
  loc_F6D0F6: End If
  loc_F6D112: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F6D124:   Me.DGTable.Visible = False
  loc_F6D12C: End If
  loc_F6D148: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6D15A:   Me.DGRest.Visible = False
  loc_F6D162: End If
  loc_F6D17E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6D190:   Me.FGPoint.Visible = False
  loc_F6D198: End If
  loc_F6D198: Exit Sub
End Sub

Public Sub Proc_229_85_F0BD60
  'Data Table: 542AD8
  loc_F0BC84: Call Proc_229_84_F6D19C()
  loc_F0BC94: Set var_88 = Me.Txt
  loc_F0BC9A: Call 0.Method_Proc_229_85_F0BD600 (CInt(1))
  loc_F0BCC3: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0BCC6:   Exit Sub
  loc_F0BCC7: End If
  loc_F0BCD2: Set var_88 = Me.Txt
  loc_F0BCD8: Call 0.Method_Proc_229_85_F0BD600 (CInt(0), var_8C)
  loc_F0BD01: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0BD04:   Exit Sub
  loc_F0BD05: End If
  loc_F0BD3C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0BD3F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0BD47: Else
  loc_F0BD4D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0BD55:   Call var_88.SetFocus
  loc_F0BD5E: End If
  loc_F0BD5E: Exit Sub
End Sub

Public Sub Proc_229_86_11843B4
  'Data Table: 542AD8
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_120 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_542AEE As Connection15
  Dim var_134 As Field20
  Dim var_184 As TextBox
  loc_1184020: var_90 = global_156
  loc_1184037: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1184068: Set var_A8 = Me.Txt
  loc_118406E: Call 0.Method_Proc_229_86_11843B40 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_118407D: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_1184085: var_EC = -1 & var_CC 
  loc_1184099: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11840A4: Set var_8C = var_134
  loc_11840E0: If (var_8C.RecordCount > 0) Then
  loc_118411F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1184153:     global_116 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_118417E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1184193:     var_CC = (var_AC.Value + 1)
  loc_118419C:     global_120 = CLng(var_CC)
  loc_11841AD:   End If
  loc_11841AD: End If
  loc_11841C8: var_CC = CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) 'String
  loc_11841D8: var_BC = Space((5 - Len(var_90)))
  loc_11841E0: var_DC = (var_CC + var_AC.Value)
  loc_11841F4: var_EC = Space((5 - Len(global_116)))
  loc_11841FC: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_1184209: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_116))
  loc_1184222: var_14C = Space((8 - Len(CStr(global_120))))
  loc_118422A: var_15C = (var_130 + var_14C)
  loc_1184239: var_17C = (var_15C + CVar(CStr(global_120)))
  loc_1184244: global_112 = CStr(var_17C)
  loc_118427A: Me.LblVPrefix.Caption = global_116
  loc_1184293: Set var_A8 = Me.Txt
  loc_1184299: Call 0.Method_Proc_229_86_11843B40 (CInt(3), var_AC)
  loc_11842A1: var_AC.Text = global_112
  loc_11842B3: var_120 = 0
  loc_11842D3: var_94 = "Select IsNull(Max(TokenNo),0)+1 From Token Where VType='" & global_156
  loc_11842F9: var_110 = Proc_6_45_EAD428(MemVar_1F92070, 2) & "' And Logsite_code='" & MemVar_1F92078 & "' And RestCode='" & LocalRestCode & "' And IsNull(CancelYN,'')<>'Y'"
  loc_1184302: unk_542AEE.Execute var_110, var_AC.Value, -1
  loc_118430A: var_A8 = var_A8.Fields
  loc_1184312: var_120 = var_AC.Item(var_AC)
  loc_118431A: var_134 = var_134.Value
  loc_1184331: Set var_180 = Me.Txt
  loc_1184337: Call 0.Method_Proc_229_86_11843B40 (CInt(&HD), var_184, CStr(var_CC))
  loc_118433F: var_184.Text = var_CC
  loc_118437F: Set var_A8 = Me.Txt
  loc_1184385: Call 0.Method_Proc_229_86_11843B40 (CInt(0), var_AC)
  loc_118438D: var_AC.Text = CStr(global_120)
  loc_11843A2: var_88 = global_112
  loc_11843AA: Set var_8C = Nothing
  loc_11843AD: Proc_229_86_11843B4 = global_120
End Sub

Public Sub Proc_229_87_FC1858
  'Data Table: 542AD8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC16DB: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC16E0:   var_92 = 4 'Byte
  loc_FC16E4: End If
  loc_FC16ED: Set var_98 = Me.TxtGrid
  loc_FC16F3: Call 0.Method_Proc_229_87_FC18580 (0, var_B0)
  loc_FC1716: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC174A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC176E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1771:     GoTo loc_FC1843
  loc_FC1774:   End If
  loc_FC1778:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC17A2:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC17AC:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC17E1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1805:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC181E:     Set var_98 = Me.TxtGrid
  loc_FC1824:     Call 0.Method_Proc_229_87_FC18580 (0, var_B0, CVar(CLng(var_92)))
  loc_FC182C:     var_B0.SetFocus
  loc_FC183D:     Proc_229_87_FC1858 = 0
  loc_FC1843:     ' Referenced from: FC1771
  loc_FC1843:   End If
  loc_FC1846: Next var_D4 'Integer
  loc_FC1850: Proc_229_87_FC1858 = &HFF
End Sub

Public Sub Proc_229_88_11FE978
  'Data Table: 542AD8
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  loc_11FE4D2: Set global_100 = New 
  loc_11FE4E4: Me.Recordset15.CursorLocation = 3
  loc_11FE4EF: var_8C = global_68
  loc_11FE4FA: If (var_8C = "Hall") Then
  loc_11FE522:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_11FE52C:   Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_11FE543:   Set var_88 = Me.Label1
  loc_11FE549:   Call 0.Method_Proc_229_88_11FE9780 (2, var_B4, "Hall")
  loc_11FE551:   var_B4.Caption = 1
  loc_11FE56D:   Set var_88 = Me.DGTable
  loc_11FE58C:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_11FE5A3:   global_160 = "HALL"
  loc_11FE5AD:   global_164 = "HL"
  loc_11FE5C2:   Set var_88 = Me.DGTable
  loc_11FE5E1:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FE603:   Set var_88 = Me.DGTable
  loc_11FE614:   Set var_B4 = DGTable.DispID_69
  loc_11FE622:   var_B4.Item(3).Width = CDbl(0)
  loc_11FE641:   Set var_88 = Me.Txt
  loc_11FE647:   Call 0.Method_Proc_229_88_11FE9780 (CInt(4), var_B4)
  loc_11FE64F:   var_BC = var_B4.Width
  loc_11FE666:   Me.DGTable.Width = CVar(var_BC)
  loc_11FE677: Else
  loc_11FE67F:   If (var_8C = "Outlet") Then
  loc_11FE68E:     Set var_88 = Me.Label1
  loc_11FE694:     Call 0.Method_Proc_229_88_11FE9780 (2, var_B4)
  loc_11FE69C:     var_B4.Caption = "Table #"
  loc_11FE6B8:     Set var_88 = Me.DGTable
  loc_11FE6D7:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_11FE70D:     var_D0 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_11FE728:     Me.Open CVar(var_D0 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F92044), 3
  loc_11FE73F:     global_160 = "REST"
  loc_11FE749:     global_164 = "TB"
  loc_11FE75E:     Set var_88 = Me.DGTable
  loc_11FE77D:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FE79F:     Set var_88 = Me.DGTable
  loc_11FE7B0:     Set var_B4 = DGTable.DispID_69
  loc_11FE7BE:     var_B4.Item(3).Width = CDbl(0)
  loc_11FE7DD:     Set var_88 = Me.Txt
  loc_11FE7E3:     Call 0.Method_Proc_229_88_11FE9780 (CInt(4), var_B4, var_BC)
  loc_11FE7EB:     1 = var_B4.Width
  loc_11FE802:     Me.DGTable.Width = CVar(var_BC)
  loc_11FE813:   Else
  loc_11FE81B:     If (var_8C = "Room Service") Then
  loc_11FE82A:       Set var_88 = Me.Label1
  loc_11FE830:       Call 0.Method_Proc_229_88_11FE9780 (2, var_B4, "Room #")
  loc_11FE838:       var_B4.Caption = -1
  loc_11FE854:       Set var_88 = Me.DGTable
  loc_11FE873:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_11FE8A2:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_11FE8A9:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_11FE8B3:       Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_11FE8C4:       global_164 = "RO"
  loc_11FE8DA:       Set var_88 = Me.DGTable
  loc_11FE8F9:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_11FE91C:       Set var_88 = Me.DGTable
  loc_11FE93B:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_11FE94C:       GoTo loc_11FE94F
  loc_11FE94F:       ' Referenced from:     11FE94C
  loc_11FE94F:     End If
  loc_11FE94F:   End If
  loc_11FE94F: End If
  loc_11FE958: CVarUnk
  loc_11FE95D: VerifyVarObj
  loc_11FE963: Set var_88 = Me.DGTable
  loc_11FE969: LateIdStAd
  loc_11FE977: Exit Sub
End Sub

Public Sub Proc_229_89_EFA78C(arg_C, arg_10, arg_14) 'EFA78C
  'Data Table: 542AD8
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  loc_EFA6D5: var_88 = vbNullString
  loc_EFA6EC: arg_C = CStr(Trim(arg_C))
  loc_EFA6F8: var_8A = CInt(Len(arg_C))
  loc_EFA709: If (arg_10 = "D") Then
  loc_EFA73E:   var_E0 = (Chr(&HE) + Chr(&HF))
  loc_EFA74B:   var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_EFA765:   var_130 = (var_E0 + Space(CLng((var_F0 / 2))))
  loc_EFA76F:   var_150 = (var_130 + CVar(arg_C))
  loc_EFA774:   var_88 = CStr(var_150)
  loc_EFA786: End If
  loc_EFA786: Proc_229_89_EFA78C = var_8A
End Sub

Public Sub Proc_229_90_11FF334(arg_C, arg_10, arg_14) '11FF334
  'Data Table: 542AD8
  Dim var_E0 As String
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_264 As Variant
  Dim var_DC As Variant
  Dim var_194 As Variant
  Dim var_244 As Variant
  Dim var_184 As Variant
  Dim arg_10 As Integer
  loc_11FEED1: var_90 = vbNullString
  loc_11FEED7: var_94 = vbNullString
  loc_11FEEDD: var_98 = vbNullString
  loc_11FEEE3: var_9C = vbNullString
  loc_11FEEEE: If (MemVar_1F923C0 = "Y") Then
  loc_11FEEF8:   var_E0 = vbNullString & "DATE "
  loc_11FEF29:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_11FEF3C: End If
  loc_11FEF44: If (MemVar_1F923C4 = "Y") Then
  loc_11FEFA8:   var_164 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, "dd/MM/yy")))), 0))
  loc_11FEFCF:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_11FEFD7:   var_1D4 = (var_164 - Len(var_1B4))
  loc_11FEFE8:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_11FEFF1:   var_224 = (var_204 + " PAGE NO ")
  loc_11FF013:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_11FF018:   var_8C = CStr(var_264)
  loc_11FF045: End If
  loc_11FF053: If (MemVar_1F923C8 = "K") Then
  loc_11FF060:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_11FF079:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_11FF08D:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_11FF0A1:     var_164 = (0 + Chr(&H1B))
  loc_11FF0B5:     var_194 = (var_164 + Chr(&H45))
  loc_11FF0BF:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_11FF0D3:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_11FF0E7:     var_204 = (var_1D4 + Chr(&H46))
  loc_11FF0FB:     var_244 = (var_204 + Chr(&HE))
  loc_11FF100:     var_90 = CStr(Str(arg_C))
  loc_11FF127:   Else
  loc_11FF13D:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_11FF151:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_11FF165:     var_164 = (0 + Chr(&HF))
  loc_11FF16F:     var_184 = (var_164 + CVar(MemVar_1F92130))
  loc_11FF183:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_11FF188:     var_90 = CStr(var_1B4)
  loc_11FF1A0:   End If
  loc_11FF1AA:   If (Len(MemVar_1F92134) > 0) Then
  loc_11FF1D6:     Call Proc_229_89_EFA78C(MemVar_1F92134, "D", CInt(Val(CStr(arg_14))))
  loc_11FF1DF:     var_94 = var_270 & var_270
  loc_11FF1EB:   End If
  loc_11FF1F5:   If (Len(MemVar_1F92138) > 0) Then
  loc_11FF221:     Call Proc_229_89_EFA78C(MemVar_1F92138, "D", CInt(Val(CStr(arg_14))))
  loc_11FF22A:     var_98 = var_270 & var_270
  loc_11FF236:   End If
  loc_11FF240:   If (Len(MemVar_1F9213C) > 0) Then
  loc_11FF26C:     Call Proc_229_89_EFA78C(MemVar_1F9213C, "D", CInt(Val(CStr(arg_14))))
  loc_11FF275:     var_9C = var_270 & var_270
  loc_11FF281:   End If
  loc_11FF281: End If
  loc_11FF28B: If (Len(var_8C) > 0) Then
  loc_11FF293:   Print 1, var_8C
  loc_11FF29F:   arg_10 = (arg_10 + 1)
  loc_11FF2A2: End If
  loc_11FF2AC: If (Len(var_90) > 0) Then
  loc_11FF2B4:   Print 1, var_90
  loc_11FF2C0:   arg_10 = (arg_10 + 1)
  loc_11FF2C3: End If
  loc_11FF2CD: If (Len(var_94) > 0) Then
  loc_11FF2D5:   Print 1, var_94
  loc_11FF2E1:   arg_10 = (arg_10 + 1)
  loc_11FF2E4: End If
  loc_11FF2EE: If (Len(var_98) > 0) Then
  loc_11FF2F6:   Print 1, var_98
  loc_11FF302:   arg_10 = (arg_10 + 1)
  loc_11FF305: End If
  loc_11FF30F: If (Len(var_9C) > 0) Then
  loc_11FF317:   Print 1, var_9C
  loc_11FF323:   arg_10 = (arg_10 + 1)
  loc_11FF326: End If
  loc_11FF32C: Proc_229_90_11FF334 = arg_10
End Sub

Public Sub Proc_229_91_F202F8(arg_C, arg_10, arg_14) 'F202F8
  'Data Table: 542AD8
  Dim unk_542AEE As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F2023D: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F2026F: unk_542AEE.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F2027A: Set var_90 = var_15C
  loc_F202AC: If (var_90.RecordCount > 0) Then
  loc_F202DA:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F202EA: Else
  loc_F202ED:   var_8C = CDbl(0)
  loc_F202F0: End If
  loc_F202F0: Proc_229_91_F202F8 = var_8C
End Sub

Public Sub Proc_229_92_125F304
  'Data Table: 542AD8
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_94 As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_150 As Long
  Dim var_174 As Variant
  Dim var_344 As Double
  Dim var_200 As TextBox
  Dim var_A4 As String
  Dim var_234 As Variant
  Dim var_2A4 As Variant
  Dim unk_542AEE As Connection15
  Dim var_88 As Recordset15
  loc_125EE26: Set var_9C = Me.Txt
  loc_125EE2C: Call 0.Method_Proc_229_92_125F3040 (CInt(1), var_A0)
  loc_125EE5A: var_94 = CInt(CLng(Me.FGrid.Row))
  loc_125EE80: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_125EE96:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125EE9B:   var_E4 = 1
  loc_125EEAE:   var_104 = Me.FGrid.TextMatrix)
  loc_125EED2:   var_150 = &HA
  loc_125EEE5:   var_174 = Me.FGrid.TextMatrix)
  loc_125EF2E:   var_344 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_125EF3D:   Set var_1FC = Me.Txt
  loc_125EF43:   Call 0.Method_Proc_229_92_125F3040 (1, var_200, var_204, var_344, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_174)
  loc_125EF4B:   var_150 = var_200.Text
  loc_125EF59:   Proc_6_7_F25D88(var_224, CVar(var_204), CVar(CLng(Me.FGrid.Row)), var_104)
  loc_125EF9D:   var_A4 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, FD.FreeItem, IM.NAME as FreeItemName, IM.Unit, FD.FreeQty, I1.code as MainCode,I1.Name, SD.Qty FROM SchemeItemDetail SD JOIN FreeItemDetail FD ON SD.Code = FD.Code And SD.RestCode = FD.RestCode JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode Join Depart on SD.RestCode=Depart.Code Join Itemmast I1 on SD.Itemcode=I1.code And SD.RestCode=I1.RestCode " & " WHERE SD.restCode='"
  loc_125EFD4:   var_234 = CVar(var_A4 & CStr(var_104) & "' AND SD.ItemCode ='" & CStr(var_174) & "' AND SD.Qty <=" & CStr(var_344) & " AND ") 'String
  loc_125EFF6:   var_2A4 = var_234 & var_224 & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F92078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_125F014:   unk_542AEE.Execute CStr(var_2A4 & Trim(Str(Weekday(Me.FGrid.Text, 1))) & "%' Order By SD.Qty Desc"), var_338, -1
  loc_125F01F:   Set var_88 = var_33C
  loc_125F08D:   If (var_88.RecordCount > 0) Then
  loc_125F0F3:     var_90 = CStr(var_88.Fields.Item("Maincode").Value)
  loc_125F126:     For var_34C = var_94 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_34C 'Integer
  loc_125F13F:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_125F17A:       If (CLng(Me.FGrid.CellBackColor) = Me.lblclr.BackColor) Then
  loc_125F181:         var_C4 = CVar(CLng(var_92)) 'Long
  loc_125F186:         var_E4 = &HA
  loc_125F1B5:         If (CStr(Me.FGrid.TextMatrix)) = CStr(var_88.Fields.Item("FreeItem").Value)) Then
  loc_125F1BC:           var_C4 = CVar(CLng(var_94)) 'Long
  loc_125F1C4:           var_E4 = CVar(CLng(9)) 'Long
  loc_125F1EF:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_125F1F6:             var_C4 = CVar(CLng(var_92)) 'Long
  loc_125F1FE:             var_E4 = CVar(CLng(9)) 'Long
  loc_125F203:             var_130 = "Yes"
  loc_125F20D:             Set var_9C = Me.FGrid
  loc_125F213:             LateIdCallSt
  loc_125F221:           Else
  loc_125F225:             var_C4 = CVar(CLng(var_94)) 'Long
  loc_125F22D:             var_E4 = CVar(CLng(9)) 'Long
  loc_125F258:             If (CStr(Me.FGrid.TextMatrix)) = "No") Then
  loc_125F25F:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_125F267:               var_E4 = CVar(CLng(9)) 'Long
  loc_125F26C:               var_130 = "No"
  loc_125F276:               Set var_9C = Me.FGrid
  loc_125F27C:               LateIdCallSt
  loc_125F28A:             Else
  loc_125F28E:               var_C4 = CVar(CLng(var_94)) 'Long
  loc_125F296:               var_E4 = CVar(CLng(9)) 'Long
  loc_125F2C1:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_125F2C8:                 var_C4 = CVar(CLng(var_92)) 'Long
  loc_125F2D0:                 var_E4 = CVar(CLng(9)) 'Long
  loc_125F2D5:                 var_130 = vbNullString
  loc_125F2DF:                 Set var_9C = Me.FGrid
  loc_125F2E5:                 LateIdCallSt
  loc_125F2F0:               End If
  loc_125F2F0:             End If
  loc_125F2F0:           End If
  loc_125F2F0:           Exit For
  loc_125F2F3:         End If
  loc_125F2F3:       End If
  loc_125F2F6:     Next var_34C 'Integer
  loc_125F2FB:     ' Referenced from: 125F2F0
  loc_125F2FB:   End If
  loc_125F2FB: End If
  loc_125F300: Set var_88 = Nothing
  loc_125F303: Exit Sub
End Sub
