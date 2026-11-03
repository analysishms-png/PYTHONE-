VERSION 5.00
Begin VB.Form RsStatusScreen
  Caption = "POS Status Screen"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin TreeView TreeView1
    Left = 30
    Top = 600
    Width = 2745
    Height = 7575
    TabIndex = 35
  End
  Begin DTPicker DTP
    Left = 30
    Top = 90
    Width = 2265
    Height = 315
    TabIndex = 13
  End
  Begin SSTab SSTabStatusScreen
    Left = 2805
    Top = 600
    Width = 12570
    Height = 8205
    TabIndex = 11
    Begin Frame FrOrders
      Left = -74850
      Top = 6315
      Width = 12285
      Height = 1695
      TabIndex = 36
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin CheckBox ChkOrders
        Caption = "Total No. Of (KOT/Order)'s"
        Index = 0
        Left = 3480
        Top = 195
        Width = 3465
        Height = 195
        TabIndex = 46
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Cancelled (KOT/Order)'s"
        Index = 4
        Left = 3480
        Top = 1380
        Width = 3465
        Height = 195
        TabIndex = 45
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Running (KOT/Order)'s"
        Index = 3
        Left = 3480
        Top = 1083
        Width = 3465
        Height = 195
        TabIndex = 44
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Billed (KOT/Order)'s"
        Index = 2
        Left = 3480
        Top = 787
        Width = 3465
        Height = 195
        TabIndex = 43
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkOrders
        Caption = "Total No. Of Deleted (KOT/Order)'s"
        Index = 1
        Left = 3480
        Top = 491
        Width = 3465
        Height = 195
        TabIndex = 42
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtOrders
        Index = 4
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 1350
        Width = 1515
        Height = 285
        TabIndex = 41
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtOrders
        Index = 3
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 1050
        Width = 1515
        Height = 285
        TabIndex = 40
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtOrders
        Index = 2
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 750
        Width = 1515
        Height = 285
        TabIndex = 39
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtOrders
        Index = 1
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 38
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtOrders
        Index = 0
        BackColor = &HC0C0FF&
        Left = 7065
        Top = 150
        Width = 1515
        Height = 285
        TabIndex = 37
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin Frame Frame1
      Caption = "Over All Sale"
      Left = 150
      Top = 6435
      Width = 12285
      Height = 1695
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin TextBox TxtPOSSale
        Index = 7
        BackColor = &HC0C0FF&
        Left = 4800
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 50
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 5
        BackColor = &HC0C0FF&
        Left = 330
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 24
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 6
        BackColor = &HC0C0FF&
        Left = 2565
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 23
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 8
        BackColor = &HC0C0FF&
        Left = 7035
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 22
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 9
        BackColor = &HC0C0FF&
        Left = 9270
        Top = 1230
        Width = 1515
        Height = 285
        TabIndex = 21
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 0
        BackColor = &HC0C0FF&
        Left = 330
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 20
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 1
        BackColor = &HC0C0FF&
        Left = 2565
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 19
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 2
        BackColor = &HC0C0FF&
        Left = 4800
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 18
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 3
        BackColor = &HC0C0FF&
        Left = 7035
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 17
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox TxtPOSSale
        Index = 4
        BackColor = &HC0C0FF&
        Left = 9270
        Top = 450
        Width = 1515
        Height = 285
        TabIndex = 16
        Alignment = 1 'Right Justify
        Locked = -1  'True
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Sub Total"
        Index = 9
        BackColor = &HFFFFFF&
        Left = 4800
        Top = 1005
        Width = 795
        Height = 195
        TabIndex = 51
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Sub Total (With Service Charge)"
        Index = 8
        BackColor = &HFFFFFF&
        Left = 9270
        Top = 1005
        Width = 2700
        Height = 195
        TabIndex = 32
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Sub Total (With Tax)"
        Index = 7
        BackColor = &HFFFFFF&
        Left = 7035
        Top = 1005
        Width = 1740
        Height = 195
        TabIndex = 31
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Service Tax"
        Index = 6
        BackColor = &HFFFFFF&
        Left = 2565
        Top = 1005
        Width = 1440
        Height = 195
        TabIndex = 30
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Service Charge"
        Index = 5
        BackColor = &HFFFFFF&
        Left = 330
        Top = 1005
        Width = 1275
        Height = 195
        TabIndex = 29
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Grand Total (With Running KOT's)"
        Index = 4
        BackColor = &HFFFFFF&
        Left = 9270
        Top = 225
        Width = 2835
        Height = 195
        TabIndex = 28
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Amt. Of Running KOT's"
        Index = 3
        BackColor = &HFFFFFF&
        Left = 7035
        Top = 225
        Width = 1875
        Height = 195
        TabIndex = 27
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Grand Total"
        Index = 2
        BackColor = &HFFFFFF&
        Left = 4800
        Top = 225
        Width = 990
        Height = 195
        TabIndex = 26
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Discount"
        Index = 1
        BackColor = &HFFFFFF&
        Left = 2565
        Top = 225
        Width = 735
        Height = 195
        TabIndex = 25
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label LblPOSSale
        Caption = "Tax"
        Index = 0
        BackColor = &HFFFFFF&
        Left = 330
        Top = 225
        Width = 315
        Height = 195
        TabIndex = 15
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin DataGrid DGOrders
      Left = -74895
      Top = 330
      Width = 12360
      Height = 5850
      TabStop = 0   'False
      TabIndex = 34
    End
    Begin DataGrid DGPenBills
      Left = -74880
      Top = 345
      Width = 12360
      Height = 7650
      TabStop = 0   'False
      TabIndex = 47
    End
    Begin DataGrid DGPOSSale
      Left = 105
      Top = 330
      Width = 12345
      Height = 5970
      TabStop = 0   'False
      TabIndex = 33
    End
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 420
    Top = 6720
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSave
    Caption = "Save"
    Left = 15120
    Top = 0
    Width = 1920
    Height = 630
    Visible = 0   'False
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
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
    Left = 12030
    Top = 195
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 0
    BackColor = &HFFFFFF&
    Left = 12030
    Top = -75
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 3
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 375
    Top = 6120
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 3015
    Top = 5460
    Width = 1845
    Height = 1755
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1860
      Height = 1725
      TabStop = 0   'False
      TabIndex = 1
    End
  End
  Begin DataGrid DGVType
    Left = 6270
    Top = 5235
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 14670
    Top = 7845
    Width = 5085
    Height = 2655
    Visible = 0   'False
    TabIndex = 12
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 4680
    Height = 450
    Visible = 0   'False
    TabIndex = 48
  End
  Begin BtnEnh CmdExit
    Left = 600
    Top = 8220
    Width = 1560
    Height = 555
    TabIndex = 49
  End
  Begin Label LblName
    Caption = "Entry Date"
    Index = 1
    ForeColor = &H0&
    Left = 10845
    Top = 210
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 8
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
  Begin Label LblFacility
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 2325
    Top = -30
    Width = 7605
    Height = 510
    TabIndex = 7
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Month"
    Index = 0
    ForeColor = &H0&
    Left = 10845
    Top = -75
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 6
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
End

Attribute VB_Name = "RsStatusScreen"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'FF0F30
  'Data Table: 5016D4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FF0D50: Call Proc_227_67_DFD38C()
  loc_FF0D68: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FF0D83: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF0D8C: Set var_BC = Me.FGrid
  loc_FF0DC2: Set var_104 = Me.TxtGrid
  loc_FF0DC8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FF0DD0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_FF0E01: var_110 = CLng(Me.FGrid.Col)
  loc_FF0E11: If (var_110 = CLng(3)) Then
  loc_FF0E21:   Set var_A8 = Me.TxtGrid
  loc_FF0E27:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, vbNullString)
  loc_FF0E2F:   var_BC.Text = var_110
  loc_FF0E4A:   Set var_A8 = Me.TxtGrid
  loc_FF0E50:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0E58:   var_BC.MaxLength = &HA
  loc_FF0E67: Else
  loc_FF0E6E:   If (var_110 = CLng(2)) Then
  loc_FF0E7E:     Set var_A8 = Me.TxtGrid
  loc_FF0E84:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0E8C:     var_BC.Text = vbNullString
  loc_FF0EA7:     Set var_A8 = Me.TxtGrid
  loc_FF0EAD:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0EB5:     var_BC.MaxLength = &H32
  loc_FF0EC4:   Else
  loc_FF0ECB:     If (var_110 = CLng(4)) Then
  loc_FF0EDD:       Set var_A8 = Me.TxtGrid
  loc_FF0EE3:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0EEB:       var_BC.MaxLength = 4
  loc_FF0EFA:     Else
  loc_FF0F01:       If (var_110 = CLng(5)) Then
  loc_FF0F13:         Set var_A8 = Me.TxtGrid
  loc_FF0F19:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF0F21:         var_BC.MaxLength = &HB
  loc_FF0F2D:       End If
  loc_FF0F2D:     End If
  loc_FF0F2D:   End If
  loc_FF0F2D: End If
  loc_FF0F2D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1102178
  'Data Table: 5016D4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_8E As Integer
  loc_1101E38: On Error Goto loc_110216F
  loc_1101E45: If (CLng(Shift) = &H1B) Then
  loc_1101E55:   Set var_88 = Me.TxtGrid
  loc_1101E5B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1101E75:   Set var_94 = Me.TxtGrid
  loc_1101E7B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1101E83:   var_98.Text = var_8C.Tag
  loc_1101E9F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1101EA4:   Call Proc_227_67_DFD38C(arg_14)
  loc_1101EAD:   Set var_88 = Me.FGrid
  loc_1101ECA:   Set var_88 = Me.TxtGrid
  loc_1101ED0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1101ED8:   var_8C.Visible = False
  loc_1101EE4:   Exit Sub
  loc_1101EE5: End If
  loc_1101EF8: var_AC = CLng(Me.FGrid.Col)
  loc_1101F08: If (var_AC = CLng(3)) Then
  loc_1101F15:   If (CLng(Shift) = &HD) Then
  loc_1101F1E:     Call Proc_227_64_11A4360(KeyCode, var_AE)
  loc_1101F29:     If (var_AE = &HFF) Then
  loc_1101F6F:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1101F7F:     End If
  loc_1101F7F:   End If
  loc_1101F82: Else
  loc_1101F89:   If (var_AC = CLng(2)) Then
  loc_1101F96:     If (CLng(Shift) = &HD) Then
  loc_1101F9F:       Call Proc_227_64_11A4360(KeyCode, var_AE, 0, 4)
  loc_1101FAA:       If (var_AE = &HFF) Then
  loc_1101FF0:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1102000:       End If
  loc_1102000:     End If
  loc_1102003:   Else
  loc_110200A:     If (var_AC = CLng(4)) Then
  loc_110204D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1102056:         Call Proc_227_64_11A4360(KeyCode, var_AE, 0, 3)
  loc_1102061:         If (var_AE = &HFF) Then
  loc_11020A7:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_11020B7:         End If
  loc_11020B7:       End If
  loc_11020BA:     Else
  loc_11020C1:       If (var_AC = CLng(5)) Then
  loc_1102104:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_110210D:           Call Proc_227_64_11A4360(KeyCode, var_AE, 5, 0)
  loc_1102118:           If (var_AE = &HFF) Then
  loc_110215E:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_110216E:           End If
  loc_110216E:         End If
  loc_110216E:       End If
  loc_110216E:     End If
  loc_110216E:   End If
  loc_110216E: End If
  loc_110216E: Exit Sub
  loc_110216F: ' Referenced from: 1101E38
  loc_110216F: Proc_6_60_E62BC4(3, 0, 0)
  loc_1102174: Exit Sub
  loc_1102175: var_8E = 0
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1111AB4
  'Data Table: 5016D4
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim arg_10 As Integer
  loc_1111784: On Error Goto loc_1111AAE
  loc_111178A: Proc_6_58_E054C0(arg_10)
  loc_1111792: var_86 = KeyAscii
  loc_111179B: If (var_86 = 0) Then
  loc_11117B1:   var_A0 = CLng(Me.FGrid.Col)
  loc_11117C1:   If (var_A0 = CLng(3)) Then
  loc_11117C8:     Set var_8C = Me.TopCtrl1
  loc_11117CE:     Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005(var_A0)
  loc_11117E7:     If (CStr(var_86) = "Add") Then
  loc_11117F4:       Set var_8C = Me.TxtGrid
  loc_11117FA:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_1111864:       Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(1).Name, "14737632", "16777215")
  loc_1111884:     Else
  loc_1111888:       Set var_8C = Me.TopCtrl1
  loc_111188E:       Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005(var_A8)
  loc_11118A7:       If (CStr() = "Edit") Then
  loc_11118AA:       End If
  loc_11118AA:     End If
  loc_11118B3:     Set var_8C = Me.TxtGrid
  loc_11118B9:     Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_11118E6:     If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_11118EB:       arg_10 = 0
  loc_11118EE:     End If
  loc_11118F1:   Else
  loc_11118F8:     If (var_A0 = CLng(2)) Then
  loc_11118FF:       Set var_8C = Me.TopCtrl1
  loc_1111905:       Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005(arg_10)
  loc_111191E:       If (CStr(var_A8) = "Add") Then
  loc_111192B:         Set var_8C = Me.TxtGrid
  loc_1111931:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_111199B:         Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(2).Name, "14737632", "16777215")
  loc_11119BB:       Else
  loc_11119BF:         Set var_8C = Me.TopCtrl1
  loc_11119C5:         Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005(var_A8)
  loc_11119DE:         If (CStr() = "Edit") Then
  loc_11119E1:         End If
  loc_11119E1:       End If
  loc_11119EA:       Set var_8C = Me.TxtGrid
  loc_11119F0:       Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_1111A1D:       If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_1111A22:         arg_10 = 0
  loc_1111A25:       End If
  loc_1111A28:     Else
  loc_1111A2F:       If (var_A0 = CLng(4)) Then
  loc_1111A3C:         Set var_8C = Me.TxtGrid
  loc_1111A42:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_1111A5D:         Proc_6_42_129A86C(var_A8, arg_10, 4)
  loc_1111A6C:       Else
  loc_1111A73:         If (var_A0 = CLng(5)) Then
  loc_1111A80:           Set var_8C = Me.TxtGrid
  loc_1111A86:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1111AA1:           Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_1111AAD:         End If
  loc_1111AAD:       End If
  loc_1111AAD:     End If
  loc_1111AAD:   End If
  loc_1111AAD: End If
  loc_1111AAD: Exit Sub
  loc_1111AAE: ' Referenced from: 1111784
  loc_1111AAE: Proc_6_60_E62BC4(2, arg_10)
  loc_1111AB3: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E2F834
  'Data Table: 5016D4
  Dim var_9C As Long
  loc_E2F80C: On Error Goto loc_E2F82C
  loc_E2F822: var_9C = CLng(Me.FGrid.Col)
  loc_E2F82B: Exit Sub
  loc_E2F82C: ' Referenced from: E2F80C
  loc_E2F82C: Proc_6_60_E62BC4(var_9C)
  loc_E2F831: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E1FFF8
  'Data Table: 5016D4
  Dim arg_10 As Integer
  loc_E1FFE0: If (Cancel = 0) Then
  loc_E1FFE9:   Call Proc_227_64_11A4360(Cancel, var_88)
  loc_E1FFF2:   arg_10 = Not(var_88)
  loc_E1FFF5: End If
  loc_E1FFF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7F51C
  'Data Table: 5016D4
  Dim var_94 As TextBox
  loc_E7F4B8: On Error Goto loc_E7F514
  loc_E7F4DE: Call Proc_227_66_E9BC98(Proc_5_1_100CB50("ADD", Me))
  loc_E7F4E9: Call Proc_227_65_F15AE0(global_100)
  loc_E7F4F9: Set var_8C = Me.Txt
  loc_E7F4FF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7F507: var_94.SetFocus
  loc_E7F513: Exit Sub
  loc_E7F514: ' Referenced from: E7F4B8
  loc_E7F514: Proc_6_60_E62BC4(var_94)
  loc_E7F519: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E98348
  'Data Table: 5016D4
  loc_E982D4: On Error Goto loc_E98340
  loc_E9830E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E98334:   Call Proc_227_66_E9BC98(Proc_5_1_100CB50("INI", Me))
  loc_E9833F: End If
  loc_E9833F: Exit Sub
  loc_E98340: ' Referenced from: E982D4
  loc_E98340: Proc_6_60_E62BC4(global_100)
  loc_E98345: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16FBC
  'Data Table: 5016D4
  loc_E16FB1: Me.Global.Unload Me
  loc_E16FB9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC7D6C
  'Data Table: 5016D4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC7CCC: On Error Goto loc_EC7D64
  loc_EC7CE6: If (Me.RecordCount <= 0) Then
  loc_EC7CEF:   var_B8 = "Information"
  loc_EC7D0A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC7D1A:   Exit Sub
  loc_EC7D1B: End If
  loc_EC7D22: var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC7D29: MemVar_1F920E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EC7D36: MemVar_1F92120 = Me
  loc_EC7D43: Proc_6_126_F1BCC0("4500,1500")
  loc_EC7D5E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC7D63: Exit Sub
  loc_EC7D64: ' Referenced from: EC7CCC
  loc_EC7D64: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC7D69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E279A8
  'Data Table: 5016D4
  loc_E2799C: Proc_5_0_110649C(&HFF, Me)
  loc_E279A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2794C
  'Data Table: 5016D4
  loc_E27940: Proc_5_0_110649C(&HFF, Me)
  loc_E27948: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E278F0
  'Data Table: 5016D4
  loc_E278E4: Proc_5_0_110649C(&HFF, Me)
  loc_E278EC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E27330
  'Data Table: 5016D4
  loc_E27324: Proc_5_0_110649C(&HFF, Me)
  loc_E2732C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21F78
  'Data Table: 5016D4
  Dim Me As Recordset15
  loc_E21F5F: Me.Requery -1
  loc_E21F6F: Me.Requery -1
  loc_E21F74: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12CFF0C
  'Data Table: 5016D4
  Dim unk_5016DA As Connection15
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_130 As Variant
  Dim var_C4 As Variant
  Dim var_180 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_98 As String
  Dim var_1C0 As Variant
  Dim var_10C As Label
  Dim var_2A4 As Variant
  Dim var_5B4 As Double
  Dim var_5BC As Double
  Dim var_274 As Variant
  Dim var_48C As Variant
  loc_12CF950: var_86 = CByte(0) 'Byte
  loc_12CF95F: Set var_8C = Me.Txt
  loc_12CF965: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12CF98E: If (Proc_6_27_EA565C(var_90, "For Month") = 0) Then
  loc_12CF998:   Call Txt_GotFocus()
  loc_12CF99D:   Exit Sub
  loc_12CF99E: End If
  loc_12CF9A9: Set var_8C = Me.Txt
  loc_12CF9AF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_12CF9C0: Set var_94 = var_90
  loc_12CF9D8: If (Proc_6_27_EA565C(var_94, "Bill Date") = 0) Then
  loc_12CF9E2:   Call Txt_GotFocus()
  loc_12CF9E7:   Exit Sub
  loc_12CF9E8: End If
  loc_12CF9EB: Call Proc_227_62_DFF7CC(var_9A, CInt(1))
  loc_12CF9F6: If (var_9A = &HFF) Then
  loc_12CF9F9:   Exit Sub
  loc_12CF9FA: End If
  loc_12CFA03: unk_5016DA.BeginTrans var_A0
  loc_12CFA0C: var_86 = CByte(1) 'Byte
  loc_12CFA51: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, CVar("Delete From MemFacilityBilling Where FcCode='" & Me.LblFacility.Tag & "' And EntryDate="), var_108)
  loc_12CFA60: Proc_6_7_F25D88(var_C4, CVar(var_94), -1)
  loc_12CFA76: unk_5016DA.Execute CStr(var_10C & var_C4), CInt(0), Me.Txt
  loc_12CFABF: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_12CFAC9:   var_F8 = CVar(CLng(var_88)) 'Long
  loc_12CFAD1:   var_130 = CVar(CLng(1)) 'Long
  loc_12CFAF1:   var_D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_12CFB6A:   If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))) <> CDbl(0))) Then
  loc_12CFB79:     var_130 = CVar(CLng(1)) 'Long
  loc_12CFB88:     var_B4 = Me.FGrid.TextMatrix)
  loc_12CFB9F:     Set var_90 = Me.Txt
  loc_12CFBA5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_130, CVar(CLng(var_88)))
  loc_12CFBAD:     var_C4 = CVar(var_94) 'Address
  loc_12CFBB4:     Proc_6_7_F25D88(var_D4, var_C4, CVar(CLng(var_88)), (var_D4 <> vbNullString))
  loc_12CFBD6:     Set var_1E8 = Me.Txt
  loc_12CFBDC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_130)
  loc_12CFBF4:     var_180 = CVar(CLng(var_88)) 'Long
  loc_12CFBFC:     var_1C0 = CVar(CLng(4)) 'Long
  loc_12CFC25:     var_2A4 = CVar(CLng(var_88)) 'Long
  loc_12CFC4F:     var_5B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12CFC80:     var_5BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12CFC87:     Set var_3C8 = Me.TopCtrl1
  loc_12CFC8D:     Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005(var_5BC)
  loc_12CFCD2:     Proc_6_7_F25D88(var_4CC, Date, CVar(CLng(6)), CVar(CLng(var_88)), var_5B4, CVar(CLng(5)))
  loc_12CFCEB:     var_98 = "Insert Into MemFacilityBilling (MemCode,EntryDate,FcCode,MthYear,Occurence,Rate,Amount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_12CFCFD:     var_E4 = CVar(var_98 & CStr(var_B4) & "',") 'String
  loc_12CFD3A:     var_274 = var_E4 & var_D4 & ",'" & CVar(Me.LblFacility.Tag) & "','" & Trim(CVar(var_1EC)) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_12CFD85:     var_48C = var_274 & "," & CVar(var_5B4) & "," & CVar(var_5BC) & ",'" & IIf((CStr(var_3D8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) 
  loc_12CFDD2:     unk_5016DA.Execute CStr(var_48C & "'," & var_4CC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_5A0, -1
  loc_12CFE52:   End If
  loc_12CFE55: Next var_110 'Integer
  loc_12CFE60: unk_5016DA.CommitTrans
  loc_12CFE7A: var_98 = Me.LblFacility.Caption
  loc_12CFE9E: MsgBox(CVar("Details Of " & var_98 & " Facility Saved."), &H40, var_C4, var_D4, var_E4)
  loc_12CFEB8: Exit Sub
  loc_12CFEC2: If (CInt(CByte(0)) = 1) Then
  loc_12CFECB:   unk_5016DA.RollbackTrans
  loc_12CFED0: End If
  loc_12CFED8: Set var_8C = Err()
  loc_12CFEDE: Call 0.Method_arg_2C (var_98)
  loc_12CFEF7: MsgBox(CVar(var_98), &H10, var_C4, var_D4, var_E4)
  loc_12CFF0A: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'DFB71C
  'Data Table: 5016D4
  loc_DFB718: Exit Sub
End Sub

Private Sub SSTabStatusScreen_UnknownEvent_10 'E7EE30
  'Data Table: 5016D4
  loc_E7EE11: Me.SSTabStatusScreen.Tag = CVar(CStr(Me.SSTabStatusScreen.TabCaption)))
  loc_E7EE28: Call Proc_227_59_1647A9C(CVar(CInt(Me.SSTabStatusScreen.Tab)))
  loc_E7EE2D: Exit Sub
End Sub

Private Sub ChkOrders_Click() 'DFDFF4
  'Data Table: 5016D4
  loc_DFDFEC: Call Proc_227_59_1647A9C()
  loc_DFDFF1: Exit Sub
  loc_DFDFF2: CExtInstUnk
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16720
  'Data Table: 5016D4
  loc_E16715: Me.Global.Unload Me
  loc_E1671D: Exit Sub
End Sub

Private Sub Form_Load() '11A3AB8
  'Data Table: 5016D4
  Dim var_9C As Variant
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_D4 As Variant
  loc_11A3698: On Error Goto loc_11A3AB1
  loc_11A36B1: Proc_6_23_DFBA28(Me, 0)
  loc_11A36C0: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11A36C9: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_11A36D2: Set var_88 = Me.DGPOSSale
  loc_11A36E4: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_11A36ED: Set var_88 = Me.DGPOSSale
  loc_11A36FF: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_11A3708: Set var_88 = Me.DGOrders
  loc_11A371A: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_11A3723: Set var_88 = Me.DGPenBills
  loc_11A3744: Me.SSTabStatusScreen.BackColor = CVar(CLng(MemVar_1F921B0))
  loc_11A375F: Me.DTP.CalendarBackColor = CVar(CLng(MemVar_1F921B0))
  loc_11A3767: var_9C = "AEDP"
  loc_11A3771: Set var_88 = Me.TopCtrl1
  loc_11A3777: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_8001000B(var_9C)
  loc_11A3785: Call 0.Method_arg_50 (var_B0, DGPenBills.DispID_FFFFFE0B, var_9C, DGOrders.DispID_FFFFFE0B, var_9C)
  loc_11A3795: Set var_88 = Me.TopCtrl1
  loc_11A379B: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030007(CVar(var_B0))
  loc_11A37B0: Set global_112 = New 
  loc_11A37C2: Me.TopCtrl1.CursorLocation = 3
  loc_11A37D1: Set global_116 = New 
  loc_11A37E3: Me.Recordset15.CursorLocation = 3
  loc_11A37F2: Set global_96 = New 
  loc_11A3804: Me.Recordset15.CursorLocation = 3
  loc_11A3813: Set global_104 = New 
  loc_11A3825: Me.Recordset15.CursorLocation = 3
  loc_11A3834: Set global_108 = New 
  loc_11A3846: Me.Recordset15.CursorLocation = 3
  loc_11A3870: var_C0 = CVar("Select Code,Name,RestType From Depart where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Resttype IN ('Outlet','Room Service') Order By RestType,Name") 'String
  loc_11A38A1: Me.Recordset15.CursorLocation = 3
  loc_11A38B8: var_9C = CVar(MemVar_1F92044) 'Address
  loc_11A38CB: var_C0 = CVar("Select Code AS SearchCode,Name,RestType,SITE_CODE,LOGSITE_CODE From Depart where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Resttype IN ('Outlet','Room Service') Order By RestType,Name") 'String
  loc_11A38D5: r_C0, CVar(MemVar_1F92044), 3 var_C0, var_9C, 3
  loc_11A38E0: Call Proc_227_58_E51750(1, -1, 1, -1, DGPOSSale.DispID_FFFFFE0B)
  loc_11A38E5: Call Proc_227_61_11BD1B4(var_9C, DGPOSSale.DispID_FFFFFE0B)
  loc_11A3908: Me.LblFacility.Left = CDbl(Me.SSTabStatusScreen.Left)
  loc_11A3935: Me.LblFacility.Width = CDbl(Me.SSTabStatusScreen.Width)
  loc_11A3951: Me.LblFacility.Caption = "POINT OF SALE"
  loc_11A3963: Me.LblFacility.Refresh
  loc_11A396B: Call Proc_227_60_1172150(var_9C)
  loc_11A3981: Me.DTP.MinDate = MemVar_1F920F4
  loc_11A399A: Me.DTP.MaxDate = MemVar_1F920FC
  loc_11A39B4: Me.DTP.Value = CDate(MemVar_1F920EC)
  loc_11A39C2: global_128 = "Point Of Sale"
  loc_11A39D6: Me.SSTabStatusScreen.Tab = 0
  loc_11A39E8: var_C0 = Me.SSTabStatusScreen.Tab
  loc_11A39F3: Call SSTabStatusScreen_UnknownEvent_10()
  loc_11A3A11: Me.FGrid.Top = CVar(CDbl(1340))
  loc_11A3A23: var_D4 = Me.FGrid.Width
  loc_11A3A48: var_C0 = Me.FGrid.Left
  loc_11A3A66: Me.CmdSave.Left = ((CDbl(var_C0) + CDbl(var_D4)) - Me.CmdSave.Width)
  loc_11A3AA0: Call Proc_227_66_E9BC98(Proc_5_1_100CB50("ADD", Me, New), var_D4)
  loc_11A3AAB: Call Proc_227_65_F15AE0(CInt(var_C0))
  loc_11A3AB0: Exit Sub
  loc_11A3AB1: ' Referenced from: 11A3698
  loc_11A3AB1: Proc_6_60_E62BC4(0)
  loc_11A3AB6: Exit Sub
  loc_11A3AB7:  = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7A478
  'Data Table: 5016D4
  loc_E7A41F: Set global_100 = Nothing
  loc_E7A431: Set global_112 = Nothing
  loc_E7A443: Set global_116 = Nothing
  loc_E7A455: Set global_108 = Nothing
  loc_E7A467: Set global_96 = Nothing
  loc_E7A473: MasterFormExit = 0
  loc_E7A476: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E5B0
  'Data Table: 5016D4
  loc_E4E580: On Error Goto loc_E4E5AA
  loc_E4E587: Set var_88 = Me.TopCtrl1
  loc_E4E58D: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030000()
  loc_E4E5A2: If (CLng(CInt()) = &H2D) Then
  loc_E4E5A5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4E5AA:   ' Referenced from: E4E580
  loc_E4E5AA: End If
  loc_E4E5AA: Proc_6_60_E62BC4()
  loc_E4E5AF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E255F4
  'Data Table: 5016D4
  loc_E255D9: If (MasterFormExit = &HFF) Then
  loc_E255E9:   Me.Global.Unload Me
  loc_E255F1: End If
  loc_E255F1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27CE4
  'Data Table: 5016D4
  loc_E27CBC: On Error Goto loc_E27CDC
  loc_E27CD3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27CDB: Exit Sub
  loc_E27CDC: ' Referenced from: E27CBC
  loc_E27CDC: Proc_6_60_E62BC4(Shift)
  loc_E27CE1: Exit Sub
  loc_E27CE2: 0 = 
End Sub

Private Sub CmdSave_Click() 'DFDCAC
  'Data Table: 5016D4
  loc_DFDCA4: Call TopCtrl1_UnknownEvent_16()
  loc_DFDCA9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4D774
  'Data Table: 5016D4
  loc_E4D752: Set var_88 = Me.Txt
  loc_E4D758: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4D766: Proc_6_74_E226B0(var_8C)
  loc_E4D772: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EDEBD4
  'Data Table: 5016D4
  Dim var_86 As Integer
  loc_EDEB2A: If (CLng(Shift) = &H1B) Then
  loc_EDEB2D:   Exit Sub
  loc_EDEB2E: End If
  loc_EDEB31: var_86 = KeyCode
  loc_EDEB8A: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGPOSSale.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_EDEBA2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EDEBAB:     Proc_6_75_E527CC(Shift, arg_14)
  loc_EDEBB0:   End If
  loc_EDEBC5:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EDEBCE:     Proc_6_76_E52838(Shift, arg_14)
  loc_EDEBD3:   End If
  loc_EDEBD3: End If
  loc_EDEBD3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07B40
  'Data Table: 5016D4
  Dim var_86 As Integer
  loc_E07B33: Proc_6_58_E054C0(arg_10)
  loc_E07B3B: var_86 = KeyAscii
  loc_E07B3E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEF7C
  'Data Table: 5016D4
  Dim var_86 As Integer
  loc_DFEF77: var_86 = KeyCode
  loc_DFEF7A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D08C
  'Data Table: 5016D4
  loc_E4D06A: Set var_88 = Me.Txt
  loc_E4D070: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D07E: Proc_6_73_E22704(var_8C)
  loc_E4D08A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103CFB0
  'Data Table: 5016D4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_103CD6B: var_86 = Cancel
  loc_103CD76: If (var_86 = CInt(0)) Then
  loc_103CD84:   Set var_8C = Me.Txt
  loc_103CD8A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103CDB3:   If (Proc_6_27_EA565C(var_90, "For Month") = 0) Then
  loc_103CDC1:     Set var_8C = Me.Txt
  loc_103CDC7:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103CDCF:     var_90.SetFocus
  loc_103CDDD:     arg_10 = &HFF
  loc_103CDE0:     Exit Sub
  loc_103CDE1:   End If
  loc_103CDEB:   Set var_8C = Me.Txt
  loc_103CDF1:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103CE11:   Set var_9C = Me.Txt
  loc_103CE17:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103CE1F:   var_A0.Text = Proc_6_120_133A1D8(var_90, arg_10)
  loc_103CE32:   Call Proc_227_59_1647A9C(var_86)
  loc_103CE3A: Else
  loc_103CE42:   If (var_86 = CInt(1)) Then
  loc_103CE50:     Set var_8C = Me.Txt
  loc_103CE56:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_103CE7F:     If (Proc_6_27_EA565C(var_90, "Bill Date") = 0) Then
  loc_103CE8D:       Set var_8C = Me.Txt
  loc_103CE93:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_103CE9B:       var_90.SetFocus
  loc_103CEA9:       arg_10 = &HFF
  loc_103CEAC:       Exit Sub
  loc_103CEAD:     End If
  loc_103CEB7:     Set var_8C = Me.Txt
  loc_103CEBD:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103CEDD:     Set var_9C = Me.Txt
  loc_103CEE3:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103CEEB:     var_A0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_103CF08:     Set var_8C = Me.Txt
  loc_103CF0E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103CF49:     Set var_94 = Me.Txt
  loc_103CF4F:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, CStr(Format(CVar(var_90), "MMM/yyyy")))
  loc_103CF57:     var_9C.Text = 1
  loc_103CF71:     Call Proc_227_59_1647A9C(1)
  loc_103CF89:     Me.FGrid.Row = 1
  loc_103CFA4:     Me.FGrid.Col = 2
  loc_103CFAC:   End If
  loc_103CFAC: End If
  loc_103CFAC: Exit Sub
  loc_103CFAD: ThisVCallAd
End Sub

Private Sub DTP_UnknownEvent_A 'DFE79C
  'Data Table: 5016D4
  loc_DFE794: Call Proc_227_59_1647A9C()
  loc_DFE799: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_F 'DFE534
  'Data Table: 5016D4
  loc_DFE52C: Call TreeView1_UnknownEvent_14()
  loc_DFE531: Exit Sub
End Sub

Private Sub TreeView1_UnknownEvent_14 'EBD70C
  'Data Table: 5016D4
  loc_EBD69D: global_128 = Me.TreeView1.SelectedItem.Key
  loc_EBD6DE: Me.LblFacility.Caption = Me.TreeView1.SelectedItem.Text
  loc_EBD6FC: Me.LblFacility.Refresh
  loc_EBD704: Call Proc_227_59_1647A9C()
  loc_EBD709: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E86DD0
  'Data Table: 5016D4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E86D73: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E86D86: Set var_A8 = Me.TxtGrid
  loc_E86D8C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86D94: var_AC.Visible = False
  loc_E86DAE: Set var_A8 = Me.TxtGrid
  loc_E86DB4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86DBC: var_AC.MaxLength = 0
  loc_E86DC8: Call Proc_227_67_DFD38C()
  loc_E86DCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66680
  'Data Table: 5016D4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6663C: Set var_88 = Me.TxtGrid
  loc_E66642: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6665C: If (var_8C.Visible = 0) Then
  loc_E66675:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E6667D: End If
  loc_E6667D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D600
  'Data Table: 5016D4
  loc_E1D5F7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D5FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF174
  'Data Table: 5016D4
  loc_DFF16C: Call Proc_227_63_E436F0()
  loc_DFF171: Exit Sub
  loc_DFF172: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '109A578
  'Data Table: 5016D4
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_109A2C4: Set var_88 = Me.TopCtrl1
  loc_109A2CA: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005()
  loc_109A30F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_109A318:   Call Form_KeyDown(Cancel, arg_10)
  loc_109A31D: End If
  loc_109A321: Set var_88 = Me.TopCtrl1
  loc_109A327: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005()
  loc_109A340: If (CStr() = "Browse") Then
  loc_109A343:   Exit Sub
  loc_109A344: End If
  loc_109A3B8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_109A3CE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109A3DE:   var_9C = "+{Tab}"
  loc_109A3E4:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_109A3EE:   Cancel = 0
  loc_109A3F4: Else
  loc_109A3FE:   var_B0 = Me.FGrid.Rows
  loc_109A44B:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_109A461:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109A477:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_109A481:     Cancel = 0
  loc_109A484:   End If
  loc_109A484: End If
  loc_109A48A: global_92 = Cancel
  loc_109A4B0: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_109A4D4: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_109A4EA:   var_EC = CLng(Me.FGrid.Col)
  loc_109A4FA:   If Not (var_EC = CLng(4)) Then
  loc_109A504:     If (var_EC = CLng(5)) Then
  loc_109A507:     End If
  loc_109A51A:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109A532:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109A537:     var_11C = vbNullString
  loc_109A541:     Set var_B4 = Me.FGrid
  loc_109A547:     LateIdCallSt
  loc_109A55F:   End If
  loc_109A55F: End If
  loc_109A565: If (Cancel = &HD) Then
  loc_109A56D:   global_94 = 0
  loc_109A570: End If
  loc_109A572: Cancel = 0
  loc_109A575: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14E88
  'Data Table: 5016D4
  loc_E14E79: Call FGrid_UnknownEvent_C()
  loc_E14E83: global_94 = 0
  loc_E14E86: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11F3BBC
  'Data Table: 5016D4
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As String
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_11F3740: Set var_88 = Me.TopCtrl1
  loc_11F3746: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005(CLng(Me.FGrid.Col))
  loc_11F375F: If (CStr() = "Browse") Then
  loc_11F3762:   Exit Sub
  loc_11F3763: End If
  loc_11F3776: var_A4 = CLng(Me.FGrid.Col)
  loc_11F3786: If (var_A4 = CLng(3)) Then
  loc_11F378D:   Set var_C8 = Me.FGrid
  loc_11F37B1:   var_A0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11F37DE:   Set var_B8 = var_C8
  loc_11F37F0:   Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F3818:   Set var_88 = Me.TxtGrid
  loc_11F381E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F3826:   0 = var_B8.Text
  loc_11F383F:   If (Len(var_A0) <= 1) Then
  loc_11F384E:     Set var_88 = Me.TxtGrid
  loc_11F3854:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F385C:     var_CE = var_B8.Text
  loc_11F386D:     Set var_BC = Me.TxtGrid
  loc_11F3873:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F387B:     var_C8.Text = var_A0
  loc_11F388E:   End If
  loc_11F389A:   Set var_88 = Me.TxtGrid
  loc_11F38A0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F38BA:   Set var_BC = Me.TxtGrid
  loc_11F38C0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F38C8:   var_C8.SelStart = Len(var_B8.Text)
  loc_11F38DE: Else
  loc_11F38E5:   If (var_A4 = CLng(2)) Then
  loc_11F38EC:     Set var_C8 = Me.FGrid
  loc_11F3910:     var_A0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11F393D:     Set var_B8 = var_C8
  loc_11F394F:     Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F3977:     Set var_88 = Me.TxtGrid
  loc_11F397D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F3985:     0 = var_B8.Text
  loc_11F399E:     If (Len(var_A0) <= 1) Then
  loc_11F39AD:       Set var_88 = Me.TxtGrid
  loc_11F39B3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F39BB:       var_CE = var_B8.Text
  loc_11F39CC:       Set var_BC = Me.TxtGrid
  loc_11F39D2:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F39DA:       var_C8.Text = var_A0
  loc_11F39ED:     End If
  loc_11F39F9:     Set var_88 = Me.TxtGrid
  loc_11F39FF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F3A19:     Set var_BC = Me.TxtGrid
  loc_11F3A1F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3A27:     var_C8.SelStart = Len(var_B8.Text)
  loc_11F3A3D:   Else
  loc_11F3A44:     If Not (var_A4 = CLng(4)) Then
  loc_11F3A4E:       If (var_A4 = CLng(5)) Then
  loc_11F3A51:       End If
  loc_11F3A55:       Set var_C8 = Me.FGrid
  loc_11F3A79:       var_A0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11F3AA6:       Set var_B8 = var_C8
  loc_11F3AB8:       Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, &HFF)
  loc_11F3AE0:       Set var_88 = Me.TxtGrid
  loc_11F3AE6:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F3AEE:       0 = var_B8.Text
  loc_11F3B07:       If (Len(var_A0) <= 1) Then
  loc_11F3B16:         Set var_88 = Me.TxtGrid
  loc_11F3B1C:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F3B24:         var_CE = var_B8.Text
  loc_11F3B35:         Set var_BC = Me.TxtGrid
  loc_11F3B3B:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3B43:         var_C8.Text = var_A0
  loc_11F3B56:       End If
  loc_11F3B62:       Set var_88 = Me.TxtGrid
  loc_11F3B68:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F3B82:       Set var_BC = Me.TxtGrid
  loc_11F3B88:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F3B90:       var_C8.SelStart = Len(var_B8.Text)
  loc_11F3BA3:     End If
  loc_11F3BA3:   End If
  loc_11F3BA3: End If
  loc_11F3BAD: If (CLng(Cancel) <> &HD) Then
  loc_11F3BB5:   global_94 = &HFF
  loc_11F3BB8: End If
  loc_11F3BB8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D970
  'Data Table: 5016D4
  loc_E1D967: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D96F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D740
  'Data Table: 5016D4
  loc_E1D737: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D73F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E7C9E8
  'Data Table: 5016D4
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  loc_E7C988: Call Proc_227_67_DFD38C()
  loc_E7C9A0: var_9C = CLng(Me.FGrid.Col)
  loc_E7C9B0: If Not (var_9C = CLng(3)) Then
  loc_E7C9BA:   If (var_9C = CLng(2)) Then
  loc_E7C9BD:   End If
  loc_E7C9C0: Else
  loc_E7C9CB:   Set var_88 = Me.TxtGrid
  loc_E7C9D1:   Call 0.Method_FGrid_UnknownEvent_150 (0, var_A0)
  loc_E7C9D9:   var_A0.Visible = False
  loc_E7C9E5: End If
  loc_E7C9E5: Exit Sub
