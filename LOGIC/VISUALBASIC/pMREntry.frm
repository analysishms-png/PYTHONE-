VERSION 5.00
Begin VB.Form pMREntry
  Caption = "Material Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "pMREntry.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8880
  ClientHeight = 6870
  LockControls = -1  'True
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
  Begin MSHFlexGrid FRectGrid
    Left = 3435
    Top = 5055
    Width = 4065
    Height = 1020
    Visible = 0   'False
    TabIndex = 48
  End
  Begin TextBox TxtBarCode
    ForeColor = &HC00000&
    Left = 13425
    Top = 585
    Width = 2670
    Height = 315
    Visible = 0   'False
    TabIndex = 0
    TabStop = 0   'False
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
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HFF0000&
    Left = 5775
    Top = 1020
    Width = 2685
    Height = 285
    TabIndex = 45
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 14
    ForeColor = &HFF0000&
    Left = 9540
    Top = 1020
    Width = 600
    Height = 285
    TabIndex = 44
    BorderStyle = 0 'None
    MaxLength = 8
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
    Width = 8880
    Height = 450
    TabIndex = 43
  End
  Begin DataGrid DGPreDoc
    Left = 13410
    Top = 3990
    Width = 6660
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGGod
    Left = 16800
    Top = 1065
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 16
    ForeColor = &HC00000&
    Left = 1560
    Top = 7935
    Width = 1260
    Height = 270
    TabIndex = 38
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    ForeColor = &HFF0000&
    Left = 10170
    Top = 1020
    Width = 555
    Height = 285
    TabIndex = 37
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
  Begin DataGrid DGIndent
    Left = 16605
    Top = 675
    Width = 5970
    Height = 3450
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGParty
    Left = 660
    Top = 8280
    Width = 11805
    Height = 3420
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGVType
    Left = 6000
    Top = 8025
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 885
    Top = 1650
    Width = 3645
    Height = 285
    TabIndex = 4
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
    Index = 9
    Left = 5760
    Top = 10665
    Width = 2115
    Height = 240
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 21
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
    ForeColor = &HC00000&
    Left = 12090
    Top = 1635
    Width = 3720
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 13
    ForeColor = &HC00000&
    Left = 12105
    Top = 1320
    Width = 3705
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 12
    ForeColor = &HC00000&
    Left = 12105
    Top = 1005
    Width = 3705
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 11
    ForeColor = &HFF0000&
    Left = 9555
    Top = 1635
    Width = 1170
    Height = 285
    TabIndex = 9
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
    Index = 10
    ForeColor = &HFF0000&
    Left = 5775
    Top = 1650
    Width = 2685
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 8
    ForeColor = &HFF0000&
    Left = 9555
    Top = 1335
    Width = 1170
    Height = 285
    TabIndex = 7
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
    Index = 7
    ForeColor = &HFF0000&
    Left = 5775
    Top = 1335
    Width = 2685
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 100
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
    ForeColor = &HFF0000&
    Left = 915
    Top = 1650
    Width = 3660
    Height = 285
    TabIndex = 5
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 930
    Top = 2295
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 150
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 2
    ForeColor = &HFF0000&
    Left = 3390
    Top = 1020
    Width = 1155
    Height = 285
    TabIndex = 2
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
    Index = 1
    ForeColor = &HFF0000&
    Left = 900
    Top = 1020
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &HFF0000&
    Left = 900
    Top = 1335
    Width = 3660
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1965
    Width = 13050
    Height = 5385
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 18315
    Top = 5820
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGItem
    Left = 12990
    Top = 7305
    Width = 7215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 15
    Top = 7485
    Width = 2745
    Height = 345
    TabIndex = 49
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Bar Code"
    Index = 2
    ForeColor = &HC00000&
    Left = 12480
    Top = 615
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 46
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7830
    Top = 7770
    Width = 2790
    Height = 285
    TabIndex = 42
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
    Left = 4455
    Top = 7770
    Width = 2880
    Height = 255
    TabIndex = 41
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
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 40
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
    Caption = "Total Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 240
    Top = 7935
    Width = 1275
    Height = 240
    TabIndex = 39
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
    Caption = "Indent No."
    Index = 0
    ForeColor = &HC00000&
    Left = 8505
    Top = 1020
    Width = 975
    Height = 240
    TabIndex = 35
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
    Caption = "DocID"
    Index = 12
    ForeColor = &H0&
    Left = 5205
    Top = 10680
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 25
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
  Begin Label Label1
    Caption = "Approved By"
    Index = 23
    ForeColor = &HC00000&
    Left = 10830
    Top = 1335
    Width = 1215
    Height = 240
    TabIndex = 31
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
    Caption = "Remark"
    Index = 22
    ForeColor = &HC00000&
    Left = 10830
    Top = 1635
    Width = 735
    Height = 240
    TabIndex = 30
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
    Caption = "Inspected By"
    Index = 21
    ForeColor = &HC00000&
    Left = 10815
    Top = 1020
    Width = 1215
    Height = 240
    TabIndex = 29
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
    Caption = "Inv. Date"
    Index = 16
    ForeColor = &HC00000&
    Left = 8505
    Top = 1635
    Width = 840
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
  Begin Label Label1
    Caption = "Inv. No."
    Index = 15
    ForeColor = &HC00000&
    Left = 4710
    Top = 1635
    Width = 720
    Height = 240
    TabIndex = 27
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
    Caption = "Challan Dt."
    Index = 14
    ForeColor = &HC00000&
    Left = 8475
    Top = 1335
    Width = 1050
    Height = 240
    TabIndex = 26
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
    Caption = "Challan No."
    Index = 11
    ForeColor = &HC00000&
    Left = 4665
    Top = 1335
    Width = 1110
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
  Begin Label Label1
    Caption = "P.O.No."
    Index = 10
    ForeColor = &HC00000&
    Left = 4665
    Top = 1020
    Width = 720
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
    Caption = "Party"
    Index = 7
    ForeColor = &HC00000&
    Left = 150
    Top = 1635
    Width = 495
    Height = 240
    TabIndex = 21
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
    ForeColor = &H0&
    Left = 19275
    Top = 5175
    Width = 690
    Height = 210
    Visible = 0   'False
    TabIndex = 20
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
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 2865
    Top = 1020
    Width = 435
    Height = 240
    TabIndex = 17
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
    Caption = "Type "
    Index = 4
    ForeColor = &HC00000&
    Left = 165
    Top = 1335
    Width = 525
    Height = 240
    TabIndex = 16
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
    Caption = "MR.No"
    Index = 3
    ForeColor = &HC00000&
    Left = 165
    Top = 1020
    Width = 615
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
End

Attribute VB_Name = "pMREntry"

Private global_116 As Integer
Private global_118 As Integer
Private global_172 As Double
Private global_52 As Integer
Private global_104 As Integer

Private Sub DGIndent_UnknownEvent_9 'F9F168
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F9EFFF: Me.DGIndent.Visible = False
  loc_F9F01E: If (Me.RecordCount > 0) Then
  loc_F9F05D:   Set var_B4 = Me.Txt
  loc_F9F063:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F9F06B:   var_B8.Text = CStr(Me.Fields.Item("VNo").Value)
  loc_F9F0BD:   Set var_B4 = Me.Txt
  loc_F9F0C3:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F9F0CB:   var_B8.Text = CStr(Me.Fields.Item("VDate").Value)
  loc_F9F0FE:   var_B0 = Me.Fields.Item("DocID")
  loc_F9F11D:   Set var_B4 = Me.Txt
  loc_F9F123:   Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F9F12B:   var_B8.Tag = CStr(var_B0.Value)
  loc_F9F141: End If
  loc_F9F14C: Set var_A8 = Me.Txt
  loc_F9F152: Call 0.Method_DGIndent_UnknownEvent_90 (CInt(&HE))
  loc_F9F15A: var_B0.SetFocus
  loc_F9F166: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF67D4
  'Data Table: 511010
  loc_EF6714: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF6717:   Call DGItem_UnknownEvent_9()
  loc_EF671C: End If
  loc_EF6738: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF673B:   Call DGVType_UnknownEvent_9()
  loc_EF6740: End If
  loc_EF675C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EF675F:   Call DGParty_UnknownEvent_9()
  loc_EF6764: End If
  loc_EF6780: If (CBool(Me.DGPreDoc.Visible) = &HFF) Then
  loc_EF6783:   Call DGPreDoc_UnknownEvent_9()
  loc_EF6788: End If
  loc_EF67A4: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_EF67A7:   Call DGGod_UnknownEvent_9()
  loc_EF67AC: End If
  loc_EF67C8: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_EF67CB:   Call DGIndent_UnknownEvent_9()
  loc_EF67D0: End If
  loc_EF67D0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA0F2C
  'Data Table: 511010
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA0EC7: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_88)) Then
  loc_EA0EDD:   Me.FGrid.Col = 1
  loc_EA0EE5: End If
  loc_EA0EF8: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA0F0B: Set var_88 = Me.TxtGrid
  loc_EA0F11: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA0F19: var_BC.Visible = False
  loc_EA0F25: Call Proc_90_68_F980B8()
  loc_EA0F2A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'EA0554
  'Data Table: 511010
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA04EC: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_EA04FE:   Me.FRectGrid.Visible = False
  loc_EA0506: End If
  loc_EA0512: Set var_88 = Me.TxtGrid
  loc_EA0518: Call 0.Method_FGrid_UnknownEvent_10 (0, var_BC)
  loc_EA0532: If (var_BC.Visible = 0) Then
  loc_EA054B:   Me.FGrid.BackColorSel = CVar(CLng(global_88))
  loc_EA0553: End If
  loc_EA0553: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE6BC
  'Data Table: 511010
  loc_DFE6B4: Call Proc_90_62_E3F5B4()
  loc_DFE6B9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '111F540
  'Data Table: 511010
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_EC As Long
  loc_111F1E4: Set var_88 = Me.TopCtrl1
  loc_111F1EA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_111F22F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_111F238:   Call Form_KeyDown(KeyCode, Shift)
  loc_111F23D: End If
  loc_111F241: Set var_88 = Me.TopCtrl1
  loc_111F247: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_111F260: If (CStr() = "Browse") Then
  loc_111F263:   Exit Sub
  loc_111F264: End If
  loc_111F2D8: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_111F2F1:   Me.FGrid.CellBackColor = CVar(CLng(global_88))
  loc_111F301:   var_9C = "+{Tab}"
  loc_111F307:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_111F311:   KeyCode = 0
  loc_111F317: Else
  loc_111F321:   var_B0 = Me.FGrid.Rows
  loc_111F36E:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_111F387:     Me.FGrid.CellBackColor = CVar(CLng(global_88))
  loc_111F39D:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_111F3A7:     KeyCode = 0
  loc_111F3AA:   End If
  loc_111F3AA: End If
  loc_111F3B0: global_116 = KeyCode
  loc_111F3D6: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_111F3FA: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_111F410:   var_EC = CLng(Me.FGrid.Col)
  loc_111F420:   If Not (var_EC = CLng(1)) Then
  loc_111F42A:     If Not (var_EC = CLng(&HE)) Then
  loc_111F434:       If (var_EC = CLng(2)) Then
  loc_111F437:       End If
  loc_111F437:     End If
  loc_111F43A:   Else
  loc_111F441:     If Not (var_EC = CLng(5)) Then
  loc_111F44B:       If Not (var_EC = CLng(6)) Then
  loc_111F455:         If Not (var_EC = CLng(7)) Then
  loc_111F45F:           If (var_EC = CLng(4)) Then
  loc_111F462:           End If
  loc_111F462:         End If
  loc_111F462:       End If
  loc_111F4A2:       LateIdCallSt
  loc_111F4BA:       Call Proc_90_73_118CAB8(Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_111F4C2:     Else
  loc_111F4C9:       If (var_EC = CLng(&HB)) Then
  loc_111F50C:         LateIdCallSt
  loc_111F524:         Call Proc_90_73_118CAB8(Me.FGrid, vbNullString, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), global_116)
  loc_111F529:       End If
  loc_111F529:     End If
  loc_111F529:   End If
  loc_111F529: End If
  loc_111F52F: If (KeyCode = &HD) Then
  loc_111F537:   global_118 = 0
  loc_111F53A: End If
  loc_111F53C: KeyCode = 0
  loc_111F53F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E107F0
  'Data Table: 511010
  loc_E107E1: Call FGrid_UnknownEvent_C()
  loc_E107EB: global_118 = 0
  loc_E107EE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1436FA0
  'Data Table: 511010
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A8 As TextBox
  Dim var_DC As Variant
  Dim var_10C As Variant
  Dim var_11E As Integer
  Dim var_A4 As Variant
  Dim var_118 As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_1C8 As Variant
  loc_14364E0: Set var_88 = Me.TopCtrl1
  loc_14364E6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_14364FF: If (CStr() = "Browse") Then
  loc_1436502:   Exit Sub
  loc_1436503: End If
  loc_1436516: var_A0 = CLng(Me.FGrid.Col)
  loc_1436526: If (var_A0 = CLng(1)) Then
  loc_143652D:   Set var_88 = Me.TopCtrl1
  loc_1436533:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_A0)
  loc_1436555:   Set var_A4 = Me.Txt
  loc_143655B:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A8)
  loc_14365A0:   If CBool((CStr() = "Edit") And (Trim(CVar(var_A8.Tag)) <> "MRCR")) Then
  loc_14365A7:     Set var_118 = Me.FGrid
  loc_14365CB:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_14365D4:     var_11E = Asc(var_9C)
  loc_14365F8:     Set var_A4 = var_118
  loc_143660A:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0)
  loc_1436632:     Set var_88 = Me.TxtGrid
  loc_1436638:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_1436640:     var_11E = var_A4.Text
  loc_1436659:     If (Len(var_9C) <= 1) Then
  loc_1436668:       Set var_88 = Me.TxtGrid
  loc_143666E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_1436676:       0 = var_A4.Text
  loc_1436687:       Set var_A8 = Me.TxtGrid
  loc_143668D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1436695:       var_118.Text = var_9C
  loc_14366A8:     End If
  loc_14366B4:     Set var_88 = Me.TxtGrid
  loc_14366BA:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_14366D4:     Set var_A8 = Me.TxtGrid
  loc_14366DA:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_14366E2:     var_118.SelStart = Len(var_A4.Text)
  loc_14366F8:   Else
  loc_14366FC:     Set var_88 = Me.TopCtrl1
  loc_1436702:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_11E)
  loc_143671B:     If (CStr() = "Add") Then
  loc_1436722:       Set var_118 = Me.FGrid
  loc_1436746:       var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_143674F:       var_11E = Asc(var_9C)
  loc_1436773:       Set var_A4 = var_118
  loc_1436785:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0)
  loc_14367AD:       Set var_88 = Me.TxtGrid
  loc_14367B3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_14367BB:       var_11E = var_A4.Text
  loc_14367D4:       If (Len(var_9C) <= 1) Then
  loc_14367E3:         Set var_88 = Me.TxtGrid
  loc_14367E9:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_14367F1:         0 = var_A4.Text
  loc_1436802:         Set var_A8 = Me.TxtGrid
  loc_1436808:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1436810:         var_118.Text = var_9C
  loc_1436823:       End If
  loc_143682F:       Set var_88 = Me.TxtGrid
  loc_1436835:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_143684F:       Set var_A8 = Me.TxtGrid
  loc_1436855:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_143685D:       var_118.SelStart = Len(var_A4.Text)
  loc_1436873:     Else
  loc_143687D:       If (CLng(KeyCode) = &HD) Then
  loc_1436892:         Me.FGrid.Col = CVar(CLng(2))
  loc_143689A:       End If
  loc_143689A:     End If
  loc_143689A:   End If
  loc_143689E:   Set var_88 = Me.TopCtrl1
  loc_14368A4:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_11E)
  loc_14368C6:   Set var_A4 = Me.Txt
  loc_14368CC:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A8)
  loc_14368D4:   var_AC = var_A8.Tag
  loc_1436911:   If CBool((CStr() = "Edit") And (Trim(CVar(var_AC)) = "MRCR")) Then
  loc_1436918:     Set var_118 = Me.FGrid
  loc_143693C:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1436945:     var_11E = Asc(var_9C)
  loc_1436969:     Set var_A4 = var_118
  loc_143697B:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0)
  loc_14369A3:     Set var_88 = Me.TxtGrid
  loc_14369A9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0)
  loc_14369B1:     var_11E = var_A4.Text
  loc_14369CA:     If (Len(var_9C) <= 1) Then
  loc_14369D9:       Set var_88 = Me.TxtGrid
  loc_14369DF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_14369E7:       0 = var_A4.Text
  loc_14369F8:       Set var_A8 = Me.TxtGrid
  loc_14369FE:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1436A06:       var_118.Text = var_9C
  loc_1436A19:     End If
  loc_1436A25:     Set var_88 = Me.TxtGrid
  loc_1436A2B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1436A45:     Set var_A8 = Me.TxtGrid
  loc_1436A4B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_118)
  loc_1436A53:     var_118.SelStart = Len(var_A4.Text)
  loc_1436A66:   End If
  loc_1436A69: Else
  loc_1436A70:   If (var_A0 = CLng(&HE)) Then
  loc_1436AA4:     var_11E = Asc(CStr(Ucase(Chr(CLng(KeyCode)))))
  loc_1436ADA:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_1436AF9:   Else
  loc_1436B00:     If (var_A0 = CLng(2)) Then
  loc_1436B34:       var_11E = Asc(CStr(Ucase(Chr(CLng(KeyCode)))))
  loc_1436B6A:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, var_11E)
  loc_1436B89:     Else
  loc_1436B90:       If Not (var_A0 = CLng(5)) Then
  loc_1436B9A:         If Not (var_A0 = CLng(&HB)) Then
  loc_1436BA4:           If Not (var_A0 = CLng(6)) Then
  loc_1436BAE:             If (var_A0 = CLng(7)) Then
  loc_1436BB1:             End If
  loc_1436BB1:           End If
  loc_1436BB1:         End If
  loc_1436BEF:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_1436C04:       Else
  loc_1436C0B:         If (var_A0 = CLng(4)) Then
  loc_1436C2B:           If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_1436C41:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1436C49:             var_130 = CVar(CLng(4)) 'Long
  loc_1436C6E:             global_172 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1436C82:           End If
  loc_1436C86:           Set var_88 = Me.TopCtrl1
  loc_1436C8C:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(global_172)
  loc_1436CA5:           If (CStr(var_130) = "Add") Then
  loc_1436CCB:             Set var_A8 = Me.TxtGrid
  loc_1436CE6:             Proc_6_63_110ABA4(Me, Me.FGrid, var_A8, 0, &HFF, KeyCode, 0)
  loc_1436CFB:           Else
  loc_1436CFF:             Set var_88 = Me.TopCtrl1
  loc_1436D05:             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_DC)
  loc_1436D27:             Set var_A4 = Me.Txt
  loc_1436D2D:             Call 0.Method_FGrid_UnknownEvent_C0 (CInt(0), var_A8, var_AC, (CStr(0) = "Edit"), var_11E)
  loc_1436D35:             var_11E = var_A8.Tag
  loc_1436D55:             var_10C = 0 And (Trim(CVar(var_AC)) <> "MRCR")
  loc_1436D6C:             var_130 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1436D9A:             var_1A4 = CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)
  loc_1436DB1:             var_1C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1436E16:             If CBool(CVar(CLng(&H15)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1436E57:               Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_1436E69:             End If
  loc_1436E69:           End If
  loc_1436E6C:         Else
  loc_1436E73:           If (var_A0 = CLng(&HF)) Then
  loc_1436EDD:             Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))), 0)
  loc_1436EFC:           Else
  loc_1436F03:             If (var_A0 = CLng(&H10)) Then
  loc_1436F6D:               Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))), 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_1436F89:             End If
  loc_1436F89:           End If
  loc_1436F89:         End If
  loc_1436F89:       End If
  loc_1436F89:     End If
  loc_1436F89:   End If
  loc_1436F89: End If
  loc_1436F93: If (CLng(KeyCode) <> &HD) Then
  loc_1436F9B:   global_118 = &HFF
  loc_1436F9E: End If
  loc_1436F9E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10F455C
  'Data Table: 511010
  Dim var_8C As MSHFlexGrid
  Dim var_A8 As TextBox
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_1A4 As Boolean
  Dim var_160 As Integer
  Dim unk_51103F As Connection15
  Dim var_14C As Recordset15
  Dim var_150 As Fields15
  Dim var_164 As Field20
  loc_10F4274: Set var_8C = Me.TopCtrl1
  loc_10F427A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_10F4293: If (CStr() = "Browse") Then
  loc_10F4296:   Exit Sub
  loc_10F4297: End If
  loc_10F42B4: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10F42B7:   Exit Sub
  loc_10F42B8: End If
  loc_10F42C9: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_10F42EB:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10F42FC:     Set var_A4 = Me.Txt
  loc_10F4302:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(9), var_A8)
  loc_10F4322:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F4339:     var_118 = Me.FGrid.TextMatrix)
  loc_10F4349:     Set var_8C = Me.TopCtrl1
  loc_10F434F:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_118)
  loc_10F435F:     var_1A4 = (CStr(CVar(CLng(&H11))) = "Edit")
  loc_10F4369:     var_160 = 0
  loc_10F43A8:     unk_51103F.Execute "Select Count(*) from Purch2 where ContraDocId='" & var_A8.Text & "' and Item='" & CStr(var_118) & "'", var_148, -1
  loc_10F43B0:     var_14C = var_14C.Fields
  loc_10F43B8:     var_160 = var_150.Item(var_150)
  loc_10F43C0:     var_164 = var_164.Value
  loc_10F440B:     If CBool(var_174 And (var_174 > 0)) Then
  loc_10F440E:       Exit Sub
  loc_10F440F:     End If
  loc_10F4446:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_118, var_148) = 6) Then
  loc_10F4468:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10F447E:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F4487:         Set var_A4 = Me.FGrid
  loc_10F44A2:       Else
  loc_10F44B5:         Me.FGrid.Rows = 1
  loc_10F44D2:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10F44DA:         Set var_A4 = Me.FGrid
  loc_10F4509:         Me.FGrid.FixedRows = 1
  loc_10F4511:       End If
  loc_10F4511:     End If
  loc_10F4514:   Else
  loc_10F4535:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_118, var_148)
  loc_10F4545:   End If
  loc_10F4549:   Set var_8C = Me.FGrid
  loc_10F455A: End If
  loc_10F455A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'FEF4D8
  'Data Table: 511010
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_110 As Variant
  loc_FEF2FF: If (global_164 = "Yes") Then
  loc_FEF308:   If (KeyCode = 2) Then
  loc_FEF30F:     Set var_88 = Me.FGrid
  loc_FEF32E:     Me.FRectGrid.Visible = True
  loc_FEF349:     Me.FRectGrid.Rows = 0
  loc_FEF351:     var_98 = "Print Receipt"
  loc_FEF35B:     Set var_88 = Me.FRectGrid
  loc_FEF36C:     var_98 = 0
  loc_FEF375:     var_B8 = &H12C
  loc_FEF382:     Set var_88 = Me.FRectGrid
  loc_FEF388:     LateIdCallSt
  loc_FEF393:     var_98 = 0
  loc_FEF3C2:     Me.FRectGrid.Height = CVar(CDbl(CLng(Me.FRectGrid.RowHeight))))
  loc_FEF3D1:     var_98 = 0
  loc_FEF3DA:     var_B8 = &H5DC
  loc_FEF3E7:     Set var_88 = Me.FRectGrid
  loc_FEF3ED:     LateIdCallSt
  loc_FEF40B:     Me.FRectGrid.Width = CVar(CDbl(1510))
  loc_FEF413:     var_98 = 0
  loc_FEF432:     var_B8 = 0
  loc_FEF47A:     var_110 = CVar((((CDbl(Me.FGrid.Top) + arg_18) + CDbl(CLng(Me.FRectGrid.RowHeight)))) - (CDbl(CLng(Me.FRectGrid.RowHeight))) / CDbl(4)))) 'Single
  loc_FEF489:     Me.FRectGrid.Top = var_110
  loc_FEF4B9:     var_98 = CVar((CDbl(Me.FGrid.Left) + arg_14)) 'Single
  loc_FEF4C8:     Me.FRectGrid.Left = var_98
  loc_FEF4D7:   End If
  loc_FEF4D7: End If
  loc_FEF4D7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E5371C
  'Data Table: 511010
  loc_E53700: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E53712:   Me.FRectGrid.Visible = False
  loc_E5371A: End If
  loc_E5371A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3EA00
  'Data Table: 511010
  Dim var_8C As TextBox
  loc_E3E9D4: Call Proc_90_68_F980B8()
  loc_E3E9E4: Set var_88 = Me.TxtGrid
  loc_E3E9EA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3E9F2: var_8C.Visible = False
  loc_E3E9FE: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128715C
  'Data Table: 511010
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_108 As TextBox
  loc_1286B94: Call Proc_90_68_F980B8()
  loc_1286BA5: If (Index = 0) Then
  loc_1286BBE:   Me.FGrid.CellBackColor = CVar(CLng(global_88))
  loc_1286BD9:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286C18:   Set var_108 = Me.TxtGrid
  loc_1286C1E:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1286C26:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1286C57:   var_114 = CLng(Me.FGrid.Col)
  loc_1286C67:   If (var_114 = CLng(1)) Then
  loc_1286C7D:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286CA5:     global_124 = CStr(Me.FGrid.TextMatrix))
  loc_1286CD1:     If (Me.RecordCount > 0) Then
  loc_1286CF7:       Proc_6_137_1193554(Me.DGItem, global_64, Index, Me.FGPoint, CVar(CLng(&H11)))
  loc_1286D05:     End If
  loc_1286D46:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1286D49:       Exit Sub
  loc_1286D4A:     End If
  loc_1286D5D:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286D65:     var_E0 = CVar(CLng(1)) 'Long
  loc_1286D98:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1286DA1:       Me.MoveFirst
  loc_1286DE1:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H11)))
  loc_1286E0A:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1286E3A:       If (Me.EOF = &HFF) Then
  loc_1286E43:         Me.MoveFirst
  loc_1286E48:       End If
  loc_1286E48:     End If
  loc_1286E4B:   Else
  loc_1286E52:     If (var_114 = CLng(&HE)) Then
  loc_1286E68:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286E90:       global_124 = CStr(Me.FGrid.TextMatrix))
  loc_1286EBC:       If (Me.RecordCount > 0) Then
  loc_1286ECA:         Set var_C0 = Me.FGPoint
  loc_1286EE2:         Proc_6_137_1193554(Me.DGGod, global_72, Index, var_C0, CVar(CLng(&H11)), var_98)
  loc_1286EF0:       End If
  loc_1286EF9:       var_118 = Me.RecordCount
  loc_1286F31:       If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1286F34:         Exit Sub
  loc_1286F35:       End If
  loc_1286F42:       Set var_F4 = Me.TxtGrid
  loc_1286F48:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_160, var_15C, var_98)
  loc_1286F50:       var_98 = var_108.Height
  loc_1286F62:       Set var_AC = Me.TxtGrid
  loc_1286F68:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_1286F70:       var_114 = var_C0.Top
  loc_1286F7C:       var_98 = CVar((var_118 + var_160)) 'Single
  loc_1286F8B:       Me.DGGod.Top = var_98
  loc_1286FAA:       Set var_AC = Me.TxtGrid
  loc_1286FB0:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_1286FB8:       var_98 = var_C0.Left
  loc_1286FCF:       Me.DGGod.Left = CVar(var_118)
  loc_1286FF0:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1286FF8:       var_E0 = CVar(CLng(&HE)) 'Long
  loc_128702B:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1287034:         Me.MoveFirst
  loc_1287074:         Proc_6_17_EAA2B0(var_12C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)))
  loc_128709D:         Me.Find CStr("Code =" & var_12C), 0, 1
  loc_12870CD:         If (Me.EOF = &HFF) Then
  loc_12870D6:           Me.MoveFirst
  loc_12870DB:         End If
  loc_12870DB:       End If
  loc_12870DE:     Else
  loc_12870E5:       If Not (var_114 = CLng(5)) Then
  loc_12870EF:         If Not (var_114 = CLng(&HB)) Then
  loc_12870F9:           If Not (var_114 = CLng(6)) Then
  loc_1287103:             If Not (var_114 = CLng(8)) Then
  loc_128710D:               If Not (var_114 = CLng(7)) Then
  loc_1287117:                 If (var_114 = CLng(4)) Then
  loc_128711A:                 End If
  loc_128711A:               End If
  loc_128711A:             End If
  loc_128711A:           End If
  loc_128711A:         End If
  loc_1287135:         If (Me.TxtBarCode.Visible = 0) Then
  loc_1287141:           If (global_118 = 0) Then
  loc_128714C:             var_110 = "{Home}+{End}"
  loc_1287152:             Proc_303_0_FB9B68(CStr("Code =" & var_12C), 0, var_15C)
  loc_128715A:           End If
  loc_128715A:         End If
  loc_128715A:       End If
  loc_128715A:     End If
  loc_128715A:   End If
  loc_128715A: End If
  loc_128715A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13EA02C
  'Data Table: 511010
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_98 As DataGrid
  loc_13E961F: var_86 = Shift
  loc_13E962E: If (KeyCode = 0) Then
  loc_13E963B:   If (CLng(Shift) = &H1B) Then
  loc_13E964B:     Set var_8C = Me.TxtGrid
  loc_13E9651:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13E9659:     var_88 = var_90.Tag
  loc_13E966B:     Set var_98 = Me.TxtGrid
  loc_13E9671:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13E9679:     var_9C.Text = var_94
  loc_13E9695:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13E969A:     Call Proc_90_68_F980B8(arg_14)
  loc_13E96A3:     Set var_8C = Me.FGrid
  loc_13E96C0:     Set var_8C = Me.TxtGrid
  loc_13E96C6:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13E96CE:     var_90.Visible = FGrid.DispID_8001
  loc_13E96DA:     Exit Sub
  loc_13E96DB:   End If
  loc_13E96FE:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_13E970C:     If (global_164 = "Yes") Then
  loc_13E972C:       Set var_9C = Me.FGPoint
  loc_13E9737:       Set var_98 = Nothing
  loc_13E9765:       Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_13E977E:     Else
  loc_13E979B:       Set var_9C = Me.FGPoint
  loc_13E97D4:       Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 2, Nothing)
  loc_13E97EA:     End If
  loc_13E97F3:     var_C8 = Me.RecordCount
  loc_13E9843:     If ((var_C8 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13E9851:       Set var_90 = Me.FGPoint
  loc_13E9869:       Proc_6_138_106D6F8(Me.DGItem, global_64, KeyCode, var_90, var_9C, 0)
  loc_13E9877:     End If
  loc_13E988A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_CC, 1, Me.TxtGrid)
  loc_13E9892:     var_9C = var_9C.Height
  loc_13E98A4:     Set var_8C = Me.TxtGrid
  loc_13E98AA:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_13E98B2:     0 = var_90.Top
  loc_13E98BE:     var_DC = CVar((var_C8 + var_CC)) 'Single
  loc_13E98CD:     Me.DGItem.Top = var_DC
  loc_13E98EC:     Set var_8C = Me.TxtGrid
  loc_13E98F2:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_13E98FA:     var_B0 = var_90.Left
  loc_13E9911:     Me.DGItem.Left = CVar(var_C8)
  loc_13E9929:     If (CLng(Shift) = &HD) Then
  loc_13E9932:       Call Proc_90_63_1762DC0(KeyCode, var_B2)
  loc_13E993D:       If (var_B2 = &HFF) Then
  loc_13E998A:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118)
  loc_13E999A:       End If
  loc_13E999A:     End If
  loc_13E999D:   Else
  loc_13E99A4:     If (var_B0 = CLng(&HE)) Then
  loc_13E99FD:       Proc_6_69_134A198(Me.DGGod, Me.TxtGrid, KeyCode, global_72, Shift, &HFF, 1, Nothing)
  loc_13E9A6C:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13E9A92:         Proc_6_138_106D6F8(Me.DGGod, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13E9AA0:       End If
  loc_13E9AAA:       If (CLng(Shift) = &HD) Then
  loc_13E9AB3:         Call Proc_90_63_1762DC0(KeyCode, var_B2, CByte((CInt(&HE) + 1)), 0)
  loc_13E9ABE:         If (var_B2 = &HFF) Then
  loc_13E9ACC:           If (global_180 = "YES") Then
  loc_13E9B19:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)))
  loc_13E9B2C:           Else
  loc_13E9B76:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0, 0)
  loc_13E9B86:           End If
  loc_13E9B86:         End If
  loc_13E9B86:       End If
  loc_13E9B89:     Else
  loc_13E9B90:       If Not (var_B0 = CLng(6)) Then
  loc_13E9B9A:         If (var_B0 = CLng(4)) Then
  loc_13E9B9D:         End If
  loc_13E9BDD:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13E9BE6:           Call Proc_90_63_1762DC0(KeyCode, var_B2, 0, 0, &HF)
  loc_13E9BF1:           If (var_B2 = &HFF) Then
  loc_13E9C3E:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13E9C4E:           End If
  loc_13E9C4E:         End If
  loc_13E9C51:       Else
  loc_13E9C58:         If Not (var_B0 = CLng(5)) Then
  loc_13E9C62:           If (var_B0 = CLng(8)) Then
  loc_13E9C65:           End If
  loc_13E9CA5:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13E9CAE:             Call Proc_90_63_1762DC0(KeyCode, var_B2, 0, 0)
  loc_13E9CB9:             If (var_B2 = &HFF) Then
  loc_13E9D06:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13E9D16:             End If
  loc_13E9D16:           End If
  loc_13E9D19:         Else
  loc_13E9D20:           If (var_B0 = CLng(7)) Then
  loc_13E9D63:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13E9D6C:               Call Proc_90_63_1762DC0(KeyCode, var_B2, 0, 0)
  loc_13E9D77:               If (var_B2 = &HFF) Then
  loc_13E9DC4:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13E9DD4:               End If
  loc_13E9DD4:             End If
  loc_13E9DD7:           Else
  loc_13E9DDE:             If (var_B0 = CLng(&HB)) Then
  loc_13E9E21:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_118 = &HFF))) Then
  loc_13E9E2A:                 Call Proc_90_63_1762DC0(KeyCode, var_B2, &HB, 0)
  loc_13E9E35:                 If (var_B2 = &HFF) Then
  loc_13E9E82:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13E9E92:                 End If
  loc_13E9E92:               End If
  loc_13E9E95:             Else
  loc_13E9E9C:               If (var_B0 = CLng(2)) Then
  loc_13E9EA9:                 If (CLng(Shift) = &HD) Then
  loc_13E9EB2:                   Call Proc_90_63_1762DC0(KeyCode, var_B2, &HE, 0)
  loc_13E9EBD:                   If (var_B2 = &HFF) Then
  loc_13E9F0A:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13E9F1A:                   End If
  loc_13E9F1A:                 End If
  loc_13E9F1D:               Else
  loc_13E9F24:                 If (var_B0 = CLng(&HF)) Then
  loc_13E9F31:                   If (CLng(Shift) = &HD) Then
  loc_13E9F3A:                     Call Proc_90_63_1762DC0(KeyCode, var_B2, 5, 0)
  loc_13E9F45:                     If (var_B2 = &HFF) Then
  loc_13E9F92:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13E9FA2:                     End If
  loc_13E9FA2:                   End If
  loc_13E9FA5:                 Else
  loc_13E9FAC:                   If (var_B0 = CLng(&H10)) Then
  loc_13E9FB9:                     If (CLng(Shift) = &HD) Then
  loc_13E9FC2:                       Call Proc_90_63_1762DC0(KeyCode, var_B2, &H10, 0)
  loc_13E9FCD:                       If (var_B2 = &HFF) Then
  loc_13EA01A:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_118, CByte((CInt(&HE) + 1)), 0)
  loc_13EA02A:                       End If
  loc_13EA02A:                     End If
  loc_13EA02A:                   End If
  loc_13EA02A:                 End If
  loc_13EA02A:               End If
  loc_13EA02A:             End If
  loc_13EA02A:           End If
  loc_13EA02A:         End If
  loc_13EA02A:       End If
  loc_13EA02A:     End If
  loc_13EA02A:   End If
  loc_13EA02A: End If
  loc_13EA02A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11459CC
  'Data Table: 511010
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  Dim arg_10 As Integer
  loc_1145633: Proc_6_58_E054C0(arg_10)
  loc_1145644: If (KeyAscii = 0) Then
  loc_114566A:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1145689:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1145697:       If (global_164 = "Yes") Then
  loc_11456A6:         Set var_94 = Me.TxtGrid
  loc_11456AC:         Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, var_B0)
  loc_11456B4:         var_A8 = var_AC.Text
  loc_11456CE:         var_88 = arg_10
  loc_11456D5:         Set var_AC = Me.TxtGrid
  loc_11456E0:         var_B0 = "BarCode"
  loc_11456FB:         Proc_6_89_146F1AC(var_AC, KeyAscii, global_64, arg_10, var_B0)
  loc_1145716:         Set var_94 = Me.TxtGrid
  loc_114571C:         Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, var_B0, 0)
  loc_1145724:         var_88 = var_AC.Text
  loc_114573C:         If (Len(var_B0) = CLng(CInt(Len(var_B0)))) Then
  loc_1145756:           If (Me.AbsolutePosition > 0) Then
  loc_114576A:             var_8C = Me.AbsolutePosition
  loc_1145770:           Else
  loc_1145775:             var_8C = 1
  loc_1145778:           End If
  loc_114577B:           arg_10 = var_88
  loc_11457A8:           Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_11457CE:           If (Me.AbsolutePosition <= 0) Then
  loc_11457DA:             Me.AbsolutePosition = var_8C
  loc_11457DF:           End If
  loc_11457DF:         End If
  loc_11457E2:       Else
  loc_114580C:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_114581B:       End If
  loc_114583E:       Proc_6_138_106D6F8(Me.DGItem, global_64, KeyAscii, Me.FGPoint, arg_10)
  loc_114584C:     End If
  loc_114584F:   Else
  loc_1145856:     If (var_A8 = CLng(&HE)) Then
  loc_1145875:       If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_11458A2:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10, "Name")
  loc_11458BC:         Set var_AC = Me.FGPoint
  loc_11458D4:         Proc_6_138_106D6F8(Me.DGGod, global_72, KeyAscii, var_AC, 0)
  loc_11458E2:       End If
  loc_11458E5:     Else
  loc_11458EC:       If Not (var_A8 = CLng(5)) Then
  loc_11458F6:         If Not (var_A8 = CLng(6)) Then
  loc_1145900:           If Not (var_A8 = CLng(8)) Then
  loc_114590A:             If (var_A8 = CLng(7)) Then
  loc_114590D:             End If
  loc_114590D:           End If
  loc_114590D:         End If
  loc_1145917:         Set var_94 = Me.TxtGrid
  loc_114591D:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_8C)
  loc_1145938:         Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_1145947:       Else
  loc_114594E:         If Not (var_A8 = CLng(&HB)) Then
  loc_1145958:           If (var_A8 = CLng(4)) Then
  loc_114595B:           End If
  loc_1145965:           Set var_94 = Me.TxtGrid
  loc_114596B:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_8C)
  loc_1145986:           Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_1145995:         Else
  loc_114599C:           If (var_A8 = CLng(2)) Then
  loc_11459AE:             Set var_94 = Me.TxtGrid
  loc_11459B4:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H23)
  loc_11459BC:             var_AC.MaxLength = 2
  loc_11459C8:           End If
  loc_11459C8:         End If
  loc_11459C8:       End If
  loc_11459C8:     End If
  loc_11459C8:   End If
  loc_11459C8: End If
  loc_11459C8: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F9A4BC
  'Data Table: 511010
  Dim var_A0 As Long
  loc_F9A340: On Error Goto loc_F9A4B4
  loc_F9A34F: If (KeyCode = 0) Then
  loc_F9A365:   var_A0 = CLng(Me.FGrid.Col)
  loc_F9A375:   If (var_A0 = CLng(1)) Then
  loc_F9A39B:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F9A3AC:       Call TxtGrid_KeyDown(KeyCode, global_116)
  loc_F9A3BC:       If (global_164 = "Yes") Then
  loc_F9A3E9:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "BarCode")
  loc_F9A3FB:       Else
  loc_F9A425:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_F9A434:       End If
  loc_F9A434:     End If
  loc_F9A437:   Else
  loc_F9A43E:     If (var_A0 = CLng(&HE)) Then
  loc_F9A464:       If ((Shift <> &HD) And (CBool(Me.DGGod.Visible) = 0)) Then
  loc_F9A475:         Call TxtGrid_KeyDown(KeyCode, global_116)
  loc_F9A4A4:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_72, Shift, "Name", &HFF)
  loc_F9A4B3:       End If
  loc_F9A4B3:     End If
  loc_F9A4B3:   End If
  loc_F9A4B3: End If
  loc_F9A4B3: Exit Sub
  loc_F9A4B4: ' Referenced from: F9A340
  loc_F9A4B4: Proc_6_60_E62BC4(0, &HFF, &HFF)
  loc_F9A4B9: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E348DC
  'Data Table: 511010
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E348AF: var_86 = Cancel
  loc_E348B8: If (var_86 = 0) Then
  loc_E348C1:   Call Proc_90_63_1762DC0(Cancel, var_88)
  loc_E348CA:   arg_10 = Not(var_88)
  loc_E348D0: Else
  loc_E348D8:   If (var_86 = CInt(&HF)) Then
  loc_E348DB:   End If
  loc_E348DB: End If
  loc_E348DB: Exit Sub
End Sub

Private Sub FRectGrid_UnknownEvent_9 'E2AE78
  'Data Table: 511010
  loc_E2AE6B: Call Proc_90_61_10B9538(CInt(CLng(Me.FRectGrid.Row)))
  loc_E2AE76: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1361F64
  'Data Table: 511010
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_C4 As Variant
  loc_1361726: Set var_88 = Me.Txt
  loc_136172C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_136173A: Proc_6_74_E226B0(var_8C)
  loc_1361746: Call Proc_90_68_F980B8(var_8C)
  loc_136174E: var_92 = Index
  loc_1361759: If (var_92 = CInt(0)) Then
  loc_136176F:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1361788:   Set var_88 = Me.Txt
  loc_136178E:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1361796:   var_B8 = var_8C.Text
  loc_13617A1:   global_120 = var_B8
  loc_13617C6:   If (Me.RecordCount > 0) Then
  loc_13617D4:     Set var_8C = Me.FGPoint
  loc_13617EC:     Proc_6_137_1193554(Me.DGVType, global_60, Index)
  loc_13617FA:   End If
  loc_1361848:   Set var_88 = Me.Txt
  loc_136184E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8)
  loc_1361856:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_136186E:   If (var_8C Or (var_B8 = vbNullString)) Then
  loc_1361871:     Exit Sub
  loc_1361872:   End If
  loc_136187F:   Set var_88 = Me.Txt
  loc_1361885:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_136188D:   var_B8 = var_8C.Text
  loc_1361895:   var_D4 = CVar(var_B8) 'String
  loc_13618B6:   var_C4 = Me.Fields.Item("Name")
  loc_13618DA:   If CBool(var_D4 <> var_C4.Value) Then
  loc_13618E3:     Me.MoveFirst
  loc_1361908:     Set var_88 = Me.Txt
  loc_136190E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Name =")
  loc_1361916:     0 = var_8C.Text
  loc_1361924:     Proc_6_17_EAA2B0(var_D4, CVar(var_B8), 1)
  loc_136193A:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1361952:   End If
  loc_1361955: Else
  loc_136195D:   If (var_92 = CInt(4)) Then
  loc_136196E:     Set var_88 = Me.Txt
  loc_1361974:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1361993:     Me.DGPreDoc.Left = CVar(var_8C.Left)
  loc_13619AF:     Set var_90 = Me.Txt
  loc_13619B5:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_C4)
  loc_13619D0:     Set var_88 = Me.Txt
  loc_13619D6:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_13619EE:     var_B4 = CVar(((var_8C.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_13619FD:     Me.DGPreDoc.Top = CVar(var_8C.Left)
  loc_1361A26:     If (Me.RecordCount > 0) Then
  loc_1361A34:       Set var_8C = Me.FGPoint
  loc_1361A4C:       Proc_6_137_1193554(Me.DGPreDoc, global_84)
  loc_1361A5A:     End If
  loc_1361AA8:     Set var_88 = Me.Txt
  loc_1361AAE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8)
  loc_1361AB6:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1361ACE:     If (Index Or (var_B8 = vbNullString)) Then
  loc_1361AD1:       Exit Sub
  loc_1361AD2:     End If
  loc_1361ADF:     Set var_88 = Me.Txt
  loc_1361AE5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1361AED:     var_B8 = var_8C.Text
  loc_1361AFF:     var_B4 = "Name"
  loc_1361B3A:     If CBool(CVar(var_B8) <> Me.Fields.Item(var_B4).Value) Then
  loc_1361B43:       Me.MoveFirst
  loc_1361B66:       Set var_88 = Me.Txt
  loc_1361B6C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Name ='")
  loc_1361B74:       0 = var_8C.Text
  loc_1361B8D:       Me.Find 1 & var_B8 & "'", var_B4, var_8C
  loc_1361BA2:     End If
  loc_1361BAB:     CVarUnk
  loc_1361BB0:     VerifyVarObj
  loc_1361BB6:     Set var_88 = Me.DGPreDoc
  loc_1361BBC:     LateIdStAd
  loc_1361BCD:   Else
  loc_1361BD5:     If (var_92 = CInt(&HE)) Then
  loc_1361BEB:       Me.DGIndent.Tag = CVar(CStr(Index))
  loc_1361C0D:       If (Me.RecordCount > 0) Then
  loc_1361C1B:         Set var_8C = Me.FGPoint
  loc_1361C33:         Proc_6_137_1193554(Me.DGIndent, global_76, Index)
  loc_1361C41:       End If
  loc_1361C95:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1361C9D:       var_8C = var_8C.Text
  loc_1361CB5:       If (Me.Txt Or (var_B8 = vbNullString)) Then
  loc_1361CB8:         Exit Sub
  loc_1361CB9:       End If
  loc_1361CC6:       Set var_88 = Me.Txt
  loc_1361CCC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1361CD4:       var_B8 = var_8C.Text
  loc_1361CDC:       var_D4 = CVar(var_B8) 'String
  loc_1361D21:       If CBool(var_D4 <> Me.Fields.Item("VNo").Value) Then
  loc_1361D2A:         Me.MoveFirst
  loc_1361D4F:         Set var_88 = Me.Txt
  loc_1361D55:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Vno =")
  loc_1361D5D:         0 = var_8C.Text
  loc_1361D6B:         Proc_6_17_EAA2B0(var_D4, CVar(var_B8), 1)
  loc_1361D81:         Me.Find CStr(var_F8 & var_D4), global_84, 
  loc_1361D99:       End If
  loc_1361D9C:     Else
  loc_1361DA4:       If (var_92 = CInt(6)) Then
  loc_1361DBE:         If (Me.RecordCount > 0) Then
  loc_1361DCC:           Set var_8C = Me.FGPoint
  loc_1361DE4:           Proc_6_137_1193554(Me.DGParty, global_68)
  loc_1361DF2:         End If
  loc_1361E40:         Set var_88 = Me.Txt
  loc_1361E46:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8)
  loc_1361E4E:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1361E66:         If (Index Or (var_B8 = vbNullString)) Then
  loc_1361E69:           Exit Sub
  loc_1361E6A:         End If
  loc_1361E77:         Set var_88 = Me.Txt
  loc_1361E7D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1361E85:         var_B8 = var_8C.Text
  loc_1361E8D:         var_D4 = CVar(var_B8) 'String
  loc_1361ED2:         If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1361EDB:           Me.MoveFirst
  loc_1361F00:           Set var_88 = Me.Txt
  loc_1361F06:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_B8, "Name =")
  loc_1361F0E:           0 = var_8C.Text
  loc_1361F1C:           Proc_6_17_EAA2B0(var_D4, CVar(var_B8), 1)
  loc_1361F32:           Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1361F4A:         End If
  loc_1361F4D:       Else
  loc_1361F55:         If Not (var_92 = CInt(&HC)) Then
  loc_1361F60:           If (var_92 = CInt(&HD)) Then
  loc_1361F63:           End If
  loc_1361F63:         End If
  loc_1361F63:       End If
  loc_1361F63:     End If
  loc_1361F63:   End If
  loc_1361F63: End If
  loc_1361F63: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1293DE0
  'Data Table: 511010
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_129380B: var_86 = Shift
  loc_1293818: If (CLng(Shift) = &H1B) Then
  loc_129381B:   Call Proc_90_68_F980B8(var_86)
  loc_1293820:   Exit Sub
  loc_1293821: End If
  loc_1293824: var_88 = KeyCode
  loc_129382F: If (var_88 = CInt(0)) Then
  loc_129384F:   Set var_A0 = Me.FGPoint
  loc_129385A:   Set var_9C = Nothing
  loc_129388C:   Proc_6_69_134A198(Me.DGVType, Me.Txt, CInt(0), global_60, Shift, &HFF)
  loc_12938FB:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1293921:     Proc_6_138_106D6F8(Me.DGVType, global_60, KeyCode, Me.FGPoint, 1)
  loc_129392F:   End If
  loc_1293932: Else
  loc_129393A:   If (var_88 = CInt(&HE)) Then
  loc_1293965:     Set var_9C = Nothing
  loc_1293997:     Proc_6_69_134A198(Me.DGIndent, Me.Txt, CInt(&HE), global_76, Shift, &HFF, 1)
  loc_1293A06:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1293A0D:       Set var_9C = Me.DGIndent
  loc_1293A2C:       Proc_6_138_106D6F8(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1293A3A:     End If
  loc_1293A3D:   Else
  loc_1293A45:     If (var_88 = CInt(4)) Then
  loc_1293AA2:       Proc_6_69_134A198(Me.DGPreDoc, Me.Txt, CInt(4), global_84, Shift, &HFF, 1, Nothing)
  loc_1293B11:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1293B37:         Proc_6_138_106D6F8(Me.DGPreDoc, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1293B45:       End If
  loc_1293B48:     Else
  loc_1293B50:       If (var_88 = CInt(6)) Then
  loc_1293BAD:         Proc_6_69_134A198(Me.DGParty, Me.Txt, CInt(6), global_68, Shift, &HFF, 1, Nothing)
  loc_1293C1C:         If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1293C42:           Proc_6_138_106D6F8(Me.DGParty, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1293C50:         End If
  loc_1293C53:       Else
  loc_1293C5B:         If Not (var_88 = CInt(&HC)) Then
  loc_1293C66:           If (var_88 = CInt(&HD)) Then
  loc_1293C69:           End If
  loc_1293C69:         End If
  loc_1293C69:       End If
  loc_1293C69:     End If
  loc_1293C69:   End If
  loc_1293C69: End If
  loc_1293C9A: Set var_9C = Me.DGIndent
  loc_1293CB1: Set var_A0 = Me.DGParty
  loc_1293D10: If ((((((CBool(Me.DGPreDoc.Visible) = 0) And (CBool(Me.DGVType.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DGGod.Visible) = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1293D28:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1293D31:     Proc_6_75_E527CC(Shift, arg_14, 0, var_9C)
  loc_1293D36:   End If
  loc_1293D3A:   Set var_8C = Me.TopCtrl1
  loc_1293D40:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_A0)
  loc_1293D62:   If ((CStr(0) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1293D7A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1293D83:       Proc_6_76_E52838(Shift, arg_14)
  loc_1293D88:     End If
  loc_1293D8B:   Else
  loc_1293D8F:     Set var_8C = Me.TopCtrl1
  loc_1293D95:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_88)
  loc_1293DB7:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1293DCF:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1293DD8:         Proc_6_76_E52838(Shift)
  loc_1293DDD:       End If
  loc_1293DDD:     End If
  loc_1293DDD:   End If
  loc_1293DDD: End If
  loc_1293DDD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10E52CC
  'Data Table: 511010
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_10E4FAC: On Error Goto loc_10E52C6
  loc_10E4FB2: Proc_6_58_E054C0(arg_10)
  loc_10E4FBD: Proc_6_133_E7EF78(var_94)
  loc_10E4FC6: arg_10 = CInt(var_94)
  loc_10E4FCF: var_96 = KeyAscii
  loc_10E4FDA: If (var_96 = CInt(0)) Then
  loc_10E4FF9:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10E500F:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10E5044:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_10E5076:     Proc_6_138_106D6F8(Me.DGVType, global_60, KeyAscii, Me.FGPoint)
  loc_10E5084:   End If
  loc_10E5087: Else
  loc_10E508F:   If (var_96 = CInt(&HE)) Then
  loc_10E50AE:     If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_10E50C4:       Me.DGIndent.Tag = CVar(CStr(KeyAscii))
  loc_10E50F9:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Vno")
  loc_10E5113:       Set var_B8 = Me.FGPoint
  loc_10E512B:       Proc_6_138_106D6F8(Me.DGIndent, global_76, KeyAscii, var_B8, 0)
  loc_10E5139:     End If
  loc_10E513C:   Else
  loc_10E5144:     If (var_96 = CInt(1)) Then
  loc_10E5151:       Set var_9C = Me.Txt
  loc_10E5157:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0)
  loc_10E5172:       Proc_6_42_129A86C(var_B8, arg_10, 8, 0)
  loc_10E5181:     Else
  loc_10E5189:       If (var_96 = CInt(4)) Then
  loc_10E51A8:         If (CBool(Me.DGPreDoc.Visible) = &HFF) Then
  loc_10E51D5:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_84, arg_10, "Name")
  loc_10E5207:           Proc_6_138_106D6F8(Me.DGPreDoc, global_84, KeyAscii, Me.FGPoint)
  loc_10E5215:         End If
  loc_10E5218:       Else
  loc_10E5220:         If (var_96 = CInt(6)) Then
  loc_10E523F:           If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10E526C:             Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_10E529E:             Proc_6_138_106D6F8(Me.DGParty, global_68, KeyAscii, Me.FGPoint, 0)
  loc_10E52AC:           End If
  loc_10E52AF:         Else
  loc_10E52B7:           If Not (var_96 = CInt(&HC)) Then
  loc_10E52C2:             If (var_96 = CInt(&HD)) Then
  loc_10E52C5:             End If
  loc_10E52C5:           End If
  loc_10E52C5:         End If
  loc_10E52C5:       End If
  loc_10E52C5:     End If
  loc_10E52C5:   End If
  loc_10E52C5: End If
  loc_10E52C5: Exit Sub
  loc_10E52C6: ' Referenced from: 10E4FAC
  loc_10E52C6: Proc_6_60_E62BC4(0, var_96)
  loc_10E52CB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF794
  'Data Table: 511010
  Dim var_86 As Integer
  loc_DFF78F: var_86 = KeyCode
  loc_DFF792: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5014C
  'Data Table: 511010
  loc_E5012A: Set var_88 = Me.Txt
  loc_E50130: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5013E: Proc_6_73_E22704(var_8C)
  loc_E5014A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1644D8C
  'Data Table: 511010
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_130 As Variant
  Dim var_158 As String
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1B0 As TextBox
  Dim var_1D4 As Variant
  Dim var_1DC As TextBox
  Dim var_200 As Variant
  Dim var_100 As String
  Dim var_134 As String
  Dim unk_51103F As Connection15
  Dim var_9C As Variant
  Dim var_1AC As Variant
  Dim var_1B4 As String
  Dim var_88 As Recordset15
  loc_16437C0: On Error Goto loc_1644D83
  loc_16437C6: var_8E = Cancel
  loc_16437D1: If (var_8E = CInt(0)) Then
  loc_16437DF:   Set var_94 = Me.Txt
  loc_16437E5:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_16437ED:   var_A0 = "Voucher Type"
  loc_164380E:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_164381C:     Set var_94 = Me.Txt
  loc_1643822:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_164382A:     var_98.SetFocus
  loc_1643838:     arg_10 = &HFF
  loc_164383B:     Exit Sub
  loc_164383C:   End If
  loc_164388A:   Set var_94 = Me.Txt
  loc_1643890:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1643898:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16438B0:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16438C0:     Set var_94 = Me.Txt
  loc_16438C6:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16438CE:     var_98.Text = vbNullString
  loc_16438E7:     Set var_94 = Me.Txt
  loc_16438ED:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16438F5:     var_98.Tag = vbNullString
  loc_1643907:     global_108 = vbNullString
  loc_1643911:     global_112 = vbNullString
  loc_1643918:   Else
  loc_1643953:     Set var_9C = Me.Txt
  loc_1643959:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1643961:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16439B6:     Set var_9C = Me.Txt
  loc_16439BC:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16439C4:     var_BC.Tag = CStr(Trim(CVar(Me.Fields.Item("Code"))))
  loc_1643A10:     global_108 = CStr(Me.Fields.Item("NCat").Value)
  loc_1643A3B:     var_98 = Me.Fields.Item("ContraType")
  loc_1643A52:     global_112 = Proc_6_38_E68A98(CVar(var_98))
  loc_1643A74:     Set var_94 = Me.Txt
  loc_1643A7A:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1643A9D:     If CBool(CVar(global_120) <> Trim(CVar(var_98))) Then
  loc_1643AAE:       Set var_94 = Me.Txt
  loc_1643AB4:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1643ABC:       var_98.Text = vbNullString
  loc_1643AD6:       Set var_94 = Me.Txt
  loc_1643ADC:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1643AE4:       var_98.Text = vbNullString
  loc_1643AFE:       Set var_94 = Me.Txt
  loc_1643B04:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_1643B0C:       var_98.Tag = vbNullString
  loc_1643B2B:       Me.FGrid.Rows = 1
  loc_1643B48:       var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1643B50:       Set var_98 = Me.FGrid
  loc_1643B7F:       Me.FGrid.FixedRows = 1
  loc_1643B87:     End If
  loc_1643B8B:     Set var_94 = Me.TopCtrl1
  loc_1643B91:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(FGrid.DispID_10000)
  loc_1643B99:     var_A0 = CStr(var_DC)
  loc_1643BAA:     If (var_A0 = "Add") Then
  loc_1643BB3:       Call Proc_90_70_1117518(MemVar_1F92044, var_A0)
  loc_1643BC6:       Set var_94 = Me.Txt
  loc_1643BCC:       Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_1643BD4:       var_98.Text = var_A0
  loc_1643BE3:     End If
  loc_1643BE3:     Call Proc_90_77_EE8E50(var_8E)
  loc_1643BE8:     Call Proc_90_76_F1ACAC()
  loc_1643BED:   End If
  loc_1643BF0: Else
  loc_1643BF8:   If (var_8E = CInt(&HE)) Then
  loc_1643C49:     Set var_94 = Me.Txt
  loc_1643C4F:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1643C6F:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1643C7F:       Set var_94 = Me.Txt
  loc_1643C85:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1643C8D:       var_98.Text = vbNullString
  loc_1643CA6:       Set var_94 = Me.Txt
  loc_1643CAC:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1643CB4:       var_98.Tag = vbNullString
  loc_1643CCE:       Set var_94 = Me.Txt
  loc_1643CD4:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_98)
  loc_1643CDC:       var_98.Text = vbNullString
  loc_1643CEB:     Else
  loc_1643D26:       Set var_9C = Me.Txt
  loc_1643D2C:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1643D34:       var_BC.Text = CStr(Me.Fields.Item("VNo").Value)
  loc_1643D85:       Set var_9C = Me.Txt
  loc_1643D8B:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1643D93:       var_BC.Tag = CStr(Me.Fields.Item("DocID").Value)
  loc_1643DC3:       var_98 = Me.Fields.Item("VDate")
  loc_1643DE2:       Set var_9C = Me.Txt
  loc_1643DE8:       Call 0.Method_Txt_Validate0 (CInt(&HF), var_BC)
  loc_1643DF0:       var_BC.Text = Proc_6_38_E68A98(CVar(var_98))
  loc_1643E08:       Set var_94 = Me.TopCtrl1
  loc_1643E0E:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1643E27:       If (CStr() = "Add") Then
  loc_1643E37:         Set var_94 = Me.Txt
  loc_1643E3D:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1643E45:         var_A0 = var_98.Tag
  loc_1643E57:         Call Proc_90_75_1467634(global_108)
  loc_1643E66:       End If
  loc_1643E66:     End If
  loc_1643E69:   Else
  loc_1643E71:     If (var_8E = CInt(1)) Then
  loc_1643E7F:       Set var_94 = Me.Txt
  loc_1643E85:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1643E8D:       var_A0 = "GIN No"
  loc_1643EAE:       If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_1643EBC:         Set var_94 = Me.Txt
  loc_1643EC2:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1643ECA:         var_98.SetFocus
  loc_1643ED8:         arg_10 = &HFF
  loc_1643EDB:         Exit Sub
  loc_1643EDC:       End If
  loc_1643EEA:       Set var_94 = Me.Txt
  loc_1643EF0:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_1643EF8:       arg_10 = var_98.Text
  loc_1643F10:       If (CDbl(var_A0) = CDbl(0)) Then
  loc_1643F2C:         MsgBox("GIN No Can Not Be 0", 0, var_DC, var_EC, var_130)
  loc_1643F46:         Set var_94 = Me.Txt
  loc_1643F4C:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1643F54:         var_98.SetFocus
  loc_1643F62:         arg_10 = &HFF
  loc_1643F65:         Exit Sub
  loc_1643F66:       End If
  loc_1643F6A:       Set var_94 = Me.TopCtrl1
  loc_1643F70:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_1643F89:       If (CStr(var_A0) = "Add") Then
  loc_1643FA0:         var_EC = CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1643FB1:         Set var_94 = Me.Txt
  loc_1643FB7:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1643FC7:         var_CC = CVar(var_98.Tag) 'String
  loc_1643FD5:         var_130 = (var_EC + Trim(var_CC))
  loc_1643FEC:         Set var_9C = Me.Txt
  loc_1643FF2:         Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_134)
  loc_1643FFA:         5 = var_BC.Tag
  loc_164401A:         var_168 = Space((var_130 - Len(CStr(Trim(CVar(var_134))))))
  loc_1644022:         var_178 = ( + var_168)
  loc_164402F:         var_188 = (var_178 + CVar(global_100))
  loc_1644043:         var_198 = Space((5 - Len(global_100)))
  loc_164404B:         var_1A8 = (var_188 + var_198)
  loc_1644062:         Set var_1AC = Me.Txt
  loc_1644068:         Call 0.Method_Txt_Validate0 (CInt(1), var_1B0, var_1B4)
  loc_1644070:         8 = var_1B0.Text
  loc_164407D:         var_1C4 = Space((var_1A8 - Len(var_1B4)))
  loc_1644085:         var_1D4 = ( + var_1C4)
  loc_1644097:         Set var_1D8 = Me.Txt
  loc_164409D:         Call 0.Method_Txt_Validate0 (CInt(1), var_1DC)
  loc_16440B0:         var_200 = (var_1D4 + CVar(var_1DC.Text))
  loc_1644111:         Set var_94 = Me.Txt
  loc_1644117:         Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_164411F:         var_98.Text = CStr(var_200)
  loc_164413B:         Me.LblVPrefix.Caption = global_100
  loc_1644143:       End If
  loc_1644147:       Set var_94 = Me.TopCtrl1
  loc_164414D:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1644155:       var_A0 = CStr()
  loc_1644166:       If (var_A0 = "Add") Then
  loc_1644196:         Set var_94 = Me.Txt
  loc_164419C:         Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_A0, "Select Count(*) From GIN Where DocID='", var_CC, -1)
  loc_16441AD:         var_100 = var_BC & var_A0
  loc_16441B4:         var_134 = var_100 & "'"
  loc_16441BD:         unk_51103F.Execute var_134, 0, var_1AC
  loc_16441CD:          = var_BC.Item()
  loc_16441D5:          = var_1AC.Value
  loc_1644202:         If (var_98.Text.Fields > 0) Then
  loc_164420B:           Call 0.Method_arg_50 (var_A0)
  loc_164422C:           MsgBox("Duplicate GIN No.", &H40, CVar(var_A0), var_EC, var_130)
  loc_1644242:           Call Proc_90_70_1117518(MemVar_1F92044)
  loc_1644252:           If (var_A0 = vbNullString) Then
  loc_164425F:             Set var_94 = Me.Txt
  loc_1644265:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_164426D:             var_98.SetFocus
  loc_164427B:             arg_10 = &HFF
  loc_164427E:             Exit Sub
  loc_164427F:           End If
  loc_1644285:           Call Proc_90_70_1117518(MemVar_1F92044, var_A0)
  loc_1644298:           Set var_94 = Me.Txt
  loc_164429E:           Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_A0)
  loc_16442A6:           var_98.Text = arg_10
  loc_16442B7:           arg_10 = &HFF
  loc_16442BA:           Exit Sub
  loc_16442BB:         End If
  loc_16442BB:       End If
  loc_16442BE:     Else
  loc_16442C6:       If (var_8E = CInt(2)) Then
  loc_16442D7:         Set var_94 = Me.Txt
  loc_16442DD:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_16442E5:         arg_10 = var_98.Text
  loc_16442FB:         var_EC = Len(Trim(CVar(var_A0)))
  loc_1644315:         If (var_EC = 0) Then
  loc_164432B:           Set var_94 = Me.Txt
  loc_1644331:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1644339:           var_98.Text = CStr(MemVar_1F920EC)
  loc_164434B:         Else
  loc_1644355:           Set var_94 = Me.Txt
  loc_164435B:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_164437B:           Set var_BC = Me.Txt
  loc_1644381:           Call 0.Method_Txt_Validate0 (Cancel, var_1AC)
  loc_1644389:           var_1AC.Text = Proc_6_33_1512840(var_98)
  loc_164439C:         End If
  loc_16443A9:         Set var_94 = Me.Txt
  loc_16443AF:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16443B7:         var_A0 = var_98.Text
  loc_16443D2:         Set var_9C = Me.Txt
  loc_16443D8:         Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_100)
  loc_16443E0:         (CDate(var_A0) >= MemVar_1F920F4) = var_BC.Text
  loc_1644402:         If Not((var_A0 And (CDate(var_100) <= MemVar_1F920FC))) Then
  loc_1644426:           MsgBox("GIN Date Not Between Current Fin. Year", 0, "Date Validate", var_EC, var_130)
  loc_1644440:           Set var_94 = Me.Txt
  loc_1644446:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_164444E:           var_98.SetFocus
  loc_164445C:           arg_10 = &HFF
  loc_164445F:           Exit Sub
  loc_1644460:         End If
  loc_1644464:         Set var_94 = Me.TopCtrl1
  loc_164446A:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_1644472:         var_A0 = CStr(var_98)
  loc_1644488:         Set var_98 = Me.Txt
  loc_164448E:         Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_16444B7:         If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_16444C0:           Call Proc_90_70_1117518(MemVar_1F92044)
  loc_16444D3:           Set var_94 = Me.Txt
  loc_16444D9:           Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_16444E1:           var_98.Text = var_A0
  loc_16444F0:         End If
  loc_16444F3:       Else
  loc_16444FB:         If (var_8E = CInt(4)) Then
  loc_164454C:           Set var_94 = Me.Txt
  loc_1644552:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_164455A:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1644572:           If (var_A0 Or (var_A0 = vbNullString)) Then
  loc_1644582:             Set var_94 = Me.Txt
  loc_1644588:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644590:             var_98.Text = vbNullString
  loc_16445A9:             Set var_94 = Me.Txt
  loc_16445AF:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16445B7:             var_98.Tag = vbNullString
  loc_16445C6:           Else
  loc_1644601:             Set var_9C = Me.Txt
  loc_1644607:             Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_164460F:             var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1644642:             var_98 = Me.Fields.Item("Code")
  loc_1644660:             Set var_9C = Me.Txt
  loc_1644666:             Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_164466E:             var_BC.Tag = CStr(var_98.Value)
  loc_1644688:             Set var_94 = Me.TopCtrl1
  loc_164468E:             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_16446A7:             If (CStr() = "Add") Then
  loc_16446B7:               Set var_94 = Me.Txt
  loc_16446BD:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16446C5:               var_A0 = var_98.Tag
  loc_16446D7:               Call Proc_90_74_14BCAA4(global_108)
  loc_16446E6:             End If
  loc_16446E6:           End If
  loc_16446E9:         Else
  loc_16446F1:           If (var_8E = CInt(6)) Then
  loc_16446FF:             Set var_94 = Me.Txt
  loc_1644705:             Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_164470D:             var_A0 = "CreditParty Name"
  loc_164472E:             If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_164473C:               Set var_94 = Me.Txt
  loc_1644742:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_164474A:               var_98.SetFocus
  loc_1644758:               arg_10 = &HFF
  loc_164475B:               Exit Sub
  loc_164475C:             End If
  loc_16447AA:             Set var_94 = Me.Txt
  loc_16447B0:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16447B8:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16447D0:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16447E0:               Set var_94 = Me.Txt
  loc_16447E6:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16447EE:               var_98.Text = vbNullString
  loc_1644807:               Set var_94 = Me.Txt
  loc_164480D:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1644815:               var_98.Tag = vbNullString
  loc_1644824:             Else
  loc_164485F:               Set var_9C = Me.Txt
  loc_1644865:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_164486D:               var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16448BE:               Set var_9C = Me.Txt
  loc_16448C4:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_16448CC:               var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16448FF:               var_98 = Me.Fields.Item("Name")
  loc_164491E:               Set var_9C = Me.Txt
  loc_1644924:               Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_164492C:               var_BC.Text = CStr(var_98.Value)
  loc_1644942:             End If
  loc_1644950:             Set var_94 = Me.Txt
  loc_1644956:             Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_164498A:             If (Trim(CVar(var_98.Tag)) = "MRCR") Then
  loc_1644997:               Set global_84 = New 
  loc_16449A9:               Me.Recordset15.CursorLocation = 3
  loc_16449B5:               var_A0 = "Select Distinct P1.Docid as Code ,ltrim(Right(max(P1.DocId),8)) as Name,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date,Max(SG.Name) As PartyName " & "From (POrder1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno)) "
  loc_16449C3:               var_158 = var_A0 & "Left Join SubGroup SG on P1.PartyCode=SG.SubCode " & "where P1.Partycode='"
  loc_16449D4:               Set var_94 = Me.Txt
  loc_16449DA:               Call 0.Method_Txt_Validate0 (CInt(6), var_98, var_134)
  loc_16449E2:               var_158 = var_98.Tag
  loc_16449F2:               var_8C = var_A0 & var_134 & "'  Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isNull(S.QtyRec,0)) > 0 "
  loc_1644A2D:               Me.Open CVar(var_8C), CVar(MemVar_1F92044), 3
  loc_1644A3B:               CVarUnk
  loc_1644A40:               VerifyVarObj
  loc_1644A46:               Set var_94 = Me.DGPreDoc
  loc_1644A4C:               LateIdStAd
  loc_1644A5A:             End If
  loc_1644A5D:           Else
  loc_1644A65:             If (var_8E = CInt(3)) Then
  loc_1644A79:               Call 0.Method_Txt_Validate0 (CInt(3), var_98, Me.Txt)
  loc_1644A81:               var_A0 = "Party Name"
  loc_1644AA2:               If (Proc_6_27_EA565C(var_98, var_A0, global_84) = 0) Then
  loc_1644AB0:                 Set var_94 = Me.Txt
  loc_1644AB6:                 Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1644ABE:                 var_98.SetFocus
  loc_1644ACC:                 arg_10 = &HFF
  loc_1644ACF:                 Exit Sub
  loc_1644AD0:               End If
  loc_1644ADE:               Set var_94 = Me.Txt
  loc_1644AE4:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_1644AEC:               arg_10 = var_98.Tag
  loc_1644AF4:               var_CC = CVar(var_A0) 'String
  loc_1644B18:               If (Trim(var_CC) = "MRCH") Then
  loc_1644B38:                 Proc_6_17_EAA2B0(var_CC, MemVar_1F92078, "Select CashPurchAc From Enviro  WHERE LOGSITE_CODE=", var_EC)
  loc_1644B40:                 var_DC = -1 & var_CC 
  loc_1644B4E:                 unk_51103F.Execute CStr(Trim(var_CC)), var_94, 1
  loc_1644B59:                 Set var_88 = var_94
  loc_1644B7F:                 If (var_88.RecordCount > 0) Then
  loc_1644B9C:                   var_98 = var_88.Fields.Item("CashPurchAc")
  loc_1644BBB:                   Set var_9C = Me.Txt
  loc_1644BC1:                   Call 0.Method_Txt_Validate0 (CInt(6), var_BC)
  loc_1644BC9:                   var_BC.Tag = CStr(var_98.Value)
  loc_1644BDF:                 End If
  loc_1644BDF:               End If
  loc_1644BED:               Set var_94 = Me.Txt
  loc_1644BF3:               Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1644C27:               If (Trim(CVar(var_98.Tag)) = "MRCH") Then
  loc_1644C34:                 Set global_84 = New 
  loc_1644C46:                 Me.Recordset15.CursorLocation = 3
  loc_1644C52:                 var_A0 = "Select Distinct P1.Docid as Code ,ltrim(Right(max(P1.DocId),8)) as Name,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date,Max(SG.Name) As PartyName " & "From (POrder1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno)) "
  loc_1644C60:                 var_158 = var_A0 & "Left Join SubGroup SG on P1.PartyCode=SG.SubCode " & "where P1.Partycode='"
  loc_1644C71:                 Set var_94 = Me.Txt
  loc_1644C77:                 Call 0.Method_Txt_Validate0 (CInt(6), var_98, var_134)
  loc_1644C7F:                 var_158 = var_98.Tag
  loc_1644C88:                 var_1B4 = -1 & var_134
  loc_1644C8F:                 var_8C = var_A0 & var_134 & "'  Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isNull(S.QtyRec,0)) > 0 "
  loc_1644CCA:                 Me.Open CVar(var_8C), CVar(MemVar_1F92044), 3
  loc_1644CD8:                 CVarUnk
  loc_1644CDD:                 VerifyVarObj
  loc_1644CE3:                 Set var_94 = Me.DGPreDoc
  loc_1644CE9:                 LateIdStAd
  loc_1644CF7:               End If
  loc_1644CFA:             Else
  loc_1644D02:               If Not (var_8E = CInt(&HC)) Then
  loc_1644D0D:                 If (var_8E = CInt(&HD)) Then
  loc_1644D10:                 End If
  loc_1644D13:               Else
  loc_1644D1B:                 If Not (var_8E = CInt(8)) Then
  loc_1644D26:                   If (var_8E = CInt(&HB)) Then
  loc_1644D29:                   End If
  loc_1644D39:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, Me.Txt)
  loc_1644D59:                   Set var_BC = Me.Txt
  loc_1644D5F:                   Call 0.Method_Txt_Validate0 (Cancel, var_1AC, Proc_6_33_1512840(var_98, global_84))
  loc_1644D67:                   var_1AC.Text = 1
  loc_1644D7A:                 End If
  loc_1644D7A:               End If
  loc_1644D7A:             End If
  loc_1644D7A:           End If
  loc_1644D7A:         End If
  loc_1644D7A:       End If
  loc_1644D7A:     End If
  loc_1644D7A:   End If
  loc_1644D7A: End If
  loc_1644D7F: Set var_88 = Nothing
  loc_1644D82: Exit Sub
  loc_1644D83: ' Referenced from: 16437C0
  loc_1644D83: Proc_6_60_E62BC4(-1)
  loc_1644D88: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1038970
  'Data Table: 511010
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_51103F As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_D0 As TextBox
  loc_1038730: On Error Goto loc_1038969
  loc_1038756: Call Proc_90_67_F1CD04(Proc_5_1_100CB50("ADD", Me))
  loc_1038761: Call Proc_90_66_F52D9C(global_80)
  loc_103877F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_1038787: var_98.Text = CStr(MemVar_1F920EC)
  loc_10387BF: var_A4 = "Select Description,V_Type From Voucher_Type Where logSite_Code='" & MemVar_1F92078 & "' and Site_Code='" & MemVar_1F92070 & "' and NCat='MRE'"
  loc_10387C8: unk_51103F.Execute var_A4, var_C4, -1
  loc_10387D3: Set var_88 = Me.Txt
  loc_10387FB: If (var_88.RecordCount > 0) Then
  loc_1038837:   Set var_CC = Me.Txt
  loc_103883D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D0)
  loc_1038845:   var_D0.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_1038875:   var_98 = var_88.Fields.Item("V_Type")
  loc_1038894:   Set var_CC = Me.Txt
  loc_103889A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D0)
  loc_10388A2:   var_D0.Tag = CStr(var_98.Value)
  loc_10388B8: End If
  loc_10388C6: Set var_90 = Me.Txt
  loc_10388CC: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_10388E6: If (var_98.Enabled = &HFF) Then
  loc_10388F4:   Set var_90 = Me.Txt
  loc_10388FA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_1038902:   var_98.SetFocus
  loc_1038911: Else
  loc_103891C:   Set var_90 = Me.Txt
  loc_1038922:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_103892A:   var_98.SetFocus
  loc_1038936: End If
  loc_103893B: Set var_88 = Nothing
  loc_103894B: Me.LblUser.Caption = vbNullString
  loc_103895A: Set var_90 = Me.LblLDt
  loc_1038960: var_90.Caption = vbNullString
  loc_1038968: Exit Sub
  loc_1038969: ' Referenced from: 1038730
  loc_1038969: Proc_6_60_E62BC4(var_90)
  loc_103896E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0CD4
  'Data Table: 511010
  loc_EA0C58: On Error Goto loc_EA0CCE
  loc_EA0C92: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0CB8:   Call Proc_90_67_F1CD04(Proc_5_1_100CB50("INI", Me))
  loc_EA0CC3:   Call Proc_90_64_16AB45C(global_80)
  loc_EA0CC8: End If
  loc_EA0CC8: Call Proc_90_68_F980B8()
  loc_EA0CCD: Exit Sub
  loc_EA0CCE: ' Referenced from: EA0C58
  loc_EA0CCE: Proc_6_60_E62BC4()
  loc_EA0CD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12EFC04
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim unk_51103F As Connection15
  Dim var_D8 As Variant
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  Dim var_AC As String
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_120 As Variant
  Dim var_98 As Recordset15
  Dim var_130 As Variant
  loc_12EF564: On Error Goto loc_12EFBB4
  loc_12EF575: If (Proc_183_56_FE8818(global_80) = &HFF) Then
  loc_12EF578:   Exit Sub
  loc_12EF579: End If
  loc_12EF5A6: Set var_A4 = Me.Txt
  loc_12EF5AC: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(9), var_A8, var_AC, "select count(*) from Purch2 where ContradOCID='", var_D4, -1)
  loc_12EF5B4: var_D8 = var_A8.Text
  loc_12EF5CD: unk_51103F.Execute var_DC & var_AC & "'", 0, var_F0
  loc_12EF5DD:  = var_DC.Item()
  loc_12EF5E5:  = var_F0.Value
  loc_12EF612: If (var_D8.Fields > 0) Then
  loc_12EF63C:   MsgBox(CVar("Purchase Bill Already Feeded" & vbCrLf & "You Can't Delete it."), &H10, "Delete Validation", var_120, var_130)
  loc_12EF653:   Set var_A4 = Me.FGrid
  loc_12EF664:   Exit Sub
  loc_12EF665: End If
  loc_12EF69C: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_120, var_130) = 6) Then
  loc_12EF6A8:   unk_51103F.BeginTrans var_144
  loc_12EF6BE:   var_94 = Me.Bookmark 'Variant
  loc_12EF70A:   var_120 = "Select IndentDocId,IndentSno from Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12EF718:   unk_51103F.Execute CStr(var_120), var_130, -1
  loc_12EF723:   Set var_98 = var_D8
  loc_12EF73D:   ' Referenced from: 12EF7FF
  loc_12EF743:   var_146 = var_98.EOF
  loc_12EF74C:   If Not(var_146) Then
  loc_12EF787:     var_AC = Proc_6_38_E68A98(CVar(var_98.Fields.Item("IndentDocID")), "Update Indent1 Set ClearYN='' where Docid='", var_168, -1)
  loc_12EF792:     var_130 = CVar(var_F0 & CStr(var_120) & "' and Sno=") 'String
  loc_12EF7A4:     var_D8 = var_98.Fields
  loc_12EF7BB:     Proc_6_39_E7C810(var_120, CVar(var_D8.Item("IndentSno")), var_130)
  loc_12EF7D1:     unk_51103F.Execute CStr(var_D8 & var_120), FGrid.DispID_8001, 
  loc_12EF7FA:     var_98.MoveNext
  loc_12EF7FF:     GoTo loc_12EF73D
  loc_12EF802:   End If
  loc_12EF858:   unk_51103F.Execute CStr("Delete From Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_12EF8A3:   var_198 = 0
  loc_12EF8B6:   var_190 = 0
  loc_12EF8C1:   var_18C = 0
  loc_12EF8D4:   var_184 = 0
  loc_12EF8DF:   var_180 = 0
  loc_12EF8F2:   var_178 = 0
  loc_12EF93B:   Proc_154_5_10E33A4(MemVar_1F92044, "Stock", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12EF9AB:   var_120 = "Delete From GIN Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12EF9B9:   unk_51103F.Execute CStr(var_120), var_130, -1
  loc_12EF9F2:   var_A8 = Me.Fields.Item("SearchCode")
  loc_12EFA04:   var_198 = 0
  loc_12EFA17:   var_190 = 0
  loc_12EFA22:   var_18C = 0
  loc_12EFA35:   var_184 = 0
  loc_12EFA93:   var_AC = "GIN"
  loc_12EFA9C:   Proc_154_5_10E33A4(MemVar_1F92044, var_AC, "DocId", &HC8, CStr(var_A8.Value), 0, 0, 0)
  loc_12EFACA:   unk_51103F.CommitTrans
  loc_12EFADA:   Me.Requery -1
  loc_12EFAED:   Set var_A4 = Me.Txt
  loc_12EFAF3:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_A8, var_146, 0, 0, 0)
  loc_12EFAFB:   var_184 = var_A8.Enabled
  loc_12EFB0D:   If (var_146 = &HFF) Then
  loc_12EFB1B:     Me.Requery -1
  loc_12EFB20:   End If
  loc_12EFB2B:   Me.Requery -1
  loc_12EFB4B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12EFB58:     Me.Bookmark = var_94
  loc_12EFB60:   Else
  loc_12EFB74:     If (Me.EOF = 0) Then
  loc_12EFB7D:       Me.MoveLast
  loc_12EFB82:     End If
  loc_12EFB82:   End If
  loc_12EFB82:   Call Proc_90_64_16AB45C(0, var_18C)
  loc_12EFBA3:   Proc_5_0_110649C(&HFF, Me, global_80)
  loc_12EFBAB: End If
  loc_12EFBB0: Set var_98 = Nothing
  loc_12EFBB3: Exit Sub
  loc_12EFBB4: ' Referenced from: 12EF564
  loc_12EFBBA: unk_51103F.RollbackTrans
  loc_12EFBC7: Set var_A4 = Err()
  loc_12EFBCD: Call 0.Method_arg_2C (var_AC, 0)
  loc_12EFBEE: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_120, var_130)
  loc_12EFC01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F75B3C
  'Data Table: 511010
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F759F8: On Error Goto loc_F75B33
  loc_F75A09: Set var_88 = Me.Txt
  loc_F75A0F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_8C)
  loc_F75A22: var_98 = "Edit"
  loc_F75A35: Call Proc_90_71_10EF624(global_108, var_8C.Text)
  loc_F75A4E: If (var_9A = 0) Then
  loc_F75A51:   Exit Sub
  loc_F75A52: End If
  loc_F75A75: Call Proc_90_67_F1CD04(Proc_5_1_100CB50("EDIT", Me, global_80), var_98)
  loc_F75A80: Call Proc_90_77_EE8E50(var_9A)
  loc_F75A85: Call Proc_90_76_F1ACAC()
  loc_F75A98: Set var_88 = Me.Txt
  loc_F75A9E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_8C)
  loc_F75AB8: If (var_8C.Enabled = &HFF) Then
  loc_F75AC6:   Set var_88 = Me.Txt
  loc_F75ACC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_F75AD4:   var_8C.SetFocus
  loc_F75AE3: Else
  loc_F75AEE:   Set var_88 = Me.Txt
  loc_F75AF4:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_F75AFC:   var_8C.SetFocus
  loc_F75B08: End If
  loc_F75B15: Me.LblUser.Caption = vbNullString
  loc_F75B2A: Me.LblLDt.Caption = vbNullString
  loc_F75B32: Exit Sub
  loc_F75B33: ' Referenced from: F759F8
  loc_F75B33: Proc_6_60_E62BC4(var_8C)
  loc_F75B38: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18600
  'Data Table: 511010
  loc_E185F5: Me.Global.Unload Me
  loc_E185FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F535D8
  'Data Table: 511010
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_168 As Variant
  Dim MemVar_1F920E4 As String
  loc_F534D0: On Error Goto loc_F535D2
  loc_F534EA: If (Me.RecordCount <= 0) Then
  loc_F53508:   var_A8 = "No Records To Search."
  loc_F5350E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F5351E:   Exit Sub
  loc_F5351F: End If
  loc_F53526: var_C8 = CVar("Select G.DocID as SearchCode,V.Description As GINType,G.VNo As GINNo,cast(G.VDate as VarChar(11)) As GINDate,G.PartyName " & " From GIN G Inner Join Voucher_Type V on (G.VType=V.V_Type And G.LogSite_Code=V.LogSite_Code)  Where G.VDATE>=") 'String
  loc_F53534: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F53540: var_B8 = " AND V.Site_code='"
  loc_F5356B: var_168 = var_C8 & var_A8 & var_B8 & CVar(MemVar_1F92070) & "' and V.LogSite_Code='" & CVar(MemVar_1F92078) & "' and V.Category in ('MREntry') And G.LogSite_Code='" 
  loc_F53583: MemVar_1F920E4 = CStr(var_168 & CVar(MemVar_1F92078) & "' Order by G.DocID,G.VNo")
  loc_F535A4: MemVar_1F92120 = Me
  loc_F535B1: Proc_6_126_F1BCC0("1600,900,1000,4000")
  loc_F535CC: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F535D1: Exit Sub
  loc_F535D2: ' Referenced from: F534D0
  loc_F535D2: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F535D7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37038
  'Data Table: 511010
  Dim var_6701 As Double
  loc_E37028: Proc_5_0_110649C(&HFF, Me)
  loc_E37030: Call Proc_90_64_16AB45C(global_80)
  loc_E37035: Exit Sub
  loc_E37036: var_6701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36D98
  'Data Table: 511010
  Dim var_6701 As Double
  loc_E36D88: Proc_5_0_110649C(&HFF, Me)
  loc_E36D90: Call Proc_90_64_16AB45C(global_80)
  loc_E36D95: Exit Sub
  loc_E36D96: var_6701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36BB8
  'Data Table: 511010
  Dim var_6701 As Double
  loc_E36BA8: Proc_5_0_110649C(&HFF, Me)
  loc_E36BB0: Call Proc_90_64_16AB45C(global_80)
  loc_E36BB5: Exit Sub
  loc_E36BB6: var_6701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E368B8
  'Data Table: 511010
  Dim var_6701 As Double
  loc_E368A8: Proc_5_0_110649C(&HFF, Me)
  loc_E368B0: Call Proc_90_64_16AB45C(global_80)
  loc_E368B5: Exit Sub
  loc_E368B6: var_6701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10E0F00
  'Data Table: 511010
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_C0 As String
  Dim var_C8 As String
  Dim var_D4 As TextBox
  Dim var_E0 As String
  Dim unk_51103F As Connection15
  Dim var_A0 As Recordset15
  Dim var_F0 As Variant
  Dim var_152 As Integer
  loc_10E0C30: On Error Goto loc_10E0EF7
  loc_10E0C4A: If (Me.RecordCount <= 0) Then
  loc_10E0C4D:   Exit Sub
  loc_10E0C4E: End If
  loc_10E0C55: var_B8 = "Select G.Docid,G.VNo,G.VDate,G.VType As V_Type,G.PartyName As PartyName,G.Remark,G.POrdDocid,G.Vdate,G.POrdDate,G.ChalNo,G.ChalDate,G.MemInvNo,G.MemInvDate,G.InspectedBy As InspBy,G.ApprovedBy As ApprBy," & " S.Sno as sSno,S.Item as sItemName,S.QtyIss ,S.QtyRec,S.Recdunit As unit,S.ChalQty,S.Rate,S.Amount as sAmount,"
  loc_10E0C63: var_C0 = var_B8 & " S.RecdQty as sRecdQty,S.RejQty as sRejQty,S.QtyRec as sStkQtyRec,S.QtyIss as sStkQtyIss," & " S.Remarks as sRem,I.Name as ItemName,V.Description"
  loc_10E0C71: var_C8 = var_C0 & " From ((GIN as G Inner Join Stock as S on G.DocID=S.DocID) " & " Inner Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_10E0C90: Set var_D0 = Me.Txt
  loc_10E0C96: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(9), var_D4)
  loc_10E0CA7: var_E0 = var_C8 & " Inner Join Voucher_Type as V on (G.VType=V.V_Type and G.LogSite_Code=V.LogSite_Code)" & " Where G.DocID='" & var_D4.Text
  loc_10E0CAE: var_88 = var_E0 & "'"
  loc_10E0CD5: If (var_88 = vbNullString) Then
  loc_10E0CD8:   Exit Sub
  loc_10E0CD9: End If
  loc_10E0CEF: unk_51103F.Execute var_88, var_100, -1
  loc_10E0CFA: Set var_A0 = var_D0
  loc_10E0D09: var_B4 = var_A0.RecordCount
  loc_10E0D17: If (var_B4 <= 0) Then
  loc_10E0D20:   Call 0.Method_arg_50 (var_B8)
  loc_10E0D41:   MsgBox("** No Records Found to Print **", &H40, CVar(var_B8), var_130, var_150)
  loc_10E0D51:   Exit Sub
  loc_10E0D52: End If
  loc_10E0D68: Set var_D0 = var_A0 
  loc_10E0D74: var_152 = CreateFieldDefFile(var_D0, MemVar_1F920B4 & "\MREntry.ttx")
  loc_10E0D7E: Set var_A0 = var_D0
  loc_10E0D84: var_F0 = CVar(var_152) 'Integer
  loc_10E0D87: var_9C = var_F0 'Variant
  loc_10E0DA3: var_B8 = MemVar_1F920B4 & "\MREntry.RPT"
  loc_10E0DAC: Call 0.Method_arg_1C (var_B8, var_F0, var_D0)
  loc_10E0DB7: MemVar_1F921E4 = var_D0
  loc_10E0DD2: Call 0.Method_arg_90 (var_D0, var_B4, var_AA, 1)
  loc_10E0DDA: Call 0.Method_arg_24 (var_152, &HFF)
  loc_10E0DE6: For var_156 =  To CInt(var_B4): var_D0 = var_156 'Integer
  loc_10E0DFF:   Call 0.Method_arg_90 (var_D0, CLng(var_AA))
  loc_10E0E07:   Call 0.Method_arg_20 (var_D4)
  loc_10E0E0F:   Call 0.Method_arg_30 (var_B8)
  loc_10E0E29:   If (var_B8 = "Title") Then
  loc_10E0E3F:     Call 0.Method_arg_90 (var_D0, CLng(var_AA))
  loc_10E0E47:     Call 0.Method_arg_20 (var_D4)
  loc_10E0E4F:     Call 0.Method_arg_38 ("'MR Entry'")
  loc_10E0E5B:   End If
  loc_10E0E5E: Next var_156 'Integer
  loc_10E0E7C: Call 0.Method_arg_64 (var_D0, CVar(var_A0))
  loc_10E0E84: Call 0.Method_arg_2C (var_120)
  loc_10E0E92: Call 0.Method_arg_150 (var_140)
  loc_10E0E9D: Call 0.Method_arg_50 (var_B8)
  loc_10E0EA7: Set var_D4 = Nothing
  loc_10E0EC1: Set var_D0 = MemVar_1F921E4 
  loc_10E0ECD: Proc_6_99_1483714(var_D0, 0, var_B8)
  loc_10E0ED8: MemVar_1F921E4 = var_D0
  loc_10E0EEB: Set var_A0 = Nothing
  loc_10E0EF3: Set var_B0 = Nothing
  loc_10E0EF6: Exit Sub
  loc_10E0EF7: ' Referenced from: 10E0C30
  loc_10E0EF7: Proc_6_60_E62BC4(&HFF)
  loc_10E0EFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E56CF4
  'Data Table: 511010
  Dim Me As Recordset15
  loc_E56CBB: Me.Requery -1
  loc_E56CCB: Me.Requery -1
  loc_E56CDB: Me.Requery -1
  loc_E56CEB: Me.Requery -1
  loc_E56CF0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '170CE88
  'Data Table: 511010
  Dim var_A0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_9C As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_A8 As Variant
  Dim var_1E4 As String
  Dim unk_51103F As Connection15
  Dim var_A4 As Variant
  Dim var_1EC As Variant
  Dim var_1F0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_748 As Double
  Dim var_224 As TextBox
  Dim var_298 As TextBox
  Dim var_2D4 As Variant
  Dim var_310 As Variant
  Dim var_34C As Variant
  Dim var_388 As Variant
  Dim var_3F4 As Variant
  Dim var_498 As Variant
  Dim var_55C As Variant
  Dim var_688 As Variant
  Dim var_1F8 As String
  Dim var_1FC As String
  Dim var_208 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_1D0 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_EC As Variant
  Dim var_2BC As Variant
  Dim var_370 As Variant
  Dim var_39C As Variant
  Dim var_428 As Variant
  Dim var_4CC As Variant
  Dim var_514 As Variant
  Dim var_590 As Variant
  Dim var_5D0 As Variant
  Dim var_630 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_6E8 As Variant
  Dim var_1120 As Double
  Dim var_2D0 As MSHFlexGrid
  Dim var_30C As MSHFlexGrid
  Dim var_76C As Variant
  Dim var_78C As Variant
  Dim var_348 As MSHFlexGrid
  Dim var_7DC As Variant
  Dim var_7FC As Variant
  Dim var_840 As Variant
  Dim var_860 As Variant
  Dim var_384 As MSHFlexGrid
  Dim var_8C4 As Variant
  Dim var_504 As Variant
  Dim var_908 As Variant
  Dim var_928 As Variant
  Dim var_3F0 As MSHFlexGrid
  Dim var_96C As Variant
  Dim var_98C As Variant
  Dim var_9BC As Variant
  Dim var_9DC As Variant
  Dim var_43C As MSHFlexGrid
  Dim var_600 As Variant
  Dim var_440 As MSHFlexGrid
  Dim var_1160 As Double
  Dim var_494 As MSHFlexGrid
  Dim var_1168 As Double
  Dim var_4E0 As MSHFlexGrid
  Dim var_4E4 As MSHFlexGrid
  Dim var_1174 As Double
  Dim var_558 As MSHFlexGrid
  Dim var_F8C As Variant
  Dim var_FAC As Variant
  Dim var_200 As String
  Dim var_230 As String
  Dim var_460 As Variant
  Dim var_644 As Variant
  Dim var_73C As Variant
  Dim var_BF4 As Variant
  Dim var_E98 As Variant
  Dim var_100C As Variant
  Dim var_88 As Recordset15
  Dim var_1B0 As Variant
  loc_170B544: On Error Goto loc_170CE6D
  loc_170B552: Set var_9C = Me.Txt
  loc_170B558: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_170B581: If (Proc_6_27_EA565C(var_A0, "V.Type") = 0) Then
  loc_170B584:   Exit Sub
  loc_170B585: End If
  loc_170B590: Set var_9C = Me.Txt
  loc_170B596: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_170B5BF: If (Proc_6_27_EA565C(var_A0, "GIN Date") = 0) Then
  loc_170B5C2:   Exit Sub
  loc_170B5C3: End If
  loc_170B5CE: Set var_9C = Me.Txt
  loc_170B5D4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_170B5FD: If (Proc_6_27_EA565C(var_A0, "GIN No") = 0) Then
  loc_170B600:   Exit Sub
  loc_170B601: End If
  loc_170B60C: Set var_9C = Me.Txt
  loc_170B612: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A0)
  loc_170B63B: If (Proc_6_27_EA565C(var_A0, "Inspected By") = 0) Then
  loc_170B63E:   Exit Sub
  loc_170B63F: End If
  loc_170B64A: Set var_9C = Me.Txt
  loc_170B650: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_A0)
  loc_170B679: If (Proc_6_27_EA565C(var_A0, "Approved By") = 0) Then
  loc_170B67C:   Exit Sub
  loc_170B67D: End If
  loc_170B68B: Set var_9C = Me.Txt
  loc_170B691: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_170B699: var_AA = var_A0.Visible
  loc_170B6AB: If (var_AA = &HFF) Then
  loc_170B6B9:   Set var_9C = Me.Txt
  loc_170B6BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_170B6E8:   If (Proc_6_27_EA565C(var_A0, "Party Name") = 0) Then
  loc_170B6EB:     Exit Sub
  loc_170B6EC:   End If
  loc_170B6EF: Else
  loc_170B6FA:   Set var_9C = Me.Txt
  loc_170B700:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A0)
  loc_170B729:   If (Proc_6_27_EA565C(var_A0, "Party Name") = 0) Then
  loc_170B72C:     Exit Sub
  loc_170B72D:   End If
  loc_170B72D: End If
  loc_170B730: Call Proc_90_65_11D9AB0(var_AA)
  loc_170B73B: If (var_AA = 0) Then
  loc_170B73E:   Exit Sub
  loc_170B73F: End If
  loc_170B74B: Call Txt_Validate(CInt(1))
  loc_170B75B: Set var_9C = Me.TxtGrid
  loc_170B761: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A0, 0)
  loc_170B769: var_A0.Visible = True
  loc_170B775: Call Proc_90_68_F980B8(var_A0)
  loc_170B77A: var_BC = 1
  loc_170B783: var_DC = 1
  loc_170B7A1: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_170B7A7: var_11C = Trim(var_10C)
  loc_170B7C3: If (var_11C = vbNullString) Then
  loc_170B7DF:   MsgBox("Item Detail Required ", 0, var_10C, var_11C, var_13C)
  loc_170B802:   Me.FGrid.Row = 1
  loc_170B80E:   Set var_9C = Me.FGrid
  loc_170B832:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_170B83A:   Exit Sub
  loc_170B83B: End If
  loc_170B860: For var_140 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_140 'Integer
  loc_170B86A:   var_BC = CVar(CLng(var_92)) 'Long
  loc_170B872:   var_DC = CVar(CLng(1)) 'Long
  loc_170B88C:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_170B89A:   var_12C = vbNullString
  loc_170B8A8:   var_150 = CVar(CLng(var_92)) 'Long
  loc_170B8B9:   Set var_A0 = Me.FGrid
  loc_170B8FE:   If CBool(CVar(CLng(&HE)) And (Trim(CVar(CStr(var_A0.TextMatrix)))) = vbNullString)) Then
  loc_170B914:     var_FC = "Item Godown Required "
  loc_170B91A:     MsgBox(var_FC, 0, var_10C, Trim(var_10C), var_13C)
  loc_170B93D:     Me.FGrid.Row = 1
  loc_170B949:     Set var_9C = Me.FGrid
  loc_170B96D:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_170B975:     Exit Sub
  loc_170B976:   End If
  loc_170B979: Next var_140 'Integer
  loc_170B982: Set var_9C = Me.TopCtrl1
  loc_170B988: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_170B990: var_A8 = CStr()
  loc_170B9A1: If (var_A8 = "Add") Then
  loc_170B9D1:   Set var_9C = Me.Txt
  loc_170B9D7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8, "Select Count(*) From GIN Where DocID='", var_FC, -1)
  loc_170B9DF:   var_A4 = var_A0.Text
  loc_170B9F8:   unk_51103F.Execute var_1EC & var_A8 & "'", 0, var_1F0
  loc_170BA00:   var_10C = var_A4.Fields
  loc_170BA08:    = var_1EC.Item()
  loc_170BA10:    = var_1F0.Value
  loc_170BA3D:   If (var_10C > 0) Then
  loc_170BA46:     Call Proc_90_70_1117518(MemVar_1F92044)
  loc_170BA59:     Set var_9C = Me.Txt
  loc_170BA5F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0)
  loc_170BA67:     var_A0.Text = var_A8
  loc_170BA76:     Exit Sub
  loc_170BA77:   End If
  loc_170BA7A: Else
  loc_170BA97:   var_A0 = Me.Fields.Item("DocID")
  loc_170BA9F:   var_FC = var_A0.Value
  loc_170BAA8:   var_A8 = CStr(var_FC)
  loc_170BAAE:   global_92 = var_A8
  loc_170BABF: End If
  loc_170BAC1: var_8A = &HFF
  loc_170BACD: unk_51103F.BeginTrans var_1F4
  loc_170BAF0: Set var_9C = Me.Txt
  loc_170BAF6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8, "Delete From Stock Where DocID='", var_FC)
  loc_170BAFE: -1 = var_A0.Text
  loc_170BB17: unk_51103F.Execute var_A4 & var_A8 & "'", var_8A, var_A8
  loc_170BB4F: Set var_9C = Me.Txt
  loc_170BB55: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8, "Delete From GIN Where DocID='")
  loc_170BB5D: var_FC = var_A0.Text
  loc_170BB66: var_1E4 = -1 & var_A8
  loc_170BB76: unk_51103F.Execute var_A4 & var_A8 & "'", var_A4, 
  loc_170BB9E: Set var_9C = Me.Txt
  loc_170BBA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0)
  loc_170BBBF: Set var_A4 = Me.Txt
  loc_170BBC5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC)
  loc_170BBDA: var_748 = Val(var_1EC.Text)
  loc_170BBE8: Set var_1F0 = Me.Txt
  loc_170BBEE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_21C)
  loc_170BBFD: Proc_6_7_F25D88(var_10C, CVar(var_21C))
  loc_170BC10: Set var_220 = Me.Txt
  loc_170BC16: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_224)
  loc_170BC51: Set var_294 = Me.Txt
  loc_170BC57: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298)
  loc_170BC5F: var_29C = var_298.Tag
  loc_170BC72: Set var_2D0 = Me.Txt
  loc_170BC78: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2D4)
  loc_170BC93: Set var_30C = Me.Txt
  loc_170BC99: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_310)
  loc_170BCB4: Set var_348 = Me.Txt
  loc_170BCBA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_34C)
  loc_170BCD5: Set var_384 = Me.Txt
  loc_170BCDB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_388)
  loc_170BCE3: var_38C = var_388.Text
  loc_170BCF6: Set var_3F0 = Me.Txt
  loc_170BCFC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3F4)
  loc_170BD14: Set var_43C = Me.Txt
  loc_170BD1A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_440)
  loc_170BD29: Proc_6_7_F25D88(var_460, CVar(var_440))
  loc_170BD3C: Set var_494 = Me.Txt
  loc_170BD42: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_498)
  loc_170BD5A: Set var_4E0 = Me.Txt
  loc_170BD60: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_4E4)
  loc_170BD6F: Proc_6_7_F25D88(var_504, CVar(var_4E4))
  loc_170BD82: Set var_558 = Me.Txt
  loc_170BD88: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_55C)
  loc_170BDA3: Proc_6_7_F25D88(var_600, Date)
  loc_170BDAC: Set var_634 = Me.TopCtrl1
  loc_170BDB2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_748)
  loc_170BDFD: var_A8 = "Insert Into GIN(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code, "
  loc_170BE12: var_1F8 = var_A8 & "POrdDocid,POrdDate,PartyCode,PartyName,InspectedBy,ApprovedBy," & "ChalNo,ChalDate,MemInvNo,MemInvDate, " & "Remark,U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_170BE27: var_208 = var_1F8 & " Values(" & "'" & var_A0.Text
  loc_170BE73: var_260 = CVar(var_208 & "'," & CStr(var_748) & ",") & var_10C & ",'" & Trim(CVar(var_224.Tag)) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_170BE7A: var_EC = CVar(MemVar_1F92070) 'String
  loc_170BED2: var_370 = var_260 & var_EC & "'," & "'" & CVar(var_29C) & "',NULL,'" & CVar(var_2D4.Tag) & "','" & CVar(var_310.Text) & "','" & CVar(var_34C.Text) 
  loc_170BF34: var_514 = var_370 & "','" & CVar(var_38C) & "'," & "'" & CVar(var_3F4.Text) & "'," & var_460 & ",'" & CVar(var_498.Text) & "'," & var_504 
  loc_170BF83: var_6B8 = var_514 & "," & "'" & CVar(var_55C.Text) & "','" & CVar(MemVar_1F920C8) & "'," & var_600 & ",'" & IIf((CStr(var_644) = "Add"), "A", "E") 
  loc_170BFAD: unk_51103F.Execute CStr(var_6B8 & "','" & CVar(MemVar_1F92078) & "')"), var_73C, -1
  loc_170C0B6: For var_74C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_74C 'Integer
  loc_170C0C0:   var_BC = CVar(CLng(var_92)) 'Long
  loc_170C0E2:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_170C104:   If CBool(Trim(var_10C) <> vbNullString) Then
  loc_170C115:     Set var_9C = Me.Txt
  loc_170C11B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_208, CVar(CLng(1)))
  loc_170C123:     var_BC = var_A0.Text
  loc_170C135:     var_748 = Val(CStr(var_92))
  loc_170C146:     Set var_A4 = Me.Txt
  loc_170C14C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC, var_29C)
  loc_170C161:     var_1120 = Val(var_29C)
  loc_170C16F:     Set var_1F0 = Me.Txt
  loc_170C175:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_21C, var_1120)
  loc_170C17D:     var_FC = CVar(var_21C) 'Address
  loc_170C184:     Proc_6_7_F25D88(var_10C, var_FC)
  loc_170C197:     Set var_220 = Me.Txt
  loc_170C19D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_224, var_38C)
  loc_170C1A5:     1 = var_224.Tag
  loc_170C1B3:     var_1B0 = Trim(CVar(var_38C))
  loc_170C1D8:     Set var_294 = Me.Txt
  loc_170C1DE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_298)
  loc_170C1EF:     var_170 = CVar(CLng(var_92)) 'Long
  loc_170C1F7:     var_1C0 = CVar(CLng(&H16)) 'Long
  loc_170C216:     var_428 = CVar(CLng(var_92)) 'Long
  loc_170C21E:     var_4CC = CVar(CLng(&H11)) 'Long
  loc_170C23D:     var_590 = CVar(CLng(var_92)) 'Long
  loc_170C245:     var_5D0 = CVar(CLng(5)) 'Long
  loc_170C26E:     var_688 = CVar(CLng(var_92)) 'Long
  loc_170C276:     var_6E8 = CVar(CLng(6)) 'Long
  loc_170C29F:     var_76C = CVar(CLng(var_92)) 'Long
  loc_170C2A7:     var_78C = CVar(CLng(7)) 'Long
  loc_170C2D0:     var_7DC = CVar(CLng(var_92)) 'Long
  loc_170C2D8:     var_7FC = CVar(CLng(9)) 'Long
  loc_170C301:     var_840 = CVar(CLng(var_92)) 'Long
  loc_170C309:     var_860 = CVar(CLng(8)) 'Long
  loc_170C332:     var_8A4 = CVar(CLng(var_92)) 'Long
  loc_170C33A:     var_8C4 = CVar(CLng(&HB)) 'Long
  loc_170C363:     var_908 = CVar(CLng(var_92)) 'Long
  loc_170C36B:     var_928 = CVar(CLng(&HC)) 'Long
  loc_170C394:     var_96C = CVar(CLng(var_92)) 'Long
  loc_170C39C:     var_98C = CVar(CLng(3)) 'Long
  loc_170C3BB:     var_9BC = CVar(CLng(var_92)) 'Long
  loc_170C3C3:     var_9DC = CVar(CLng(&HA)) 'Long
  loc_170C3D2:     var_600 = Me.FGrid.TextMatrix)
  loc_170C40C:     var_1160 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_170C42A:     var_6D8 = Me.FGrid.TextMatrix)
  loc_170C464:     var_1168 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_170C495:     var_116C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H12)), CVar(CLng(var_92)), var_1168, CVar(CLng(4)), CVar(CLng(var_92)), var_6D8, CVar(CLng(2)))
  loc_170C4C6:     var_1174 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_170C4F5:     Proc_6_7_F25D88(var_D18, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(var_92)), var_1174, CVar(CLng(&H13)), CVar(CLng(var_92)))
  loc_170C526:     Proc_6_7_F25D88(var_DB8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H10)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1160)
  loc_170C539:     Proc_6_7_F25D88(var_E68, Date, CVar(CLng(&HD)), CVar(CLng(var_92)))
  loc_170C542:     Set var_634 = Me.TopCtrl1
  loc_170C548:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_600)
  loc_170C583:     var_F8C = CVar(CLng(var_92)) 'Long
  loc_170C58B:     var_FAC = CVar(CLng(&H17)) 'Long
  loc_170C59A:     var_FCC = Me.FGrid.TextMatrix)
  loc_170C5D2:     Proc_6_39_E7C810(var_1080, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_92)), var_FCC)
  loc_170C5F2:     var_1E4 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_170C600:     var_1F8 = var_1E4 & "QtyRec,AccQty,Rate,ItemRate,RecdUnit,Unit," & "Amount,Specification,ConvRatio,"
  loc_170C607:     var_1FC = var_1F8 & "ContraDocid,ContraSNo,ExpDate,MfdDate, "
  loc_170C636:     var_230 = var_1FC & "U_Name,U_EntDt,U_AE,DepartCode,IndentDocId,IndentSno,LogSite_Code) " & "Values(" & "'" & var_208 & "'," & CStr(var_1EC.Text)
  loc_170C656:     var_13C = CVar(var_230 & "," & CStr(var_1120) & ",") & var_10C 
  loc_170C67D:     var_DC = "','"
  loc_170C6A8:     var_2BC = var_13C & ",'" & var_1B0 & "','" & CVar(Me.LblVPrefix.Caption) & var_DC & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_298.Tag) 
  loc_170C6E4:     var_39C = var_2BC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_170C71E:     var_460 = var_39C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString 
  loc_170C751:     var_514 = var_460 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_170C78D:     var_630 = var_514 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_600)) 
  loc_170C7EE:     var_BF4 = var_630 & "'," & vbNullString & CVar(var_1160) & ",'" & CVar(CStr(var_6D8)) & "'," & CVar(var_1168) & "," & "'" & CVar(var_116C) 
  loc_170C857:     var_E98 = var_BF4 & "'," & CVar(var_1174) & "," & var_D18 & "," & var_DB8 & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_E68 & ",'" 
  loc_170C88E:     var_100C = var_E98 & IIf((CStr(var_EA8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "PURC','" & CVar(CStr(var_FCC)) & "'," 
  loc_170C8BF:     unk_51103F.Execute CStr(var_100C & var_1080 & ",'" & CVar(MemVar_1F92078) & "')"), var_1114, -1
  loc_170CA33:     var_BC = CVar(CLng(var_92)) 'Long
  loc_170CA4A:     var_FC = Me.FGrid.TextMatrix)
  loc_170CA6B:     Set var_A0 = Me.FGrid
  loc_170CA82:     Proc_6_39_E7C810(var_13C, CVar(CStr(var_A0.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_92)), var_FC, CVar(CLng(&H17)))
  loc_170CABA:     unk_51103F.Execute CStr(CVar("Update Indent1 set ClearYN='Y' Where Docid='" & CStr(var_FC) & "' and SNo=") & var_13C), var_1B0, -1
  loc_170CAE2:   End If
  loc_170CAE5: Next var_74C 'Integer
  loc_170CAEE: Set var_9C = Me.TopCtrl1
  loc_170CAF4: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_170CB0D: If (CStr() = "Add") Then
  loc_170CB24:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_170CB4A:   Set var_9C = Me.Txt
  loc_170CB50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_1F8, CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='"))
  loc_170CB58:   var_240 = var_A0.Tag
  loc_170CB6E:   var_13C = -1 & Trim(CVar(var_1F8)) 
  loc_170CB77:   var_190 = var_13C & "' And VP.Date_From<=" 
  loc_170CB89:   Set var_A4 = Me.Txt
  loc_170CB8F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1EC, var_1FC)
  loc_170CB97:   var_190 = var_1EC.Text
  loc_170CB9F:   var_1A0 = CVar(var_1FC) 'String
  loc_170CBA5:   Proc_6_7_F25D88(var_1B0, var_1A0)
  loc_170CBAD:   var_1D0 = var_1F0 & var_1B0 
  loc_170CBC4:   unk_51103F.Execute CStr(var_1D0 & " Order By VP.Date_From DESC"), , 
  loc_170CBCF:   Set var_88 = var_1F0
  loc_170CC15:   If (var_88.RecordCount > 0) Then
  loc_170CC26:     Set var_9C = Me.Txt
  loc_170CC2C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_170CC34:     var_A8 = var_A0.Text
  loc_170CC41:     var_748 = Val(var_A8)
  loc_170CC4A:     var_BC = "V_Type"
  loc_170CC91:     Proc_6_7_F25D88(var_1A0, CVar(var_88.Fields.Item("Date_From")))
  loc_170CCC4:     var_200 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_748) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_170CCEC:     var_208 = CStr(CVar(var_200 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_BC).Value & "' and Date_From=" & var_1A0)
  loc_170CCF6:     unk_51103F.Execute var_208, var_1D0, -1
  loc_170CD30:   End If
  loc_170CD30: End If
  loc_170CD36: unk_51103F.CommitTrans
  loc_170CD3D: var_8A = 0
  loc_170CD4E: Set var_9C = Me.Txt
  loc_170CD54: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A0, var_A8)
  loc_170CD5C: var_8A = var_A0.Text
  loc_170CD64: var_90 = var_A8
  loc_170CD70: var_8A = 0
  loc_170CD7E: Me.Requery -1
  loc_170CD91: Set var_9C = Me.Txt
  loc_170CD97: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A0, var_AA)
  loc_170CD9F: var_8A = var_A0.Enabled
  loc_170CDB1: If (var_AA = &HFF) Then
  loc_170CDBF:   Me.Requery -1
  loc_170CDC4: End If
  loc_170CDCF: Me.Requery -1
  loc_170CDF9: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_170CE09: Set var_9C = Me.TopCtrl1
  loc_170CE0F: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_BC)
  loc_170CE28: If (CStr(var_220) = "Add") Then
  loc_170CE2B:   Call TopCtrl1_UnknownEvent_A()
  loc_170CE30:   Exit Sub
  loc_170CE31: End If
  loc_170CE54: Call Proc_90_67_F1CD04(Proc_5_1_100CB50("INI", Me), global_80)
  loc_170CE5F: Call Proc_90_64_16AB45C(var_748)
  loc_170CE69: Set var_88 = Nothing
  loc_170CE6C: Exit Sub
  loc_170CE6D: ' Referenced from: 170B544
  loc_170CE73: If (var_8A = &HFF) Then
  loc_170CE7C:   unk_51103F.RollbackTrans
  loc_170CE81: End If
  loc_170CE81: Proc_6_60_E62BC4()
  loc_170CE86: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E0CFB0
  'Data Table: 511010
  loc_E0CFA2: If (CLng(KeyCode) = &HD) Then
  loc_E0CFAA:   Call TxtBarCode_Validate(&HFF)
  loc_E0CFAF: End If
  loc_E0CFAF: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1300AE8
  'Data Table: 511010
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_104 As Variant
  Dim var_164 As TextBox
  Dim var_14C As Variant
  loc_13003F0: Set var_88 = Me.TopCtrl1
  loc_13003F6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_13003FE: var_9C = CStr()
  loc_1300432: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_1300442:   Me.TxtBarCode.Text = vbNullString
  loc_1300450:   Call 0.Method_arg_50 (var_9C)
  loc_1300471:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1300481:   Exit Sub
  loc_1300482: End If
  loc_13004A4: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_13004A7:   Exit Sub
  loc_13004A8: End If
  loc_13004B3: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_13004BC: var_110 = CStr(var_C4)
  loc_13004D3: Me.TxtBarCode.Text = vbNullString
  loc_13004F2: If (Me.RecordCount = 0) Then
  loc_13004F5:   Exit Sub
  loc_13004F6: End If
  loc_13004FC: Me.MoveFirst
  loc_130051D: var_A4 = "BarCode='" & var_110 & "'"
  loc_1300526: Me.Find var_A4, 0, 1
  loc_1300546: If (Me.EOF = &HFF) Then
  loc_1300562:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_1300575: Else
  loc_130058F:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_130059C:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13005A4:   var_F4 = CVar(CLng(&H11)) 'Long
  loc_13005CF:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13005D2:     var_B4 = vbNullString
  loc_13005DC:     Set var_88 = Me.FGrid
  loc_1300607:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1300610:   End If
  loc_1300623:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_130062F:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300637:   var_F4 = CVar(CLng(0)) 'Long
  loc_1300641:   var_98 = CVar(CStr(var_106)) 'String
  loc_1300649:   Set var_88 = Me.FGrid
  loc_130064F:   LateIdCallSt
  loc_1300661:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1300669:   var_12C = CVar(CLng(1)) 'Long
  loc_130069C:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13006A4:   Set var_150 = Me.FGrid
  loc_13006AA:   LateIdCallSt
  loc_13006C6:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13006CE:   var_12C = CVar(CLng(&H11)) 'Long
  loc_1300701:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1300709:   Set var_150 = Me.FGrid
  loc_130070F:   LateIdCallSt
  loc_1300752:   var_13C = CVar(CLng(4)) 'Long
  loc_1300787:   Set var_150 = Me.FGrid
  loc_130078D:   LateIdCallSt
  loc_13007DF:   Set var_150 = Me.Txt
  loc_13007E5:   Call 0.Method_TxtBarCode_Validate0 (CInt(2), var_164, var_A4, var_150, CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))), 1, 1)
  loc_13007ED:   var_13C = var_164.Text
  loc_1300804:   Call Proc_90_79_1064FE0(CStr(Me.Fields.Item("Code").Value), var_A4, var_170, CVar(CLng(var_106)), var_150)
  loc_1300815:   var_14C = CVar(CLng(&HB)) 'Long
  loc_1300850:   LateIdCallSt
  loc_13008B1:   Set var_150 = Me.Txt
  loc_13008B7:   Call 0.Method_TxtBarCode_Validate0 (CInt(2), var_164, var_A4, Me.FGrid, CVar(CStr(Format(CVar(var_170), "0.00"))), 1, 1)
  loc_13008BF:   var_14C = var_164.Text
  loc_13008D6:   Call Proc_90_79_1064FE0(CStr(Me.Fields.Item("Code").Value), var_A4, var_170, CVar(CLng(var_106)))
  loc_13008DF:   var_12C = CVar(CLng(var_106)) 'Long
  loc_13008E7:   var_14C = CVar(CLng(&HC)) 'Long
  loc_1300922:   LateIdCallSt
  loc_1300987:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&HA)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar(var_170), "0.00"))), 1, 1)) 'String
  loc_130098F:   Set var_150 = Me.FGrid
  loc_1300995:   LateIdCallSt
  loc_13009AF:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13009B7:   var_12C = CVar(CLng(3)) 'Long
  loc_13009EA:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_13009F2:   Set var_150 = Me.FGrid
  loc_13009F8:   LateIdCallSt
  loc_1300A14:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300A1C:   var_F4 = CVar(CLng(&H15)) 'Long
  loc_1300A21:   var_13C = "*"
  loc_1300A2B:   Set var_88 = Me.FGrid
  loc_1300A31:   LateIdCallSt
  loc_1300A40:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300A48:   var_F4 = CVar(CLng(&H16)) 'Long
  loc_1300A84:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1300A8B:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300A93:     var_F4 = CVar(CLng(&H16)) 'Long
  loc_1300AA6:     Set var_88 = Me.FGrid
  loc_1300AAC:     LateIdCallSt
  loc_1300ABB:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1300AC3:     var_F4 = CVar(CLng(&HE)) 'Long
  loc_1300AD6:     Set var_88 = Me.FGrid
  loc_1300ADC:     LateIdCallSt
  loc_1300AE7:   End If
  loc_1300AE7: End If
  loc_1300AE7: Exit Sub