End Sub

Public Function MasterFormExitGet() '502C04
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '502C13
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '502C22
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '502C31
  SearchCode = Value
End Sub

Public Function global_60Get() '502C40
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '502C4F
  global_60 = Value
End Sub

Public Function global_64Get() '502C5E
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '502C6D
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '502C7C
  global_64 = Value
End Sub

Public Function global_80Get() '502C8B
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '502C9A
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '502CA9
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E8CBDC
  'Data Table: 5016D4
  Dim Me As Recordset15
  loc_E8CB72: On Error Goto loc_E8CBD6
  loc_E8CB7B: Me.MoveFirst
  loc_E8CBA5: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E8CBCD: Proc_5_0_110649C(&HFF, Me, global_100)
  loc_E8CBD5: Exit Sub
  loc_E8CBD6: ' Referenced from: E8CB72
  loc_E8CBD6: Proc_6_60_E62BC4(0)
  loc_E8CBDB: Exit Sub
End Sub

Public Sub MemSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1150DE4
  'Data Table: 5016D4
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_1150A4C: On Error Goto loc_1150DDB
  loc_1150A62: If (Me.rows < 1) Then
  loc_1150A65:   Exit Sub
  loc_1150A66: End If
  loc_1150A7A: If (Me.RecordCount <= 0) Then
  loc_1150A86:   Me.TEXT = vbNullString
  loc_1150A8A:   Exit Sub
  loc_1150A8B: End If
  loc_1150AA7: If (((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Or (KeyAscii = 0)) Then
  loc_1150AB4:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_1150AB8:   Exit Sub
  loc_1150AB9: End If
  loc_1150AC3: If (CLng(KeyAscii) = 8) Then
  loc_1150ADD:   If (Len(Me.SelText) > 1) Then
  loc_1150AF1:     var_E0 = (Len(Me.SelText) - 1)
  loc_1150AF9:     Me.SelLength = var_E0
  loc_1150B09:     var_8C = CStr(Me.SelText)
  loc_1150B12:   Else
  loc_1150B1B:     Me.TEXT = vbNullString
  loc_1150B22:     Call Me.SetFocus
  loc_1150B30:     Me.Visible = False
  loc_1150B34:     Exit Sub
  loc_1150B35:   End If
  loc_1150B38: Else
  loc_1150B4F:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_1150B54:   var_8C = CStr(var_E0)
  loc_1150B60: End If
  loc_1150B7D: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_1150B83: Me.MoveFirst
  loc_1150BC0: If (Me.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_1150C03:   Me.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_1150C18: Else
  loc_1150C48:   Me.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_1150C58: End If
  loc_1150C5A: KeyAscii = 0
  loc_1150C86: If ((Me.AbsolutePosition <> -3) And (Me.AbsolutePosition <> -2)) Then
  loc_1150C93:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_1150CAD:   Me.Row = CVar(Me.AbsolutePosition)
  loc_1150CBB:   Me.CellBackColor = CVar(CellBackColEnter)
  loc_1150CEE:   Me.TEXT = Me.Fields.Item(CVar(FindFldName)).Value
  loc_1150D08:   Me.SelLength = CVar(Len(var_8C))
  loc_1150D1C:   var_E0 = (Me.CellLeft + Me.left)
  loc_1150D24:   Me.left = var_E0
  loc_1150D41:   var_E0 = (Me.CellTop + Me.top)
  loc_1150D49:   Me.top = var_E0
  loc_1150D68:   If (Me.Visible = False) Then
  loc_1150D72:     Me.Visible = True
  loc_1150D76:     var_9C = 0
  loc_1150D7F:     Call Me.ZOrder
  loc_1150D88:     Call Me.SetFocus
  loc_1150D9A:     Me.BackColor = Me.CellBackColor
  loc_1150DAD:     Me.ForeColor = Me.CellForeColor
  loc_1150DC0:     Me.width = Me.CellWidth
  loc_1150DD3:     Me.height = Me.CellHeight
  loc_1150DDA:   End If
  loc_1150DDA: End If
  loc_1150DDA: Exit Sub
  loc_1150DDB: ' Referenced from: 1150A4C
  loc_1150DDB: Proc_6_60_E62BC4(var_9C, KeyAscii, var_9C)
  loc_1150DE0: Exit Sub
End Sub

Public Sub Proc_227_58_E51750
  'Data Table: 5016D4
  Dim var_88 As TreeView
  Dim var_9C As Nodes
  loc_E5173E: Me.TreeView1.Nodes.Clear
  loc_E51745: Set var_9C = Nothing 
  loc_E5174B: Set var_88 = Nothing 
  loc_E5174F: Exit Sub
End Sub

Public Sub Proc_227_59_1647A9C
  'Data Table: 5016D4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_1A8 As Variant
  Dim var_B0 As String
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim unk_5016DA As Connection15
  Dim var_1BC As Variant
  Dim var_204 As Variant
  Dim var_1C4 As Variant
  Dim var_1C0 As Fields15
  Dim var_22C As TextBox
  Dim var_228 As Fields15
  Dim var_234 As TextBox
  Dim var_238 As Long
  Dim var_C4 As Variant
  loc_16464CE: var_A4 = CStr(Me.SSTabStatusScreen.Tag)
  loc_16464DF: If (var_A4 = "POS SALE") Then
  loc_16464E8:   var_A8 = global_128
  loc_16464F3:   If (var_A8 = "Point Of Sale") Then
  loc_164650D:     If (Me.State = 1) Then
  loc_1646516:       Me.Close
  loc_164651B:     End If
  loc_1646525:     var_A0 = Me.DTP.Value
  loc_164652F:     Proc_6_7_F25D88(var_C4)
  loc_1646548:     Proc_6_7_F25D88(var_168, Me.DTP.Value)
  loc_164656B:     var_B0 = "Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_1646583:     var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_164659B:     var_144 = CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=" 
  loc_16465A6:     var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode Order By D.Name,Q.RoomNo"
  loc_16465B6:     Me.Open var_144 & var_168 & var_188, CVar(MemVar_1F92044), 3
  loc_16465F6:     var_B0 = "Select Sum(Tax) Tax,Sum(DiscAmt) DiscAmt,Sum(NetAmt) NetAmt,Sum(RunKotAmt) RunKotAmt,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(Total) Total From (Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_1646611:     var_A0 = Me.DTP.Value
  loc_164661B:     Proc_6_7_F25D88(var_C4, var_A0, CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate="), var_1BC, -1)
  loc_1646627:     var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_1646657:     Proc_6_7_F25D88(var_168, Me.DTP.Value, var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=")
  loc_1646663:     var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode) Z"
  loc_1646676:     unk_5016DA.Execute CStr(1 & var_168 & var_188), -1, var_A0
  loc_1646687:     Set global_120 = var_1C0
  loc_16466C3:     CVarUnk
  loc_16466C8:     VerifyVarObj
  loc_16466CE:     Set var_90 = Me.DGPOSSale
  loc_16466D4:     LateIdStAd
  loc_16466E5:   Else
  loc_16466ED:     If Not (var_A8 = "Outlet") Then
  loc_16466F8:       If (var_A8 = "Room Service") Then
  loc_16466FB:       End If
  loc_1646712:       If (Me.State = 1) Then
  loc_164671B:         Me.Close
  loc_1646720:       End If
  loc_1646734:       Proc_6_7_F25D88(var_C4, Me.DTP.Value)
  loc_164674D:       Proc_6_7_F25D88(var_168, Me.DTP.Value)
  loc_1646770:       var_B0 = "Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_1646788:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_16467A0:       var_144 = CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=" 
  loc_16467AB:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode Where D.RestType='"
  loc_16467D1:       Me.Open var_144 & var_168 & var_188 & CVar(global_128) & "' Order By D.Name,Q.RoomNo", CVar(MemVar_1F92044), 3
  loc_1646815:       var_B0 = "Select Sum(Tax) Tax,Sum(DiscAmt) DiscAmt,Sum(NetAmt) NetAmt,Sum(RunKotAmt) RunKotAmt,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(Total) Total From (Select Q.*,D.Name Outlet,Q.RoomNo Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, '' RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable,Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 " & "Where (LOGSITE_CODE='"
  loc_164682A:       Set var_90 = Me.DTP
  loc_164683A:       Proc_6_7_F25D88(var_C4, var_90.Value, CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate="), var_204, -1)
  loc_1646846:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode) S1 Full Outer Join (Select RestCode, '' RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_1646876:       Proc_6_7_F25D88(var_168, Me.DTP.Value, var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=", 1)
  loc_164687E:       var_178 = -1 & var_168 
  loc_1646882:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode) K On S1.RestCode=K.RestCode) Q Left Join Depart D On D.Code=Q.RestCode Where D.RestType='"
  loc_1646894:       var_1BC = var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=" & var_168 & var_188 & CVar(global_128) 
  loc_16468AB:       unk_5016DA.Execute CStr(var_1BC & "') Z"), var_90, global_112
  loc_16468BC:       Set global_120 = var_1C0
  loc_16468FC:       CVarUnk
  loc_1646901:       VerifyVarObj
  loc_1646907:       Set var_90 = Me.DGPOSSale
  loc_164690D:       LateIdStAd
  loc_164691E:     Else
  loc_1646935:       If (Me.State = 1) Then
  loc_164693E:         Me.Close
  loc_1646943:       End If
  loc_1646957:       Proc_6_7_F25D88(var_C4, Me.DTP.Value)
  loc_1646970:       Proc_6_7_F25D88(var_168, Me.DTP.Value)
  loc_1646993:       var_B0 = "Select Q.*,D.Name Outlet,Case When IsNull(RM.Name,'')='' Then Q.RoomNo Else RM.Name End Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable," & "Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 Where (LOGSITE_CODE='"
  loc_16469AB:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode,RoomNo) S1 Full Outer Join (Select RestCode, RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_16469C3:       var_144 = CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=" 
  loc_16469CE:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode,RoomNo) K "
  loc_16469D7:       var_1A8 = "On S1.RestCode=K.RestCode And S1.RoomNo=K.RoomNo) Q Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode Where D.Code='"
  loc_16469FD:       Me.Open var_144 & var_168 & var_188 & var_1A8 & CVar(global_128) & "' Order By D.Name,Q.RoomNo", CVar(MemVar_1F92044), 3
  loc_1646A43:       var_B0 = "Select Sum(Tax) Tax,Sum(DiscAmt) DiscAmt,Sum(NetAmt) NetAmt,Sum(RunKotAmt) RunKotAmt,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(Total) Total From (Select Q.*,D.Name Outlet,Case When IsNull(RM.Name,'')='' Then Q.RoomNo Else RM.Name End Room From (Select S1.GuarAtt,S1.Total,S1.Taxable,S1.NonTaxable,S1.NetAmt,S1.Tax,S1.ServiceCharge,S1.ServiceTax,S1.DiscAmt,K.Amount RunKOTAmt,Case When IsNull(S1.RoomNo,'')='' Then K.RoomNo Else S1.RoomNo End RoomNo,Case When IsNull(S1.RestCode,'')='' Then K.RestCode Else S1.RestCode End RestCode From (Select RestCode, RoomNo,Sum(GuarAtt) GuarAtt,Sum(Total) Total,Sum(Taxable) Taxable,Sum(NonTaxable) NonTaxable," & "Sum(NetAmt) NetAmt,Sum(Tax) Tax,Sum(ServiceCharge) ServiceCharge,Sum(ServiceTax) ServiceTax,Sum(DiscAmt) DiscAmt From Sale1 Where (LOGSITE_CODE='"
  loc_1646A58:       Set var_90 = Me.DTP
  loc_1646A68:       Proc_6_7_F25D88(var_C4, var_90.Value, CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate="), var_224, -1)
  loc_1646A74:       var_F4 = " AND (DELFLAG='N' or isnull(DELFLAG,'')='') Group By RestCode,RoomNo) S1 Full Outer Join (Select RestCode, RoomNo,Sum(Amount) Amount From KOT Where (LOGSITE_CODE='"
  loc_1646AA4:       Proc_6_7_F25D88(var_168, Me.DTP.Value, var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=", 1)
  loc_1646AAC:       var_178 = -1 & var_168 
  loc_1646AB0:       var_188 = " And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or isnull(DELFLAG,'')='') AND NCKOT<>'Y' Group By RestCode,RoomNo) K "
  loc_1646AB5:       var_198 = var_1C0 & var_C4 & var_F4 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') And Vdate=" & var_168 & var_188 
  loc_1646AB9:       var_1A8 = "On S1.RestCode=K.RestCode And S1.RoomNo=K.RoomNo) Q Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode Where D.Code='"
  loc_1646AE2:       unk_5016DA.Execute CStr(var_198 & var_1A8 & CVar(global_128) & "') Z"), var_90, global_112
  loc_1646AF3:       Set global_120 = var_1C0
  loc_1646B35:       CVarUnk
  loc_1646B3A:       VerifyVarObj
  loc_1646B40:       Set var_90 = Me.DGPOSSale
  loc_1646B46:       LateIdStAd
  loc_1646B54:     End If
  loc_1646B54:   End If
  loc_1646B7D:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Tax")))
  loc_1646BB4:   Set var_1C0 = Me.TxtPOSSale
  loc_1646BBA:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(0), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1646BC2:   var_1C4.Text = 1
  loc_1646C07:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("DiscAmt")))
  loc_1646C3E:   Set var_1C0 = Me.TxtPOSSale
  loc_1646C44:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(1), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1646C4C:   var_1C4.Text = 1
  loc_1646C91:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("NetAmt")))
  loc_1646CC8:   Set var_1C0 = Me.TxtPOSSale
  loc_1646CCE:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(2), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1646CD6:   var_1C4.Text = 1
  loc_1646D1B:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("RunKotamt")))
  loc_1646D3B:   var_E4 = Format(var_C4, "0.00")
  loc_1646D52:   Set var_1C0 = Me.TxtPOSSale
  loc_1646D58:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(3), var_1C4, CStr(var_E4), 1)
  loc_1646D60:   var_1C4.Text = 1
  loc_1646DA5:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("RunKotamt")))
  loc_1646DC4:   var_1C4 = Me.Fields.Item("NetAmt")
  loc_1646DD3:   Proc_6_39_E7C810(var_E4, CVar(var_1C4))
  loc_1646DF3:   var_104 = (var_C4 + var_E4)
  loc_1646DFA:   var_144 = Format(Me.Fields & var_C4 & "RunKotamt", "0.00")
  loc_1646E11:   Set var_228 = Me.TxtPOSSale
  loc_1646E17:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(4), var_22C, CStr(var_144), 1)
  loc_1646E1F:   var_22C.Text = 1
  loc_1646E6C:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Servicecharge")))
  loc_1646EA3:   Set var_1C0 = Me.TxtPOSSale
  loc_1646EA9:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(5), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1646EB1:   var_1C4.Text = 1
  loc_1646EF6:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Servicetax")))
  loc_1646F2D:   Set var_1C0 = Me.TxtPOSSale
  loc_1646F33:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(6), var_1C4, CStr(Format(var_C4, "0.00")), 1)
  loc_1646F3B:   var_1C4.Text = 1
  loc_1646F80:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Total")))
  loc_1646FA0:   var_E4 = Format(var_C4, "0.00")
  loc_1646FB7:   Set var_1C0 = Me.TxtPOSSale
  loc_1646FBD:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(7), var_1C4, CStr(var_E4), 1)
  loc_1646FC5:   var_1C4.Text = 1
  loc_164700A:   Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Tax")))
  loc_1647038:   Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("Servicetax")))
  loc_1647057:   var_22C = Me.Fields.Item("Total")
  loc_1647066:   Proc_6_39_E7C810(var_144, CVar(var_22C))
  loc_164707A:   var_168 = "0.00"
  loc_1647086:   var_104 = (var_C4 + var_E4)
  loc_164708D:   var_158 = (Me.Fields & var_C4 & "Tax" + var_144)
  loc_16470AB:   Set var_230 = Me.TxtPOSSale
  loc_16470B1:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(8), var_234, CStr(Format(Me.DTP.Value, var_168)), 1)
  loc_16470B9:   var_234.Text = 1
  loc_16470FF:   var_148 = Me.Fields.Item("Servicecharge")
  loc_164710E:   Proc_6_39_E7C810(var_C4, CVar(var_148))
  loc_1647125:   var_1C0 = Me.Fields
  loc_164712D:   var_1C4 = var_1C0.Item("Total")
  loc_164713C:   Proc_6_39_E7C810(var_E4, CVar(var_1C4))
  loc_164715C:   var_104 = (var_C4 + var_E4)
  loc_164717A:   Set var_228 = Me.TxtPOSSale
  loc_1647180:   Call 0.Method_Proc_227_59_1647A9C0 (CInt(9), var_22C, CStr(Format(var_1C0 & var_C4 & "Servicecharge", "0.00")), 1)
  loc_1647188:   var_22C.Text = 1
  loc_16471AF: Else
  loc_16471B7:   If (var_A4 = "ORDERS") Then
  loc_16471C0:     var_23C = global_128
  loc_16471CB:     If (var_23C = "Point Of Sale") Then
  loc_16471D1:       var_88 = vbNullString
  loc_16471D7:     Else
  loc_16471DF:       If Not (var_23C = "Outlet") Then
  loc_16471EA:         If (var_23C = "Room Service") Then
  loc_16471ED:         End If
  loc_16471FE:         var_88 = " Where D.RestType='" & global_128 & "'"
  loc_1647207:       Else
  loc_1647218:         var_88 = " Where D.Code='" & global_128 & "'"
  loc_164721E:       End If
  loc_164721E:     End If
  loc_1647241:     var_B0 = "Select Count(Q.Vno) As KOTNO From (Select RestCode,Vno,Max(VTime) VTime,Max(RoomNo) RoomNo,Max(IsNull(DELFLAG,'')) DELFLAG, " & "Max(IsNull(Pending,'')) PENDING,IsNull(Sum(Case When VOIDYN='N' Then Amount End),0) AMOUNT,IsNull(Sum(Case When VOIDYN<>'N' Then Amount End),0) VOIDAMT,Max(IsNull(ContraDocId,'')) ContraDocId,Max(Waiter) WAITER,Max(LogSite_Code) LOGSITE_CODE From KOT Where (LOGSITE_CODE='"
  loc_1647256:     Set var_90 = Me.DTP
  loc_1647266:     Proc_6_7_F25D88(var_C4, var_90.Value, CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate="), var_168, -1, var_148)
  loc_1647272:     var_F4 = " AND NCKOT<>'Y' Group By RestCode,Vno) Q Left Join Sale1 S On Q.ContraDocId=S.DocId Left Join Waiter W On Q.Waiter=W.Code And Q.LogSite_Code=W.LogSite_Code "
  loc_1647280:     var_124 = var_1C0 & var_C4 & var_F4 & "Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode " 
  loc_16472A1:     unk_5016DA.Execute CStr(var_124 & CVar(var_88) & vbNullString), 0, var_1C4
  loc_16472A9:     var_178 = var_148.Fields
  loc_16472B1:     global_112 = var_1C0.Item(var_90)
  loc_16472B9:      = var_1C4.Value
  loc_16472C4:     Proc_6_39_E7C810(var_198)
  loc_16472CE:     var_238 = CLng(var_198)
  loc_164730C:     Set var_90 = Me.ChkOrders
  loc_1647312:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(1), var_148, var_23E)
  loc_164731A:     var_238 = var_148.Value
  loc_164732C:     If (var_23E = 1) Then
  loc_1647362:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " Q.DELFLAG='Y' ", " OR Q.DELFLAG='Y' "))
  loc_1647367:       var_8C = CStr(var_1C0 & " OR Q.DELFLAG='Y' ")
  loc_1647377:     End If
  loc_1647385:     Set var_90 = Me.ChkOrders
  loc_164738B:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(2), var_148)
  loc_16473A5:     If (var_148.Value = 1) Then
  loc_16473DB:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " (Q.PENDING<>'Y' And Q.DELFLAG<>'Y') ", " OR (Q.PENDING<>'Y' And Q.DELFLAG<>'Y') "))
  loc_16473E0:       var_8C = CStr(var_1C0 & " OR (Q.PENDING<>'Y' And Q.DELFLAG<>'Y') ")
  loc_16473F0:     End If
  loc_16473FE:     Set var_90 = Me.ChkOrders
  loc_1647404:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(3), var_148)
  loc_164741E:     If (var_148.Value = 1) Then
  loc_1647454:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " (Q.PENDING='Y' And Q.AMOUNT<>0) ", " OR (Q.PENDING='Y' And Q.AMOUNT<>0) "))
  loc_1647459:       var_8C = CStr(var_1C0 & " OR (Q.PENDING='Y' And Q.AMOUNT<>0) ")
  loc_1647469:     End If
  loc_1647477:     Set var_90 = Me.ChkOrders
  loc_164747D:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(4), var_148)
  loc_1647485:     var_23E = var_148.Value
  loc_1647497:     If (var_23E = 1) Then
  loc_16474CD:       var_E4 = (CVar(var_8C) + IIf((var_8C = vbNullString), " Q.AMOUNT=0 ", " OR Q.AMOUNT=0 "))
  loc_16474D2:       var_8C = CStr(var_1C0 & " OR Q.AMOUNT=0 ")
  loc_16474E2:     End If
  loc_16474F0:     var_C4 = CVar(" Where (" & var_8C & ")") 'String
  loc_164755B:     var_124 = IIf((var_88 = vbNullString), IIf((var_8C = vbNullString), vbNullString, var_C4), IIf((var_8C = vbNullString), var_88, CVar(var_88 & " And (" & var_8C & ")")))
  loc_1647564:     var_88 = CStr(var_124)
  loc_164759C:     If (Me.State = 1) Then
  loc_16475A5:       Me.Close
  loc_16475AA:     End If
  loc_16475BE:     Proc_6_7_F25D88(var_C4, Me.DTP.Value)
  loc_16475E1:     var_B0 = "Select D.Name Outlet,Case When IsNull(RM.Name,'')='' Then Q.RoomNo Else RM.Name End Room,Q.Vno As KOTNO,Q.VTime KOTTime,Case When Q.DELFLAG='Y' Then 'Deleted' When Q.PENDING<>'Y' Then 'Billed' When Q.PENDING='Y' And Q.AMOUNT<>0 Then 'Running' When Q.AMOUNT=0 Then 'Cancelled' End Status,Q.AMOUNT,Q.VOIDAMT,W.Name STEWARD,S.VNo BillNo From (Select RestCode,Vno,Max(VTime) VTime,Max(RoomNo) RoomNo,Max(IsNull(DELFLAG,'')) DELFLAG, " & "Max(IsNull(Pending,'')) PENDING,IsNull(Sum(Case When VOIDYN='N' Then Amount End),0) AMOUNT,IsNull(Sum(Case When VOIDYN<>'N' Then Amount End),0) VOIDAMT,Max(IsNull(ContraDocId,'')) ContraDocId,Max(Waiter) WAITER,Max(LogSite_Code) LOGSITE_CODE From KOT Where (LOGSITE_CODE='"
  loc_16475F9:     var_F4 = " AND NCKOT<>'Y' Group By RestCode,Vno) Q Left Join Sale1 S On Q.ContraDocId=S.DocId Left Join Waiter W On Q.Waiter=W.Code And Q.LogSite_Code=W.LogSite_Code "
  loc_1647607:     var_124 = CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate=") & var_C4 & var_F4 & "Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode " 
  loc_1647625:     Me.Open var_124 & CVar(var_88) & " Order By D.RestType,D.Name,Q.RoomNo,Q.Vno", CVar(MemVar_1F92044), 3
  loc_164765B:     var_B0 = "Select Count(Q.Vno) As KOTNO,  Count(Case When Q.DELFLAG='Y' Then Q.VNO End) Deleted,  Count(Case When Q.PENDING<>'Y' Then Q.VNO End) Billed,  Count(Case When Q.PENDING='Y' And Q.AMOUNT<>0 Then Q.VNO End) Running,  Count(Case When Q.AMOUNT=0 Then Q.VNO End) Cancelled From (Select RestCode,Vno,Max(VTime) VTime,Max(RoomNo) RoomNo,Max(IsNull(DELFLAG,'')) DELFLAG, " & "Max(IsNull(Pending,'')) PENDING,IsNull(Sum(Case When VOIDYN='N' Then Amount End),0) AMOUNT,IsNull(Sum(Case When VOIDYN<>'N' Then Amount End),0) VOIDAMT,Max(IsNull(ContraDocId,'')) ContraDocId,Max(Waiter) WAITER,Max(LogSite_Code) LOGSITE_CODE From KOT Where (LOGSITE_CODE='"
  loc_1647680:     Proc_6_7_F25D88(var_C4, Me.DTP.Value, CVar(var_B0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Vdate="), var_168, -1)
  loc_164768C:     var_F4 = " AND NCKOT<>'Y' Group By RestCode,Vno) Q Left Join Sale1 S On Q.ContraDocId=S.DocId Left Join Waiter W On Q.Waiter=W.Code And Q.LogSite_Code=W.LogSite_Code "
  loc_164769A:     var_124 = var_148 & var_C4 & var_F4 & "Left Join Depart D On D.Code=Q.RestCode Left Join RoomMast RM On RM.Code=Q.RoomNo And RM.RestCode=Q.RestCode " 
  loc_16476BB:     unk_5016DA.Execute CStr(var_124 & CVar(var_88) & vbNullString), 1, -1
  loc_16476CC:     Set global_124 = var_148
  loc_1647700:     CVarUnk
  loc_1647705:     VerifyVarObj
  loc_164770B:     Set var_90 = Me.DGOrders
  loc_1647711:     LateIdStAd
  loc_164772D:     Set var_90 = Me.ChkOrders
  loc_1647733:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(0), var_148, var_23E)
  loc_164773B:     var_90 = var_148.Value
  loc_164774D:     If (var_23E = 1) Then
  loc_1647770:       var_C4 = Format(var_238, "0")
  loc_1647787:       Set var_90 = Me.TxtOrders
  loc_164778D:       Call 0.Method_Proc_227_59_1647A9C0 (CInt(0), var_148, CStr(var_C4), 1)
  loc_1647795:       var_148.Text = 1
  loc_16477AE:     Else
  loc_16477D7:       Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("KOTNo")))
  loc_164780E:       Set var_1C0 = Me.TxtOrders
  loc_1647814:       Call 0.Method_Proc_227_59_1647A9C0 (CInt(0), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_164781C:       var_1C4.Text = 1
  loc_1647838:     End If
  loc_1647861:     Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Deleted")))
  loc_1647898:     Set var_1C0 = Me.TxtOrders
  loc_164789E:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(1), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_16478A6:     var_1C4.Text = 1
  loc_16478EB:     Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Billed")))
  loc_1647922:     Set var_1C0 = Me.TxtOrders
  loc_1647928:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(2), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_1647930:     var_1C4.Text = 1
  loc_1647975:     Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Running")))
  loc_16479AC:     Set var_1C0 = Me.TxtOrders
  loc_16479B2:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(3), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_16479BA:     var_1C4.Text = 1
  loc_16479FF:     Proc_6_39_E7C810(var_C4, CVar(Me.Fields.Item("Cancelled")))
  loc_1647A36:     Set var_1C0 = Me.TxtOrders
  loc_1647A3C:     Call 0.Method_Proc_227_59_1647A9C0 (CInt(4), var_1C4, CStr(Format(var_C4, "0")), 1)
  loc_1647A44:     var_1C4.Text = 1
  loc_1647A63:   Else
  loc_1647A6B:     If (var_A4 = "PEN. BILLS") Then
  loc_1647A6E:       GoTo loc_1647A98
  loc_1647A71:     End If
  loc_1647A79:     If (var_A4 = "BILLING") Then
  loc_1647A7C:       GoTo loc_1647A98
  loc_1647A7F:     End If
  loc_1647A87:     If (var_A4 = "ITEM VIEW") Then
  loc_1647A8A:       GoTo loc_1647A98
  loc_1647A8D:     End If
  loc_1647A95:     If (var_A4 = "COMP. SALE") Then
  loc_1647A98:       ' Referenced from:     1647A8A
  loc_1647A98:       ' Referenced from:     1647A7C
  loc_1647A98:       ' Referenced from:     1647A6E
  loc_1647A98:     End If
  loc_1647A98:   End If
  loc_1647A98: End If
  loc_1647A98: Exit Sub
End Sub

Public Sub Proc_227_60_1172150
  'Data Table: 5016D4
  Dim Me As Recordset15
  Dim var_90 As TreeView
  Dim var_A0 As Variant
  Dim var_A4 As Nodes
  Dim var_15C As Node
  Dim var_158 As Fields15
  Dim var_D4 As Variant
  Dim var_154 As Variant
  Dim var_134 As Variant
  Dim var_198 As Node
  Dim var_1A0 As Node
  Dim var_1A4 As Node
  loc_1171DCF: If (Me.RecordCount > 0) Then
  loc_1171DDC:   var_A0 = Me.TreeView1.Nodes
  loc_1171DE7:   Set var_A4 = var_A0
  loc_1171E15:   var_A4.Add var_A0, var_D4, "Point Of Sale", "POINT OF SALE", var_134, var_154
  loc_1171E1D:   Set var_15C = var_158
  loc_1171E34:   var_15C.Bold = True
  loc_1171E3E:   var_15C.Expanded = True
  loc_1171E45:   Set var_15C = Nothing 
  loc_1171E4F:   Me.MoveFirst
  loc_1171E54:   ' Referenced from: 117213E
  loc_1171E66:   If Not(Me.EOF) Then
  loc_1171E7E:     var_158 = Me.Fields
  loc_1171EA5:     If (var_158 <> Proc_6_38_E68A98(CVar(var_158.Item("RestType")), var_88)) Then
  loc_1171F10:       var_154 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RestType")))) 'String
  loc_1171F2C:       var_A4.Add "Point Of Sale", 4, CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RestType")))), var_154, var_180, var_190
  loc_1171F34:       Set var_198 = var_194
  loc_1171F5D:       var_198.Bold = True
  loc_1171F67:       var_198.Expanded = True
  loc_1171F6E:       Set var_198 = Nothing 
  loc_1171F9D:       var_88 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestType")))
  loc_1172027:       var_A4.Add var_88, 4, CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))), CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))), var_154, var_180
  loc_117202F:       Set var_1A0 = var_194
  loc_1172056:       var_1A0.Bold = False
  loc_1172060:       var_1A0.Expanded = False
  loc_1172067:       Set var_1A0 = Nothing 
  loc_117206E:     Else
  loc_11720EF:       var_A4.Add var_88, 4, CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")), var_194)), CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))), var_154, var_180
  loc_11720F7:       Set var_1A4 = var_194
  loc_117211E:       var_1A4.Bold = False
  loc_1172128:       var_1A4.Expanded = False
  loc_117212F:       Set var_1A4 = Nothing 
  loc_1172133:     End If
  loc_1172139:     Me.MoveNext
  loc_117213E:     GoTo loc_1171E54
  loc_1172141:   End If
  loc_1172143:   Set var_A4 = Nothing 
  loc_1172149:   Set var_90 = Nothing 
  loc_117214D: End If
  loc_117214D: Exit Sub
End Sub

Public Sub Proc_227_61_11BD1B4
  'Data Table: 5016D4
  Dim var_94 As Variant
  Dim var_A8 As DataGrid
  Dim var_AC As CheckBox
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  Dim arg_5C74 As Boolean
  loc_11BCD58: On Error Goto loc_11BD1AC
  loc_11BCD6E: Me.DGPOSSale.Width = CVar(CDbl(12345))
  loc_11BCD89: Me.DGPOSSale.Height = CVar(CDbl(5175))
  loc_11BCDA4: Me.DGOrders.Width = CVar(CDbl(12345))
  loc_11BCDBF: Me.DGOrders.Height = CVar(CDbl(5175))
  loc_11BCDD4: Set var_A8 = Me.ChkOrders
  loc_11BCDDA: Call 0.Method_Proc_227_61_11BD1B40 (CInt(0), var_AC)
  loc_11BCDE2: var_AC.Value = 1
  loc_11BCDFB: Set var_A8 = Me.ChkOrders
  loc_11BCE01: Call 0.Method_Proc_227_61_11BD1B40 (CInt(1), var_AC)
  loc_11BCE09: var_AC.Value = 1
  loc_11BCE22: Set var_A8 = Me.ChkOrders
  loc_11BCE28: Call 0.Method_Proc_227_61_11BD1B40 (CInt(2), var_AC)
  loc_11BCE30: var_AC.Value = 1
  loc_11BCE49: Set var_A8 = Me.ChkOrders
  loc_11BCE4F: Call 0.Method_Proc_227_61_11BD1B40 (CInt(3), var_AC)
  loc_11BCE57: var_AC.Value = 1
  loc_11BCE70: Set var_A8 = Me.ChkOrders
  loc_11BCE76: Call 0.Method_Proc_227_61_11BD1B40 (CInt(4), var_AC)
  loc_11BCE7E: var_AC.Value = 1
  loc_11BCE8E: Set var_B0 = Me.FGrid
  loc_11BCE9D: var_B0.Height = CVar(CDbl(6500))
  loc_11BCEAE: var_B0.Width = CVar(CDbl(8500))
  loc_11BCEBF: var_B0.Cols = 8
  loc_11BCED0: var_B0.Rows = 2
  loc_11BCEE9: global_84 = CStr(CLng(var_B0.BackColor))
  loc_11BCEF3: var_94 = 0
  loc_11BCEFC: var_D4 = &H64
  loc_11BCF08: LateIdCallSt
  loc_11BCF13: var_94 = CVar(CLng(1)) 'Long
  loc_11BCF18: var_D4 = 0
  loc_11BCF24: LateIdCallSt
  loc_11BCF2F: var_94 = CVar(CLng(3)) 'Long
  loc_11BCF34: var_D4 = &H320
  loc_11BCF40: LateIdCallSt
  loc_11BCF48: var_94 = 0
  loc_11BCF54: var_D4 = CVar(CLng(3)) 'Long
  loc_11BCF59: var_F4 = "Card No"
  loc_11BCF62: LateIdCallSt
  loc_11BCF6D: var_94 = CVar(CLng(3)) 'Long
  loc_11BCF78: var_D4 = CVar(CInt(1)) 'Integer
  loc_11BCF7F: LateIdCallSt
  loc_11BCF8A: var_94 = CVar(CLng(2)) 'Long
  loc_11BCF8F: var_D4 = &HA28
  loc_11BCF9B: LateIdCallSt
  loc_11BCFA3: var_94 = 0
  loc_11BCFAF: var_D4 = CVar(CLng(2)) 'Long
  loc_11BCFB4: var_F4 = "Member Name"
  loc_11BCFBD: LateIdCallSt
  loc_11BCFC8: var_94 = CVar(CLng(2)) 'Long
  loc_11BCFD3: var_D4 = CVar(CInt(1)) 'Integer
  loc_11BCFDA: LateIdCallSt
  loc_11BCFE5: var_94 = CVar(CLng(4)) 'Long
  loc_11BCFEA: var_D4 = &H708
  loc_11BCFF6: LateIdCallSt
  loc_11BCFFE: var_94 = 0
  loc_11BD00A: var_D4 = CVar(CLng(4)) 'Long
  loc_11BD00F: var_F4 = "No Of Occurences"
  loc_11BD018: LateIdCallSt
  loc_11BD023: var_94 = CVar(CLng(4)) 'Long
  loc_11BD02E: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BD035: LateIdCallSt
  loc_11BD040: var_94 = CVar(CLng(4)) 'Long
  loc_11BD04B: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BD052: LateIdCallSt
  loc_11BD05D: var_94 = CVar(CLng(5)) 'Long
  loc_11BD062: var_D4 = &H578
  loc_11BD06E: LateIdCallSt
  loc_11BD076: var_94 = 0
  loc_11BD082: var_D4 = CVar(CLng(5)) 'Long
  loc_11BD087: var_F4 = "Rate"
  loc_11BD090: LateIdCallSt
  loc_11BD09B: var_94 = CVar(CLng(5)) 'Long
  loc_11BD0A6: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BD0AD: LateIdCallSt
  loc_11BD0B8: var_94 = CVar(CLng(5)) 'Long
  loc_11BD0C3: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BD0CA: LateIdCallSt
  loc_11BD0D5: var_94 = CVar(CLng(6)) 'Long
  loc_11BD0DA: var_D4 = &H578
  loc_11BD0E6: LateIdCallSt
  loc_11BD0EE: var_94 = 0
  loc_11BD0FA: var_D4 = CVar(CLng(6)) 'Long
  loc_11BD0FF: var_F4 = "Amount"
  loc_11BD108: LateIdCallSt
  loc_11BD113: var_94 = CVar(CLng(6)) 'Long
  loc_11BD11E: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BD125: LateIdCallSt
  loc_11BD130: var_94 = CVar(CLng(6)) 'Long
  loc_11BD13B: var_D4 = CVar(CInt(7)) 'Integer
  loc_11BD142: LateIdCallSt
  loc_11BD14D: var_94 = CVar(CLng(7)) 'Long
  loc_11BD152: var_D4 = 0
  loc_11BD15E: LateIdCallSt
  loc_11BD166: var_94 = 0
  loc_11BD172: var_D4 = CVar(CLng(7)) 'Long
  loc_11BD177: var_F4 = "Charge Type"
  loc_11BD180: LateIdCallSt
  loc_11BD18B: var_94 = CVar(CLng(7)) 'Long
  loc_11BD196: var_D4 = CVar(CInt(1)) 'Integer
  loc_11BD19D: LateIdCallSt
  loc_11BD1A7: Set var_B0 = Nothing 
  loc_11BD1AB: Exit Sub
  loc_11BD1AC: ' Referenced from: 11BCD58
  loc_11BD1AC: Proc_6_60_E62BC4(var_B0, var_D4, var_94, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_11BD1B1: Exit Sub
  loc_11BD1B2: arg_5C74 = True
End Sub

Public Sub Proc_227_62_DFF7CC
  'Data Table: 5016D4
  Dim arg_5CFF As Double
  loc_DFF7C4: Proc_227_62_DFF7CC = 
  loc_DFF7CA: arg_5CFF = 
End Sub

Public Sub Proc_227_63_E436F0
  'Data Table: 5016D4
  loc_E436CC: Set var_88 = Me.TopCtrl1
  loc_E436D2: Call {B50F9D6B-D568-4C7A-BE94FB2B45517960}.DispID_68030005()
  loc_E436EB: If (CStr() = "Browse") Then
  loc_E436EE:   Exit Sub
  loc_E436EF: End If
  loc_E436EF: Exit Sub
End Sub

Public Sub Proc_227_64_11A4360
  'Data Table: 5016D4
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_170 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  loc_11A3F83: var_A0 = CLng(Me.FGrid.Col)
  loc_11A3F93: If (var_A0 = CLng(4)) Then
  loc_11A3FA2:   Set var_8C = Me.TxtGrid
  loc_11A3FA8:   Call 0.Method_Proc_227_64_11A43600 (0, var_A4)
  loc_11A3FD3:   var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A3FEB:   var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A4018:   var_160 = CVar(CStr(Format(CVar(Val(var_A4.Text)), "0"))) 'String
  loc_11A4020:   Set var_174 = Me.FGrid
  loc_11A4026:   LateIdCallSt
  loc_11A4060:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A4069:   Set var_A4 = Me.FGrid
  loc_11A4078:   var_120 = CVar(CLng(var_A4.Col)) 'Long
  loc_11A4092:   var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11A40B0:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A40B8:   var_170 = CVar(CLng(5)) 'Long
  loc_11A40F0:   var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A40F8:   var_214 = CVar(CLng(6)) 'Long
  loc_11A4129:   var_234 = CVar(CStr(Format(CVar((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A4131:   Set var_248 = Me.FGrid
  loc_11A4137:   LateIdCallSt
  loc_11A4171: Else
  loc_11A4178:   If (var_A0 = CLng(5)) Then
  loc_11A4187:     Set var_8C = Me.TxtGrid
  loc_11A418D:     Call 0.Method_Proc_227_64_11A43600 (0, var_A4, var_A8, var_248, var_234, 1, 1)
  loc_11A4195:     var_214 = var_A4.Text
  loc_11A41B8:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A41D0:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A41FD:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_11A4205:     Set var_174 = Me.FGrid
  loc_11A420B:     LateIdCallSt
  loc_11A4245:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A425D:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A4295:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A429D:     var_170 = CVar(CLng(4)) 'Long
  loc_11A42D5:     var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A42DD:     var_214 = CVar(CLng(6)) 'Long
  loc_11A430E:     var_234 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A4316:     Set var_248 = Me.FGrid
  loc_11A431C:     LateIdCallSt
  loc_11A4353:   End If
  loc_11A4353: End If
  loc_11A4358: Proc_227_64_11A4360 = &HFF
End Sub

Public Sub Proc_227_65_F15AE0
  'Data Table: 5016D4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F159F6: Set var_8C = Me.Txt
  loc_F159FC: Call 0.Method_Proc_227_65_F15AE0C (var_8E, var_86)
  loc_F15A0C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F15A22:   Set var_8C = Me.Txt
  loc_F15A28:   Call 0.Method_Proc_227_65_F15AE00 (CInt(var_86), var_98)
  loc_F15A30:   var_98.Text = vbNullString
  loc_F15A4C:   Set var_8C = Me.Txt
  loc_F15A52:   Call 0.Method_Proc_227_65_F15AE00 (CInt(var_86), var_98)
  loc_F15A5A:   var_98.Tag = vbNullString
  loc_F15A69: Next var_92 'Byte
  loc_F15A82: Me.FGrid.Rows = 1
  loc_F15A9F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F15AA7: Set var_98 = Me.FGrid
  loc_F15AD6: Me.FGrid.FixedRows = 1
  loc_F15ADE: Exit Sub
End Sub

Public Sub Proc_227_66_E9BC98(arg_C) 'E9BC98
  'Data Table: 5016D4
  Dim var_98 As TextBox
  loc_E9BC1E: Set var_8C = Me.Txt
  loc_E9BC24: Call 0.Method_Proc_227_66_E9BC98C (var_8E, var_86)
  loc_E9BC34: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9BC4A:   Set var_8C = Me.Txt
  loc_E9BC50:   Call 0.Method_Proc_227_66_E9BC980 (CInt(var_86), var_98)
  loc_E9BC58:   var_98.Enabled = arg_C
  loc_E9BC67: Next var_92 'Byte
  loc_E9BC7A: Set var_8C = Me.Txt
  loc_E9BC80: Call 0.Method_Proc_227_66_E9BC980 (CInt(0), var_98)
  loc_E9BC88: var_98.Enabled = False
  loc_E9BC94: Exit Sub
End Sub

Public Sub Proc_227_67_DFD38C
  'Data Table: 5016D4
  loc_DFD388: Exit Sub
End Sub