End Sub

Private Sub DGPreDoc_UnknownEvent_9 'F40844
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4073B: Me.DGPreDoc.Visible = False
  loc_F4075A: If (Me.RecordCount > 0) Then
  loc_F40799:   Set var_B4 = Me.Txt
  loc_F4079F:   Call 0.Method_DGPreDoc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F407A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F407DA:   var_B0 = Me.Fields.Item("Code")
  loc_F407F9:   Set var_B4 = Me.Txt
  loc_F407FF:   Call 0.Method_DGPreDoc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F40807:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4081D: End If
  loc_F40828: Set var_A8 = Me.Txt
  loc_F4082E: Call 0.Method_DGPreDoc_UnknownEvent_90 (CInt(4))
  loc_F40836: var_B0.SetFocus
  loc_F40842: Exit Sub
  loc_F40843: var_B0 = 
End Sub

Private Sub DGPreDoc_UnknownEvent_1F 'E75164
  'Data Table: 511010
  loc_E75122: Proc_6_153_E91194(Me.DGPreDoc, arg_14)
  loc_E75139: Set var_8C = Me.FGPoint
  loc_E75155: Proc_6_138_106D6F8(Me.DGPreDoc, global_84, CInt(4))
  loc_E75163: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '1105D84
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_1105A57: Me.DGItem.Visible = False
  loc_1105A76: If (Me.RecordCount > 0) Then
  loc_1105AB3:   Set var_B4 = Me.TxtGrid
  loc_1105AB9:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_1105AC1:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1105AEA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1105AF2:   var_EC = CVar(CLng(1)) 'Long
  loc_1105B25:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1105B2D:   Set var_B8 = Me.FGrid
  loc_1105B33:   LateIdCallSt
  loc_1105B62:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1105B6A:   var_EC = CVar(CLng(&H11)) 'Long
  loc_1105B9D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1105BA5:   Set var_B8 = Me.FGrid
  loc_1105BAB:   LateIdCallSt
  loc_1105BDA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1105BE2:   var_EC = CVar(CLng(3)) 'Long
  loc_1105C15:   var_11C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1105C1D:   Set var_B8 = Me.FGrid
  loc_1105C23:   LateIdCallSt
  loc_1105C52:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1105C5A:   var_EC = CVar(CLng(&H12)) 'Long
  loc_1105C8D:   var_11C = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1105C95:   Set var_B8 = Me.FGrid
  loc_1105C9B:   LateIdCallSt
  loc_1105CCA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1105CD2:   var_EC = CVar(CLng(&H13)) 'Long
  loc_1105CF4:   var_B0 = Me.Fields.Item("SNo")
  loc_1105D05:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_1105D0D:   Set var_B8 = Me.FGrid
  loc_1105D13:   LateIdCallSt
  loc_1105D2F: End If
  loc_1105D3B: Set var_A8 = Me.TxtGrid
  loc_1105D41: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_1105D49: var_B8 = var_B0.Visible
  loc_1105D5B: If (var_12E = &HFF) Then
  loc_1105D67:   Set var_A8 = Me.TxtGrid
  loc_1105D6D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_1105D75:   var_B0.SetFocus
  loc_1105D81: End If
  loc_1105D81: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E7503C
  'Data Table: 511010
  loc_E74FFA: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E75011: Set var_8C = Me.FGPoint
  loc_E7502B: Proc_6_138_106D6F8(Me.DGItem, global_64, 0)
  loc_E75039: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F46884
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4677B: Me.DGParty.Visible = False
  loc_F4679A: If (Me.RecordCount > 0) Then
  loc_F467D9:   Set var_B4 = Me.Txt
  loc_F467DF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F467E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4681A:   var_B0 = Me.Fields.Item("Code")
  loc_F46839:   Set var_B4 = Me.Txt
  loc_F4683F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F46847:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4685D: End If
  loc_F46868: Set var_A8 = Me.Txt
  loc_F4686E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(6))
  loc_F46876: var_B0.SetFocus
  loc_F46882: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'E754DC
  'Data Table: 511010
  loc_E7549A: Proc_6_153_E91194(Me.DGParty, arg_14)
  loc_E754B1: Set var_8C = Me.FGPoint
  loc_E754CD: Proc_6_138_106D6F8(Me.DGParty, global_68, CInt(6))
  loc_E754DB: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD4698
  'Data Table: 511010
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD44DC: On Error Goto loc_FD4690
  loc_FD44EE: Me.DGVType.Visible = False
  loc_FD450D: If (Me.RecordCount > 0) Then
  loc_FD455F:   Set var_CC = Me.Txt
  loc_FD4565:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD456D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD45C5:   Set var_B4 = Me.DGVType
  loc_FD45DC:   Set var_CC = Me.Txt
  loc_FD45E2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD45EA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD463E:   global_108 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD464F: End If
  loc_FD466D: Set var_B0 = Me.Txt
  loc_FD4673: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD467B: var_B4.SetFocus
  loc_FD468F: Exit Sub
  loc_FD4690: ' Referenced from: FD44DC
  loc_FD4690: Proc_6_60_E62BC4(var_B4)
  loc_FD4695: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_1F 'E75320
  'Data Table: 511010
  loc_E752DE: Proc_6_153_E91194(Me.DGVType, arg_14)
  loc_E752F5: Set var_8C = Me.FGPoint
  loc_E75311: Proc_6_138_106D6F8(Me.DGVType, global_60, CInt(0))
  loc_E7531F: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_9 'FEB370
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FEB194: On Error Goto loc_FEB369
  loc_FEB1A6: Me.DGGod.Visible = False
  loc_FEB1C5: If (Me.RecordCount > 0) Then
  loc_FEB202:   Set var_B4 = Me.TxtGrid
  loc_FEB208:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B8)
  loc_FEB210:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEB239:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB241:   var_EC = CVar(CLng(&HE)) 'Long
  loc_FEB274:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FEB27C:   Set var_B8 = Me.FGrid
  loc_FEB282:   LateIdCallSt
  loc_FEB2B1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB2B9:   var_EC = CVar(CLng(&H16)) 'Long
  loc_FEB2DB:   var_B0 = Me.Fields.Item("Code")
  loc_FEB2EC:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FEB2F4:   Set var_B8 = Me.FGrid
  loc_FEB2FA:   LateIdCallSt
  loc_FEB316: End If
  loc_FEB322: Set var_A8 = Me.TxtGrid
  loc_FEB328: Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FEB330: var_A4 = var_B0.Visible
  loc_FEB342: If (var_12E = &HFF) Then
  loc_FEB34E:   Set var_A8 = Me.TxtGrid
  loc_FEB354:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FEB35C:   var_B0.SetFocus
  loc_FEB368: End If
  loc_FEB368: Exit Sub
  loc_FEB369: ' Referenced from: FEB194
  loc_FEB369: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FEB36E: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_1F 'E7597C
  'Data Table: 511010
  loc_E7593A: Proc_6_153_E91194(Me.DGGod, arg_14)
  loc_E75951: Set var_8C = Me.FGPoint
  loc_E7596B: Proc_6_138_106D6F8(Me.DGGod, global_72, 0)
  loc_E75979: Exit Sub
  loc_E7597A: Assert
End Sub

Private Sub Form_Load() '1309870
  'Data Table: 511010
  Dim var_8C As String
  Dim var_BC As String
  Dim unk_51103F As Connection15
  Dim var_88 As Recordset15
  Dim var_F0 As Variant
  Dim var_AC As Variant
  Dim var_F8 As Label
  Dim Me As Recordset15
  Dim var_FC As String
  Dim var_10C As String
  Dim var_EC As Variant
  Dim var_198 As Variant
  loc_130916C: On Error Goto loc_1309868
  loc_130917C: global_148 = MemVar_1F92070 & "PURC"
  loc_1309190: var_BC = "Select E.ExpMfdDateInMR,E.ItemRateInMRBasedOn,E.PurChaseGodown,E.BarCodeFeatureInPurchase,G.Name PurChaseGodownName,DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_13091A0: Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, var_BC)
  loc_13091B6: unk_51103F.Execute CStr(var_EC & var_AC), -1, var_F0
  loc_13091C1: Set var_88 = var_F0
  loc_13091E7: If (var_88.RecordCount > 0) Then
  loc_1309218:   global_156 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PurchaseGodown")))
  loc_1309253:   global_160 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PurchaseGodownName")))
  loc_130929D:   global_180 = CStr(Ucase(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ExpMfdDateInMR"))))))
  loc_13092ED:   global_152 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemRateInMRBasedOn"))))))
  loc_130932E:   global_164 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")))
  loc_1309352:   var_F8 = var_88.Fields.Item("DateEditableOnRequisitionYN")
  loc_1309369:   global_168 = Proc_6_38_E68A98(CVar(var_F8))
  loc_1309376: End If
  loc_1309381: If (global_164 = "Yes") Then
  loc_1309390:   Me.TxtBarCode.Visible = True
  loc_13093A3:   Set var_F0 = Me.Label1
  loc_13093A9:   Call 0.Method_Form_Load0 (2, var_F8)
  loc_13093B1:   var_F8.Visible = True
  loc_13093BD: End If
  loc_13093C7: Set global_60 = New 
  loc_13093D9: Me.CursorLocation = 3
  loc_1309403: var_FC = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Site_Code='" & MemVar_1F92070 & "' and LogSite_Code='"
  loc_130941B: Me.Open CVar(var_FC & MemVar_1F92078 & "' and NCat in('MRE') Order by Description"), CVar(MemVar_1F92044), 3
  loc_1309435: CVarUnk
  loc_130943A: VerifyVarObj
  loc_1309440: Set var_F0 = Me.DGVType
  loc_1309446: LateIdStAd
  loc_130945E: Set global_72 = New 
  loc_1309470: Me.DGVType.CursorLocation = 3
  loc_130949A: var_AC = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SysYN='Y' Order by Name") 'String
  loc_13094A4: Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_13094B8: CVarUnk
  loc_13094BD: VerifyVarObj
  loc_13094C3: Set var_F0 = Me.DGGod
  loc_13094C9: LateIdStAd
  loc_13094E1: Set global_64 = New 
  loc_13094F3: Me.DGGod.CursorLocation = 3
  loc_1309503: If (global_164 = "Yes") Then
  loc_1309524:   var_8C = "Select I.Code,I.BarCode,I.Name as Name,I.Unit,I.PurchRate as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1309535:   Me.Open CVar(var_8C & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F92044), 3
  loc_1309543: Else
  loc_1309561:   var_8C = "Select I.Code,I.BarCode,I.Name as Name,I.Unit,I.PurchRate as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1309572:   Me.Open CVar(var_8C & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_130957D: End If
  loc_1309586: CVarUnk
  loc_130958B: VerifyVarObj
  loc_1309591: Set var_F0 = Me.DGItem
  loc_1309597: LateIdStAd
  loc_13095C1: Me.DGItem.CursorLocation = 3
  loc_13095E4: var_8C = "SELECT Indent.DocId, Convert(Char(4),Indent.VNo) as VNo, Convert(Varchar(11),Indent.VDate,103) as VDate, GodownMast.Name FROM Indent INNER JOIN GodownMast ON Indent.Department = GodownMast.Code Where (Indent.LOGSITE_CODE='" & MemVar_1F92078
  loc_13095EB: var_FC = var_8C & "' or Indent.LOGSITE_CODE='HO') and Indent.Docid in (Select Distinct Docid from Indent1 where ClearYN<>'Y' or ClearYn is NULL and VType in (Select V_type from Voucher_Type where logsite_Code='"
  loc_1309607: var_10C = var_FC & MemVar_1F92078 & "' and Site_Code='" & MemVar_1F92070 & "' and NCAT='PIND')) and Vtype in (Select V_type from Voucher_Type where Site_Code='"
  loc_130962D: Me.Open CVar(var_10C & MemVar_1F92070 & "' and LogSite_Code='" & MemVar_1F92078 & "' and NCAT='PIND') order by VDate"), CVar(MemVar_1F92044), 3
  loc_1309653: CVarUnk
  loc_1309658: VerifyVarObj
  loc_130965E: Set var_F0 = Me.DGIndent
  loc_1309664: LateIdStAd
  loc_130968E: Me.DGIndent.CursorLocation = 3
  loc_13096B1: var_8C = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where (Subgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_13096B8: var_AC = CVar(var_8C & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier') Order by Name") 'String
  loc_13096D6: CVarUnk
  loc_13096DB: VerifyVarObj
  loc_13096E7: LateIdStAd
  loc_1309711: Me.DGParty.CursorLocation = 3
  loc_1309721: Proc_6_7_F25D88(var_AC, MemVar_1F920F4, Me.DGParty, New, 1, -1, Me.DGParty, New)
  loc_130973D: var_BC = "Select G.Docid as SearchCode,G.DocID,G.Site_Code,G.LogSite_Code From GIN G Inner Join Voucher_Type V On (G.VType= V.V_Type And G.LogSite_Code=V.LogSite_Code) Where G.VDATE>="
  loc_1309774: var_198 = var_BC & var_AC & " AND v.Site_Code='" & CVar(MemVar_1F92070) & "' and V.LogSite_Code='" & CVar(MemVar_1F92078) & "' and V.Ncat= 'MRE' And G.Site_Code='" 
  loc_1309792: r_AC, CVar(MemVar_1F92044), 3 var_198 & CVar(MemVar_1F92070) & "' Order by Docid ", CVar(MemVar_1F92044), 3
  loc_13097CF: Call Proc_90_67_F1CD04(Proc_5_1_100CB50("INI", Me, New, 1, -1, 1, -1), Me, global_64, 1)
  loc_13097E9: Me.LblUser.Left = CDbl(13500)
  loc_1309800: Me.LblUser.Top = CDbl(7800)
  loc_1309817: Me.LblLDt.Top = CDbl(8160)
  loc_130982E: Me.LblLDt.Left = CDbl(13500)
  loc_130983D: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), -1)
  loc_1309855: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_130985D: Call Proc_90_60_14A2E9C(1)
  loc_1309862: Call Proc_90_64_16AB45C(-1)
  loc_1309867: Exit Sub
  loc_1309868: ' Referenced from: 130916C
  loc_1309868: Proc_6_60_E62BC4()
  loc_130986D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED27B8
  'Data Table: 511010
  Dim var_8C As Label
  loc_ED2716: Call 0.Method_arg_50 (var_88)
  loc_ED2728: Me.LblFormCaption.Caption = var_88
  loc_ED2741: Me.LblFormCaption.Left = CDbl(0)
  loc_ED274D: Set var_A0 = Me.TopCtrl1
  loc_ED2753: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED2760: Set var_8C = Me.TopCtrl1
  loc_ED2766: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED2780: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED279B: Call 0.Method_arg_100 (var_B8)
  loc_ED27AD: Me.LblFormCaption.Width = var_B8
  loc_ED27B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E87DCC
  'Data Table: 511010
  loc_E87D5F: Set global_60 = Nothing
  loc_E87D71: Set global_64 = Nothing
  loc_E87D83: Set global_84 = Nothing
  loc_E87D95: Set global_68 = Nothing
  loc_E87DA7: Set global_72 = Nothing
  loc_E87DB9: Set global_80 = Nothing
  loc_E87DC5: global_52 = 0
  loc_E87DC8: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5AF34
  'Data Table: 511010
  loc_E5AEFC: Set var_88 = Me.TopCtrl1
  loc_E5AF02: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E5AF25: If ((CStr() <> "Browse") And (global_52 = 0)) Then
  loc_E5AF2D:   Call Form_Unload(&HFF)
  loc_E5AF32: End If
  loc_E5AF32: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26464
  'Data Table: 511010
  loc_E26449: If (global_52 = &HFF) Then
  loc_E26459:   Me.Global.Unload Me
  loc_E26461: End If
  loc_E26461: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E82C64
  'Data Table: 511010
  loc_E82BF4: On Error Goto loc_E82C5B
  loc_E82C25: If (((global_164 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E82C32:   Me.TxtBarCode.SetFocus
  loc_E82C3A: End If
  loc_E82C52: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E82C5A: Exit Sub
  loc_E82C5B: ' Referenced from: E82BF4
  loc_E82C5B: Proc_6_60_E62BC4(Shift)
  loc_E82C60: Exit Sub
  loc_E82C61: Set var_B4 = global_52
End Sub

Public Function global_52Get() '51267C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '51268B
  global_52 = Value
End Sub

Public Function global_56Get() '51269A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5126A9
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95BA0
  'Data Table: 511010
  Dim Me As Recordset15
  Dim var_6708 As Variant
  loc_E95B2E: On Error Goto loc_E95B97
  loc_E95B37: Me.MoveFirst
  loc_E95B61: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95B89: Proc_5_0_110649C(&HFF, Me, global_80)
  loc_E95B91: Call Proc_90_64_16AB45C(0)
  loc_E95B96: Exit Sub
  loc_E95B97: ' Referenced from: E95B2E
  loc_E95B97: Proc_6_60_E62BC4(var_A0)
  loc_E95B9C: Exit Sub
  loc_E95B9D: var_6708 =  
End Sub

Public Sub Proc_90_60_14A2E9C
  'Data Table: 511010
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_D8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_14A21EE: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_14A2209: Me.FGrid.Top = CVar(CDbl(1950))
  loc_14A2224: Me.FGrid.Width = CVar(CDbl(19000))
  loc_14A2230: Set var_BC = Me.FGrid
  loc_14A2263: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(var_BC.Height))
  loc_14A228B: Me.DGItem.Left = CVar(CDbl(3000))
  loc_14A22A6: Me.DGItem.Top = CVar(CDbl(3145))
  loc_14A22C0: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_14A22D6: Set var_D0 = Me.Txt
  loc_14A22DC: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(6), var_D8)
  loc_14A22F7: Set var_A8 = Me.Txt
  loc_14A22FD: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(6), var_BC)
  loc_14A2315: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_14A2324: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_14A2349: Me.DGGod.Left = CVar(CDbl(7530))
  loc_14A2364: Me.DGGod.Top = CVar(CDbl(3480))
  loc_14A237A: Set var_A8 = Me.Txt
  loc_14A2380: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(0), var_BC)
  loc_14A239F: Me.DGVType.Left = CVar(var_BC.Left)
  loc_14A23BB: Set var_D0 = Me.Txt
  loc_14A23C1: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(0), var_D8)
  loc_14A23DC: Set var_A8 = Me.Txt
  loc_14A23E2: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(0), var_BC)
  loc_14A23FA: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_14A2409: Me.DGVType.Top = CVar(var_BC.Left)
  loc_14A2429: Set var_A8 = Me.Txt
  loc_14A242F: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(&HE), var_BC)
  loc_14A244E: Me.DGIndent.Left = CVar(var_BC.Left)
  loc_14A246A: Set var_D0 = Me.Txt
  loc_14A2470: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(&HE), var_D8)
  loc_14A248B: Set var_A8 = Me.Txt
  loc_14A2491: Call 0.Method_Proc_90_60_14A2E9C0 (CInt(&HE), var_BC)
  loc_14A24A9: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_14A24B8: Me.DGIndent.Top = CVar(var_BC.Left)
  loc_14A24D5: If (global_164 <> "Yes") Then
  loc_14A24E9:   Set var_A8 = Me.DGItem
  loc_14A2508:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_14A2531:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_14A2540:   Me.DGItem.Width = 1
  loc_14A254F: End If
  loc_14A2553: Set var_E4 = Me.FGrid
  loc_14A256A: global_88 = CStr(CLng(var_E4.BackColor))
  loc_14A2580: var_E4.Cols = &H1A
  loc_14A2588: var_94 = CVar(CLng(0)) 'Long
  loc_14A258D: var_F8 = &H190
  loc_14A2599: LateIdCallSt
  loc_14A25A1: var_94 = 0
  loc_14A25AD: var_F8 = CVar(CLng(1)) 'Long
  loc_14A25B2: var_118 = "Item Name"
  loc_14A25BB: LateIdCallSt
  loc_14A25C6: var_94 = CVar(CLng(1)) 'Long
  loc_14A25D1: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A25D8: LateIdCallSt
  loc_14A25E3: var_94 = CVar(CLng(1)) 'Long
  loc_14A25E8: var_F8 = &HCE4
  loc_14A25F4: LateIdCallSt
  loc_14A25FC: var_94 = 0
  loc_14A2608: var_F8 = CVar(CLng(2)) 'Long
  loc_14A260D: var_118 = "Specification"
  loc_14A2616: LateIdCallSt
  loc_14A2621: var_94 = CVar(CLng(2)) 'Long
  loc_14A262C: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2633: LateIdCallSt
  loc_14A263E: var_94 = CVar(CLng(2)) 'Long
  loc_14A2643: var_F8 = &H4B0
  loc_14A264F: LateIdCallSt
  loc_14A2657: var_94 = 0
  loc_14A2663: var_F8 = CVar(CLng(4)) 'Long
  loc_14A2668: var_118 = "Con.Ratio"
  loc_14A2671: LateIdCallSt
  loc_14A267C: var_94 = CVar(CLng(4)) 'Long
  loc_14A2687: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A268E: LateIdCallSt
  loc_14A2699: var_94 = CVar(CLng(4)) 'Long
  loc_14A26A4: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A26AB: LateIdCallSt
  loc_14A26B6: var_94 = CVar(CLng(4)) 'Long
  loc_14A26BB: var_F8 = 0
  loc_14A26C7: LateIdCallSt
  loc_14A26CF: var_94 = 0
  loc_14A26DB: var_F8 = CVar(CLng(3)) 'Long
  loc_14A26E0: var_118 = "Unit"
  loc_14A26E9: LateIdCallSt
  loc_14A26F4: var_94 = CVar(CLng(3)) 'Long
  loc_14A26FF: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2706: LateIdCallSt
  loc_14A2711: var_94 = CVar(CLng(3)) 'Long
  loc_14A2716: var_F8 = &H320
  loc_14A2722: LateIdCallSt
  loc_14A272A: var_94 = 0
  loc_14A2736: var_F8 = CVar(CLng(5)) 'Long
  loc_14A273B: var_118 = "Chal.Qty"
  loc_14A2744: LateIdCallSt
  loc_14A274F: var_94 = CVar(CLng(5)) 'Long
  loc_14A275A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2761: LateIdCallSt
  loc_14A276C: var_94 = CVar(CLng(5)) 'Long
  loc_14A2777: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A277E: LateIdCallSt
  loc_14A2789: var_94 = CVar(CLng(5)) 'Long
  loc_14A278E: var_F8 = &H384
  loc_14A279A: LateIdCallSt
  loc_14A27A2: var_94 = 0
  loc_14A27AE: var_F8 = CVar(CLng(6)) 'Long
  loc_14A27B3: var_118 = "Recd.Qty"
  loc_14A27BC: LateIdCallSt
  loc_14A27C7: var_94 = CVar(CLng(6)) 'Long
  loc_14A27D2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A27D9: LateIdCallSt
  loc_14A27E4: var_94 = CVar(CLng(6)) 'Long
  loc_14A27EF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A27F6: LateIdCallSt
  loc_14A2801: var_94 = CVar(CLng(6)) 'Long
  loc_14A2806: var_F8 = &H3B6
  loc_14A2812: LateIdCallSt
  loc_14A281A: var_94 = 0
  loc_14A2826: var_F8 = CVar(CLng(7)) 'Long
  loc_14A282B: var_118 = "Rej.Qty"
  loc_14A2834: LateIdCallSt
  loc_14A283F: var_94 = CVar(CLng(7)) 'Long
  loc_14A284A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2851: LateIdCallSt
  loc_14A285C: var_94 = CVar(CLng(7)) 'Long
  loc_14A2867: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A286E: LateIdCallSt
  loc_14A2879: var_94 = CVar(CLng(7)) 'Long
  loc_14A287E: var_F8 = &H320
  loc_14A288A: LateIdCallSt
  loc_14A2892: var_94 = 0
  loc_14A289E: var_F8 = CVar(CLng(8)) 'Long
  loc_14A28A3: var_118 = "Acc.Qty"
  loc_14A28AC: LateIdCallSt
  loc_14A28B7: var_94 = CVar(CLng(8)) 'Long
  loc_14A28C2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A28C9: LateIdCallSt
  loc_14A28D4: var_94 = CVar(CLng(8)) 'Long
  loc_14A28DF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A28E6: LateIdCallSt
  loc_14A28F1: var_94 = CVar(CLng(8)) 'Long
  loc_14A28F6: var_F8 = &H320
  loc_14A2902: LateIdCallSt
  loc_14A290A: var_94 = 0
  loc_14A2916: var_F8 = CVar(CLng(9)) 'Long
  loc_14A291B: var_118 = "Wt.Qty"
  loc_14A2924: LateIdCallSt
  loc_14A292F: var_94 = CVar(CLng(9)) 'Long
  loc_14A293A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2941: LateIdCallSt
  loc_14A294C: var_94 = CVar(CLng(9)) 'Long
  loc_14A2957: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A295E: LateIdCallSt
  loc_14A2969: var_94 = CVar(CLng(9)) 'Long
  loc_14A296E: var_F8 = &H352
  loc_14A297A: LateIdCallSt
  loc_14A2982: var_94 = 0
  loc_14A298E: var_F8 = CVar(CLng(&HA)) 'Long
  loc_14A2993: var_118 = "Wt.Unit"
  loc_14A299C: LateIdCallSt
  loc_14A29A7: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A29B2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A29B9: LateIdCallSt
  loc_14A29C4: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A29CF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A29D6: LateIdCallSt
  loc_14A29E1: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A29E6: var_F8 = &H384
  loc_14A29F2: LateIdCallSt
  loc_14A29FA: var_94 = 0
  loc_14A2A06: var_F8 = CVar(CLng(&HB)) 'Long
  loc_14A2A0B: var_118 = "Rate"
  loc_14A2A14: LateIdCallSt
  loc_14A2A1F: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A2A2A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2A31: LateIdCallSt
  loc_14A2A3C: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A2A47: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2A4E: LateIdCallSt
  loc_14A2A59: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A2A5E: var_F8 = &H384
  loc_14A2A6A: LateIdCallSt
  loc_14A2A72: var_94 = 0
  loc_14A2A7E: var_F8 = CVar(CLng(&HC)) 'Long
  loc_14A2A83: var_118 = "ItemRate"
  loc_14A2A8C: LateIdCallSt
  loc_14A2A97: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A2AA2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2AA9: LateIdCallSt
  loc_14A2AB4: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A2ABF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2AC6: LateIdCallSt
  loc_14A2AD1: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A2AD6: var_F8 = 0
  loc_14A2AE2: LateIdCallSt
  loc_14A2AEA: var_94 = 0
  loc_14A2AF6: var_F8 = CVar(CLng(&HD)) 'Long
  loc_14A2AFB: var_118 = "Amount"
  loc_14A2B04: LateIdCallSt
  loc_14A2B0F: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A2B1A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2B21: LateIdCallSt
  loc_14A2B2C: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A2B37: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A2B3E: LateIdCallSt
  loc_14A2B49: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A2B4E: var_F8 = &H3E8
  loc_14A2B5A: LateIdCallSt
  loc_14A2B62: var_94 = 0
  loc_14A2B6E: var_F8 = CVar(CLng(&HE)) 'Long
  loc_14A2B73: var_118 = "Godown Name"
  loc_14A2B7C: LateIdCallSt
  loc_14A2B87: var_94 = CVar(CLng(&HE)) 'Long
  loc_14A2B92: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2B99: LateIdCallSt
  loc_14A2BA4: var_94 = CVar(CLng(&HE)) 'Long
  loc_14A2BA9: var_F8 = &HBB8
  loc_14A2BB5: LateIdCallSt
  loc_14A2BBD: var_94 = 0
  loc_14A2BC9: var_F8 = CVar(CLng(&HF)) 'Long
  loc_14A2BCE: var_118 = "Exp. Date"
  loc_14A2BD7: LateIdCallSt
  loc_14A2BE2: var_94 = CVar(CLng(&HF)) 'Long
  loc_14A2BED: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2BF4: LateIdCallSt
  loc_14A2BFF: var_94 = CVar(CLng(&HF)) 'Long
  loc_14A2C04: var_F8 = 0
  loc_14A2C10: LateIdCallSt
  loc_14A2C18: var_94 = 0
  loc_14A2C24: var_F8 = CVar(CLng(&H10)) 'Long
  loc_14A2C29: var_118 = "Mf. Date"
  loc_14A2C32: LateIdCallSt
  loc_14A2C3D: var_94 = CVar(CLng(&H10)) 'Long
  loc_14A2C48: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2C4F: LateIdCallSt
  loc_14A2C5A: var_94 = CVar(CLng(&H10)) 'Long
  loc_14A2C5F: var_F8 = 0
  loc_14A2C6B: LateIdCallSt
  loc_14A2C7E: If (global_180 = "YES") Then
  loc_14A2C92:   var_94 = CVar((CDbl(var_E4.Width) + CDbl(2400))) 'Single
  loc_14A2C9A:   var_E4.Width = var_94
  loc_14A2CA5:   var_94 = CVar(CLng(&HF)) 'Long
  loc_14A2CAA:   var_F8 = &H4B0
  loc_14A2CB6:   LateIdCallSt
  loc_14A2CC1:   var_94 = CVar(CLng(&H10)) 'Long
  loc_14A2CC6:   var_F8 = &H4B0
  loc_14A2CD2:   LateIdCallSt
  loc_14A2CDA: End If
  loc_14A2CDA: var_94 = 0
  loc_14A2CE6: var_F8 = CVar(CLng(&H17)) 'Long
  loc_14A2CEB: var_118 = "Godown Name"
  loc_14A2CF4: LateIdCallSt
  loc_14A2CFF: var_94 = CVar(CLng(&H17)) 'Long
  loc_14A2D0A: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2D11: LateIdCallSt
  loc_14A2D1C: var_94 = CVar(CLng(&H17)) 'Long
  loc_14A2D21: var_F8 = 0
  loc_14A2D2D: LateIdCallSt
  loc_14A2D35: var_94 = 0
  loc_14A2D41: var_F8 = CVar(CLng(&H18)) 'Long
  loc_14A2D46: var_118 = "Godown Name"
  loc_14A2D4F: LateIdCallSt
  loc_14A2D5A: var_94 = CVar(CLng(&H18)) 'Long
  loc_14A2D65: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2D6C: LateIdCallSt
  loc_14A2D77: var_94 = CVar(CLng(&H18)) 'Long
  loc_14A2D7C: var_F8 = 0
  loc_14A2D88: LateIdCallSt
  loc_14A2D90: var_94 = 0
  loc_14A2D9C: var_F8 = CVar(CLng(&H19)) 'Long
  loc_14A2DA1: var_118 = "ClearYN"
  loc_14A2DAA: LateIdCallSt
  loc_14A2DB5: var_94 = CVar(CLng(&H19)) 'Long
  loc_14A2DC0: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A2DC7: LateIdCallSt
  loc_14A2DD2: var_94 = CVar(CLng(&H19)) 'Long
  loc_14A2DD7: var_F8 = 0
  loc_14A2DE3: LateIdCallSt
  loc_14A2DEE: var_94 = CVar(CLng(&H11)) 'Long
  loc_14A2DF3: var_F8 = 0
  loc_14A2DFF: LateIdCallSt
  loc_14A2E0A: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A2E0F: var_F8 = 0
  loc_14A2E1B: LateIdCallSt
  loc_14A2E26: var_94 = CVar(CLng(&H12)) 'Long
  loc_14A2E2B: var_F8 = 0
  loc_14A2E37: LateIdCallSt
  loc_14A2E42: var_94 = CVar(CLng(&H13)) 'Long
  loc_14A2E47: var_F8 = 0
  loc_14A2E53: LateIdCallSt
  loc_14A2E5E: var_94 = CVar(CLng(&H14)) 'Long
  loc_14A2E63: var_F8 = 0
  loc_14A2E6F: LateIdCallSt
  loc_14A2E7A: var_94 = CVar(CLng(&H15)) 'Long
  loc_14A2E7F: var_F8 = 0
  loc_14A2E8B: LateIdCallSt
  loc_14A2E95: Set var_E4 = Nothing 
  loc_14A2E99: Exit Sub
End Sub

Public Sub Proc_90_61_10B9538(arg_C) '10B9538
  'Data Table: 511010
  Dim var_88 As Integer
  Dim var_A0 As Variant
  Dim var_148 As Variant
  Dim var_160 As Variant
  Dim var_180 As Byte
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1D4 As Variant
  Dim var_210 As Double
  Dim var_8C As MSHFlexGrid
  loc_10B929F: Call 0.Method_arg_A4 (CInt(&HB))
  loc_10B92A7: var_88 = arg_C
  loc_10B92B0: If (var_88 = 0) Then
  loc_10B92BF:   var_8C = Me.Global.Screen
  loc_10B92F0:   If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_10B92F7:     Set var_8C = (var_88)
  loc_10B92FD:     var_A0 = var_A0.FRectGrid.Row
  loc_10B931E:     var_90 = Me.var_A0.Screen
  loc_10B9326:     var_D4 = Screen.ActiveForm
  loc_10B9333:     VarLateMemCallLdRfVar
  loc_10B9354:     Set var_138 = &H11((Trim(var_D4.FGrid) <> vbNullString))
  loc_10B935A:     var_148 = var_D4.FRectGrid.Row
  loc_10B937B:     var_14C = Me.var_148.Screen
  loc_10B938B:     var_1A0 = Screen.ActiveForm.FGrid
  loc_10B93D5:     If CBool(6 And (CDbl(Val(CStr(var_1A0.TextMatrix))) <> CDbl(0))) Then
  loc_10B93DC:       Set var_8C = CVar(CLng(var_A0))(CVar(CLng(var_148)))
  loc_10B93E2:       var_A0 = var_1A0.FRectGrid.Row
  loc_10B9403:       var_90 = Me.var_A0.Screen
  loc_10B940B:       var_D4 = Screen.ActiveForm
  loc_10B9418:       VarLateMemCallLdRfVar
  loc_10B943C:       Set var_138 = CVar(CLng(var_A0))(&H11)
  loc_10B9442:       var_1B0 = var_D4.FRectGrid.Row
  loc_10B944B:       var_160 = CVar(CLng(var_1B0)) 'Long
  loc_10B9450:       var_180 = 6
  loc_10B9463:       var_14C = Me.var_1B0.Screen
  loc_10B9473:       var_1D4 = Screen.ActiveForm.FGrid
  loc_10B9489:       var_210 = Val(CStr(var_1D4.TextMatrix))
  loc_10B949A:       Set var_1EC = var_1F0(CInt(2))
  loc_10B94A0:       Call 0.Method_Proc_90_61_10B95380 (var_1F4, var_210)
  loc_10B94A8:       var_180 = var_1D4.TextBox.Text
  loc_10B94C6:       var_148 = (Trim(var_D4.FGrid) + CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)))
  loc_10B94CF:       var_1A0 = (var_148 + "PURC")
  loc_10B94D8:       Proc_96_100_1389558(CStr(var_1A0), CLng(var_210))
  loc_10B9512:     End If
  loc_10B9512:   End If
  loc_10B9512: End If
  loc_10B9521: Me.FRectGrid.Visible = False
  loc_10B9530: Call 0.Method_arg_A4 (CInt(0), CDate(var_1F4))
  loc_10B9535: Exit Sub
End Sub

Public Sub Proc_90_62_E3F5B4
  'Data Table: 511010
  loc_E3F590: Set var_88 = Me.TopCtrl1
  loc_E3F596: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E3F5AF: If (CStr() = "Browse") Then
  loc_E3F5B2:   Exit Sub
  loc_E3F5B3: End If
  loc_E3F5B3: Exit Sub
End Sub

Public Sub Proc_90_63_1762DC0(arg_C) '1762DC0
  'Data Table: 511010
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_B4 As String
  Dim var_118 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_13C As Variant
  Dim var_180 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_190 As Variant
  Dim var_1C4 As Variant
  Dim var_16C As Variant
  Dim var_1B4 As Variant
  Dim var_1FC As Double
  Dim var_1E4 As Variant
  Dim var_1A4 As MSHFlexGrid
  Dim var_8A As Integer
  Dim var_17C As Double
  Dim var_170 As String
  Dim var_21C As Variant
  Dim var_23C As Variant
  loc_1761018: If (arg_C = 0) Then
  loc_176102E:   var_A4 = CLng(Me.FGrid.Col)
  loc_176103E:   If (var_A4 = CLng(1)) Then
  loc_176108F:     Set var_90 = Me.TxtGrid
  loc_1761095:     Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4)
  loc_176109D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_17610B5:     If (var_A4 Or (var_B4 = vbNullString)) Then
  loc_17610CB:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17610D3:       var_E4 = CVar(CLng(1)) 'Long
  loc_17610D8:       var_104 = vbNullString
  loc_17610E2:       Set var_B0 = Me.FGrid
  loc_17610E8:       LateIdCallSt
  loc_176110D:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761115:       var_E4 = CVar(CLng(&H11)) 'Long
  loc_176111A:       var_104 = vbNullString
  loc_1761124:       Set var_B0 = Me.FGrid
  loc_176112A:       LateIdCallSt
  loc_176114F:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761157:       var_E4 = CVar(CLng(3)) 'Long
  loc_176115C:       var_104 = vbNullString
  loc_1761166:       Set var_B0 = Me.FGrid
  loc_176116C:       LateIdCallSt
  loc_1761191:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761199:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_176119E:       var_104 = vbNullString
  loc_17611A8:       Set var_B0 = Me.FGrid
  loc_17611AE:       LateIdCallSt
  loc_17611D3:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17611DB:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_17611E0:       var_104 = vbNullString
  loc_17611EA:       Set var_B0 = Me.FGrid
  loc_17611F0:       LateIdCallSt
  loc_1761215:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_176121D:       var_E4 = CVar(CLng(4)) 'Long
  loc_1761222:       var_104 = vbNullString
  loc_176122C:       Set var_B0 = Me.FGrid
  loc_1761232:       LateIdCallSt
  loc_1761257:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_176125F:       var_E4 = CVar(CLng(&HA)) 'Long
  loc_1761264:       var_104 = vbNullString
  loc_176126E:       Set var_B0 = Me.FGrid
  loc_1761274:       LateIdCallSt
  loc_1761299:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17612A1:       var_E4 = CVar(CLng(&H15)) 'Long
  loc_17612A6:       var_104 = vbNullString
  loc_17612B0:       Set var_B0 = Me.FGrid
  loc_17612B6:       LateIdCallSt
  loc_17612CB:     Else
  loc_17612CF:       Set var_90 = Me.TopCtrl1
  loc_17612D5:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_B0)
  loc_17612EE:       If (CStr(var_104) = "Add") Then
  loc_1761304:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_176130C:         var_F4 = CVar(CLng(1)) 'Long
  loc_176133F:         var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1761347:         Set var_13C = Me.FGrid
  loc_176134D:         LateIdCallSt
  loc_176137C:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761384:         var_F4 = CVar(CLng(&H11)) 'Long
  loc_17613B7:         var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_17613BF:         Set var_13C = Me.FGrid
  loc_17613C5:         LateIdCallSt
  loc_176141B:         var_104 = CVar(CLng(4)) 'Long
  loc_1761450:         Set var_13C = Me.FGrid
  loc_1761456:         LateIdCallSt
  loc_17614AC:         Set var_118 = Me.Txt
  loc_17614B2:         Call 0.Method_Proc_90_63_1762DC00 (CInt(2), var_13C, var_170, var_13C, CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))), 1, 1)
  loc_17614BA:         var_104 = var_13C.Text
  loc_17614D1:         Call Proc_90_79_1064FE0(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, CVar(CLng(Me.FGrid.Row)), var_13C)
  loc_17614F1:         var_114 = CVar(CLng(&HB)) 'Long
  loc_176152C:         LateIdCallSt
  loc_1761591:         Set var_118 = Me.Txt
  loc_1761597:         Call 0.Method_Proc_90_63_1762DC00 (CInt(2), var_13C, var_170, Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)
  loc_176159F:         var_114 = var_13C.Text
  loc_17615B6:         Call Proc_90_79_1064FE0(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, CVar(CLng(Me.FGrid.Row)))
  loc_17615CE:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17615D6:         var_114 = CVar(CLng(&HC)) 'Long
  loc_1761611:         LateIdCallSt
  loc_1761689:         var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)) 'String
  loc_1761691:         Set var_13C = Me.FGrid
  loc_1761697:         LateIdCallSt
  loc_17616B5:         Set var_118 = Me.FGrid
  loc_17616C4:         var_D4 = CVar(CLng(var_118.Row)) 'Long
  loc_17616CC:         var_F4 = CVar(CLng(3)) 'Long
  loc_17616FF:         var_138 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1761707:         Set var_13C = Me.FGrid
  loc_176170D:         LateIdCallSt
  loc_176173C:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761744:         var_E4 = CVar(CLng(&H15)) 'Long
  loc_1761749:         var_104 = "*"
  loc_1761753:         Set var_B0 = Me.FGrid
  loc_1761759:         LateIdCallSt
  loc_176176E:       Else
  loc_1761772:         Set var_90 = Me.TopCtrl1
  loc_1761778:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_B0)
  loc_1761797:         Set var_B0 = Me.Txt
  loc_176179D:         Call 0.Method_Proc_90_63_1762DC00 (CInt(0), var_118, (CStr(var_104) = "Edit"), var_E4, var_C4, var_13C, var_138)
  loc_17617D9:         If CBool(var_F4 And (Trim(CVar(var_118)) <> "MRCR")) Then
  loc_17617EF:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17617F7:           var_F4 = CVar(CLng(1)) 'Long
  loc_176182A:           var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1761832:           Set var_13C = Me.FGrid
  loc_1761838:           LateIdCallSt
  loc_1761867:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_176186F:           var_F4 = CVar(CLng(&H11)) 'Long
  loc_17618A2:           var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_17618AA:           Set var_13C = Me.FGrid
  loc_17618B0:           LateIdCallSt
  loc_17618DF:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17618E7:           var_E4 = CVar(CLng(4)) 'Long
  loc_1761909:           var_1C4 = (CStr(Me.FGrid.TextMatrix)) = vbNullString)
  loc_1761920:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761971:           If CBool(CVar(CLng(4)) Or (CVar(CStr(Me.FGrid.TextMatrix))) = Null)) Then
  loc_17619A6:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17619AE:             var_104 = CVar(CLng(4)) 'Long
  loc_17619DB:             var_15C = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_17619E3:             Set var_13C = Me.FGrid
  loc_17619E9:             LateIdCallSt
  loc_1761A07:           End If
  loc_1761A3F:           Set var_118 = Me.Txt
  loc_1761A45:           Call 0.Method_Proc_90_63_1762DC00 (CInt(2), var_13C, var_170, var_13C, var_15C, 1, 1)
  loc_1761A64:           Call Proc_90_79_1064FE0(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, var_E4, var_13C.Text)
  loc_1761A84:           var_114 = CVar(CLng(&HB)) 'Long
  loc_1761ABF:           LateIdCallSt
  loc_1761B24:           Set var_118 = Me.Txt
  loc_1761B2A:           Call 0.Method_Proc_90_63_1762DC00 (CInt(2), var_13C, var_170, Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)
  loc_1761B32:           var_114 = var_13C.Text
  loc_1761B49:           Call Proc_90_79_1064FE0(CStr(Me.Fields.Item("Code").Value), var_170, var_17C, CVar(CLng(Me.FGrid.Row)))
  loc_1761B61:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761B69:           var_114 = CVar(CLng(&HC)) 'Long
  loc_1761BA4:           LateIdCallSt
  loc_1761C1C:           var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_17C), "0.00"))), 1, 1)) 'String
  loc_1761C24:           Set var_13C = Me.FGrid
  loc_1761C2A:           LateIdCallSt
  loc_1761C57:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761C5F:           var_F4 = CVar(CLng(3)) 'Long
  loc_1761C92:           var_138 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1761C9A:           Set var_13C = Me.FGrid
  loc_1761CA0:           LateIdCallSt
  loc_1761CBC:         End If
  loc_1761CBC:       End If
  loc_1761CCF:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761CD7:       var_E4 = CVar(CLng(&H16)) 'Long
  loc_1761D19:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1761D2F:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761D37:         var_E4 = CVar(CLng(&H16)) 'Long
  loc_1761D4A:         Set var_B0 = Me.FGrid
  loc_1761D50:         LateIdCallSt
  loc_1761D75:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761D7D:         var_E4 = CVar(CLng(&HE)) 'Long
  loc_1761D90:         Set var_B0 = Me.FGrid
  loc_1761D96:         LateIdCallSt
  loc_1761DA8:       End If
  loc_1761DA8:     End If
  loc_1761DB6:     Me.FGrid.Redraw = True
  loc_1761DC4:     If (var_88 = 1) Then
  loc_1761DC7:       var_C4 = 1
  loc_1761DDA:       Me.FGrid.Rows = var_C4
  loc_1761E00:       var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_B0, global_160, var_E4, var_C4, var_B0, global_156))) 'String
  loc_1761E08:       Set var_B0 = Me.FGrid
  loc_1761E35:       Me.FGrid.FixedRows = 1
  loc_1761E3D:     End If
  loc_1761E50:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761E58:     var_E4 = CVar(CLng(&H11)) 'Long
  loc_1761E61:     Set var_B0 = Me.FGrid
  loc_1761E67:     var_128 = var_B0.TextMatrix)
  loc_1761E86:     var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761E8E:     var_16C = CVar(CLng(9)) 'Long
  loc_1761EA8:     var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1761EB0:     var_1FC = Val(var_B4)
  loc_1761F0E:     var_8A = Proc_96_27_11F27DC(CStr(var_128), var_1FC, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)))
  loc_1761F48:     Me.LblCurStockStr.Caption = global_56
  loc_1761F53:   Else
  loc_1761F5A:     If (var_A4 = CLng(&HE)) Then
  loc_1761FAB:       Set var_90 = Me.TxtGrid
  loc_1761FB1:       Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8A, var_1FC, var_16C)
  loc_1761FB9:       var_104 = var_B0.Text
  loc_1761FD1:       If (var_128 Or (var_B4 = vbNullString)) Then
  loc_1761FE7:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1761FEF:         var_E4 = CVar(CLng(&HE)) 'Long
  loc_1761FF4:         var_104 = vbNullString
  loc_1761FFE:         Set var_B0 = Me.FGrid
  loc_1762004:         LateIdCallSt
  loc_1762029:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762031:         var_E4 = CVar(CLng(&H16)) 'Long
  loc_1762036:         var_104 = vbNullString
  loc_1762040:         Set var_B0 = Me.FGrid
  loc_1762046:         LateIdCallSt
  loc_176205B:       Else
  loc_176206E:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762076:         var_F4 = CVar(CLng(&HE)) 'Long
  loc_17620A9:         var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_17620B1:         Set var_13C = Me.FGrid
  loc_17620B7:         LateIdCallSt
  loc_17620E6:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17620EE:         var_F4 = CVar(CLng(&H16)) 'Long
  loc_1762121:         var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1762129:         Set var_13C = Me.FGrid
  loc_176212F:         LateIdCallSt
  loc_176214B:       End If
  loc_1762180:       var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1762186:       var_14C = Trim(var_138)
  loc_17621A8:       If (var_14C = vbNullString) Then
  loc_17621B1:         Call 0.Method_arg_50 (var_B4, CVar(CLng(&HE)), CVar(CLng(Me.FGrid.Row)), var_13C, var_138, var_F4, var_D4, var_13C)
  loc_17621D2:         MsgBox("Godown Required", &H40, CVar(var_B4), var_138, var_14C)
  loc_17621E7:         Proc_90_63_1762DC0 = 0
  loc_17621ED:       End If
  loc_1762221:       global_156 = CStr(Me.Fields.Item("Code").Value)
  loc_1762266:       global_160 = CStr(Me.Fields.Item("Name").Value)
  loc_176228A:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762292:       var_E4 = CVar(CLng(&H11)) 'Long
  loc_176229B:       Set var_B0 = Me.FGrid
  loc_17622A1:       var_128 = var_B0.TextMatrix)
  loc_17622C0:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17622C8:       var_16C = CVar(CLng(9)) 'Long
  loc_17622EA:       var_1FC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1762348:       var_8A = Proc_96_27_11F27DC(CStr(var_128), var_1FC, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)))
  loc_1762382:       Me.LblCurStockStr.Caption = global_56
  loc_176238D:     Else
  loc_1762394:       If (var_A4 = CLng(5)) Then
  loc_17623A1:         Set var_90 = Me.TxtGrid
  loc_17623A7:         Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_8A, var_1FC, var_16C, var_104)
  loc_17623BF:         If Not(IsNumeric(CVar(var_B0))) Then
  loc_17623C6:           var_B4 = CStr(0)
  loc_17623D3:           Set var_90 = Me.TxtGrid
  loc_17623D9:           Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, var_128)
  loc_17623E1:           var_B0.Text = var_E4
  loc_17623F0:         End If
  loc_17623FD:         Set var_90 = Me.TxtGrid
  loc_1762403:         Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4)
  loc_176240B:         var_C4 = var_B0.Text
  loc_176241A:         var_14C = Me.FGrid.Row
  loc_1762423:         var_D4 = CVar(CLng(var_14C)) 'Long
  loc_176242C:         Set var_13C = Me.FGrid
  loc_176243B:         var_F4 = CVar(CLng(var_13C.Col)) 'Long
  loc_176245E:         var_138 = Format(CVar(var_B4), "0.000")
  loc_1762467:         var_190 = CVar(CStr(var_138)) 'String
  loc_176246F:         Set var_180 = Me.FGrid
  loc_1762475:         LateIdCallSt
  loc_176249C:       Else
  loc_17624A3:         If (var_A4 = CLng(6)) Then
  loc_17624B2:           Set var_118 = Me.TxtGrid
  loc_17624B8:           Call 0.Method_Proc_90_63_1762DC00 (0, var_13C, var_170, var_180, var_190, 1)
  loc_17624C0:           1 = var_13C.Text
  loc_17624E3:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17624EB:           var_E4 = CVar(CLng(5)) 'Long
  loc_17624F4:           Set var_B0 = Me.FGrid
  loc_1762505:           var_B4 = CStr(var_B0.TextMatrix))
  loc_176252C:           If (CDbl(Val(var_B4)) < CDbl(Val(var_170))) Then
  loc_1762545:             var_C4 = "Recd. Qty Can Not Be Greater Than Chal.Qty"
  loc_1762550:             MsgBox(var_C4, 0, "Qty Validate", var_138, var_14C)
  loc_1762565:             Proc_90_63_1762DC0 = 0
  loc_176256B:           End If
  loc_1762578:           Set var_90 = Me.TxtGrid
  loc_176257E:           Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, var_E4, var_C4)
  loc_1762586:           var_17C = var_B0.Text
  loc_176259E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17625B6:           var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_17625E2:           var_190 = CVar(CStr(Format(CVar(var_B4), "0.000"))) 'String
  loc_17625EA:           Set var_180 = Me.FGrid
  loc_17625F0:           LateIdCallSt
  loc_1762617:         Else
  loc_176261E:           If (var_A4 = CLng(8)) Then
  loc_176262D:             Set var_90 = Me.TxtGrid
  loc_1762633:             Call 0.Method_Proc_90_63_1762DC00 (0, var_B0, var_B4, var_180, var_190, 1, 1)
  loc_176263B:             var_F4 = var_B0.Text
  loc_1762657:             If (CDbl(Val(var_B4)) = CDbl(0)) Then
  loc_176266D:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762675:               var_16C = CVar(CLng(8)) 'Long
  loc_176268D:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762695:               var_E4 = CVar(CLng(6)) 'Long
  loc_176269E:               Set var_B0 = Me.FGrid
  loc_17626AF:               var_14C = CVar(CStr(var_B0.TextMatrix))) 'String
  loc_17626B7:               Set var_13C = Me.FGrid
  loc_17626BD:               LateIdCallSt
  loc_17626DE:             Else
  loc_17626EB:               Set var_90 = Me.TxtGrid
  loc_17626F1:               Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, var_13C, var_14C, var_E4, var_C4)
  loc_17626F9:               var_16C = var_B0.Text
  loc_1762711:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762719:               var_F4 = CVar(CLng(8)) 'Long
  loc_1762745:               var_15C = CVar(CStr(Format(CVar(var_B4), "0.000"))) 'String
  loc_176274D:               Set var_13C = Me.FGrid
  loc_1762753:               LateIdCallSt
  loc_1762773:             End If
  loc_1762776:           Else
  loc_176277D:             If (var_A4 = CLng(7)) Then
  loc_176278A:               Set var_90 = Me.TxtGrid
  loc_1762790:               Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_13C, var_15C, 1, 1, var_F4)
  loc_17627A8:               If Not(IsNumeric(CVar(var_B0))) Then
  loc_17627AF:                 var_B4 = CStr(0)
  loc_17627BC:                 Set var_90 = Me.TxtGrid
  loc_17627C2:                 Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, var_D4, var_104)
  loc_17627CA:                 var_B0.Text = var_D4
  loc_17627D9:               End If
  loc_17627E6:               Set var_90 = Me.TxtGrid
  loc_17627EC:               Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, var_F4)
  loc_17627F4:               var_D4 = var_B0.Text
  loc_176280C:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762824:               var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1762850:               var_190 = CVar(CStr(Format(CVar(var_B4), "0.00"))) 'String
  loc_1762858:               Set var_180 = Me.FGrid
  loc_176285E:               LateIdCallSt
  loc_1762895:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_176289D:               var_E4 = CVar(CLng(6)) 'Long
  loc_17628A6:               Set var_B0 = Me.FGrid
  loc_17628AC:               var_128 = var_B0.TextMatrix)
  loc_17628CC:               var_138 = Me.FGrid.Row
  loc_17628D5:               var_104 = CVar(CLng(var_138)) 'Long
  loc_17628DD:               var_16C = CVar(CLng(7)) 'Long
  loc_17628EC:               var_14C = Me.FGrid.TextMatrix)
  loc_17628FF:               var_1FC = Val(CStr(var_14C))
  loc_1762915:               var_1E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_176291D:               var_21C = CVar(CLng(8)) 'Long
  loc_176293E:               var_15C = CVar((Val(CStr(var_128)) - var_1FC)) 'Double
  loc_176294E:               var_23C = CVar(CStr(Format(Me.FGrid.Col, "0.00"))) 'String
  loc_1762956:               Set var_1A4 = Me.FGrid
  loc_176295C:               LateIdCallSt
  loc_1762992:             Else
  loc_1762999:               If Not (var_A4 = CLng(&HB)) Then
  loc_17629A3:                 If (var_A4 = CLng(4)) Then
  loc_17629A6:                 End If
  loc_17629B0:                 Set var_90 = Me.TxtGrid
  loc_17629B6:                 Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_1A4, var_23C, 1, 1, var_21C)
  loc_17629CE:                 If Not(IsNumeric(CVar(var_B0))) Then
  loc_17629D5:                   var_B4 = CStr(0)
  loc_17629E2:                   Set var_90 = Me.TxtGrid
  loc_17629E8:                   Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, var_1E4, var_1FC)
  loc_17629F0:                   var_B0.Text = var_16C
  loc_17629FF:                 End If
  loc_1762A1C:                 If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_1762A2B:                   Set var_90 = Me.TxtGrid
  loc_1762A31:                   Call 0.Method_Proc_90_63_1762DC00 (0, var_B0, var_B4, var_104)
  loc_1762A39:                   var_17C = var_B0.Text
  loc_1762A46:                   var_17C = Val(var_B4)
  loc_1762A5E:                   If (global_172 <> CDbl(var_17C)) Then
  loc_1762A90:                     If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_128, var_138, var_14C) = 7) Then
  loc_1762A9B:                       var_B4 = CStr(global_172)
  loc_1762AA7:                       Set var_90 = Me.TxtGrid
  loc_1762AAD:                       Call 0.Method_Proc_90_63_1762DC00 (0, var_B0, var_B4)
  loc_1762AB5:                       var_B0.Text = var_17C
  loc_1762AC4:                     End If
  loc_1762AC4:                   End If
  loc_1762AC4:                 End If
  loc_1762AD1:                 Set var_90 = Me.TxtGrid
  loc_1762AD7:                 Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4)
  loc_1762ADF:                 var_E4 = var_B0.Text
  loc_1762AF7:                 var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762B0F:                 var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1762B3B:                 var_190 = CVar(CStr(Format(CVar(var_B4), "0.00"))) 'String
  loc_1762B43:                 Set var_180 = Me.FGrid
  loc_1762B49:                 LateIdCallSt
  loc_1762B80:                 var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762B88:                 var_16C = CVar(CLng(4)) 'Long
  loc_1762BAA:                 var_17C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1762BC0:                 var_1B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762BC8:                 var_1E4 = CVar(CLng(9)) 'Long
  loc_1762BE0:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762BE8:                 var_E4 = CVar(CLng(8)) 'Long
  loc_1762BF1:                 Set var_B0 = Me.FGrid
  loc_1762C02:                 var_B4 = CStr(var_B0.TextMatrix))
  loc_1762C10:                 var_190 = CVar(CStr((Val(var_B4) * var_17C))) 'String
  loc_1762C18:                 Set var_1A4 = Me.FGrid
  loc_1762C1E:                 LateIdCallSt
  loc_1762C4E:               Else
  loc_1762C55:                 If (var_A4 = CLng(2)) Then
  loc_1762C6B:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1762C95:                   Set var_90 = Me.TxtGrid
  loc_1762C9B:                   Call 0.Method_Proc_90_63_1762DC00 (arg_C, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)), var_C4, var_1A4, var_190)
  loc_1762CA3:                   var_E4 = var_B0.Text
  loc_1762CAB:                   var_138 = CVar(var_B4) 'String
  loc_1762CB3:                   Set var_180 = Me.FGrid
  loc_1762CB9:                   LateIdCallSt
  loc_1762CDA:                 Else
  loc_1762CE1:                   If Not (var_A4 = CLng(&HF)) Then
  loc_1762CEB:                     If (var_A4 = CLng(&H10)) Then
  loc_1762CEE:                     End If
  loc_1762CF7:                     Set var_90 = Me.TxtGrid
  loc_1762CFD:                     Call 0.Method_Proc_90_63_1762DC00 (0, var_B0, var_180, var_138, var_C4)
  loc_1762D23:                     If Not(IsDate(CVar(Proc_6_33_1512840(var_B0, var_1E4, var_1B4)))) Then
  loc_1762D2B:                       Proc_90_63_1762DC0 = 0
  loc_1762D31:                     End If
  loc_1762D6A:                     Set var_90 = Me.TxtGrid
  loc_1762D70:                     Call 0.Method_Proc_90_63_1762DC00 (0, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_1762D83:                     var_138 = CVar(Proc_6_33_1512840(var_B0, var_17C)) 'String
  loc_1762D8B:                     Set var_1A4 = Me.FGrid
  loc_1762D91:                     LateIdCallSt
  loc_1762DAF:                   End If
  loc_1762DAF:                 End If
  loc_1762DAF:               End If
  loc_1762DAF:             End If
  loc_1762DAF:           End If
  loc_1762DAF:         End If
  loc_1762DAF:       End If
  loc_1762DAF:     End If
  loc_1762DAF:   End If
  loc_1762DAF: End If
  loc_1762DAF: Call Proc_90_73_118CAB8(var_1A4, var_138)
  loc_1762DB9: Proc_90_63_1762DC0 = &HFF
End Sub

Public Sub Proc_90_64_16AB45C
  'Data Table: 511010
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_51103F As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_144 As Variant
  Dim var_118 As Variant
  Dim var_174 As Variant
  Dim var_198 As Variant
  Dim var_1E4 As Variant
  Dim var_1F0 As Recordset15
  Dim var_130 As Variant
  Dim var_1F2 As Integer
  Dim var_1AC As TextBox
  Dim var_128 As Variant
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_154 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_210 As Double
  Dim var_98 As Double
  loc_16A9B14: On Error Goto loc_16AB456
  loc_16A9B2E: If (Me.RecordCount > 0) Then
  loc_16A9B3E:   Me.LblCurStockStr.Caption = vbNullString
  loc_16A9B9C:   unk_51103F.Execute CStr("Select G.* From GIN G Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_128, -1
  loc_16A9BA7:   Set var_88 = var_12C
  loc_16A9BFB:   var_12C = var_88.Fields
  loc_16A9C64:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16A9CA9:   Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_194)))
  loc_16A9CF8:   var_B4 = var_88.Fields.Item("U_AE")
  loc_16A9D23:   var_130 = var_88.Fields.Item("U_AE")
  loc_16A9D84:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_B4)) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_16A9DA3:   var_1AC = var_88.Fields.Item("U_EntDt")
  loc_16A9DC3:   Set var_1E4 = Me.LblLDt
  loc_16A9DC9:   var_1E4.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(CVar(var_1AC))))
  loc_16A9E0F:   Set var_A0 = Me.Txt
  loc_16A9E15:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HE), var_B4)
  loc_16A9E1D:   var_B4.Text = vbNullString
  loc_16A9E37:   Set var_A0 = Me.Txt
  loc_16A9E3D:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HE), var_B4)
  loc_16A9E45:   var_B4.Tag = vbNullString
  loc_16A9E5F:   Set var_A0 = Me.Txt
  loc_16A9E65:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HF), var_B4)
  loc_16A9E6D:   var_B4.Text = vbNullString
  loc_16A9E7C:   Set var_1F0 = var_88 
  loc_16A9E83:   Call Proc_90_78_EE3FC4(var_88)
  loc_16A9EC1:   Set var_12C = Me.Txt
  loc_16A9EC7:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(9), var_130)
  loc_16A9ECF:   var_130.Text = CStr(var_1F0.Fields.Item("DocID").Value)
  loc_16A9F1E:   Set var_12C = Me.Txt
  loc_16A9F24:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(1), var_130)
  loc_16A9F2C:   var_130.Text = CStr(var_1F0.Fields.Item("VNo").Value)
  loc_16A9F6A:   var_1F2 = IsNull(CVar(var_1F0.Fields.Item("VDate")))
  loc_16A9F84:   var_130 = var_1F0.Fields.Item("VDate")
  loc_16A9FDC:   Set var_198 = Me.Txt
  loc_16A9FE2:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(2), var_1AC, CStr(IIf(var_1F2, vbNullString, Format(CVar(var_130), "DD/MMM/YYYY"))))
  loc_16A9FEA:   var_1AC.Text = 1
  loc_16AA028:   var_B4 = var_1F0.Fields.Item("vType")
  loc_16AA039:   var_108 = CStr(var_B4.Value)
  loc_16AA047:   Set var_12C = Me.Txt
  loc_16AA04D:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(0), var_130, var_108)
  loc_16AA055:   var_130.Tag = 1
  loc_16AA08B:   Set var_A0 = Me.Txt
  loc_16AA091:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(0), var_B4, var_108, "Select Description,NCat From Voucher_type Where V_Type='")
  loc_16AA099:   var_154 = var_B4.Tag
  loc_16AA0AF:   var_104 = -1 & Trim(CVar(var_108)) 
  loc_16AA0C6:   unk_51103F.Execute CStr("DD/MMM/YYYY" & "'"), var_12C, var_1F2
  loc_16AA0D1:   Set var_8C = var_12C
  loc_16AA101:   If (var_8C.RecordCount > 0) Then
  loc_16AA13D:     Set var_12C = Me.Txt
  loc_16AA143:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(0), var_130)
  loc_16AA14B:     var_130.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_16AA17B:     var_B4 = var_8C.Fields.Item("NCat")
  loc_16AA192:     global_108 = CStr(var_B4.Value)
  loc_16AA1A6:   Else
  loc_16AA1B4:     Set var_A0 = Me.Txt
  loc_16AA1BA:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(0), var_B4)
  loc_16AA1C2:     var_B4.Text = vbNullString
  loc_16AA1D4:     global_108 = vbNullString
  loc_16AA1D8:   End If
  loc_16AA1F2:   var_B4 = var_1F0.Fields.Item("vPrefix")
  loc_16AA210:   Me.LblVPrefix.Caption = CStr(var_B4.Value)
  loc_16AA232:   Set var_A0 = Me.Txt
  loc_16AA238:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(0), var_B4)
  loc_16AA26C:   If (Trim(CVar(var_B4.Tag)) = "MRCR") Then
  loc_16AA27C:     Set var_A0 = Me.Txt
  loc_16AA282:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(6), var_B4)
  loc_16AA28A:     var_B4.Visible = True
  loc_16AA2A3:     Set var_A0 = Me.Txt
  loc_16AA2A9:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(3), var_B4)
  loc_16AA2B1:     var_B4.Visible = False
  loc_16AA2C0:   Else
  loc_16AA2CE:     Set var_A0 = Me.Txt
  loc_16AA2D4:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(4), var_B4)
  loc_16AA2DC:     var_B4.Tag = vbNullString
  loc_16AA2F6:     Set var_A0 = Me.Txt
  loc_16AA2FC:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(4), var_B4)
  loc_16AA304:     var_B4.Text = vbNullString
  loc_16AA31D:     Set var_A0 = Me.Txt
  loc_16AA323:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(6), var_B4)
  loc_16AA32B:     var_B4.Visible = False
  loc_16AA344:     Set var_A0 = Me.Txt
  loc_16AA34A:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(3), var_B4)
  loc_16AA352:     var_B4.Visible = True
  loc_16AA35E:   End If
  loc_16AA389:   var_108 = CStr(var_1F0.Fields.Item("PartyCode").Value)
  loc_16AA397:   Set var_12C = Me.Txt
  loc_16AA39D:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(6), var_130)
  loc_16AA3A5:   var_130.Tag = var_108
  loc_16AA3D5:   var_B4 = var_1F0.Fields.Item("PartyCode")
  loc_16AA3DD:   var_C4 = var_B4.Value
  loc_16AA3F7:   If CBool(var_C4 <> vbNullString) Then
  loc_16AA427:     Set var_A0 = Me.Txt
  loc_16AA42D:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(6), var_B4, var_108, "Select Name From SubGroup Where SubCode='", var_C4, -1)
  loc_16AA44E:     unk_51103F.Execute var_130 & var_108 & "'", 0, var_198
  loc_16AA45E:      = var_130.Item()
  loc_16AA466:      = var_198.Value
  loc_16AA47D:     Set var_1AC = Me.Txt
  loc_16AA483:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(6), var_1E4)
  loc_16AA48B:     var_1E4.Text = CStr(var_B4.Tag.Fields)
  loc_16AA4CA:     var_B4 = var_1F0.Fields.Item("PartyName")
  loc_16AA4E9:     Set var_12C = Me.Txt
  loc_16AA4EF:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(3), var_130)
  loc_16AA4F7:     var_130.Text = Proc_6_38_E68A98(CVar(var_B4))
  loc_16AA50E:   Else
  loc_16AA51C:     Set var_A0 = Me.Txt
  loc_16AA522:     Call 0.Method_Proc_90_64_16AB45C0 (CInt(6), var_B4)
  loc_16AA52A:     var_B4.Text = vbNullString
  loc_16AA536:   End If
  loc_16AA56F:   Set var_12C = Me.Txt
  loc_16AA575:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(7), var_130)
  loc_16AA57D:   var_130.Text = CStr(var_1F0.Fields.Item("ChalNo").Value)
  loc_16AA5D5:   var_130 = var_1F0.Fields.Item("ChalDate")
  loc_16AA62D:   Set var_198 = Me.Txt
  loc_16AA633:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(8), var_1AC, CStr(IIf(IsNull(CVar(var_1F0.Fields.Item("ChalDate"))), vbNullString, Format(CVar(var_130), "DD/MMM/YYYY"))))
  loc_16AA63B:   var_1AC.Text = 1
  loc_16AA698:   Set var_12C = Me.Txt
  loc_16AA69E:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HA), var_130, CStr(var_1F0.Fields.Item("MemInvNo").Value))
  loc_16AA6A6:   var_130.Text = 1
  loc_16AA6E4:   var_1F2 = IsNull(CVar(var_1F0.Fields.Item("MemInvDate")))
  loc_16AA6FE:   var_130 = var_1F0.Fields.Item("MemInvDate")
  loc_16AA722:   var_128 = Format(CVar(var_130), "DD/MMM/YYYY")
  loc_16AA756:   Set var_198 = Me.Txt
  loc_16AA75C:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HB), var_1AC, CStr(IIf(var_1F2, vbNullString, var_128)), 1)
  loc_16AA764:   var_1AC.Text = 1
  loc_16AA7BE:   Set var_12C = Me.Txt
  loc_16AA7C4:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HC), var_130)
  loc_16AA7CC:   var_130.Text = Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("InspectedBy")), var_1F2)
  loc_16AA816:   Set var_12C = Me.Txt
  loc_16AA81C:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&HD), var_130)
  loc_16AA824:   var_130.Text = Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("ApprovedBy")))
  loc_16AA874:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(5), var_130)
  loc_16AA87C:   var_130.Text = Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("Remark")))
  loc_16AA892:   Set var_1F0 = Nothing 
  loc_16AA8A5:   Me.FGrid.Redraw = False
  loc_16AA8C0:   Me.FGrid.Rows = 1
  loc_16AA8CA:   var_8E = 1
  loc_16AA8DA:   var_D4 = "Select S.*,I.Name as ItemName,G.name as GodownName From (Stock S Left Join Itemmast I On S.Item=I.Code And I.ItemType='Store')Left Join GodownMast G On S.Godowncode=G.Code  Where S.Docid='"
  loc_16AA923:   unk_51103F.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_16AA92E:   Set var_88 = Me.Txt
  loc_16AA95C:   If (var_88.RecordCount > 0) Then
  loc_16AA95F:     ' Referenced from: 16AB331
  loc_16AA96E:     If Not(var_88.EOF) Then
  loc_16AA971:       var_B0 = vbNullString
  loc_16AA97B:       Set var_A0 = Me.FGrid
  loc_16AA990:       Set var_1F8 = Me.FGrid
  loc_16AA997:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16AA99F:       var_F4 = CVar(CLng(0)) 'Long
  loc_16AA9A9:       var_C4 = CVar(CStr(var_8E)) 'String
  loc_16AA9B0:       LateIdCallSt
  loc_16AA9BF:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16AA9C7:       var_118 = CVar(CLng(&H11)) 'Long
  loc_16AA9F7:       var_E4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_16AA9FE:       LateIdCallSt
  loc_16AAA43:       var_144 = CVar(CLng(var_8E)) 'Long
  loc_16AAA4B:       var_174 = CVar(CLng(1)) 'Long
  loc_16AAA91:       var_154 = CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("ItemName"))), vbNullString, CVar(var_88.Fields.Item("ItemName"))))) 'String
  loc_16AAA98:       LateIdCallSt
  loc_16AAAD6:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AAADE:       var_144 = CVar(CLng(4)) 'Long
  loc_16AAB0B:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_16AAB12:       LateIdCallSt
  loc_16AAB48:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AAB50:       var_144 = CVar(CLng(5)) 'Long
  loc_16AAB7D:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ChalQty")), "0.000"))) 'String
  loc_16AAB84:       LateIdCallSt
  loc_16AABBA:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AABC2:       var_144 = CVar(CLng(6)) 'Long
  loc_16AABEF:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_16AABF6:       LateIdCallSt
  loc_16AAC2C:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AAC34:       var_144 = CVar(CLng(7)) 'Long
  loc_16AAC61:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("RejQty")), "0.000"))) 'String
  loc_16AAC68:       LateIdCallSt
  loc_16AAC9E:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AACA6:       var_144 = CVar(CLng(8)) 'Long
  loc_16AACD3:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("AccQty")), "0.000"))) 'String
  loc_16AACDA:       LateIdCallSt
  loc_16AAD10:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AAD18:       var_144 = CVar(CLng(9)) 'Long
  loc_16AAD45:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_16AAD4C:       LateIdCallSt
  loc_16AAD82:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AAD8A:       var_144 = CVar(CLng(&HB)) 'Long
  loc_16AADB7:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_16AADBE:       LateIdCallSt
  loc_16AADF4:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AADFC:       var_144 = CVar(CLng(&HC)) 'Long
  loc_16AAE29:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_16AAE30:       LateIdCallSt
  loc_16AAE66:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AAE6E:       var_144 = CVar(CLng(&HD)) 'Long
  loc_16AAE9B:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16AAEA2:       LateIdCallSt
  loc_16AAEBC:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16AAEDF:       var_210 = Val(CStr(var_1F8.TextMatrix)))
  loc_16AAEE9:       var_98 = (var_98 + var_210)
  loc_16AAF06:       var_B0 = "ContraDocId"
  loc_16AAF2B:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B0)), CVar(CLng(&H12)), CVar(CLng(var_8E)), var_98, var_210, CVar(CLng(&HD)), var_B0)) 'String
  loc_16AAF32:       LateIdCallSt
  loc_16AAF7B:       Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_1F8, var_E4)
  loc_16AAF84:       var_104 = CVar(CStr(var_E4)) 'String
  loc_16AAF8B:       LateIdCallSt
  loc_16AAFA3:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16AAFAB:       var_118 = CVar(CLng(&H16)) 'Long
  loc_16AAFDB:       var_E4 = CVar(CStr(var_88.Fields.Item("Godowncode").Value)) 'String
  loc_16AAFE2:       LateIdCallSt
  loc_16AB031:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GodownName")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_1F8, var_E4, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_16AB038:       LateIdCallSt
  loc_16AB083:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(var_8E)), var_1F8, var_E4, var_1F8)) 'String
  loc_16AB08A:       LateIdCallSt
  loc_16AB0A0:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16AB0A8:       var_118 = CVar(CLng(3)) 'Long
  loc_16AB0D8:       var_E4 = CVar(CStr(var_88.Fields.Item("RecdUnit").Value)) 'String
  loc_16AB0DF:       LateIdCallSt
  loc_16AB0F9:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16AB101:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16AB131:       var_E4 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_16AB138:       LateIdCallSt
  loc_16AB16E:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB176:       var_144 = CVar(CLng(&HF)) 'Long
  loc_16AB1A3:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("ExpDate")), "dd/MMM/yyyy"))) 'String
  loc_16AB1AA:       LateIdCallSt
  loc_16AB1E0:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16AB1E8:       var_144 = CVar(CLng(&H10)) 'Long
  loc_16AB215:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("mfdDate")), "dd/MMM/yyyy"))) 'String
  loc_16AB21C:       LateIdCallSt
  loc_16AB236:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16AB24C:       LateIdCallSt
  loc_16AB268:       var_B0 = "IndentDocID"
  loc_16AB28D:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B0)), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_1F8, "*", CVar(CLng(&H15)), var_B0)) 'String
  loc_16AB294:       LateIdCallSt
  loc_16AB2DF:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IndentSno")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_1F8, var_E4, var_1F8)) 'String
  loc_16AB2E6:       LateIdCallSt
  loc_16AB2FC:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16AB304:       var_F4 = CVar(CLng(&H19)) 'Long
  loc_16AB309:       var_144 = "Y"
  loc_16AB312:       LateIdCallSt
  loc_16AB31C:       Set var_1F8 = Nothing 
  loc_16AB326:       var_8E = (var_8E + 1)
  loc_16AB32C:       var_88.MoveNext
  loc_16AB331:       GoTo loc_16AA95F
  loc_16AB334:     End If
  loc_16AB347:     Me.FGrid.FixedRows = 1
  loc_16AB34F:   End If
  loc_16AB35D:   Me.FGrid.Redraw = True
  loc_16AB36B:   If (var_8E = 1) Then
  loc_16AB381:     Me.FGrid.Rows = 1
  loc_16AB39E:     var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16AB3A6:     Set var_B4 = Me.FGrid
  loc_16AB3D5:     Me.FGrid.FixedRows = 1
  loc_16AB3DD:   End If
  loc_16AB3F5:   var_B0 = var_98
  loc_16AB3FD:   var_E4 = Format(var_B0, "0.00")
  loc_16AB414:   Set var_A0 = Me.Txt
  loc_16AB41A:   Call 0.Method_Proc_90_64_16AB45C0 (CInt(&H10), var_B4, CStr(var_E4), 1, 1, FGrid.DispID_10000, var_E4)
  loc_16AB422:   var_B4.Text = var_8E
  loc_16AB43B: Else
  loc_16AB43B:   Call Proc_90_66_F52D9C(var_1F8, var_144, var_F4)
  loc_16AB440: End If
  loc_16AB440: Call Proc_90_68_F980B8(var_B0, var_1F8)
  loc_16AB44A: Set var_88 = Nothing
  loc_16AB452: Set var_8C = Nothing
  loc_16AB455: Exit Sub
  loc_16AB456: ' Referenced from: 16A9B14
  loc_16AB456: Proc_6_60_E62BC4(var_E4)
  loc_16AB45B: Exit Sub
End Sub

Public Sub Proc_90_65_11D9AB0
  'Data Table: 511010
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_51103F As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_1701 As Integer
  loc_11D9661: Set var_9C = Me.TopCtrl1
  loc_11D9667: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(&HFF)
  loc_11D966F: var_B0 = CStr()
  loc_11D9680: If (var_B0 = "Add") Then
  loc_11D96B0:   Set var_9C = Me.Txt
  loc_11D96B6:   Call 0.Method_Proc_90_65_11D9AB00 (CInt(9), var_B4, var_B0, "Select Count(*) From GIN Where DocID='", var_AC, -1)
  loc_11D96D7:   unk_51103F.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_11D96E7:    = var_D4.Item()
  loc_11D96EF:    = var_E8.Value
  loc_11D971C:   If (var_B4.Text.Fields > 0) Then
  loc_11D9725:     Call 0.Method_arg_50 (var_B0)
  loc_11D9746:     MsgBox("Duplicate GIN No.", &H40, CVar(var_B0), var_118, var_128)
  loc_11D975C:     Call Proc_90_70_1117518(MemVar_1F92044)
  loc_11D976F:     Set var_9C = Me.Txt
  loc_11D9775:     Call 0.Method_Proc_90_65_11D9AB00 (CInt(9), var_B4)
  loc_11D977D:     var_B4.Text = var_B0
  loc_11D9791:     Proc_90_65_11D9AB0 = 0
  loc_11D9797:   End If
  loc_11D9797: End If
  loc_11D97BC: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_11D97C6:   var_CC = CVar(CLng(var_88)) 'Long
  loc_11D97CE:   var_108 = CVar(CLng(1)) 'Long
  loc_11D97EE:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11D980A:   If CBool(var_118 <> vbNullString) Then
  loc_11D981E:     If (global_108 = "GIG2") Then
  loc_11D9821:       GoTo loc_11D9A9F
  loc_11D9824:     End If
  loc_11D9828:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11D9830:     var_108 = CVar(CLng(5)) 'Long
  loc_11D9860:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11D9888:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11D98AE:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11D98BA:       Set var_9C = Me.FGrid
  loc_11D98DE:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11D98EB:       Proc_90_65_11D9AB0 = 0
  loc_11D98F1:     End If
  loc_11D9902:     If (global_108 = "MRE") Then
  loc_11D9909:       var_CC = CVar(CLng(var_88)) 'Long
  loc_11D9911:       var_108 = CVar(CLng(8)) 'Long
  loc_11D9941:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11D9969:         MsgBox(CVar("Acc. Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11D998F:         Me.FGrid.Row = CVar(CLng(var_88))
  loc_11D999B:         Set var_9C = Me.FGrid
  loc_11D99BF:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11D99CC:         Proc_90_65_11D9AB0 = 0
  loc_11D99D2:       End If
  loc_11D99D6:       var_CC = CVar(CLng(var_88)) 'Long
  loc_11D99DE:       var_108 = CVar(CLng(6)) 'Long
  loc_11D9A0E:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11D9A36:         MsgBox(CVar("Recd. Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11D9A5C:         Me.FGrid.Row = CVar(CLng(var_88))
  loc_11D9A68:         Set var_9C = Me.FGrid
  loc_11D9A8C:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_11D9A99:         Proc_90_65_11D9AB0 = 0
  loc_11D9A9F:         ' Referenced from: 11D9821
  loc_11D9A9F:       End If
  loc_11D9A9F:     End If
  loc_11D9A9F:   End If
  loc_11D9AA2: Next var_12C 'Integer
  loc_11D9AA7: Proc_90_65_11D9AB0 = 
  loc_11D9AAD: var_1701 = 
End Sub

Public Sub Proc_90_66_F52D9C
  'Data Table: 511010
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_D8 As Variant
  loc_F52C85: Me.LblVPrefix.Caption = vbNullString
  loc_F52C9B: Set var_8C = Me.Txt
  loc_F52CA1: Call 0.Method_Proc_90_66_F52D9CC (var_8E, var_86)
  loc_F52CB1: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F52CC7:   Set var_8C = Me.Txt
  loc_F52CCD:   Call 0.Method_Proc_90_66_F52D9C0 (CInt(var_86), var_98)
  loc_F52CD5:   var_98.Text = vbNullString
  loc_F52CF1:   Set var_8C = Me.Txt
  loc_F52CF7:   Call 0.Method_Proc_90_66_F52D9C0 (CInt(var_86), var_98)
  loc_F52CFF:   var_98.Tag = vbNullString
  loc_F52D0E: Next var_92 'Byte
  loc_F52D21: Me.LblCurStockStr.Caption = vbNullString
  loc_F52D3C: Me.FGrid.Rows = 1
  loc_F52D59: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F52D61: Set var_98 = Me.FGrid
  loc_F52D90: Me.FGrid.FixedRows = 1
  loc_F52D98: Exit Sub
End Sub

Public Sub Proc_90_67_F1CD04(arg_C) 'F1CD04
  'Data Table: 511010
  Dim var_98 As TextBox
  loc_F1CC0A: Set var_8C = Me.Txt
  loc_F1CC10: Call 0.Method_Proc_90_67_F1CD04C (var_8E, var_86)
  loc_F1CC20: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1CC36:   Set var_8C = Me.Txt
  loc_F1CC3C:   Call 0.Method_Proc_90_67_F1CD040 (CInt(var_86), var_98)
  loc_F1CC44:   var_98.Enabled = arg_C
  loc_F1CC53: Next var_92 'Byte
  loc_F1CC66: Set var_8C = Me.Txt
  loc_F1CC6C: Call 0.Method_Proc_90_67_F1CD040 (CInt(9), var_98)
  loc_F1CC74: var_98.Enabled = False
  loc_F1CC8D: Set var_8C = Me.Txt
  loc_F1CC93: Call 0.Method_Proc_90_67_F1CD040 (CInt(&H10), var_98)
  loc_F1CC9B: var_98.Enabled = False
  loc_F1CCB2: If (global_168 = "No") Then
  loc_F1CCC2:   Set var_8C = Me.Txt
  loc_F1CCC8:   Call 0.Method_Proc_90_67_F1CD040 (CInt(2), var_98)
  loc_F1CCD0:   var_98.Enabled = False
  loc_F1CCE9:   Set var_8C = Me.Txt
  loc_F1CCEF:   Call 0.Method_Proc_90_67_F1CD040 (CInt(1), var_98)
  loc_F1CCF7:   var_98.Enabled = False
  loc_F1CD03: End If
  loc_F1CD03: Exit Sub
End Sub

Public Sub Proc_90_68_F980B8
  'Data Table: 511010
  loc_F97F58: If (CBool(Me.DGPreDoc.Visible) = &HFF) Then
  loc_F97F6A:   Me.DGPreDoc.Visible = False
  loc_F97F72: End If
  loc_F97F8E: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F97FA0:   Me.DGItem.Visible = False
  loc_F97FA8: End If
  loc_F97FC4: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F97FD6:   Me.DGParty.Visible = False
  loc_F97FDE: End If
  loc_F97FFA: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_F9800C:   Me.DGGod.Visible = False
  loc_F98014: End If
  loc_F98030: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F98042:   Me.DGVType.Visible = False
  loc_F9804A: End If
  loc_F98066: If (CBool(Me.DGIndent.Visible) = &HFF) Then
  loc_F98078:   Me.DGIndent.Visible = False
  loc_F98080: End If
  loc_F9809C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F980AE:   Me.FGPoint.Visible = False
  loc_F980B6: End If
  loc_F980B6: Exit Sub
End Sub

Public Sub Proc_90_69_F0C594
  'Data Table: 511010
  loc_F0C4B8: Call Proc_90_68_F980B8()
  loc_F0C4C8: Set var_88 = Me.Txt
  loc_F0C4CE: Call 0.Method_Proc_90_69_F0C5940 (CInt(2))
  loc_F0C4F7: If (Proc_6_27_EA565C(var_8C, "GIN Date") = 0) Then
  loc_F0C4FA:   Exit Sub
  loc_F0C4FB: End If
  loc_F0C506: Set var_88 = Me.Txt
  loc_F0C50C: Call 0.Method_Proc_90_69_F0C5940 (CInt(1), var_8C)
  loc_F0C535: If (Proc_6_27_EA565C(var_8C, "GIN No") = 0) Then
  loc_F0C538:   Exit Sub
  loc_F0C539: End If
  loc_F0C570: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C573:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C57B: Else
  loc_F0C581:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C589:   Call var_88.SetFocus
  loc_F0C592: End If
  loc_F0C592: Exit Sub
End Sub

Public Sub Proc_90_70_1117518
  'Data Table: 511010
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_111720C: Set var_94 = Me.Txt
  loc_1117212: Call 0.Method_Proc_90_70_11175180 (CInt(0), var_98)
  loc_1117228: var_BC = Trim(CVar(var_98.Tag))
  loc_1117231: var_90 = CStr(var_BC)
  loc_1117256: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1117287: Set var_94 = Me.Txt
  loc_111728D: Call 0.Method_Proc_90_70_11175180 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_111729C: Proc_6_7_F25D88(var_BC, CVar(var_98), var_130)
  loc_11172A4: var_EC = -1 & var_BC 
  loc_11172B8: LblSmartCardItem.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11172C3: Set var_8C = var_134
  loc_11172FF: If (var_8C.RecordCount > 0) Then
  loc_111733E:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1117341:     GoTo loc_11173CE
  loc_1117344:   End If
  loc_1117375:   global_100 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11173A0:   var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11173B5:   var_BC = (var_98.Value + 1)
  loc_11173BD:   global_104 = CInt(var_BC)
  loc_11173CE:   ' Referenced from: 1117341
  loc_11173CE: End If
  loc_11173F9: var_AC = Space((5 - Len(var_90)))
  loc_1117401: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_98.Value)
  loc_111740E: var_EC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_100))
  loc_1117422: var_10C = Space((5 - Len(global_100)))
  loc_111742A: var_130 = (var_EC + var_EC & " Order By VP.Date_From DESC")
  loc_1117443: var_14C = Space((8 - Len(CStr(global_104))))
  loc_111744B: var_15C = (var_130 + var_14C)
  loc_111745A: var_17C = (var_15C + CVar(CStr(global_104)))
  loc_1117465: global_92 = CStr(var_17C)
  loc_111749B: Me.LblVPrefix.Caption = global_100
  loc_11174B4: Set var_94 = Me.Txt
  loc_11174BA: Call 0.Method_Proc_90_70_11175180 (CInt(9), var_98)
  loc_11174C2: var_98.Text = global_92
  loc_11174E4: Set var_94 = Me.Txt
  loc_11174EA: Call 0.Method_Proc_90_70_11175180 (CInt(1), var_98)
  loc_11174F2: var_98.Text = CStr(global_104)
  loc_1117507: var_88 = global_92
  loc_111750F: Set var_8C = Nothing
  loc_1117512: Proc_90_70_1117518 = global_104
End Sub

Public Sub Proc_90_71_10EF624(arg_C, arg_10, arg_14) '10EF624
  'Data Table: 511010
  Dim unk_51103F As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10EF34E: If (arg_C = "MRE") Then
  loc_10EF375:   unk_51103F.Execute "Select Distinct DocId,VType,VNo From Stock Where ContraDocId='" & arg_10 & "'", var_C0, -1
  loc_10EF380:   Set var_8C = var_C4
  loc_10EF3A4:   If (var_8C.RecordCount > 0) Then
  loc_10EF3AF:     If (var_90 = vbNullString) Then
  loc_10EF3B5:       var_94 = "GIN (Re Offer)"
  loc_10EF3BB:     Else
  loc_10EF3D0:       var_90 = var_90 & " And " & vbCrLf & "GIN (Re Offer)"
  loc_10EF3DA:     End If
  loc_10EF3DA:   End If
  loc_10EF3DD: Else
  loc_10EF3E2:   Proc_90_71_10EF624 = &HFF
  loc_10EF3E8: End If
  loc_10EF3FC: If (var_8C.RecordCount > 0) Then
  loc_10EF3FF:   ' Referenced from: 10EF578
  loc_10EF40E:   If Not(var_8C.EOF) Then
  loc_10EF419:     If (var_90 = vbNullString) Then
  loc_10EF45C:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("vType").Value), 6)
  loc_10EF463:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10EF495:       var_90 = CStr(var_10C & var_8C.Fields.Item("VNo").Value)
  loc_10EF4BA:     Else
  loc_10EF4F6:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10EF516:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("vType").Value), 6) & " V.No :-> ") 'String
  loc_10EF543:       var_11C = var_10C & var_8C.Fields.Item("VNo").Value 
  loc_10EF548:       var_90 = CStr(var_11C)
  loc_10EF570:     End If
  loc_10EF573:     var_8C.MoveNext
  loc_10EF578:     GoTo loc_10EF3FF
  loc_10EF57B:   End If
  loc_10EF581:   Call 0.Method_arg_50 (var_138)
  loc_10EF5DD:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10EF5E0:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10EF60F:   Set var_8C = Nothing
  loc_10EF612:   Proc_90_71_10EF624 = 0
  loc_10EF618: End If
  loc_10EF61D: Proc_90_71_10EF624 = &HFF
  loc_10EF623: Exit Sub
End Sub

Public Sub Proc_90_72_F0294C
  'Data Table: 511010
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_108 As TextBox
  loc_F02870: On Error Goto loc_F02946
  loc_F02898: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F028A2:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F028AA:   var_D8 = CVar(CLng(&HD)) 'Long
  loc_F028D6:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F028E5: Next var_A8 'Integer
  loc_F02921: Set var_94 = Me.Txt
  loc_F02927: Call 0.Method_Proc_90_72_F0294C0 (CInt(&H10), var_108, CStr(Format(var_90, "0.00")))
  loc_F0292F: var_108.Text = 1
  loc_F02945: Exit Sub
  loc_F02946: ' Referenced from: F02870
  loc_F02946: Proc_6_60_E62BC4(1)
  loc_F0294B: Exit Sub
End Sub

Public Sub Proc_90_73_118CAB8
  'Data Table: 511010
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_234 As Double
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_118C6FF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C707: var_C8 = CVar(CLng(4)) 'Long
  loc_118C73F: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_118C755:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C75D:   var_C8 = CVar(CLng(4)) 'Long
  loc_118C766:   var_EC = CVar(CStr(1)) 'String
  loc_118C76E:   Set var_DC = Me.FGrid
  loc_118C774:   LateIdCallSt
  loc_118C78A: End If
  loc_118C79D: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C7A5: var_C8 = CVar(CLng(6)) 'Long
  loc_118C7DD: var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C7E5: var_134 = CVar(CLng(7)) 'Long
  loc_118C81D: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C825: var_1F0 = CVar(CLng(8)) 'Long
  loc_118C846: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) - Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_118C856: var_210 = CVar(CStr(Format(var_17C, "0.00"))) 'String
  loc_118C85E: Set var_224 = Me.FGrid
  loc_118C864: LateIdCallSt
  loc_118C8AA: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C8B2: var_C8 = CVar(CLng(4)) 'Long
  loc_118C8EA: var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C8F2: var_134 = CVar(CLng(8)) 'Long
  loc_118C92A: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C932: var_1F0 = CVar(CLng(9)) 'Long
  loc_118C963: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_118C96B: Set var_224 = Me.FGrid
  loc_118C971: LateIdCallSt
  loc_118C9B7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118C9BF: var_C8 = CVar(CLng(&HB)) 'Long
  loc_118C9F7: var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118CA21: var_234 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_118CA7E: LateIdCallSt
  loc_118CAB1: Call Proc_90_72_F0294C(Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_234)), "0.00"))), 1, 1, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), var_234, CVar(CLng(8)))
  loc_118CAB6: Exit Sub
End Sub

Public Sub Proc_90_74_14BCAA4
  'Data Table: 511010
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim unk_51103F As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_D8 As Recordset15
  Dim var_D0 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_CC As Variant
  Dim var_14E As Integer
  Dim var_F4 As Variant
  Dim var_E0 As Variant
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_14C As Variant
  Dim var_8A As Integer
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_148 As Fields15
  Dim var_124 As Variant
  Dim var_184 As Variant
  Dim var_144 As Variant
  Dim var_210 As Double
  Dim var_1A4 As Variant
  Dim var_220 As Variant
  loc_14BBDB0: On Error Goto loc_14BCA9D
  loc_14BBDBA: var_98 = "Select Distinct P1.Docid ,P1.Sno,Max(P1.VNo) as V_No,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date,Max(P1.PartyCode) as PartyCode," & " Max(P1.Itemcode) as Itemcode,Max(P1.Unit) as Unit,Max(P1.Qty) as Qty,Max(P1.Rate) as Rate,Max(P1.Qty)- sum(isnull(S.QtyRec,0)) as PendQty,"
  loc_14BBDC1: var_9C = var_98 & " Max(P1.Amount) as Amount,max(P1.Specification) as Specific ,Max(I.Name) As ItemName,max(I.convratio) as ConvRatio,max(I.IssueUnit) as IssUnit,Max(SG.Name) as PartyName ,max(P1.indentDocid) as IDocid ,max(P1.IndentSno) as ISno "
  loc_14BBDCF: var_A4 = var_9C & " From (((POrder1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno )) " & " Left Join SubGroup SG on P1.PartyCode=SG.SubCode) Left Join Itemmast I on P1.Itemcode=I.Code And I.ItemType='Store') "
  loc_14BBDE4: var_90 = var_A4 & " Where P1.DocID='" & arg_10 & "' Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isnull(S.QtyRec,0)) > 0 "
  loc_14BBE0C: unk_51103F.Execute var_90, var_CC, -1
  loc_14BBE17: Set var_88 = var_D0
  loc_14BBE34: If (var_88.RecordCount > 0) Then
  loc_14BBE3A:   Set var_D8 = var_88 
  loc_14BBE77:   Set var_E0 = Me.Txt
  loc_14BBE7D:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(6), var_E4)
  loc_14BBE85:   var_E4.Tag = CStr(var_D8.Fields.Item("PartyCode").Value)
  loc_14BBEB2:   var_DC = var_D8.Fields.Item("PartyName")
  loc_14BBEC3:   var_14E = IsNull(CVar(var_DC))
  loc_14BBF15:   Set var_148 = Me.Txt
  loc_14BBF1B:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(6), var_14C, CStr(IIf(var_14E, vbNullString, CVar(var_D8.Fields.Item("PartyName")))))
  loc_14BBF23:   var_14C.Text = var_14E
  loc_14BBF50:   Set var_D0 = Me.Txt
  loc_14BBF56:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(6), var_DC)
  loc_14BBF5E:   var_DC.Enabled = False
  loc_14BBF78:   Set var_D0 = Me.Txt
  loc_14BBF7E:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(7), var_DC)
  loc_14BBF86:   var_DC.Text = vbNullString
  loc_14BBFA0:   Set var_D0 = Me.Txt
  loc_14BBFA6:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(8), var_DC)
  loc_14BBFAE:   var_DC.Text = vbNullString
  loc_14BBFC8:   Set var_D0 = Me.Txt
  loc_14BBFCE:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(&HA), var_DC)
  loc_14BBFD6:   var_DC.Text = vbNullString
  loc_14BBFF0:   Set var_D0 = Me.Txt
  loc_14BBFF6:   Call 0.Method_Proc_90_74_14BCAA40 (CInt(&HB), var_DC)
  loc_14BBFFE:   var_DC.Text = vbNullString
  loc_14BC019:   Me.FGrid.Redraw = False
  loc_14BC03B:   var_8A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14BC044:   ' Referenced from: 14BC939
  loc_14BC053:   If Not(var_88.EOF) Then
  loc_14BC07B:     For var_152 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_152 'Integer
  loc_14BC085:       var_BC = CVar(CLng(var_92)) 'Long
  loc_14BC08D:       var_104 = CVar(CLng(&H12)) 'Long
  loc_14BC0A7:       var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14BC0CD:       var_124 = var_88.Fields.Item("DocID").Value
  loc_14BC0DD:       var_174 = CVar(CLng(var_92)) 'Long
  loc_14BC155:       If CBool(CVar(CLng(&H13)) And (CVar(CStr(Me.FGrid.TextMatrix))) = var_88.Fields.Item("SNo").Value)) Then
  loc_14BC158:         GoTo loc_14BC931
  loc_14BC15B:       End If
  loc_14BC15E:     Next var_152 'Integer
  loc_14BC181:     var_CC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_14BC189:     Set var_DC = Me.FGrid
  loc_14BC1A7:     Set var_208 = Me.FGrid
  loc_14BC1AE:     var_BC = CVar(CLng(var_8A)) 'Long
  loc_14BC1B6:     var_104 = CVar(CLng(0)) 'Long
  loc_14BC1C0:     var_CC = CVar(CStr(var_8A)) 'String
  loc_14BC1C7:     LateIdCallSt
  loc_14BC1D6:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BC1DE:     var_114 = CVar(CLng(&H11)) 'Long
  loc_14BC20E:     var_124 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_14BC215:     LateIdCallSt
  loc_14BC27E:     var_E4 = var_88.Fields.Item("ItemName")
  loc_14BC2AF:     LateIdCallSt
  loc_14BC306:     var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Specific")), CVar(CLng(2)), CVar(CLng(var_8A)), var_208, CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("ItemName"))), vbNullString, CVar(var_E4)))), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_14BC30D:     LateIdCallSt
  loc_14BC323:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BC32B:     var_114 = CVar(CLng(3)) 'Long
  loc_14BC35B:     var_124 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_14BC362:     LateIdCallSt
  loc_14BC3B1:     var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IssUnit")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_208, var_124, CVar(CLng(&HA)), CVar(CLng(var_8A)))) 'String
  loc_14BC3B8:     LateIdCallSt
  loc_14BC3EA:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BC3F2:     var_164 = CVar(CLng(4)) 'Long
  loc_14BC41F:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_14BC426:     LateIdCallSt
  loc_14BC45C:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BC464:     var_164 = CVar(CLng(5)) 'Long
  loc_14BC491:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14BC498:     LateIdCallSt
  loc_14BC4CE:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BC4D6:     var_164 = CVar(CLng(6)) 'Long
  loc_14BC503:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14BC50A:     LateIdCallSt
  loc_14BC540:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BC548:     var_164 = CVar(CLng(8)) 'Long
  loc_14BC575:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14BC57C:     LateIdCallSt
  loc_14BC5BA:     var_164 = CVar(CLng(&HB)) 'Long
  loc_14BC5EE:     LateIdCallSt
  loc_14BC639:     Set var_E0 = Me.Txt
  loc_14BC63F:     Call 0.Method_Proc_90_74_14BCAA40 (CInt(2), var_E4, var_9C, var_208, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))), 1, 1)
  loc_14BC647:     var_164 = var_E4.Text
  loc_14BC65E:     Call Proc_90_79_1064FE0(CStr(var_88.Fields.Item("ItemCode").Value), var_9C, var_210, CVar(CLng(var_8A)), var_208)
  loc_14BC667:     var_114 = CVar(CLng(var_8A)) 'Long
  loc_14BC66F:     var_174 = CVar(CLng(&HC)) 'Long
  loc_14BC69C:     var_1B4 = CVar(CStr(Format(CVar(var_210), "0.00"))) 'String
  loc_14BC6A3:     LateIdCallSt
  loc_14BC6EA:     var_104 = CVar(CLng(var_8A)) 'Long
  loc_14BC6F2:     var_164 = CVar(CLng(&HD)) 'Long
  loc_14BC71F:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_14BC726:     LateIdCallSt
  loc_14BC740:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BC748:     var_114 = CVar(CLng(&H12)) 'Long
  loc_14BC778:     var_124 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_14BC77F:     LateIdCallSt
  loc_14BC799:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14BC7A1:     var_114 = CVar(CLng(&H13)) 'Long
  loc_14BC7D1:     var_124 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_14BC7D8:     LateIdCallSt
  loc_14BC827:     var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IDocid")), CVar(CLng(&H17)), CVar(CLng(var_8A)), var_208, var_124, CVar(CLng(&H17)), CVar(CLng(var_8A)))) 'String
  loc_14BC82E:     LateIdCallSt
  loc_14BC877:     Proc_6_39_E7C810(var_124, CVar(var_88.Fields.Item("ISNo")), CVar(CLng(&H18)), CVar(CLng(var_8A)), var_208, var_124)
  loc_14BC880:     var_134 = CVar(CStr(var_124)) 'String
  loc_14BC887:     LateIdCallSt
  loc_14BC89F:     var_164 = CVar(CLng(var_8A)) 'Long
  loc_14BC8A7:     var_184 = CVar(CLng(4)) 'Long
  loc_14BC8C2:     var_210 = Val(CStr(Txt.DispID_41))
  loc_14BC8C9:     var_1A4 = CVar(CLng(var_8A)) 'Long
  loc_14BC8D1:     var_220 = CVar(CLng(9)) 'Long
  loc_14BC8DA:     var_BC = CVar(CLng(var_8A)) 'Long
  loc_14BC8E2:     var_104 = CVar(CLng(8)) 'Long
  loc_14BC903:     var_134 = CVar(CStr((Val(CStr(Txt.DispID_41)) * var_210))) 'String
  loc_14BC90A:     LateIdCallSt
  loc_14BC924:     Set var_208 = Nothing 
  loc_14BC92E:     var_8A = (var_8A + 1)
  loc_14BC931:     ' Referenced from: 14BC158
  loc_14BC934:     var_88.MoveNext
  loc_14BC939:     GoTo loc_14BC044
  loc_14BC93C:   End If
  loc_14BC94F:   Me.FGrid.FixedRows = 1
  loc_14BC959:   Set var_D8 = Nothing 
  loc_14BC960: Else
  loc_14BC96E:   Me.FGrid.Redraw = True
  loc_14BC97C:   If (var_8A = 1) Then
  loc_14BC97F:     var_BC = 1
  loc_14BC992:     Me.FGrid.Rows = var_BC
  loc_14BC9B8:     var_CC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8A, var_208, var_134, var_104, var_BC, var_220))) 'String
  loc_14BC9C0:     Set var_DC = Me.FGrid
  loc_14BC9ED:     Me.FGrid.FixedRows = 1
  loc_14BC9F5:   End If
  loc_14BC9F5: End If
  loc_14BCA03: Me.FGrid.Redraw = True
  loc_14BCA11: If (var_8A = 1) Then
  loc_14BCA27:   Me.FGrid.Rows = 1
  loc_14BCA4D:   var_CC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_CC, var_1A4, var_210))) 'String
  loc_14BCA55:   Set var_DC = Me.FGrid
  loc_14BCA82:   Me.FGrid.FixedRows = 1
  loc_14BCA8A: End If
  loc_14BCA8A: Call Proc_90_73_118CAB8(FGrid.DispID_10000, var_CC, var_184, var_164)
  loc_14BCA8F: Call Proc_90_68_F980B8(var_208, var_134)
  loc_14BCA99: Set var_88 = Nothing
  loc_14BCA9C: Exit Sub
  loc_14BCA9D: ' Referenced from: 14BBDB0
  loc_14BCA9D: Proc_6_60_E62BC4(var_208)
  loc_14BCAA2: Exit Sub
End Sub

Public Sub Proc_90_75_1467634
  'Data Table: 511010
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim unk_51103F As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_D4 As Variant
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_150 As Variant
  Dim var_12C As Variant
  Dim var_130 As Variant
  Dim var_170 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_F4 As Variant
  Dim var_11C As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  loc_1466A98: On Error Goto loc_146762D
  loc_1466AA2: var_98 = "Select Distinct P1.Docid ,P1.Sno,Max(P1.VNo) as V_No,Max(P1.Vtype) as V_type,Max(P1.VDate) as V_Date," & " '' as PartyCode, Max(P1.Item) as Itemcode,Max(P1.Unit) as Unit,"
  loc_1466AA9: var_9C = var_98 & " Max(P1.Qty) as Qty,Max(P1.Rate) as Rate,Max(P1.Qty)- sum(IsNull(S.QtyRec,0)) as PendQty,"
  loc_1466AB7: var_A4 = var_9C & " Max(P1.Amount) as Amount,max(P1.Specification) as Specific ,Max(I.Name) As ItemName," & " max(I.convratio) as ConvRatio,max(I.IssueUnit) as IssUnit,'' as PartyName,"
  loc_1466AC5: var_AC = var_A4 & " max(P1.Docid) as IDocid ,max(P1.Sno) as ISno,max(P1.ClearYN) as ClearYN " & " From (Indent1 P1 Left Join Stock S on (P1.Docid = S.ContraDocid and P1.Sno = S.ContraSno )) Left Join Itemmast I on P1.Item=I.Code And I.ItemType='Store' "
  loc_1466ADA: var_90 = var_AC & " Where P1.DocID='" & arg_10 & "' and P1.ClearYN<>'Y' Group By P1.Docid,P1.Sno Having Max(P1.Qty) - Sum(isnull(S.QtyRec,0)) > 0 "
  loc_1466B06: unk_51103F.Execute var_90, var_D4, -1
  loc_1466B11: Set var_88 = var_D8
  loc_1466B2E: If (var_88.RecordCount > 0) Then
  loc_1466B34:   Set var_E0 = var_88 
  loc_1466B45:   Set var_D8 = Me.Txt
  loc_1466B4B:   Call 0.Method_Proc_90_75_14676340 (CInt(6), var_E4)
  loc_1466B53:   var_E4.Enabled = False
  loc_1466B6D:   Set var_D8 = Me.Txt
  loc_1466B73:   Call 0.Method_Proc_90_75_14676340 (CInt(7), var_E4)
  loc_1466B7B:   var_E4.Text = vbNullString
  loc_1466B95:   Set var_D8 = Me.Txt
  loc_1466B9B:   Call 0.Method_Proc_90_75_14676340 (CInt(8), var_E4)
  loc_1466BA3:   var_E4.Text = vbNullString
  loc_1466BBD:   Set var_D8 = Me.Txt
  loc_1466BC3:   Call 0.Method_Proc_90_75_14676340 (CInt(&HA), var_E4)
  loc_1466BCB:   var_E4.Text = vbNullString
  loc_1466BE5:   Set var_D8 = Me.Txt
  loc_1466BEB:   Call 0.Method_Proc_90_75_14676340 (CInt(&HB), var_E4)
  loc_1466BF3:   var_E4.Text = vbNullString
  loc_1466C0E:   Me.FGrid.Redraw = False
  loc_1466C30:   var_8A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1466C39:   ' Referenced from: 14674C9
  loc_1466C48:   If Not(var_88.EOF) Then
  loc_1466C70:     For var_FA = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_FA 'Integer
  loc_1466C7A:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1466C82:       var_10C = CVar(CLng(&H12)) 'Long
  loc_1466C9C:       var_150 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1466CC2:       var_140 = var_88.Fields.Item("DocID").Value
  loc_1466CD2:       var_170 = CVar(CLng(var_92)) 'Long
  loc_1466D4A:       If CBool(CVar(CLng(&H13)) And (CVar(CStr(Me.FGrid.TextMatrix))) = var_88.Fields.Item("SNo").Value)) Then
  loc_1466D4D:         GoTo loc_14674C1
  loc_1466D50:       End If
  loc_1466D53:     Next var_FA 'Integer
  loc_1466D76:     var_D4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_1466D7E:     Set var_E4 = Me.FGrid
  loc_1466D9C:     Set var_210 = Me.FGrid
  loc_1466DA3:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_1466DAB:     var_10C = CVar(CLng(0)) 'Long
  loc_1466DB5:     var_D4 = CVar(CStr(var_8A)) 'String
  loc_1466DBC:     LateIdCallSt
  loc_1466DCB:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1466DD3:     var_11C = CVar(CLng(&H11)) 'Long
  loc_1466E03:     var_140 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_1466E0A:     LateIdCallSt
  loc_1466E73:     var_1A4 = var_88.Fields.Item("ItemName")
  loc_1466EA4:     LateIdCallSt
  loc_1466EFB:     var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Specific")), CVar(CLng(2)), CVar(CLng(var_8A)), var_210, CVar(CStr(IIf(IsNull(CVar(var_88.Fields.Item("ItemName"))), vbNullString, CVar(var_1A4)))), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_1466F02:     LateIdCallSt
  loc_1466F18:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1466F20:     var_11C = CVar(CLng(3)) 'Long
  loc_1466F50:     var_140 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_1466F57:     LateIdCallSt
  loc_1466FA6:     var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IssUnit")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_210, var_140, CVar(CLng(&HA)), CVar(CLng(var_8A)))) 'String
  loc_1466FAD:     LateIdCallSt
  loc_1466FDF:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_1466FE7:     var_12C = CVar(CLng(4)) 'Long
  loc_1467014:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_146701B:     LateIdCallSt
  loc_1467051:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_1467059:     var_12C = CVar(CLng(5)) 'Long
  loc_1467086:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_146708D:     LateIdCallSt
  loc_14670C3:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_14670CB:     var_12C = CVar(CLng(6)) 'Long
  loc_14670F8:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_14670FF:     LateIdCallSt
  loc_1467135:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_146713D:     var_12C = CVar(CLng(8)) 'Long
  loc_146716A:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("PendQty")), "0.000"))) 'String
  loc_1467171:     LateIdCallSt
  loc_14671AF:     var_12C = CVar(CLng(&HB)) 'Long
  loc_14671E3:     LateIdCallSt
  loc_146722E:     Set var_130 = Me.Txt
  loc_1467234:     Call 0.Method_Proc_90_75_14676340 (CInt(2), var_1A4, var_9C, var_210, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))), 1, 1)
  loc_146723C:     var_12C = var_1A4.Text
  loc_1467253:     Call Proc_90_79_1064FE0(CStr(var_88.Fields.Item("ItemCode").Value), var_9C, var_218, CVar(CLng(var_8A)), var_210)
  loc_146725C:     var_11C = CVar(CLng(var_8A)) 'Long
  loc_1467264:     var_170 = CVar(CLng(&HC)) 'Long
  loc_1467291:     var_1B4 = CVar(CStr(Format(CVar(var_218), "0.00"))) 'String
  loc_1467298:     LateIdCallSt
  loc_14672DF:     var_10C = CVar(CLng(var_8A)) 'Long
  loc_14672E7:     var_12C = CVar(CLng(&HD)) 'Long
  loc_1467314:     var_160 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_146731B:     LateIdCallSt
  loc_1467335:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_146733D:     var_11C = CVar(CLng(&H12)) 'Long
  loc_146736D:     var_140 = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_1467374:     LateIdCallSt
  loc_146738E:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1467396:     var_11C = CVar(CLng(&H13)) 'Long
  loc_14673C6:     var_140 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_14673CD:     LateIdCallSt
  loc_146741C:     var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IDocid")), CVar(CLng(&H17)), CVar(CLng(var_8A)), var_210, var_140, CVar(CLng(&H17)), CVar(CLng(var_8A)))) 'String
  loc_1467423:     LateIdCallSt
  loc_1467439:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1467441:     var_11C = CVar(CLng(&H18)) 'Long
  loc_146746C:     Proc_6_39_E7C810(var_140, CVar(var_88.Fields.Item("ISNo")), var_11C, var_F4, var_210, var_140)
  loc_1467475:     var_150 = CVar(CStr(var_140)) 'String
  loc_146747C:     LateIdCallSt
  loc_1467494:     var_C4 = CVar(CLng(var_8A)) 'Long
  loc_146749C:     var_10C = CVar(CLng(&H19)) 'Long
  loc_14674A1:     var_12C = "Y"
  loc_14674AA:     LateIdCallSt
  loc_14674B4:     Set var_210 = Nothing 
  loc_14674BE:     var_8A = (var_8A + 1)
  loc_14674C1:     ' Referenced from: 1466D4D
  loc_14674C4:     var_88.MoveNext
  loc_14674C9:     GoTo loc_1466C39
  loc_14674CC:   End If
  loc_14674DF:   Me.FGrid.FixedRows = 1
  loc_14674E9:   Set var_E0 = Nothing 
  loc_14674F0: Else
  loc_14674FE:   Me.FGrid.Redraw = True
  loc_146750C:   If (var_8A = 1) Then
  loc_146750F:     var_C4 = 1
  loc_1467522:     Me.FGrid.Rows = var_C4
  loc_1467548:     var_D4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8A, var_210, var_12C, var_10C, var_C4, var_210))) 'String
  loc_1467550:     Set var_E4 = Me.FGrid
  loc_146757D:     Me.FGrid.FixedRows = 1
  loc_1467585:   End If
  loc_1467585: End If
  loc_1467593: Me.FGrid.Redraw = True
  loc_14675A1: If (var_8A = 1) Then
  loc_14675B7:   Me.FGrid.Rows = 1
  loc_14675DD:   var_D4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_D4, var_150, var_210))) 'String
  loc_14675E5:   Set var_E4 = Me.FGrid
  loc_1467612:   Me.FGrid.FixedRows = 1
  loc_146761A: End If
  loc_146761A: Call Proc_90_73_118CAB8(FGrid.DispID_10000, var_D4, var_140, var_11C)
  loc_146761F: Call Proc_90_68_F980B8(var_F4, var_210)
  loc_1467629: Set var_88 = Nothing
  loc_146762C: Exit Sub
  loc_146762D: ' Referenced from: 1466A98
  loc_146762D: Proc_6_60_E62BC4(var_160)
  loc_1467632: Exit Sub
End Sub

Public Sub Proc_90_76_F1ACAC
  'Data Table: 511010
  Dim var_8C As TextBox
  loc_F1ABBA: Set var_88 = Me.Txt
  loc_F1ABC0: Call 0.Method_Proc_90_76_F1ACAC0 (CInt(0), var_8C)
  loc_F1ABDF: If (var_8C.Tag = "MRCH") Then
  loc_F1ABEF:   Set var_88 = Me.Txt
  loc_F1ABF5:   Call 0.Method_Proc_90_76_F1ACAC0 (CInt(3), var_8C)
  loc_F1ABFD:   var_8C.Visible = True
  loc_F1AC16:   Set var_88 = Me.Txt
  loc_F1AC1C:   Call 0.Method_Proc_90_76_F1ACAC0 (CInt(6), var_8C)
  loc_F1AC24:   var_8C.Visible = False
  loc_F1AC33: Else
  loc_F1AC40:   Set var_88 = Me.Txt
  loc_F1AC46:   Call 0.Method_Proc_90_76_F1ACAC0 (CInt(3), var_8C)
  loc_F1AC4E:   var_8C.Visible = False
  loc_F1AC67:   Set var_88 = Me.Txt
  loc_F1AC6D:   Call 0.Method_Proc_90_76_F1ACAC0 (CInt(6), var_8C)
  loc_F1AC75:   var_8C.Visible = True
  loc_F1AC8E:   Set var_88 = Me.Txt
  loc_F1AC94:   Call 0.Method_Proc_90_76_F1ACAC0 (CInt(6), var_8C)
  loc_F1AC9C:   var_8C.Enabled = True
  loc_F1ACA8: End If
  loc_F1ACA8: Exit Sub
  loc_F1ACA9: Set Me00 = 
End Sub

Public Sub Proc_90_77_EE8E50
  'Data Table: 511010
  Dim var_BC As String
  loc_EE8DB1: If (Trim(global_108) = "MRE") Then
  loc_EE8DBE:   Set global_64 = New 
  loc_EE8DE3:   var_BC = "Select I.Code,I.BarCode,I.Name as Name,I.Unit,I.PurchRate ,I.convratio,I.IssueUnit,I.RestCode From ItemMast I Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_EE8DF4:   Me.Recordset15.Open CVar(var_BC & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_EE8DFF: End If
  loc_EE8E08: CVarUnk
  loc_EE8E0D: VerifyVarObj
  loc_EE8E13: Set var_B8 = Me.DGItem
  loc_EE8E19: LateIdStAd
  loc_EE8E30: CVarUnk
  loc_EE8E35: VerifyVarObj
  loc_EE8E3B: Set var_B8 = Me.DGParty
  loc_EE8E41: LateIdStAd
  loc_EE8E4F: Exit Sub
End Sub

Public Sub Proc_90_78_EE3FC4
  'Data Table: 511010
  Dim var_A8 As TextBox
  loc_EE3F18: If (LblSmartCardItem.Recordset15.RecordCount > 0) Then
  loc_EE3F50:   Set var_A4 = Me.Txt
  loc_EE3F56:   Call 0.Method_Proc_90_78_EE3FC40 (CInt(&HC), var_A8)
  loc_EE3F5E:   var_A8.MaxLength = LblSmartCardItem.Recordset15.Fields.Item("InspectedBy").DefinedSize
  loc_EE3FA3:   Set var_A4 = Me.Txt
  loc_EE3FA9:   Call 0.Method_Proc_90_78_EE3FC40 (CInt(&HD), var_A8)
  loc_EE3FB1:   var_A8.MaxLength = LblSmartCardItem.Recordset15.Fields.Item("ApprovedBy").DefinedSize
  loc_EE3FC1: End If
  loc_EE3FC1: Exit Sub
End Sub

Public Sub Proc_90_79_1064FE0(arg_C, arg_10) '1064FE0
  'Data Table: 511010
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_51103F As Connection15
  Dim var_CC As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_90 As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_8C As Double
  loc_1064D8E: var_94 = global_152
  loc_1064D99: If (var_94 = "Last Purchase Rate") Then
  loc_1064DB7:   var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1064DC8:   var_A4 = var_9C & global_148 & "'"
  loc_1064DD1:   unk_51103F.Execute var_A4, var_C4, -1
  loc_1064DDC:   Set var_90 = var_C8
  loc_1064DF3: Else
  loc_1064DFB:   If (var_94 = "Party Wise Last Pur Rate") Then
  loc_1064E23:     var_A0 = "Select Top 1 ItemRate As Rate From Purch2 Where VType In ('PBPB','PBPC') And Item='" & arg_C & "' And RestCode='" & global_148
  loc_1064E3B:     Set var_C8 = Me.Txt
  loc_1064E41:     Call 0.Method_Proc_90_79_1064FE00 (CInt(6), var_CC, var_A4, var_A0 & "' And PartyCode='")
  loc_1064E49:     var_138 = var_CC.Tag
  loc_1064E52:     var_D4 = -1 & var_A4
  loc_1064E59:     var_E4 = CVar(var_D4 & "' And DelFlag='N' And Vdate<=") 'String
  loc_1064E67:     Proc_6_7_F25D88(var_C4, arg_10, var_E4)
  loc_1064E86:     unk_51103F.Execute CStr(var_13C & var_C4 & " Order By VDate Desc,Vno Desc"), var_C8, 
  loc_1064ECF:     If (var_13C.RecordCount = 0) Then
  loc_1064EED:       var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1064F07:       unk_51103F.Execute var_9C & global_148 & "'", var_C4, -1
  loc_1064F12:       Set var_90 = var_C8
  loc_1064F26:     End If
  loc_1064F29:   Else
  loc_1064F5E:     unk_51103F.Execute "Select PurchRate As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='" & global_148 & "'", var_C4, -1
  loc_1064F69:     Set var_90 = var_C8
  loc_1064F7D:   End If
  loc_1064F7D: End If
  loc_1064F91: If (var_90.RecordCount > 0) Then
  loc_1064FBA:   Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("Rate")))
  loc_1064FC3:   var_8C = CSng(var_E4)
  loc_1064FD3: Else
  loc_1064FD6:   var_8C = CDbl(0)
  loc_1064FD9: End If
  loc_1064FD9: Proc_90_79_1064FE0 = var_8C
End Sub
