VERSION 5.00
Begin VB.Form NewHappyHours
  Caption = "Happy Hours [ Free Items ]"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13800
  ClientHeight = 7890
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13800
    Height = 450
    TabIndex = 40
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 2010
    Top = 5790
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 1935
    Top = 3405
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRest
    Left = 11310
    Top = 3855
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGScheme
    Left = 11250
    Top = 2640
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin MSFlexGrid FGPoint
    Left = 13260
    Top = 600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGItem
    Left = 8445
    Top = 2595
    Width = 4035
    Height = 4635
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin Frame FrFreeItem
    Caption = "Free Item:"
    BackColor = &HFFC0C0&
    ForeColor = &HC0&
    Left = 15225
    Top = 6405
    Width = 225
    Height = 525
    Visible = 0   'False
    TabIndex = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 2
    ForeColor = &HC00000&
    Left = 6045
    Top = 1590
    Width = 1560
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
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
  Begin TextBox txt
    Index = 7
    ForeColor = &HC00000&
    Left = 6510
    Top = 1905
    Width = 540
    Height = 285
    TabIndex = 7
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
  Begin TextBox txt
    Index = 8
    ForeColor = &HC00000&
    Left = 3390
    Top = 2220
    Width = 4215
    Height = 285
    TabIndex = 8
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
  Begin TextBox txt
    Index = 6
    Left = 5460
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 5
    Left = 5055
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 4
    ForeColor = &HC00000&
    Left = 3795
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3390
    Top = 1905
    Width = 375
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 4
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
  Begin TextBox txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3390
    Top = 1590
    Width = 1560
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin Frame frSchemeItem
    Caption = "Scheme Item:"
    BackColor = &HFFC0C0&
    ForeColor = &HC0&
    Left = 13935
    Top = 6690
    Width = 675
    Height = 525
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
  End
  Begin TextBox txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3390
    Top = 1275
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin Frame framWeek
    Caption = "Days"
    BackColor = &HC0FFFF&
    ForeColor = &HC0&
    Left = 8190
    Top = 960
    Width = 2925
    Height = 1635
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin CheckBox chkday
      Caption = "Sunday"
      Index = 1
      BackColor = &HC0C0FF&
      ForeColor = &H404000&
      Left = 195
      Top = 330
      Width = 1170
      Height = 255
      TabIndex = 21
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
    Begin CheckBox chkday
      Caption = "Monday"
      Index = 2
      BackColor = &HFFC0C0&
      ForeColor = &H404000&
      Left = 1410
      Top = 330
      Width = 1455
      Height = 255
      TabIndex = 20
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
    Begin CheckBox chkday
      Caption = "Tuesday"
      Index = 3
      BackColor = &HC0E0FF&
      ForeColor = &H404000&
      Left = 195
      Top = 660
      Width = 1170
      Height = 255
      TabIndex = 19
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
    Begin CheckBox chkday
      Caption = "Wednesday"
      Index = 4
      BackColor = &HFFC0FF&
      ForeColor = &H404000&
      Left = 1410
      Top = 660
      Width = 1455
      Height = 255
      TabIndex = 18
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
    Begin CheckBox chkday
      Caption = "Thursday"
      Index = 5
      BackColor = &HC0FFC0&
      ForeColor = &H404000&
      Left = 195
      Top = 990
      Width = 1170
      Height = 255
      TabIndex = 17
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
    Begin CheckBox chkday
      Caption = "Friday"
      Index = 6
      BackColor = &HE0E0E0&
      ForeColor = &H404000&
      Left = 1410
      Top = 1005
      Width = 1455
      Height = 255
      TabIndex = 16
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
    Begin CheckBox chkday
      Caption = "Saturday"
      Index = 7
      BackColor = &HFFFFC0&
      ForeColor = &H404000&
      Left = 195
      Top = 1290
      Width = 1170
      Height = 255
      TabIndex = 15
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
  End
  Begin MSFlexGrid FGrid
    Left = 1920
    Top = 3180
    Width = 7005
    Height = 1935
    TabIndex = 35
  End
  Begin MSFlexGrid FGrid1
    Left = 1905
    Top = 5550
    Width = 7005
    Height = 1995
    TabIndex = 37
  End
  Begin Label Label1
    Caption = "Select Free Item Name and Qty"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 1905
    Top = 5175
    Width = 6495
    Height = 375
    TabIndex = 39
    Alignment = 2 'Center
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
    Caption = "Select Sechme Item Name and Qty"
    Index = 74
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 1920
    Top = 2790
    Width = 6495
    Height = 375
    TabIndex = 38
    Alignment = 2 'Center
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
    Left = 5520
    Top = 7710
    Width = 2790
    Height = 285
    TabIndex = 33
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
    Left = 2145
    Top = 7710
    Width = 2880
    Height = 255
    TabIndex = 32
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
    Top = 375
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
  Begin Label Label1
    Caption = "End Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 5100
    Top = 1605
    Width = 855
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
  Begin Label Label4
    Caption = "Yes/No"
    ForeColor = &HC0&
    Left = 7110
    Top = 1950
    Width = 645
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
  Begin Label Label2
    Caption = "Active"
    Index = 4
    ForeColor = &HC00000&
    Left = 5880
    Top = 1920
    Width = 585
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
  Begin Label Label2
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1980
    Top = 2235
    Width = 1185
    Height = 240
    TabIndex = 25
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
    BorderColor = &HC00000&
    Left = 1920
    Top = 1095
    Width = 6090
    Height = 1560
    BorderWidth = 2
  End
  Begin Label Label3
    Caption = "To Time:"
    ForeColor = &HC00000&
    Left = 4200
    Top = 1920
    Width = 840
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
  Begin Label Label2
    Caption = "From Time:"
    Index = 0
    ForeColor = &HC00000&
    Left = 1995
    Top = 1920
    Width = 1095
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
  Begin Label Label1
    Caption = "Start Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1995
    Top = 1590
    Width = 945
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
  Begin Label lblyear
    Caption = "Scheme Name"
    ForeColor = &HC00000&
    Left = 2010
    Top = 1290
    Width = 1395
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

Attribute VB_Name = "NewHappyHours"

Private global_56 As Integer

Private Sub FGPoint_UnknownEvent_9 'E85780
  'Data Table: 4EE6E8
  loc_E8572C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E8572F:   Call DGItem_UnknownEvent_9()
  loc_E85734: End If
  loc_E85750: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E85753:   Call DGRest_UnknownEvent_9()
  loc_E85758: End If
  loc_E85774: If (CBool(Me.DGScheme.Visible) = &HFF) Then
  loc_E85777:   Call DGScheme_UnknownEvent_9()
  loc_E8577C: End If
  loc_E8577C: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4B6E4
  'Data Table: 4EE6E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B5DB: Me.DGRest.Visible = False
  loc_F4B5FA: If (Me.RecordCount > 0) Then
  loc_F4B639:   Set var_B4 = Me.txt
  loc_F4B63F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(8), var_B8)
  loc_F4B647:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4B67A:   var_B0 = Me.Fields.Item("Name")
  loc_F4B699:   Set var_B4 = Me.txt
  loc_F4B69F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(8), var_B8)
  loc_F4B6A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4B6BD: End If
  loc_F4B6C8: Set var_A8 = Me.txt
  loc_F4B6CE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(8))
  loc_F4B6D6: var_B0.SetFocus
  loc_F4B6E2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E706D0
  'Data Table: 4EE6E8
  loc_E7068E: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E706A5: Set var_8C = Me.FGPoint
  loc_E706C1: Proc_6_138_106D6F8(Me.DGRest, global_60, CInt(8))
  loc_E706CF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '114BF2C
  'Data Table: 4EE6E8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_114BB9E: Set var_88 = Me.txt
  loc_114BBA4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_114BBB2: Proc_6_74_E226B0(var_8C)
  loc_114BBBE: Call Proc_186_56_E6FEC0(var_8C)
  loc_114BBC6: var_92 = Index
  loc_114BBD1: If (var_92 = CInt(0)) Then
  loc_114BBEB:   If (Me.RecordCount > 0) Then
  loc_114BBF9:     Set var_8C = Me.FGPoint
  loc_114BC11:     Proc_6_137_1193554(Me.DGScheme, global_64, Index)
  loc_114BC1F:   End If
  loc_114BC6D:   Set var_88 = Me.txt
  loc_114BC73:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114BC7B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114BC93:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_114BC96:     Exit Sub
  loc_114BC97:   End If
  loc_114BCA4:   Set var_88 = Me.txt
  loc_114BCAA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114BCB2:   var_A0 = var_8C.Text
  loc_114BCBA:   var_D4 = CVar(var_A0) 'String
  loc_114BCFF:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_114BD08:     Me.MoveFirst
  loc_114BD2D:     Set var_88 = Me.txt
  loc_114BD33:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_114BD3B:     0 = var_8C.Text
  loc_114BD49:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_114BD5F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_114BD77:   End If
  loc_114BD7A: Else
  loc_114BD82:   If (var_92 = CInt(8)) Then
  loc_114BD9C:     If (Me.RecordCount > 0) Then
  loc_114BDAA:       Set var_8C = Me.FGPoint
  loc_114BDC2:       Proc_6_137_1193554(Me.DGRest, global_60)
  loc_114BDD0:     End If
  loc_114BE1E:     Set var_88 = Me.txt
  loc_114BE24:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114BE2C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114BE44:     If (Index Or (var_A0 = vbNullString)) Then
  loc_114BE47:       Exit Sub
  loc_114BE48:     End If
  loc_114BE55:     Set var_88 = Me.txt
  loc_114BE5B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114BE63:     var_A0 = var_8C.Text
  loc_114BE6B:     var_D4 = CVar(var_A0) 'String
  loc_114BEB0:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_114BEB9:       Me.MoveFirst
  loc_114BEDE:       Set var_88 = Me.txt
  loc_114BEE4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_114BEEC:       0 = var_8C.Text
  loc_114BEFA:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_114BF10:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_114BF28:     End If
  loc_114BF28:   End If
  loc_114BF28: End If
  loc_114BF28: Exit Sub
  loc_114BF29:  = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10AAD20
  'Data Table: 4EE6E8
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  loc_10AAA66: If (CLng(Shift) = &H1B) Then
  loc_10AAA69:   Call Proc_186_56_E6FEC0()
  loc_10AAA6E:   Exit Sub
  loc_10AAA6F: End If
  loc_10AAA72: var_86 = KeyCode
  loc_10AAA7D: If (var_86 = CInt(0)) Then
  loc_10AAA9D:   Set var_9C = Me.FGPoint
  loc_10AAAA8:   Set var_98 = Nothing
  loc_10AAAD6:   Proc_6_69_134A198(Me.DGScheme, Me.txt, KeyCode, global_64, Shift, 0)
  loc_10AAB45:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10AAB6B:     Proc_6_138_106D6F8(Me.DGScheme, global_64, KeyCode, Me.FGPoint, 1)
  loc_10AAB79:   End If
  loc_10AAB7C: Else
  loc_10AAB84:   If (var_86 = CInt(8)) Then
  loc_10AABA4:     Set var_9C = Me.FGPoint
  loc_10AABAF:     Set var_98 = Nothing
  loc_10AABDD:     Proc_6_69_134A198(Me.DGRest, Me.txt, KeyCode, global_60, Shift, 0, 1)
  loc_10AAC4C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10AAC53:       Set var_98 = Me.DGRest
  loc_10AAC72:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10AAC80:     End If
  loc_10AAC80:   End If
  loc_10AAC80: End If
  loc_10AACB1: Set var_98 = Me.DGScheme
  loc_10AACD6: If (((CBool(Me.DGRest.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_10AACEC:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_10AACF5:     Proc_6_76_E52838(Shift, arg_14, 0, var_98)
  loc_10AACFA:   End If
  loc_10AAD0F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10AAD18:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_10AAD1D:   End If
  loc_10AAD1D: End If
  loc_10AAD1D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1062618
  'Data Table: 4EE6E8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_106239F: Proc_6_58_E054C0(arg_10)
  loc_10623AA: Proc_6_133_E7EF78(var_94)
  loc_10623BF: If (CInt(var_94) = &HD) Then
  loc_10623C4:   arg_10 = 0
  loc_10623C7: End If
  loc_10623CA: var_96 = KeyAscii
  loc_10623D5: If (var_96 = CInt(0)) Then
  loc_10623F4:   If (CBool(Me.DGScheme.Visible) = &HFF) Then
  loc_1062421:     Proc_6_89_146F1AC(Me.txt, KeyAscii, global_64, arg_10, "Name")
  loc_1062453:     Proc_6_138_106D6F8(Me.DGScheme, global_64, KeyAscii, Me.FGPoint, 0)
  loc_1062461:   End If
  loc_1062464: Else
  loc_106246C:   If (var_96 = CInt(8)) Then
  loc_106248B:     If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10624B8:       Proc_6_89_146F1AC(Me.txt, KeyAscii, global_60, arg_10, "Name")
  loc_10624D2:       Set var_A8 = Me.FGPoint
  loc_10624EA:       Proc_6_138_106D6F8(Me.DGRest, global_60, KeyAscii, var_A8, 0)
  loc_10624F8:     End If
  loc_10624FB:   Else
  loc_1062503:     If Not (var_96 = CInt(3)) Then
  loc_106250E:       If Not (var_96 = CInt(4)) Then
  loc_1062519:         If Not (var_96 = CInt(5)) Then
  loc_1062524:           If (var_96 = CInt(6)) Then
  loc_1062527:           End If
  loc_1062527:         End If
  loc_1062527:       End If
  loc_1062531:       Set var_9C = Me.txt
  loc_1062537:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_1062552:       Proc_6_42_129A86C(var_A8, arg_10, 2, 0)
  loc_1062561:     Else
  loc_1062569:       If (var_96 = CInt(7)) Then
  loc_1062592:         If (Ucase(CVar(Chr$(CLng(arg_10)))) = "Y") Then
  loc_10625A2:           Set var_9C = Me.txt
  loc_10625A8:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_10625B0:           var_A8.Text = arg_10
  loc_10625BF:         Else
  loc_10625E5:           If (Ucase(CVar(Chr$(CLng(arg_10)))) = "N") Then
  loc_10625F5:             Set var_9C = Me.txt
  loc_10625FB:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1062603:             var_A8.Text = arg_10
  loc_106260F:           End If
  loc_106260F:         End If
  loc_1062611:         arg_10 = 0
  loc_1062614:       End If
  loc_1062614:     End If
  loc_1062614:   End If
  loc_1062614: End If
  loc_1062614: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E81C
  'Data Table: 4EE6E8
  loc_E4E7FA: Set var_88 = Me.txt
  loc_E4E800: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E80E: Proc_6_73_E22704(var_8C)
  loc_E4E81A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13763A0
  'Data Table: 4EE6E8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_9C As TextBox
  Dim var_D0 As String
  loc_1375B27: var_86 = Cancel
  loc_1375B32: If Not (var_86 = CInt(1)) Then
  loc_1375B3D:   If (var_86 = CInt(2)) Then
  loc_1375B40:   End If
  loc_1375B4D:   Set var_8C = Me.txt
  loc_1375B53:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375B72:   If (var_90.Text <> vbNullString) Then
  loc_1375B7F:     Set var_8C = Me.txt
  loc_1375B85:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375BA5:     Set var_9C = Me.txt
  loc_1375BAB:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1375BB3:     var_A0.Text = Proc_6_33_1512840(var_90)
  loc_1375BC9:   Else
  loc_1375BDB:     Set var_8C = Me.txt
  loc_1375BE1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375BE9:     var_90.Text = CStr(MemVar_1F920EC)
  loc_1375BF8:   End If
  loc_1375BFB: Else
  loc_1375C03:   If (var_86 = CInt(0)) Then
  loc_1375C11:     Set var_8C = Me.txt
  loc_1375C17:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1375C1F:     var_94 = "Scheme Name"
  loc_1375C40:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1375C45:       arg_10 = &HFF
  loc_1375C48:       Exit Sub
  loc_1375C49:     End If
  loc_1375C97:     Set var_8C = Me.txt
  loc_1375C9D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1375CA5:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1375CBD:     If (arg_10 Or (var_94 = vbNullString)) Then
  loc_1375CCD:       Set var_8C = Me.txt
  loc_1375CD3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375CDB:       var_90.Text = vbNullString
  loc_1375CF4:       Set var_8C = Me.txt
  loc_1375CFA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375D02:       var_90.Tag = vbNullString
  loc_1375D11:     Else
  loc_1375D4C:       Set var_98 = Me.txt
  loc_1375D52:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1375D5A:       var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1375D8D:       var_90 = Me.Fields.Item("Code")
  loc_1375DAB:       Set var_98 = Me.txt
  loc_1375DB1:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1375DB9:       var_9C.Tag = CStr(var_90.Value)
  loc_1375DCF:     End If
  loc_1375DDC:     Set var_8C = Me.txt
  loc_1375DE2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375DF6:     Call Proc_186_49_12A0E60(var_90.Tag)
  loc_1375E08:   Else
  loc_1375E10:     If (var_86 = CInt(8)) Then
  loc_1375E1E:       Set var_8C = Me.txt
  loc_1375E24:       Call 0.Method_Txt_Validate0 (CInt(8), var_90)
  loc_1375E2C:       var_94 = "Rest Name"
  loc_1375E4D:       If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1375E52:         arg_10 = &HFF
  loc_1375E55:         Exit Sub
  loc_1375E56:       End If
  loc_1375EA4:       Set var_8C = Me.txt
  loc_1375EAA:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_1375EB2:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1375ECA:       If (arg_10 Or (var_94 = vbNullString)) Then
  loc_1375EDA:         Set var_8C = Me.txt
  loc_1375EE0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375EE8:         var_90.Text = vbNullString
  loc_1375F01:         Set var_8C = Me.txt
  loc_1375F07:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1375F0F:         var_90.Tag = vbNullString
  loc_1375F1E:       Else
  loc_1375F59:         Set var_98 = Me.txt
  loc_1375F5F:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1375F67:         var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1375F9A:         var_90 = Me.Fields.Item("Code")
  loc_1375FB8:         Set var_98 = Me.txt
  loc_1375FBE:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1375FC6:         var_9C.Tag = CStr(var_90.Value)
  loc_1375FE6:         Set global_68 = New 
  loc_1375FF8:         Me.Recordset15.CursorLocation = 3
  loc_137600B:         Set var_8C = Me.txt
  loc_1376011:         Call 0.Method_Txt_Validate0 (CInt(8), var_90)
  loc_137603C:         var_94 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1376043:         var_D0 = var_94 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_137605B:         Me.Open CVar(var_D0 & var_90.Tag & "'  Order by I.Name  "), CVar(MemVar_1F92044), 3
  loc_137607E:         CVarUnk
  loc_1376083:         VerifyVarObj
  loc_1376089:         Set var_8C = Me.DGItem
  loc_137608F:         LateIdStAd
  loc_137609D:       End If
  loc_13760B6:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, global_88, Me.txt)
  loc_13760BE:       global_68 = var_90.Tag
  loc_13760D2:       If (1 <> var_94) Then
  loc_13760E2:         Set var_8C = Me.txt
  loc_13760E8:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13760F0:         -1 = var_90.Tag
  loc_13760FB:         global_88 = var_94
  loc_1376109:         Call Proc_186_54_F584B4(var_86)
  loc_137610E:       End If
  loc_1376111:     Else
  loc_1376119:       If Not (var_86 = CInt(3)) Then
  loc_1376124:         If (var_86 = CInt(5)) Then
  loc_1376127:         End If
  loc_1376134:         Set var_8C = Me.txt
  loc_137613A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1376159:         If (var_90.Text = vbNullString) Then
  loc_1376195:           Set var_8C = Me.txt
  loc_137619B:           Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "HH")))
  loc_13761A3:           var_90.Text = 1
  loc_13761BB:           Exit Sub
  loc_13761BC:         End If
  loc_13761C9:         Set var_8C = Me.txt
  loc_13761CF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13761F3:         If (CDbl(Val(var_90.Text)) > CDbl(&H18)) Then
  loc_1376221:           var_94 = CStr(Format(Time, "HH"))
  loc_137622F:           Set var_8C = Me.txt
  loc_1376235:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_137623D:           var_90.Text = 1
  loc_1376255:           Exit Sub
  loc_1376256:         End If
  loc_1376259:       Else
  loc_1376261:         If Not (var_86 = CInt(4)) Then
  loc_137626C:           If (var_86 = CInt(6)) Then
  loc_137626F:           End If
  loc_137627C:           Set var_8C = Me.txt
  loc_1376282:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_137628A:           1 = var_90.Text
  loc_13762A1:           If (var_94 = vbNullString) Then
  loc_13762CF:             var_94 = CStr(Format(Time, "NN"))
  loc_13762DD:             Set var_8C = Me.txt
  loc_13762E3:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13762EB:             var_90.Text = 1
  loc_1376303:             Exit Sub
  loc_1376304:           End If
  loc_1376311:           Set var_8C = Me.txt
  loc_1376317:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_137631F:           1 = var_90.Text
  loc_137633B:           If (CDbl(Val(var_94)) > CDbl(&H3C)) Then
  loc_1376377:             Set var_8C = Me.txt
  loc_137637D:             Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "NN")))
  loc_1376385:             var_90.Text = 1
  loc_137639D:             Exit Sub
  loc_137639E:           End If
  loc_137639E:         End If
  loc_137639E:       End If
  loc_137639E:     End If
  loc_137639E:   End If
  loc_137639E: End If
  loc_137639E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5EB34
  'Data Table: 4EE6E8
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E5EAFF: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E5EB12: Set var_A8 = Me.TxtGrid
  loc_E5EB18: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E5EB20: var_AC.Visible = False
  loc_E5EB2C: Call Proc_186_56_E6FEC0()
  loc_E5EB31: Exit Sub
  loc_E5EB32: If  Then Exit Sub
  loc_E5EB32: End If
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E66E78
  'Data Table: 4EE6E8
  Dim var_8C As TextBox
  Dim var_88 As MSFlexGrid
  loc_E66E34: Set var_88 = Me.TxtGrid
  loc_E66E3A: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E66E54: If (var_8C.Visible = 0) Then
  loc_E66E6D:   Me.FGrid1.BackColorSel = CVar(CLng(global_72))
  loc_E66E75: End If
  loc_E66E75: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E4D15C
  'Data Table: 4EE6E8
  loc_E4D134: Set var_88 = Me.TopCtrl1
  loc_E4D13A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4D153: If (CStr() <> "Browse") Then
  loc_E4D156:   Call Proc_186_58_E451E4()
  loc_E4D15B: End If
  loc_E4D15B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10F3454
  'Data Table: 4EE6E8
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F3130: Set var_88 = Me.TopCtrl1
  loc_10F3136: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F317B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10F3184:   Call Form_KeyDown(Cancel, arg_10)
  loc_10F3189: End If
  loc_10F318D: Set var_88 = Me.TopCtrl1
  loc_10F3193: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F31AC: If (CStr() = "Browse") Then
  loc_10F31AF:   Exit Sub
  loc_10F31B0: End If
  loc_10F3224: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_10F323D:   Me.FGrid1.CellBackColor = CVar(CLng(global_72))
  loc_10F324D:   var_9C = "+{Tab}"
  loc_10F3253:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_10F325D:   Cancel = 0
  loc_10F3263: Else
  loc_10F32BA:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_10F32D3:     Me.FGrid1.CellBackColor = CVar(CLng(global_72))
  loc_10F32DD:     Cancel = 0
  loc_10F32E0:   End If
  loc_10F32E0: End If
  loc_10F330C: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_10F3323: Set var_88 = Me.TopCtrl1
  loc_10F3329: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10F3342: If (CStr(Cancel) = "Edit") Then
  loc_10F3345:   Exit Sub
  loc_10F3346: End If
  loc_10F3357: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10F336D:   var_EC = CLng(Me.FGrid1.Col)
  loc_10F337D:   If (var_EC = CLng(1)) Then
  loc_10F3393:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F33AB:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10F33B0:     var_11C = vbNullString
  loc_10F33BA:     Set var_B4 = Me.FGrid1
  loc_10F33C0:     LateIdCallSt
  loc_10F33DB:   Else
  loc_10F33E2:     If (var_EC = CLng(2)) Then
  loc_10F33F8:       var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10F3410:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10F3415:       var_11C = vbNullString
  loc_10F341F:       Set var_B4 = Me.FGrid1
  loc_10F3425:       LateIdCallSt
  loc_10F343D:     End If
  loc_10F343D:   End If
  loc_10F343D: End If
  loc_10F3443: If (Cancel = &HD) Then
  loc_10F344B:   global_56 = 0
  loc_10F344E: End If
  loc_10F3450: Cancel = 0
  loc_10F3453: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E5D08C
  'Data Table: 4EE6E8
  loc_E5D050: Set var_88 = Me.TopCtrl1
  loc_E5D056: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5D06F: If (CStr() = "Browse") Then
  loc_E5D072:   Exit Sub
  loc_E5D073: End If
  loc_E5D07C: Call Fgrid1_UnknownEvent_C()
  loc_E5D089: Exit Sub
  loc_E5D08A: Set arg_7000 = 0
End Sub

Private Sub Fgrid1_UnknownEvent_C '10133B8
  'Data Table: 4EE6E8
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10131A8: Set var_88 = Me.TopCtrl1
  loc_10131AE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10131C7: If (CStr() = "Browse") Then
  loc_10131CA:   Exit Sub
  loc_10131CB: End If
  loc_10131DE: var_A0 = CLng(Me.FGrid1.Col)
  loc_10131EE: If (var_A0 = CLng(1)) Then
  loc_10131F5:   Set var_C4 = Me.FGrid1
  loc_1013219:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1013246:   Set var_B4 = var_C4
  loc_1013258:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_1013280:   Set var_88 = Me.TxtGrid
  loc_1013286:   Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_101328E:   0 = var_B4.Text
  loc_10132A7:   If (Len(var_9C) <= 1) Then
  loc_10132B6:     Set var_88 = Me.TxtGrid
  loc_10132BC:     Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10132C4:     var_CA = var_B4.Text
  loc_10132D5:     Set var_B8 = Me.TxtGrid
  loc_10132DB:     Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_C4)
  loc_10132E3:     var_C4.Text = var_9C
  loc_10132F6:   End If
  loc_1013302:   Set var_88 = Me.TxtGrid
  loc_1013308:   Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_B4)
  loc_1013322:   Set var_B8 = Me.TxtGrid
  loc_1013328:   Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_C4)
  loc_1013330:   var_C4.SelStart = Len(var_B4.Text)
  loc_1013346: Else
  loc_101334D:   If (var_A0 = CLng(2)) Then
  loc_101338E:     Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_10133A0:   End If
  loc_10133A0: End If
  loc_10133AA: If (CLng(Cancel) <> &HD) Then
  loc_10133B2:   global_56 = &HFF
  loc_10133B5: End If
  loc_10133B5: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D '103098C
  'Data Table: 4EE6E8
  Dim var_8C As MSFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1030758: Set var_8C = Me.TopCtrl1
  loc_103075E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1030777: If (CStr() = "Browse") Then
  loc_103077A:   Exit Sub
  loc_103077B: End If
  loc_1030798: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_103079B:   Exit Sub
  loc_103079C: End If
  loc_10307AD: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10307CF:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_1030809:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_103082B:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_1030841:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_103084A:         Set var_114 = Me.FGrid1
  loc_1030865:       Else
  loc_1030878:         Me.FGrid1.Rows = 1
  loc_103089E:         var_9C = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, CInt(0)))) 'String
  loc_10308A6:         Set var_114 = Me.FGrid1
  loc_10308D3:         Me.FGrid1.FixedRows = 1
  loc_10308DB:       End If
  loc_1030900:       For var_120 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_120 'Integer
  loc_103090A:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_1030912:         var_E0 = CVar(CLng(0)) 'Long
  loc_103091C:         var_9C = CVar(CStr(var_86)) 'String
  loc_1030924:         Set var_8C = Me.FGrid1
  loc_103092A:         LateIdCallSt
  loc_103093B:       Next var_120 'Integer
  loc_1030940:     End If
  loc_1030943:   Else
  loc_1030964:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1030974:   End If
  loc_1030978:   Set var_8C = Me.FGrid1
  loc_1030989: End If
  loc_1030989: Exit Sub
  loc_103098A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E44950
  'Data Table: 4EE6E8
  Dim var_8C As TextBox
  loc_E44924: Call Proc_186_56_E6FEC0()
  loc_E44934: Set var_88 = Me.TxtGrid
  loc_E4493A: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E44942: var_8C.Visible = False
  loc_E4494E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12C1F90
  'Data Table: 4EE6E8
  Dim var_8C As Variant
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSFlexGrid
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim var_11C As String
  Dim Me As Recordset15
  Dim var_108 As Field20
  Dim var_118 As String
  Dim var_124 As Long
  loc_12C1942: Set var_88 = Me.TxtGrid
  loc_12C1948: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12C1956: Proc_6_74_E226B0(var_8C)
  loc_12C1962: Call Proc_186_56_E6FEC0(var_8C)
  loc_12C1976: Set var_88 = Me.TxtGrid
  loc_12C197C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12C1984: var_8C.MaxLength = 0
  loc_12C1993: var_92 = Index
  loc_12C199C: If (var_92 = 0) Then
  loc_12C19B5:   Me.FGrid.CellBackColor = CVar(CLng(global_72))
  loc_12C19D0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C19D9:   Set var_8C = Me.FGrid
  loc_12C1A0F:   Set var_108 = Me.TxtGrid
  loc_12C1A15:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12C1A1D:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12C1A45:   var_C4 = Me.FGrid.Col
  loc_12C1A5E:   If (CLng(var_C4) = CLng(1)) Then
  loc_12C1A6B:     Set global_68 = New 
  loc_12C1A7D:     Me.var_C4.CursorLocation = 3
  loc_12C1A90:     Set var_88 = Me.txt
  loc_12C1A96:     Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_118)
  loc_12C1A9E:     var_114 = var_8C.Tag
  loc_12C1AC1:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12C1AC8:     var_11C = var_110 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_12C1AE0:     Me.Open CVar(var_11C & var_118 & "'  Order by I.Name  "), CVar(MemVar_1F92044), 3
  loc_12C1B03:     CVarUnk
  loc_12C1B08:     VerifyVarObj
  loc_12C1B0E:     Set var_88 = Me.DGItem
  loc_12C1B14:     LateIdStAd
  loc_12C1B35:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, Me.TxtGrid, global_68)
  loc_12C1B3D:     1 = var_8C.Tag
  loc_12C1B45:     var_D4 = CVar(var_110) 'String
  loc_12C1B8A:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12C1B93:       Me.MoveFirst
  loc_12C1BA6:       var_A4 = "Name ="
  loc_12C1BB8:       Set var_88 = Me.TxtGrid
  loc_12C1BBE:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, var_A4, 0)
  loc_12C1BC6:       1 = var_8C.Tag
  loc_12C1BD4:       Proc_6_17_EAA2B0(var_D4, CVar(var_110), var_B4)
  loc_12C1BDC:       var_104 = -1 & var_D4 
  loc_12C1BE0:       var_118 = CStr(Me.FGrid.TextMatrix))
  loc_12C1BEA:       Me.Find var_118, var_A4, var_92
  loc_12C1C02:     End If
  loc_12C1C10:     Set var_88 = Me.TxtGrid
  loc_12C1C16:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12C1C1E:     var_8C.MaxLength = &H24
  loc_12C1C35:     Set var_8C = Me.FGPoint
  loc_12C1C4D:     Proc_6_137_1193554(Me.DGItem, global_68)
  loc_12C1C5E:   Else
  loc_12C1C65:     If (var_114 = CLng(2)) Then
  loc_12C1C76:       Set var_88 = Me.TxtGrid
  loc_12C1C7C:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 3)
  loc_12C1C84:       var_8C.MaxLength = Index
  loc_12C1C90:     End If
  loc_12C1C90:   End If
  loc_12C1C93: Else
  loc_12C1C99:   If (var_92 = 1) Then
  loc_12C1CB2:     Me.FGrid1.CellBackColor = CVar(CLng(global_72))
  loc_12C1CCD:     var_A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C1CD6:     Set var_8C = Me.FGrid1
  loc_12C1D0C:     Set var_108 = Me.TxtGrid
  loc_12C1D12:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)))
  loc_12C1D1A:     var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12C1D42:     var_C4 = Me.FGrid1.Col
  loc_12C1D5B:     If (CLng(var_C4) = CLng(1)) Then
  loc_12C1D68:       Set global_68 = New 
  loc_12C1D7A:       Me.var_C4.CursorLocation = 3
  loc_12C1D8D:       Set var_88 = Me.txt
  loc_12C1D93:       Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_118)
  loc_12C1D9B:       var_124 = var_8C.Tag
  loc_12C1DBE:       var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12C1DC5:       var_11C = var_110 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_12C1DDD:       Me.Open CVar(var_11C & var_118 & "'  Order by I.Name  "), CVar(MemVar_1F92044), 3
  loc_12C1E00:       CVarUnk
  loc_12C1E05:       VerifyVarObj
  loc_12C1E0B:       Set var_88 = Me.DGItem
  loc_12C1E11:       LateIdStAd
  loc_12C1E32:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, Me.TxtGrid, global_68)
  loc_12C1E3A:       1 = var_8C.Tag
  loc_12C1E42:       var_D4 = CVar(var_110) 'String
  loc_12C1E87:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12C1E90:         Me.MoveFirst
  loc_12C1EA3:         var_A4 = "Name ="
  loc_12C1EB5:         Set var_88 = Me.TxtGrid
  loc_12C1EBB:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, var_A4, 0)
  loc_12C1EC3:         1 = var_8C.Tag
  loc_12C1ED1:         Proc_6_17_EAA2B0(var_D4, CVar(var_110), var_B4)
  loc_12C1ED9:         var_104 = -1 & var_D4 
  loc_12C1EE7:         Me.Find CStr(Me.FGrid1.TextMatrix)), var_A4, var_8C
  loc_12C1EFF:       End If
  loc_12C1F0E:       Set var_88 = Me.TxtGrid
  loc_12C1F14:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12C1F1C:       var_8C.MaxLength = &H24
  loc_12C1F33:       Set var_8C = Me.FGPoint
  loc_12C1F4B:       Proc_6_137_1193554(Me.DGItem, global_68)
  loc_12C1F5C:     Else
  loc_12C1F63:       If (var_124 = CLng(2)) Then
  loc_12C1F75:         Set var_88 = Me.TxtGrid
  loc_12C1F7B:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 3)
  loc_12C1F83:         var_8C.MaxLength = Index
  loc_12C1F8F:       End If
  loc_12C1F8F:     End If
  loc_12C1F8F:   End If
  loc_12C1F8F: End If
  loc_12C1F8F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12784D4
  'Data Table: 4EE6E8
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_D0 As Long
  loc_1277F2B: var_86 = KeyCode
  loc_1277F34: If (var_86 = 0) Then
  loc_1277F41:   If (CLng(Shift) = &H1B) Then
  loc_1277F51:     Set var_8C = Me.TxtGrid
  loc_1277F57:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1277F5F:     var_94 = var_90.Tag
  loc_1277F71:     Set var_98 = Me.TxtGrid
  loc_1277F77:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1277F7F:     var_9C.Text = var_94
  loc_1277F96:     Set var_8C = Me.FGrid
  loc_1277FB3:     Set var_8C = Me.TxtGrid
  loc_1277FB9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1277FC1:     var_90.Visible = FGrid.DispID_8001
  loc_1277FDB:     Set var_8C = Me.TxtGrid
  loc_1277FE1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1277FE9:     var_90.MaxLength = 0
  loc_1277FF5:     Exit Sub
  loc_1277FF6:   End If
  loc_1278009:   var_B0 = CLng(Me.FGrid.Col)
  loc_1278019:   If (var_B0 = CLng(1)) Then
  loc_1278039:     Set var_9C = Me.FGPoint
  loc_1278044:     Set var_98 = Nothing
  loc_1278072:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_127809F:     If (Me.RecordCount > 0) Then
  loc_12780A6:       Set var_98 = Me.DGItem
  loc_12780C5:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12780D3:     End If
  loc_12780DD:     If (CLng(Shift) = &HD) Then
  loc_12780E6:       Call Proc_186_59_12F8678(KeyCode, var_B2, var_98, var_9C)
  loc_12780F1:       If (var_B2 = &HFF) Then
  loc_1278137:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 2)
  loc_1278147:       End If
  loc_1278147:     End If
  loc_127814A:   Else
  loc_1278151:     If (var_B0 = CLng(2)) Then
  loc_1278194:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_127819D:         Call Proc_186_59_12F8678(KeyCode, var_B2, 0, 2)
  loc_12781A8:         If (var_B2 = &HFF) Then
  loc_12781B6:           Set var_9C = Me.TxtGrid
  loc_12781DF:           Set var_90 = var_9C
  loc_12781EE:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 2, 0)
  loc_12781FE:         End If
  loc_12781FE:       End If
  loc_12781FE:     End If
  loc_12781FE:   End If
  loc_1278201: Else
  loc_1278207:   If (var_86 = 1) Then
  loc_1278214:     If (CLng(Shift) = &H1B) Then
  loc_1278224:       Set var_8C = Me.TxtGrid
  loc_127822A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 2, 0)
  loc_1278232:       0 = var_90.Tag
  loc_1278244:       Set var_98 = Me.TxtGrid
  loc_127824A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_1278252:       var_9C.Text = 0
  loc_1278269:       Set var_8C = Me.FGrid1
  loc_1278286:       Set var_8C = Me.TxtGrid
  loc_127828C:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1278294:       var_90.Visible = FGrid1.DispID_8001
  loc_12782AF:       Set var_8C = Me.TxtGrid
  loc_12782B5:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12782BD:       var_90.MaxLength = var_B0
  loc_12782C9:       Exit Sub
  loc_12782CA:     End If
  loc_12782DD:     var_D0 = CLng(Me.FGrid1.Col)
  loc_12782ED:     If (var_D0 = CLng(1)) Then
  loc_127830D:       Set var_9C = Me.FGPoint
  loc_1278318:       Set var_98 = Nothing
  loc_1278346:       Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_1278373:       If (Me.RecordCount > 0) Then
  loc_127837A:         Set var_98 = Me.DGItem
  loc_1278399:         Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12783A7:       End If
  loc_12783B1:       If (CLng(Shift) = &HD) Then
  loc_12783BA:         Call Proc_186_59_12F8678(KeyCode, var_B2, var_98, var_9C)
  loc_12783C5:         If (var_B2 = &HFF) Then
  loc_127840B:           Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 2)
  loc_127841B:         End If
  loc_127841B:       End If
  loc_127841E:     Else
  loc_1278425:       If (var_D0 = CLng(2)) Then
  loc_1278468:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1278471:           Call Proc_186_59_12F8678(KeyCode, var_B2, 0, 2)
  loc_127847C:           If (var_B2 = &HFF) Then
  loc_12784C2:             Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 2, 0)
  loc_12784D2:           End If
  loc_12784D2:         End If
  loc_12784D2:       End If
  loc_12784D2:     End If
  loc_12784D2:   End If
  loc_12784D2: End If
  loc_12784D2: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1005230
  'Data Table: 4EE6E8
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B8 As Long
  Dim arg_70FF As Double
  loc_1005027: Proc_6_58_E054C0(arg_10)
  loc_100502F: var_86 = KeyAscii
  loc_1005038: If (var_86 = 0) Then
  loc_100504E:   var_A0 = CLng(Me.FGrid.Col)
  loc_100505E:   If (var_A0 = CLng(1)) Then
  loc_100507D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_100508F:       var_A4 = "Name"
  loc_10050AA:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_10050C4:       Set var_AC = Me.FGPoint
  loc_10050DC:       Proc_6_138_106D6F8(Me.DGItem, global_68, KeyAscii, var_AC)
  loc_10050EA:     End If
  loc_10050ED:   Else
  loc_10050F4:     If (var_A0 = CLng(2)) Then
  loc_1005101:       Set var_8C = Me.TxtGrid
  loc_1005107:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_1005122:       Proc_6_42_129A86C(var_AC, arg_10, 4, 2)
  loc_100512E:     End If
  loc_100512E:   End If
  loc_1005131: Else
  loc_1005137:   If (var_86 = 1) Then
  loc_100514D:     var_B8 = CLng(Me.FGrid1.Col)
  loc_100515D:     If (var_B8 = CLng(1)) Then
  loc_100517C:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10051A9:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10, "Name")
  loc_10051C3:         Set var_AC = Me.FGPoint
  loc_10051DB:         Proc_6_138_106D6F8(Me.DGItem, global_68, KeyAscii, var_AC, 0)
  loc_10051E9:       End If
  loc_10051EC:     Else
  loc_10051F3:       If (var_B8 = CLng(2)) Then
  loc_1005200:         Set var_8C = Me.TxtGrid
  loc_1005206:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_B8)
  loc_1005221:         Proc_6_42_129A86C(var_AC, arg_10, 4, 2)
  loc_100522D:       End If
  loc_100522D:     End If
  loc_100522D:   End If
  loc_100522D: End If
  loc_100522D: Exit Sub
  loc_100522E: arg_70FF = 0
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F819D4
  'Data Table: 4EE6E8
  Dim var_86 As Integer
  Dim var_B0 As Long
  loc_F8187C: On Error Goto loc_F819CB
  loc_F81882: var_86 = KeyCode
  loc_F8188B: If (var_86 = 0) Then
  loc_F818B1:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_F818D7:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F818E8:       Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F81917:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F81926:     End If
  loc_F81926:   End If
  loc_F81929: Else
  loc_F8192F:   If (var_86 = 1) Then
  loc_F81945:     var_B0 = CLng(Me.FGrid1.Col)
  loc_F81955:     If (var_B0 = CLng(1)) Then
  loc_F8197B:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F8198C:         Call TxtGrid_KeyDown(KeyCode, global_80)
  loc_F819BB:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name", &HFF)
  loc_F819CA:       End If
  loc_F819CA:     End If
  loc_F819CA:   End If
  loc_F819CA: End If
  loc_F819CA: Exit Sub
  loc_F819CB: ' Referenced from: F8187C
  loc_F819CB: Proc_6_60_E62BC4(0, var_B0, &HFF)
  loc_F819D0: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E54284
  'Data Table: 4EE6E8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E54247: var_86 = Cancel
  loc_E54250: If (var_86 = 0) Then
  loc_E54259:   Call Proc_186_59_12F8678(Cancel, var_88)
  loc_E54262:   arg_10 = Not(var_88)
  loc_E54268: Else
  loc_E5426E:   If (var_86 = 1) Then
  loc_E54277:     Call Proc_186_59_12F8678(Cancel, var_88)
  loc_E54280:     arg_10 = Not(var_88)
  loc_E54283:   End If
  loc_E54283: End If
  loc_E54283: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FFDD14
  'Data Table: 4EE6E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_F0 As Variant
  Dim var_120 As Variant
  loc_FFDB2B: Me.DGItem.Visible = False
  loc_FFDB4A: If (Me.RecordCount > 0) Then
  loc_FFDB87:   Set var_B4 = Me.TxtGrid
  loc_FFDB8D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FFDB95:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FFDBCE:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FFDBE4:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFDBEC:     var_F0 = CVar(CLng(1)) 'Long
  loc_FFDC1F:     var_120 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FFDC27:     Set var_B8 = Me.FGrid
  loc_FFDC2D:     LateIdCallSt
  loc_FFDC5C:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFDC64:     var_F0 = CVar(CLng(3)) 'Long
  loc_FFDC86:     var_B0 = Me.Fields.Item("Code")
  loc_FFDC97:     var_120 = CVar(CStr(var_B0.Value)) 'String
  loc_FFDC9F:     Set var_B8 = Me.FGrid
  loc_FFDCA5:     LateIdCallSt
  loc_FFDCC1:   End If
  loc_FFDCC1: End If
  loc_FFDCCD: Set var_A8 = Me.TxtGrid
  loc_FFDCD3: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_132, var_B8, var_120, var_F0)
  loc_FFDCDB: var_A4 = var_B0.Visible
  loc_FFDCED: If (var_132 = &HFF) Then
  loc_FFDCF9:   Set var_A8 = Me.TxtGrid
  loc_FFDCFF:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_120)
  loc_FFDD07:   var_B0.SetFocus
  loc_FFDD13: End If
  loc_FFDD13: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F0B4
  'Data Table: 4EE6E8
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E5F07F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F092: Set var_A8 = Me.TxtGrid
  loc_E5F098: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F0A0: var_AC.Visible = False
  loc_E5F0AC: Call Proc_186_56_E6FEC0()
  loc_E5F0B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E65BE0
  'Data Table: 4EE6E8
  Dim var_8C As TextBox
  Dim var_88 As MSFlexGrid
  loc_E65B9C: Set var_88 = Me.TxtGrid
  loc_E65BA2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E65BBC: If (var_8C.Visible = 0) Then
  loc_E65BD5:   Me.FGrid.BackColorSel = CVar(CLng(global_72))
  loc_E65BDD: End If
  loc_E65BDD: Exit Sub
  loc_E65BDE: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_9 'E4B3B4
  'Data Table: 4EE6E8
  loc_E4B38C: Set var_88 = Me.TopCtrl1
  loc_E4B392: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4B3AB: If (CStr() <> "Browse") Then
  loc_E4B3AE:   Call Proc_186_58_E451E4()
  loc_E4B3B3: End If
  loc_E4B3B3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F29F8
  'Data Table: 4EE6E8
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F26D4: Set var_88 = Me.TopCtrl1
  loc_10F26DA: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F271F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10F2728:   Call Form_KeyDown(Cancel, arg_10)
  loc_10F272D: End If
  loc_10F2731: Set var_88 = Me.TopCtrl1
  loc_10F2737: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F2750: If (CStr() = "Browse") Then
  loc_10F2753:   Exit Sub
  loc_10F2754: End If
  loc_10F27C8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F27E1:   Me.FGrid.CellBackColor = CVar(CLng(global_72))
  loc_10F27F1:   var_9C = "+{Tab}"
  loc_10F27F7:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10F2801:   Cancel = 0
  loc_10F2807: Else
  loc_10F285E:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F2877:     Me.FGrid.CellBackColor = CVar(CLng(global_72))
  loc_10F2881:     Cancel = 0
  loc_10F2884:   End If
  loc_10F2884: End If
  loc_10F28B0: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F28C7: Set var_88 = Me.TopCtrl1
  loc_10F28CD: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10F28E6: If (CStr(Cancel) = "Edit") Then
  loc_10F28E9:   Exit Sub
  loc_10F28EA: End If
  loc_10F28FB: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10F2911:   var_EC = CLng(Me.FGrid.Col)
  loc_10F2921:   If (var_EC = CLng(1)) Then
  loc_10F2937:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F294F:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F2954:     var_11C = vbNullString
  loc_10F295E:     Set var_B4 = Me.FGrid
  loc_10F2964:     LateIdCallSt
  loc_10F297F:   Else
  loc_10F2986:     If (var_EC = CLng(2)) Then
  loc_10F299C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F29B4:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F29B9:       var_11C = vbNullString
  loc_10F29C3:       Set var_B4 = Me.FGrid
  loc_10F29C9:       LateIdCallSt
  loc_10F29E1:     End If
  loc_10F29E1:   End If
  loc_10F29E1: End If
  loc_10F29E7: If (Cancel = &HD) Then
  loc_10F29EF:   global_56 = 0
  loc_10F29F2: End If
  loc_10F29F4: Cancel = 0
  loc_10F29F7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5D108
  'Data Table: 4EE6E8
  loc_E5D0CC: Set var_88 = Me.TopCtrl1
  loc_E5D0D2: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5D0EB: If (CStr() = "Browse") Then
  loc_E5D0EE:   Exit Sub
  loc_E5D0EF: End If
  loc_E5D0F8: Call FGrid_UnknownEvent_C()
  loc_E5D102: global_56 = 0
  loc_E5D105: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1013D48
  'Data Table: 4EE6E8
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1013B38: Set var_88 = Me.TopCtrl1
  loc_1013B3E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1013B57: If (CStr() = "Browse") Then
  loc_1013B5A:   Exit Sub
  loc_1013B5B: End If
  loc_1013B6E: var_A0 = CLng(Me.FGrid.Col)
  loc_1013B7E: If (var_A0 = CLng(1)) Then
  loc_1013B85:   Set var_C4 = Me.FGrid
  loc_1013BA9:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1013BD6:   Set var_B4 = var_C4
  loc_1013BE8:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1013C10:   Set var_88 = Me.TxtGrid
  loc_1013C16:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1013C1E:   0 = var_B4.Text
  loc_1013C37:   If (Len(var_9C) <= 1) Then
  loc_1013C46:     Set var_88 = Me.TxtGrid
  loc_1013C4C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1013C54:     var_CA = var_B4.Text
  loc_1013C65:     Set var_B8 = Me.TxtGrid
  loc_1013C6B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1013C73:     var_C4.Text = var_9C
  loc_1013C86:   End If
  loc_1013C92:   Set var_88 = Me.TxtGrid
  loc_1013C98:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1013CB2:   Set var_B8 = Me.TxtGrid
  loc_1013CB8:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1013CC0:   var_C4.SelStart = Len(var_B4.Text)
  loc_1013CD6: Else
  loc_1013CDD:   If (var_A0 = CLng(2)) Then
  loc_1013D1E:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1013D30:   End If
  loc_1013D30: End If
  loc_1013D3A: If (CLng(Cancel) <> &HD) Then
  loc_1013D42:   global_56 = &HFF
  loc_1013D45: End If
  loc_1013D45: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1030704
  'Data Table: 4EE6E8
  Dim var_8C As MSFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_10304D0: Set var_8C = Me.TopCtrl1
  loc_10304D6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10304EF: If (CStr() = "Browse") Then
  loc_10304F2:   Exit Sub
  loc_10304F3: End If
  loc_1030510: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1030513:   Exit Sub
  loc_1030514: End If
  loc_1030525: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1030547:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1030581:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10305A3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10305B9:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10305C2:         Set var_114 = Me.FGrid
  loc_10305DD:       Else
  loc_10305F0:         Me.FGrid.Rows = 1
  loc_1030616:         var_9C = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_103061E:         Set var_114 = Me.FGrid
  loc_103064B:         Me.FGrid.FixedRows = 1
  loc_1030653:       End If
  loc_1030678:       For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_1030682:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_103068A:         var_E0 = CVar(CLng(0)) 'Long
  loc_1030694:         var_9C = CVar(CStr(var_86)) 'String
  loc_103069C:         Set var_8C = Me.FGrid
  loc_10306A2:         LateIdCallSt
  loc_10306B3:       Next var_120 'Integer
  loc_10306B8:     End If
  loc_10306BB:   Else
  loc_10306DC:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10306EC:   End If
  loc_10306F0:   Set var_8C = Me.FGrid
  loc_1030701: End If
  loc_1030701: Exit Sub
  loc_1030702: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44FF4
  'Data Table: 4EE6E8
  Dim var_8C As TextBox
  loc_E44FC8: Call Proc_186_56_E6FEC0()
  loc_E44FD8: Set var_88 = Me.TxtGrid
  loc_E44FDE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44FE6: var_8C.Visible = False
  loc_E44FF2: Exit Sub
End Sub

Private Sub Form_Load() '12039B4
  'Data Table: 4EE6E8
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_D8 As DataGrid
  Dim unk_4EE6EF As Connection15
  loc_1203508: On Error Goto loc_120396D
  loc_120351A: Me.LblUser.Left = CDbl(13500)
  loc_1203531: Me.LblUser.Top = CDbl(7800)
  loc_1203548: Me.LblLDt.Top = CDbl(8160)
  loc_120355F: Me.LblLDt.Left = CDbl(13500)
  loc_120356E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1203586: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12035A1: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12035B7: Me.framWeek.BackColor = CLng(MemVar_1F921B0)
  loc_12035C9: Set var_8C = Me.TopCtrl1
  loc_12035CF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_12035DD: Call 0.Method_arg_50 (var_B0)
  loc_12035ED: Set var_8C = Me.TopCtrl1
  loc_12035F3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_12035FE: Call Proc_186_50_F9A840()
  loc_1203603: Call Proc_186_51_F9AD74()
  loc_1203612: Set global_60 = New 
  loc_1203624: Me.TopCtrl1.CursorLocation = 3
  loc_120364E: var_C0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String
  loc_1203658: Me.Open var_C0, CVar(MemVar_1F92044), 2
  loc_120366C: CVarUnk
  loc_1203671: VerifyVarObj
  loc_1203677: Set var_8C = Me.DGRest
  loc_120367D: LateIdStAd
  loc_120369F: Call 0.Method_Form_Load0 (CInt(8), var_C4, var_C8, Me.txt)
  loc_12036A7: global_60 = var_C4.Left
  loc_12036BE: Me.DGRest.Left = CVar(var_C8)
  loc_12036DA: Set var_CC = Me.txt
  loc_12036E0: Call 0.Method_Form_Load0 (CInt(8), var_D0, var_D4)
  loc_12036E8: 3 = var_D0.Height
  loc_12036FB: Set var_8C = Me.txt
  loc_1203701: Call 0.Method_Form_Load0 (CInt(8), var_C4)
  loc_1203709: var_C8 = var_C4.Top
  loc_1203719: var_9C = CVar(((var_C8 + var_D4) + CDbl(&H1E))) 'Single
  loc_1203722: Set var_D8 = Me.DGRest
  loc_1203728: var_D8.Top = CVar(var_C8)
  loc_1203744: Set global_68 = New 
  loc_1203756: Me.var_D8.CursorLocation = 3
  loc_1203779: var_B0 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1203780: var_C0 = CVar(var_B0 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by I.Name  ") 'String
  loc_120379E: CVarUnk
  loc_12037A3: VerifyVarObj
  loc_12037A9: Set var_8C = Me.DGItem
  loc_12037AF: LateIdStAd
  loc_12037D9: Me.DGItem.CursorLocation = 3
  loc_1203803: var_C0 = CVar("Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_120380D: r_C0, CVar(MemVar_1F92044), 3 var_C0, CVar(MemVar_1F92044), 2
  loc_1203821: CVarUnk
  loc_1203826: VerifyVarObj
  loc_120382C: Set var_8C = Me.DGScheme
  loc_1203832: LateIdStAd
  loc_120384E: Set var_8C = Me.txt
  loc_1203854: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8, var_8C, New, 3)
  loc_120385C: -1 = var_C4.Left
  loc_1203873: Me.DGScheme.Left = CVar(var_C8)
  loc_120388F: Set var_CC = Me.txt
  loc_1203895: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4, var_8C)
  loc_120389D: global_68 = var_D0.Height
  loc_12038B6: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8)
  loc_12038BE: 1 = var_C4.Top
  loc_12038CE: var_9C = CVar(((var_C8 + var_D4) + CDbl(&H1E))) 'Single
  loc_12038DD: Me.DGScheme.Top = CVar(var_C8)
  loc_1203903: var_B0 = "SELECT NH.Code, NH.RestCode, D.Name as RestName, NH.AppDate, NH.EndDate, NH.Active, NH.FromTime, Nh.ToTime, SM.Name As SchemeName, NH.SchemeCode, NH.Days As DayCode, NH.Site_Code,NH.LOGSITE_CODE  FROM (((SchemeItemDetail NH Left Join ItemMast IM on NH.ItemCode = IM.code And NH.RestCode = IM.Restcode) Left join Depart D On D.Code=NH.RestCode) Left Join SchemeMast SM On SM.Code=NH.SchemeCode) WHERE NH.SNo=1 And (NH.LOGSITE_CODE='" & MemVar_1F92078
  loc_1203913: unk_4EE6EF.Execute var_B0 & "' or NH.LOGSITE_CODE='HO')", var_C0, -1
  loc_120394E: var_B0 = "INI"
  loc_120395C: Call Proc_186_52_F9B460(Proc_5_1_100CB50(var_B0, Me, Me.txt), Me)
  loc_1203967: Call Proc_186_55_153A2B8(-1)
  loc_120396C: Exit Sub
  loc_120396D: ' Referenced from: 1203508
  loc_1203975: Set var_8C = Err()
  loc_120397B: Call 0.Method_arg_2C (var_B0)
  loc_120399C: MsgBox(CVar(var_B0), &H40, "Information", var_100, var_120)
  loc_12039AF: Exit Sub
  loc_12039B0: Exit Sub
End Sub

Private Sub Form_Resize() 'ED36B8
  'Data Table: 4EE6E8
  Dim var_8C As Label
  loc_ED3616: Call 0.Method_arg_50 (var_88)
  loc_ED3628: Me.LblFormCaption.Caption = var_88
  loc_ED3641: Me.LblFormCaption.Left = CDbl(0)
  loc_ED364D: Set var_A0 = Me.TopCtrl1
  loc_ED3653: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3660: Set var_8C = Me.TopCtrl1
  loc_ED3666: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3680: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED369B: Call 0.Method_arg_100 (var_B8)
  loc_ED36AD: Me.LblFormCaption.Width = var_B8
  loc_ED36B5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E532C4
  'Data Table: 4EE6E8
  loc_E53297: Set global_68 = Nothing
  loc_E532A9: Set global_60 = Nothing
  loc_E532BB: Set global_52 = Nothing
  loc_E532C2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AD6C
  'Data Table: 4EE6E8
  loc_E8AD08: On Error Goto loc_E8AD28
  loc_E8AD1F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8AD27: Exit Sub
  loc_E8AD28: ' Referenced from: E8AD08
  loc_E8AD30: Set var_88 = Err()
  loc_E8AD36: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AD57: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AD6A: Exit Sub
  loc_E8AD6B: Exit Sub
End Sub

Private Sub DGScheme_UnknownEvent_9 'F48AE4
  'Data Table: 4EE6E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F489DB: Me.DGScheme.Visible = False
  loc_F489FA: If (Me.RecordCount > 0) Then
  loc_F48A39:   Set var_B4 = Me.txt
  loc_F48A3F:   Call 0.Method_DGScheme_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48A47:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F48A7A:   var_B0 = Me.Fields.Item("Name")
  loc_F48A99:   Set var_B4 = Me.txt
  loc_F48A9F:   Call 0.Method_DGScheme_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48AA7:   var_B8.Text = CStr(var_B0.Value)
  loc_F48ABD: End If
  loc_F48AC8: Set var_A8 = Me.txt
  loc_F48ACE: Call 0.Method_DGScheme_UnknownEvent_90 (CInt(0))
  loc_F48AD6: var_B0.SetFocus
  loc_F48AE2: Exit Sub
End Sub

Private Sub DGScheme_UnknownEvent_1F 'E7063C
  'Data Table: 4EE6E8
  loc_E705FA: Proc_6_153_E91194(Me.DGScheme, arg_14)
  loc_E70611: Set var_8C = Me.FGPoint
  loc_E7062D: Proc_6_138_106D6F8(Me.DGScheme, global_64, CInt(0))
  loc_E7063B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F03370
  'Data Table: 4EE6E8
  Dim var_A0 As TextBox
  Dim var_88 As Label
  loc_F03290: On Error Goto loc_F03369
  loc_F03297: Set var_88 = Me.TopCtrl1
  loc_F0329D: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F032B6: If (CStr() = "Add") Then
  loc_F032B9:   Call Proc_186_54_F584B4()
  loc_F032C9:   Set var_88 = Me.txt
  loc_F032CF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8))
  loc_F032D7:   var_A0.SetFocus
  loc_F032E6: Else
  loc_F03309:   Call Proc_186_52_F9B460(Proc_5_1_100CB50("ADD", Me), global_52)
  loc_F03314:   Call Proc_186_53_FCD600(var_A0)
  loc_F03324:   Set var_88 = Me.txt
  loc_F0332A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F03332:   var_A0.SetFocus
  loc_F0333E: End If
  loc_F0334B: Me.LblUser.Caption = vbNullString
  loc_F03360: Me.LblLDt.Caption = vbNullString
  loc_F03368: Exit Sub
  loc_F03369: ' Referenced from: F03290
  loc_F03369: Proc_6_60_E62BC4(var_A0)
  loc_F0336E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EFC2F4
  'Data Table: 4EE6E8
  Dim var_118 As TextBox
  loc_EFC228: On Error Goto loc_EFC2ED
  loc_EFC262: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EFC288:   Call Proc_186_52_F9B460(Proc_5_1_100CB50("INI", Me))
  loc_EFC293:   Call Proc_186_55_153A2B8(global_52)
  loc_EFC29C:   Set var_110 = Me.FGrid
  loc_EFC2B8:   Set var_110 = Me.TxtGrid
  loc_EFC2BE:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (0, var_118)
  loc_EFC2C6:   var_118.Visible = False
  loc_EFC2D5: Else
  loc_EFC2DB:   Call 0.Method_arg_1E8 (var_110)
  loc_EFC2E3:   Call var_110.SetFocus
  loc_EFC2EC: End If
  loc_EFC2EC: Exit Sub
  loc_EFC2ED: ' Referenced from: EFC228
  loc_EFC2ED: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_EFC2F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1197E58
  'Data Table: 4EE6E8
  Dim unk_4EE6EF As Connection15
  Dim Me As Recordset15
  Dim var_AC As Fields15
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_144 As String
  loc_1197A88: On Error Goto loc_1197E0A
  loc_1197A99: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1197A9C:   Exit Sub
  loc_1197A9D: End If
  loc_1197AA6: unk_4EE6EF.BeginTrans var_98
  loc_1197ABC: var_94 = Me.Bookmark 'Variant
  loc_1197B12: var_120 = "Delete From SchemeItemDetail Where Code = '" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1197B29: unk_4EE6EF.Execute CStr(var_120 & "' or LOGSITE_CODE='HO')"), var_164, -1
  loc_1197B91: var_100 = "Delete from FreeItemDetail WHERE Code ='" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" 
  loc_1197B9B: var_120 = var_100 & CVar(MemVar_1F92078) 
  loc_1197BB2: unk_4EE6EF.Execute CStr(var_120 & "' or LOGSITE_CODE='HO')"), var_164, -1
  loc_1197C01: var_1A0 = 0
  loc_1197C14: var_198 = 0
  loc_1197C1F: var_194 = 0
  loc_1197C32: var_18C = 0
  loc_1197C3D: var_188 = 0
  loc_1197C50: var_180 = 0
  loc_1197C99: Proc_154_5_10E33A4(MemVar_1F92044, "SchemeItemDetail", "Code", 2, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1197CF0: var_1A0 = 0
  loc_1197D03: var_198 = 0
  loc_1197D0E: var_194 = 0
  loc_1197D7F: var_144 = "FreeItemDetail"
  loc_1197D88: Proc_154_5_10E33A4(MemVar_1F92044, var_144, "Code", 2, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1197DB6: unk_4EE6EF.CommitTrans
  loc_1197DC6: Me.Requery -1
  loc_1197DCB: Call Proc_186_55_153A2B8(0, 0, 0, 0)
  loc_1197DEC: Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1197DF8: Set var_AC = Me.FGrid
  loc_1197E09: Exit Sub
  loc_1197E0A: ' Referenced from: 1197A88
  loc_1197E10: unk_4EE6EF.RollbackTrans
  loc_1197E1D: Set var_AC = Err()
  loc_1197E23: Call 0.Method_arg_2C (var_144, FGrid.DispID_8001, 0)
  loc_1197E44: MsgBox(CVar(var_144), &H30, " Deletion Error ", var_100, var_120)
  loc_1197E57: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'ED83A0
  'Data Table: 4EE6E8
  Dim var_9C As TextBox
  Dim var_94 As Label
  loc_ED82F0: On Error Goto loc_ED839A
  loc_ED8301: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_ED8304:   Exit Sub
  loc_ED8305: End If
  loc_ED8328: Call Proc_186_52_F9B460(Proc_5_1_100CB50("EDIT", Me))
  loc_ED8337: Set var_94 = Me.FGrid
  loc_ED8355: Set var_94 = Me.txt
  loc_ED835B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_9C, &HFF)
  loc_ED8363: var_9C.Enabled = FGrid.DispID_8001
  loc_ED837C: Me.LblUser.Caption = vbNullString
  loc_ED8391: Me.LblLDt.Caption = vbNullString
  loc_ED8399: Exit Sub
  loc_ED839A: ' Referenced from: ED82F0
  loc_ED839A: Proc_6_60_E62BC4(global_52)
  loc_ED839F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19440
  'Data Table: 4EE6E8
  loc_E19435: Me.Global.Unload Me
  loc_E1943D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F287D8
  'Data Table: 4EE6E8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim MemVar_AE6800E6 As Integer
  loc_F286D8: On Error Goto loc_F28770
  loc_F286E4: var_88 = Me.RecordCount
  loc_F286F2: If (var_88 <= 0) Then
  loc_F286FB:   var_B8 = "Information"
  loc_F28716:   MsgBox("No Records Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28726:   Exit Sub
  loc_F28727: End If
  loc_F2872E: var_10C = "SELECT SD.Code as SearchCode ,IM.Name As ItemName, D.Name as RestName ,Cast(SD.AppDate as Varchar(11)) as StartDate,Cast(SD.EndDate as Varchar(11)) as EndDate , SD.Active , SD.FromTime , SD.ToTime , SM.Name As SchemeName FROM (((SchemeItemDetail SD Left Join ItemMast IM on SD.ItemCode = IM.code And SD.RestCode = IM.RestCode) Left Join SchemeMast SM On SM.Code=SD.SchemeCode) Left Join Depart D On D.Code=SD.RestCode)  WHERE (SD.LOGSITE_CODE='" & MemVar_1F92078
  loc_F28735: MemVar_1F920E4 = var_10C & "' or SD.LOGSITE_CODE='HO') "
  loc_F28742: MemVar_1F92120 = Me
  loc_F28749: var_10C = "2000,2000,1200,1200,700,1050,800,2100"
  loc_F2874F: Proc_6_126_F1BCC0(var_10C)
  loc_F2876A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2876F: Exit Sub
  loc_F28770: ' Referenced from: F286D8
  loc_F28778: Set var_110 = Err()
  loc_F2877E: Call 0.Method_arg_1C (var_88)
  loc_F2878F: If (var_88 <> 0) Then
  loc_F2879A:   Set var_110 = Err()
  loc_F287A0:   Call 0.Method_arg_2C (var_10C)
  loc_F287C1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F287D4: End If
  loc_F287D4: Exit Sub
  loc_F287D5: MemVar_AE6800E6 = MemVar_1F920E4
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33858
  'Data Table: 4EE6E8
  loc_E33848: Proc_5_0_110649C(&HFF, Me)
  loc_E33850: Call Proc_186_55_153A2B8(global_52)
  loc_E33855: Exit Sub
  loc_E33856: 1 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33C78
  'Data Table: 4EE6E8
  loc_E33C68: Proc_5_0_110649C(&HFF, Me)
  loc_E33C70: Call Proc_186_55_153A2B8(global_52)
  loc_E33C75: Exit Sub
  loc_E33C76: 4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33BB8
  'Data Table: 4EE6E8
  loc_E33BA8: Proc_5_0_110649C(&HFF, Me)
  loc_E33BB0: Call Proc_186_55_153A2B8(global_52)
  loc_E33BB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33978
  'Data Table: 4EE6E8
  loc_E33968: Proc_5_0_110649C(&HFF, Me)
  loc_E33970: Call Proc_186_55_153A2B8(global_52)
  loc_E33975: Exit Sub
  loc_E33976: 2 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E44AE8
  'Data Table: 4EE6E8
  Dim Me As Variant
  loc_E44ABF: Me.Requery -1
  loc_E44ACF: Me.Requery -1
  loc_E44ADF: Me.Requery -1
  loc_E44AE4: Exit Sub
  loc_E44AE5: MeFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '165A334
  'Data Table: 4EE6E8
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_160 As String
  Dim var_D8 As Variant
  Dim var_A0 As Long
  Dim unk_4EE6EF As Connection15
  Dim var_198 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim Me As Recordset15
  Dim var_6CC As Double
  Dim var_1B8 As TextBox
  Dim var_1E4 As Variant
  Dim var_230 As TextBox
  Dim var_26C As TextBox
  Dim var_2A8 As TextBox
  Dim var_2F4 As TextBox
  Dim var_340 As TextBox
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_3D8 As Variant
  Dim var_428 As Variant
  Dim var_6D4 As Double
  Dim var_4B8 As TextBox
  Dim var_1A4 As String
  Dim var_1B0 As String
  Dim var_1CC As Variant
  Dim var_244 As Variant
  Dim var_318 As Variant
  Dim var_52C As Variant
  Dim var_65C As Variant
  Dim var_1E0 As MSFlexGrid
  Dim var_1A8 As String
  Dim var_1BC As String
  Dim var_1E8 As String
  Dim var_4BC As String
  Dim var_6DC As String
  Dim var_208 As Variant
  loc_1658DBC: On Error Goto loc_165A2E2
  loc_1658DBF: Call Proc_186_56_E6FEC0()
  loc_1658DC8: var_86 = CByte(0) 'Byte
  loc_1658DF4: For var_B8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_B8 'Byte
  loc_1658DFE:   var_9C = CByte(1) 'Byte
  loc_1658E07:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1658E11:   var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1658E2B:   var_FC = CStr(Me.FGrid.TextMatrix))
  loc_1658E38:   var_10C = CVar(CLng(var_9A)) 'Long
  loc_1658E47:   var_12C = CVar(CLng((CInt(var_9C) + 1))) 'Long
  loc_1658E80:   If Not((var_12C And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1658EAB:     For var_158 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 2)): var_9C = var_158 'Byte
  loc_1658EB6:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1658EC0:       var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1658EEB:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1658F34:         MsgBox(CVar("Value Required In " & Me.frSchemeItem.Caption & " Row " & CStr(var_9A)), &H40, "Data Missing!", var_170, var_180)
  loc_1658F52:         Exit Sub
  loc_1658F53:       End If
  loc_1658F56:     Next var_158 'Byte
  loc_1658F5C:   End If
  loc_1658F5F: Next var_B8 'Byte
  loc_1658F8D: For var_184 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_9A = var_184 'Byte
  loc_1658F97:   var_9C = CByte(1) 'Byte
  loc_1658FA0:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1658FAA:   var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1658FC4:   var_FC = CStr(Me.FGrid1.TextMatrix))
  loc_1658FD1:   var_10C = CVar(CLng(var_9A)) 'Long
  loc_1658FE0:   var_12C = CVar(CLng((CInt(var_9C) + 1))) 'Long
  loc_1658FE9:   Set var_140 = Me.FGrid1
  loc_1659019:   If Not((var_12C And (CStr(var_140.TextMatrix)) = vbNullString))) Then
  loc_1659044:     For var_188 = CByte(1) To CByte((CLng(Me.FGrid1.Cols) - 2)): var_9C = var_188 'Byte
  loc_165904F:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659059:       var_E8 = CVar(CLng(var_9C)) 'Long
  loc_1659084:       If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_16590CD:         MsgBox(CVar("Value Required In " & Me.FrFreeItem.Caption & " Row " & CStr(var_9A)), &H40, "Data Missing!", var_170, var_180)
  loc_16590EB:         Exit Sub
  loc_16590EC:       End If
  loc_16590EF:     Next var_188 'Byte
  loc_16590F5:   End If
  loc_16590F8: Next var_184 'Byte
  loc_1659101: Call Proc_186_60_E6FC6C(var_18A)
  loc_165910C: If (var_18A = 0) Then
  loc_165911A:   var_150 = "Days Required"
  loc_165912A:   var_B4 = "Choose atleast One Day for Scheme !"
  loc_1659130:   MsgBox(var_B4, &H40, var_150, var_170, var_180)
  loc_1659140:   Exit Sub
  loc_1659144: Else
  loc_165914F:   For var_18E = CByte(1) To CByte(7):   var_9A = var_18E 'Byte
  loc_1659165:     Set var_A4 = Me.chkday
  loc_165916B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_9A), var_140)
  loc_1659189:     If (CLng(var_140.Value) = 1) Then
  loc_165919B:       var_A0 = ((var_A0 * &HA) + CLng(var_9A))
  loc_165919E:     End If
  loc_16591A1:   Next var_18E 'Byte
  loc_16591A7: End If
  loc_16591B0: unk_4EE6EF.BeginTrans var_194
  loc_16591B9: var_86 = CByte(1) 'Byte
  loc_16591C1: Set var_A4 = Me.TopCtrl1
  loc_16591C7: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16591E0: If (CStr() = "Add") Then
  loc_16591E9:   var_D8 = 0
  loc_1659206:   var_FC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From SchemeItemDetail Where SITE_CODE='" & MemVar_1F92070
  loc_1659216:   unk_4EE6EF.Execute CStr() & "'", var_B4, -1
  loc_165921E:   var_A4 = var_A4.Fields
  loc_1659226:   var_D8 = var_140.Item(var_140)
  loc_165922E:   var_198 = var_198.Value
  loc_1659267:   var_170 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1659295:   var_180 = (1 + Format(CStr(var_150), "0000"))
  loc_16592A0:   global_84 = CStr(var_180)
  loc_16592B5: Else
  loc_16592E9:   global_84 = CStr(Me.Fields.Item("Code").Value)
  loc_16592FA: End If
  loc_16592FE: Set var_A4 = Me.TopCtrl1
  loc_1659304: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_165931D: If (CStr(var_170) = "Add") Then
  loc_1659348:   For var_19C = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_19C 'Byte
  loc_1659353:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165935B:     var_E8 = CVar(CLng(3)) 'Long
  loc_1659386:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_165938E:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659396:       var_E8 = CVar(CLng(0)) 'Long
  loc_16593B8:       var_6CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16593C9:       Set var_140 = Me.txt
  loc_16593CF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A8, var_6CC, var_E8)
  loc_16593D7:       var_C8 = var_198.Tag
  loc_16593EA:       Set var_1B4 = Me.txt
  loc_16593F0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B8, var_1BC, var_E8)
  loc_16593F8:       var_C8 = var_1B8.Text
  loc_1659406:       Proc_6_7_F25D88(var_170, CVar(var_1BC))
  loc_1659419:       Set var_1E0 = Me.txt
  loc_165941F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8)
  loc_1659427:       CByte(1) = var_1E4.Text
  loc_1659435:       Proc_6_7_F25D88(var_208, CVar(var_1E8))
  loc_1659448:       Set var_22C = Me.txt
  loc_165944E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_1659469:       Set var_268 = Me.txt
  loc_165946F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_26C)
  loc_165948A:       Set var_2A4 = Me.txt
  loc_1659490:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A8)
  loc_16594AB:       Set var_2F0 = Me.txt
  loc_16594B1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2F4)
  loc_16594CC:       Set var_33C = Me.txt
  loc_16594D2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_340)
  loc_16594E4:       var_394 = CVar(CLng(var_9A)) 'Long
  loc_16594EC:       var_3B4 = CVar(CLng(3)) 'Long
  loc_16594FB:       var_3D8 = Me.FGrid.TextMatrix)
  loc_165950C:       var_428 = CVar(CLng(var_9A)) 'Long
  loc_1659536:       var_6D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1659547:       Set var_4B4 = Me.txt
  loc_165954D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4B8, var_4BC, var_6D4, CVar(CLng(2)))
  loc_1659555:       var_428 = var_4B8.Text
  loc_1659592:       Proc_6_7_F25D88(var_62C, Date, var_3D8)
  loc_16595AB:       var_FC = "Insert into SchemeItemDetail(Code,Sno,restCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,ItemCode,Qty,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_16595C8:       var_1A4 = var_FC & global_84 & "'," & CStr(var_6CC)
  loc_16595D6:       var_1B0 = var_1A4 & ",'" & var_1A8
  loc_16595E3:       var_1CC = CVar(var_1B0 & "',") & var_170 
  loc_1659603:       var_244 = CVar(var_230.Text) 'String
  loc_165963F:       var_318 = var_1CC & "," & var_208 & ",'" & var_244 & ":" & CVar(var_26C.Text) & "','" & CVar(var_2A8.Text) & ":" & CVar(var_2F4.Text) 
  loc_165968A:       var_52C = var_318 & "','" & CVar(var_340.Tag) & "','" & CVar(CStr(var_3D8)) & "'," & CVar(var_6D4) & ", '" & IIf((var_4BC = "Yes"), "Y", "N") 
  loc_16596DD:       var_65C = var_52C & "'," & CVar(var_A0) & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_62C & ",'A','" 
  loc_16596FE:       unk_4EE6EF.Execute CStr(var_65C & CVar(MemVar_1F92078) & "')"), var_6C0, -1
  loc_16597B6:     End If
  loc_16597B9:   Next var_19C 'Byte
  loc_16597E7:   For var_6D8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_9A = var_6D8 'Byte
  loc_16597F2:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_16597FA:     var_E8 = CVar(CLng(3)) 'Long
  loc_1659825:     If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_165982D:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659844:       var_B4 = Me.FGrid1.TextMatrix)
  loc_1659857:       var_6CC = Val(CStr(var_B4))
  loc_1659868:       Set var_140 = Me.txt
  loc_165986E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A4, var_6CC, CVar(CLng(0)))
  loc_1659876:       var_C8 = var_198.Tag
  loc_1659889:       Set var_1B4 = Me.txt
  loc_165988F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_1B0)
  loc_1659897:       var_E8 = var_1B8.Tag
  loc_16598A1:       var_10C = CVar(CLng(var_9A)) 'Long
  loc_16598A9:       var_12C = CVar(CLng(3)) 'Long
  loc_16598DA:       Set var_1E4 = Me.FGrid1
  loc_16598E0:       var_170 = var_1E4.TextMatrix)
  loc_16598F3:       var_6D4 = Val(CStr(var_170))
  loc_1659904:       Proc_6_7_F25D88(var_1CC, Date, var_6D4, CVar(CLng(2)), CVar(CLng(var_9A)))
  loc_1659920:       var_FC = "Insert Into FreeItemDetail (Code,Sno,restcode,schemecode,FreeItem,FreeQty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_165993A:       var_1A8 = var_FC & "'," & CStr(var_6CC) & ",'"
  loc_1659948:       var_1BC = var_1A8 & var_1A4 & "','"
  loc_165994F:       var_1E8 = var_1BC & var_1B0
  loc_1659974:       var_4BC = var_1E8 & "','" & CStr(Me.FGrid1.TextMatrix)) & "'," & CStr(var_6D4)
  loc_16599A6:       var_208 = CVar(var_4BC & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_1CC & ",'A','" 
  loc_16599C7:       unk_4EE6EF.Execute CStr(var_208 & CVar(MemVar_1F92078) & "')"), var_244, -1
  loc_1659A29:     End If
  loc_1659A2C:   Next var_6D8 'Byte
  loc_1659A35: Else
  loc_1659A61:   var_160 = "Delete From SchemeItemDetail Where Code = '" & global_84 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"
  loc_1659A6A:   unk_4EE6EF.Execute var_160, var_B4, -1
  loc_1659AAC:   var_160 = "Delete from FreeItemDetail WHERE Code ='" & global_84 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') "
  loc_1659AB5:   unk_4EE6EF.Execute var_160, var_B4, -1
  loc_1659AF3:   For var_6EC = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):   var_9A = var_6EC 'Byte
  loc_1659AFE:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659B06:     var_E8 = CVar(CLng(3)) 'Long
  loc_1659B31:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1659B39:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659B63:       var_6CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1659B74:       Set var_140 = Me.txt
  loc_1659B7A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A8, var_6CC, CVar(CLng(0)), var_C8)
  loc_1659B82:       var_E8 = var_198.Tag
  loc_1659B95:       Set var_1B4 = Me.txt
  loc_1659B9B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B8, var_1BC, var_C8)
  loc_1659BA3:       CByte(1) = var_1B8.Text
  loc_1659BB1:       Proc_6_7_F25D88(var_170, CVar(var_1BC))
  loc_1659BC4:       Set var_1E0 = Me.txt
  loc_1659BCA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8)
  loc_1659BD2:       var_A4 = var_1E4.Text
  loc_1659BE0:       Proc_6_7_F25D88(var_208, CVar(var_1E8))
  loc_1659BF3:       Set var_22C = Me.txt
  loc_1659BF9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_1659C14:       Set var_268 = Me.txt
  loc_1659C1A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_26C)
  loc_1659C35:       Set var_2A4 = Me.txt
  loc_1659C3B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A8)
  loc_1659C56:       Set var_2F0 = Me.txt
  loc_1659C5C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2F4)
  loc_1659C77:       Set var_33C = Me.txt
  loc_1659C7D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_340)
  loc_1659C8F:       var_394 = CVar(CLng(var_9A)) 'Long
  loc_1659C97:       var_3B4 = CVar(CLng(3)) 'Long
  loc_1659CA6:       var_3D8 = Me.FGrid.TextMatrix)
  loc_1659CB7:       var_428 = CVar(CLng(var_9A)) 'Long
  loc_1659CE1:       var_6D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1659CF2:       Set var_4B4 = Me.txt
  loc_1659CF8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4B8, var_4BC, var_6D4, CVar(CLng(2)))
  loc_1659D00:       var_428 = var_4B8.Text
  loc_1659D3D:       Proc_6_7_F25D88(var_62C, Date, var_3D8)
  loc_1659D56:       var_FC = "Insert into SchemeItemDetail(Code,Sno,restCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,ItemCode,Qty,Active, " & "Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_1659D73:       var_1A4 = var_FC & global_84 & "'," & CStr(var_6CC)
  loc_1659D81:       var_1B0 = var_1A4 & ",'" & var_1A8
  loc_1659D8E:       var_1CC = CVar(var_1B0 & "',") & var_170 
  loc_1659DAE:       var_244 = CVar(var_230.Text) 'String
  loc_1659DEA:       var_318 = var_1CC & "," & var_208 & ",'" & var_244 & ":" & CVar(var_26C.Text) & "','" & CVar(var_2A8.Text) & ":" & CVar(var_2F4.Text) 
  loc_1659E35:       var_52C = var_318 & "','" & CVar(var_340.Tag) & "','" & CVar(CStr(var_3D8)) & "'," & CVar(var_6D4) & ", '" & IIf((var_4BC = "Yes"), "Y", "N") 
  loc_1659E88:       var_65C = var_52C & "'," & CVar(var_A0) & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_62C & ",'E','" 
  loc_1659EA9:       unk_4EE6EF.Execute CStr(var_65C & CVar(MemVar_1F92078) & "')"), var_6C0, -1
  loc_1659F61:     End If
  loc_1659F64:   Next var_6EC 'Byte
  loc_1659F92:   For var_6F0 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):   var_9A = var_6F0 'Byte
  loc_1659F9D:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1659FA5:     var_E8 = CVar(CLng(3)) 'Long
  loc_1659FD0:     If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_1659FD8:       var_C8 = CVar(CLng(var_9A)) 'Long
  loc_165A002:       var_6CC = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_165A013:       Set var_140 = Me.txt
  loc_165A019:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_198, var_1A4, var_6CC, CVar(CLng(0)))
  loc_165A021:       var_C8 = var_198.Tag
  loc_165A034:       Set var_1B4 = Me.txt
  loc_165A03A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_1B0)
  loc_165A042:       var_E8 = var_1B8.Tag
  loc_165A04C:       var_10C = CVar(CLng(var_9A)) 'Long
  loc_165A054:       var_12C = CVar(CLng(3)) 'Long
  loc_165A063:       var_150 = Me.FGrid1.TextMatrix)
  loc_165A08B:       var_170 = Me.FGrid1.TextMatrix)
  loc_165A09E:       var_6D4 = Val(CStr(var_170))
  loc_165A0A4:       var_180 = Date
  loc_165A0AF:       Proc_6_7_F25D88(var_1CC, var_180, var_6D4, CVar(CLng(2)), CVar(CLng(var_9A)))
  loc_165A0CB:       var_FC = "Insert Into FreeItemDetail (Code,Sno,restcode,schemecode,FreeItem,FreeQty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_165A12D:       var_6DC = var_FC & "'," & CStr(var_6CC) & ",'" & var_1A4 & "','" & var_1B0 & "','" & CStr(var_150) & "'," & CStr(var_6D4) & ",'" & MemVar_1F92070
  loc_165A172:       unk_4EE6EF.Execute CStr(CVar(var_6DC & "','" & MemVar_1F920C8 & "',") & var_1CC & ",'E','" & CVar(MemVar_1F92078) & "')"), var_244, -1
  loc_165A1D4:     End If
  loc_165A1D7:   Next var_6F0 'Byte
  loc_165A1DD: End If
  loc_165A1E3: unk_4EE6EF.CommitTrans
  loc_165A1EC: var_86 = CByte(0) 'Byte
  loc_165A1FB: Me.Requery -1
  loc_165A228: Me.Find "Code='" & global_84 & "'", 0, 1
  loc_165A238: Set var_A4 = Me.TopCtrl1
  loc_165A23E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_165A257: If (CStr() = "Add") Then
  loc_165A25A:   Call TopCtrl1_UnknownEvent_A()
  loc_165A25F:   Exit Sub
  loc_165A260: End If
  loc_165A275: var_FC = "INI"
  loc_165A283: Call Proc_186_52_F9B460(Proc_5_1_100CB50(var_FC, Me))
  loc_165A299: Set var_A4 = Me.TxtGrid
  loc_165A29F: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_140)
  loc_165A2A7: var_140.Visible = False
  loc_165A2CC: MsgBox("Record Saved !!", &H40, var_150, var_170, var_180)
  loc_165A2DC: Call Proc_186_55_153A2B8(global_52)
  loc_165A2E1: Exit Sub
  loc_165A2E2: ' Referenced from: 1658DBC
  loc_165A2EB: If (CInt(var_86) = 1) Then
  loc_165A2F4:   unk_4EE6EF.RollbackTrans
  loc_165A2F9: End If
  loc_165A301: Set var_A4 = Err()
  loc_165A307: Call 0.Method_arg_2C (var_FC)
  loc_165A320: MsgBox(CVar(var_FC), &H10, var_150, var_170, var_180)
  loc_165A333: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5064
  'Data Table: 4EE6E8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4FDA: On Error Goto loc_EC501F
  loc_EC4FE3: Me.MoveFirst
  loc_EC4FFD: var_8C = "Code='" & MyValue
  loc_EC500D: Me.Find var_8C & "'", 0, 1
  loc_EC5019: Call Proc_186_55_153A2B8(var_A0)
  loc_EC501E: Exit Sub
  loc_EC501F: ' Referenced from: EC4FDA
  loc_EC5027: Set var_A4 = Err()
  loc_EC502D: Call 0.Method_arg_2C (var_8C)
  loc_EC504E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5061: Exit Sub
  loc_EC5062: Exit Sub
End Sub

Public Sub Proc_186_49_12A0E60(arg_C) '12A0E60
  'Data Table: 4EE6E8
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_4EE6EF As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As Variant
  Dim var_100 As TextBox
  Dim var_15C As Double
  loc_12A0864: On Error Goto loc_12A0E1B
  loc_12A0875: Set var_94 = Me.txt
  loc_12A087B: Call 0.Method_Proc_186_49_12A0E600 (CInt(1), var_98)
  loc_12A0883: var_98.Text = vbNullString
  loc_12A089D: Set var_94 = Me.txt
  loc_12A08A3: Call 0.Method_Proc_186_49_12A0E600 (CInt(2), var_98)
  loc_12A08AB: var_98.Text = vbNullString
  loc_12A08C5: Set var_94 = Me.txt
  loc_12A08CB: Call 0.Method_Proc_186_49_12A0E600 (CInt(7), var_98)
  loc_12A08D3: var_98.Text = vbNullString
  loc_12A08ED: Set var_94 = Me.txt
  loc_12A08F3: Call 0.Method_Proc_186_49_12A0E600 (CInt(3), var_98)
  loc_12A08FB: var_98.Text = vbNullString
  loc_12A0915: Set var_94 = Me.txt
  loc_12A091B: Call 0.Method_Proc_186_49_12A0E600 (CInt(4), var_98)
  loc_12A0923: var_98.Text = vbNullString
  loc_12A093D: Set var_94 = Me.txt
  loc_12A0943: Call 0.Method_Proc_186_49_12A0E600 (CInt(5), var_98)
  loc_12A094B: var_98.Text = vbNullString
  loc_12A0965: Set var_94 = Me.txt
  loc_12A096B: Call 0.Method_Proc_186_49_12A0E600 (CInt(6), var_98)
  loc_12A0973: var_98.Text = vbNullString
  loc_12A098A: For var_9C = CByte(1) To CByte(7): var_8A = var_9C 'Byte
  loc_12A099F:   Set var_94 = Me.chkday
  loc_12A09A5:   Call 0.Method_Proc_186_49_12A0E600 (CInt(var_8A), var_98)
  loc_12A09AD:   var_98.Value = 0
  loc_12A09BC: Next var_9C 'Byte
  loc_12A09E6: unk_4EE6EF.Execute "Select * From SchemeMast Where Code='" & arg_C & "'", var_C4, -1
  loc_12A09F1: Set var_88 = var_94
  loc_12A0A15: If (var_88.RecordCount > 0) Then
  loc_12A0A6A:   Set var_FC = Me.txt
  loc_12A0A70:   Call 0.Method_Proc_186_49_12A0E600 (CInt(1), var_100, CStr(Format(CVar(var_88.Fields.Item("StartDate")), "DD/MMM/YYYY")))
  loc_12A0A78:   var_100.Text = 1
  loc_12A0AE4:   Set var_FC = Me.txt
  loc_12A0AEA:   Call 0.Method_Proc_186_49_12A0E600 (CInt(2), var_100, CStr(Format(CVar(var_88.Fields.Item("EndDate")), "DD/MMM/YYYY")), 1)
  loc_12A0AF2:   var_100.Text = 1
  loc_12A0B43:   var_120 = "Yes"
  loc_12A0B77:   Set var_FC = Me.txt
  loc_12A0B7D:   Call 0.Method_Proc_186_49_12A0E600 (CInt(7), var_100, CStr(IIf((var_88.Fields.Item("Active").Value = "Y"), var_120, "No")))
  loc_12A0B85:   var_100.Text = 1
  loc_12A0BE7:   Set var_FC = Me.txt
  loc_12A0BED:   Call 0.Method_Proc_186_49_12A0E600 (CInt(3), var_100)
  loc_12A0BF5:   var_100.Text = CStr(Left(CVar(var_88.Fields.Item("FromTime")), 2))
  loc_12A0C4F:   Set var_FC = Me.txt
  loc_12A0C55:   Call 0.Method_Proc_186_49_12A0E600 (CInt(4), var_100)
  loc_12A0C5D:   var_100.Text = CStr(Right(CVar(var_88.Fields.Item("FromTime")), 2))
  loc_12A0CB7:   Set var_FC = Me.txt
  loc_12A0CBD:   Call 0.Method_Proc_186_49_12A0E600 (CInt(5), var_100)
  loc_12A0CC5:   var_100.Text = CStr(Left(CVar(var_88.Fields.Item("ToTime")), 2))
  loc_12A0D1F:   Set var_FC = Me.txt
  loc_12A0D25:   Call 0.Method_Proc_186_49_12A0E600 (CInt(6), var_100)
  loc_12A0D2D:   var_100.Text = CStr(Right(CVar(var_88.Fields.Item("ToTime")), 2))
  loc_12A0D5C:   var_98 = var_88.Fields.Item("DAYS")
  loc_12A0D74:   var_90 = CStr(Str(CVar(var_98)))
  loc_12A0DA4:   For var_154 = CByte(1) To CByte(Len(Trim(var_90))): var_8A = var_154 'Byte
  loc_12A0DCA:     var_F8 = Mid(Trim(var_90), CLng(var_8A), 1)
  loc_12A0DD2:     var_A0 = CStr(var_F8)
  loc_12A0DDB:     var_15C = Val(var_A0)
  loc_12A0DEB:     Set var_94 = Me.chkday
  loc_12A0DF1:     Call 0.Method_Proc_186_49_12A0E600 (CInt(var_15C), var_98, 1)
  loc_12A0DF9:     var_98.Value = var_15C
  loc_12A0E14:   Next var_154 'Byte
  loc_12A0E1A: End If
  loc_12A0E1A: Exit Sub
  loc_12A0E1B: ' Referenced from: 12A0864
  loc_12A0E23: Set var_94 = Err()
  loc_12A0E29: Call 0.Method_arg_2C (var_A0)
  loc_12A0E4A: MsgBox(CVar(var_A0), &H40, "Information", var_F8, var_120)
  loc_12A0E5D: Exit Sub
End Sub

Public Sub Proc_186_50_F9A840
  'Data Table: 4EE6E8
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_88 As MSFlexGrid
  loc_F9A6C2: var_98 = CVar(CLng(0)) 'Long
  loc_F9A6C7: var_B8 = &H1F4
  loc_F9A6D3: LateIdCallSt
  loc_F9A6DE: var_98 = CVar(CLng(0)) 'Long
  loc_F9A6E9: var_B8 = CVar(CInt(4)) 'Integer
  loc_F9A6F0: LateIdCallSt
  loc_F9A6F8: var_98 = 1
  loc_F9A704: var_B8 = CVar(CLng(0)) 'Long
  loc_F9A709: var_D8 = "1"
  loc_F9A712: LateIdCallSt
  loc_F9A71A: var_98 = 0
  loc_F9A726: var_B8 = CVar(CLng(1)) 'Long
  loc_F9A72B: var_D8 = "Item Name"
  loc_F9A734: LateIdCallSt
  loc_F9A73F: var_98 = CVar(CLng(1)) 'Long
  loc_F9A744: var_B8 = &H1194
  loc_F9A750: LateIdCallSt
  loc_F9A75B: var_98 = CVar(CLng(1)) 'Long
  loc_F9A766: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9A76D: LateIdCallSt
  loc_F9A775: var_98 = 0
  loc_F9A781: var_B8 = CVar(CLng(2)) 'Long
  loc_F9A786: var_D8 = "Quantity"
  loc_F9A78F: LateIdCallSt
  loc_F9A79A: var_98 = CVar(CLng(2)) 'Long
  loc_F9A79F: var_B8 = &H5DC
  loc_F9A7AB: LateIdCallSt
  loc_F9A7B6: var_98 = CVar(CLng(2)) 'Long
  loc_F9A7C1: var_B8 = CVar(CInt(7)) 'Integer
  loc_F9A7C8: LateIdCallSt
  loc_F9A7D0: var_98 = 0
  loc_F9A7DC: var_B8 = CVar(CLng(3)) 'Long
  loc_F9A7E1: var_D8 = "Item Code"
  loc_F9A7EA: LateIdCallSt
  loc_F9A7F5: var_98 = CVar(CLng(3)) 'Long
  loc_F9A7FA: var_B8 = 0
  loc_F9A806: LateIdCallSt
  loc_F9A811: var_98 = CVar(CLng(3)) 'Long
  loc_F9A81C: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9A823: LateIdCallSt
  loc_F9A832: Me.FGrid.Enabled = True
  loc_F9A839: Set var_88 = Nothing 
  loc_F9A83D: Exit Sub
End Sub

Public Sub Proc_186_51_F9AD74
  'Data Table: 4EE6E8
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_88 As MSFlexGrid
  loc_F9ABF6: var_98 = CVar(CLng(0)) 'Long
  loc_F9ABFB: var_B8 = &H1F4
  loc_F9AC07: LateIdCallSt
  loc_F9AC12: var_98 = CVar(CLng(0)) 'Long
  loc_F9AC1D: var_B8 = CVar(CInt(4)) 'Integer
  loc_F9AC24: LateIdCallSt
  loc_F9AC2C: var_98 = 1
  loc_F9AC38: var_B8 = CVar(CLng(0)) 'Long
  loc_F9AC3D: var_D8 = "1"
  loc_F9AC46: LateIdCallSt
  loc_F9AC4E: var_98 = 0
  loc_F9AC5A: var_B8 = CVar(CLng(1)) 'Long
  loc_F9AC5F: var_D8 = "Item Name"
  loc_F9AC68: LateIdCallSt
  loc_F9AC73: var_98 = CVar(CLng(1)) 'Long
  loc_F9AC78: var_B8 = &H1194
  loc_F9AC84: LateIdCallSt
  loc_F9AC8F: var_98 = CVar(CLng(1)) 'Long
  loc_F9AC9A: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9ACA1: LateIdCallSt
  loc_F9ACA9: var_98 = 0
  loc_F9ACB5: var_B8 = CVar(CLng(2)) 'Long
  loc_F9ACBA: var_D8 = "Quantity"
  loc_F9ACC3: LateIdCallSt
  loc_F9ACCE: var_98 = CVar(CLng(2)) 'Long
  loc_F9ACD3: var_B8 = &H5DC
  loc_F9ACDF: LateIdCallSt
  loc_F9ACEA: var_98 = CVar(CLng(2)) 'Long
  loc_F9ACF5: var_B8 = CVar(CInt(7)) 'Integer
  loc_F9ACFC: LateIdCallSt
  loc_F9AD04: var_98 = 0
  loc_F9AD10: var_B8 = CVar(CLng(3)) 'Long
  loc_F9AD15: var_D8 = "Item Code"
  loc_F9AD1E: LateIdCallSt
  loc_F9AD29: var_98 = CVar(CLng(3)) 'Long
  loc_F9AD2E: var_B8 = 0
  loc_F9AD3A: LateIdCallSt
  loc_F9AD45: var_98 = CVar(CLng(3)) 'Long
  loc_F9AD50: var_B8 = CVar(CInt(1)) 'Integer
  loc_F9AD57: LateIdCallSt
  loc_F9AD66: Me.FGrid1.Enabled = True
  loc_F9AD6D: Set var_88 = Nothing 
  loc_F9AD71: Exit Sub
End Sub

Public Sub Proc_186_52_F9B460(arg_C) 'F9B460
  'Data Table: 4EE6E8
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_F9B2EA: Set var_8C = Me.txt
  loc_F9B2F0: Call 0.Method_Proc_186_52_F9B460C (var_8E, var_86)
  loc_F9B300: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F9B316:   Set var_8C = Me.txt
  loc_F9B31C:   Call 0.Method_Proc_186_52_F9B4600 (CInt(var_86), var_98)
  loc_F9B324:   var_98.Enabled = arg_C
  loc_F9B333: Next var_92 'Byte
  loc_F9B346: Set var_8C = Me.txt
  loc_F9B34C: Call 0.Method_Proc_186_52_F9B4600 (CInt(1), var_98)
  loc_F9B354: var_98.Enabled = False
  loc_F9B36D: Set var_8C = Me.txt
  loc_F9B373: Call 0.Method_Proc_186_52_F9B4600 (CInt(2), var_98)
  loc_F9B37B: var_98.Enabled = False
  loc_F9B394: Set var_8C = Me.txt
  loc_F9B39A: Call 0.Method_Proc_186_52_F9B4600 (CInt(3), var_98)
  loc_F9B3A2: var_98.Enabled = False
  loc_F9B3BB: Set var_8C = Me.txt
  loc_F9B3C1: Call 0.Method_Proc_186_52_F9B4600 (CInt(4), var_98)
  loc_F9B3C9: var_98.Enabled = False
  loc_F9B3E2: Set var_8C = Me.txt
  loc_F9B3E8: Call 0.Method_Proc_186_52_F9B4600 (CInt(5), var_98)
  loc_F9B3F0: var_98.Enabled = False
  loc_F9B409: Set var_8C = Me.txt
  loc_F9B40F: Call 0.Method_Proc_186_52_F9B4600 (CInt(6), var_98)
  loc_F9B417: var_98.Enabled = False
  loc_F9B430: Set var_8C = Me.txt
  loc_F9B436: Call 0.Method_Proc_186_52_F9B4600 (CInt(7), var_98)
  loc_F9B43E: var_98.Enabled = False
  loc_F9B456: Me.framWeek.Enabled = False
  loc_F9B45E: Exit Sub
End Sub

Public Sub Proc_186_53_FCD600
  'Data Table: 4EE6E8
  Dim var_98 As Variant
  Dim var_A8 As Long
  Dim var_8C As MSFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_FCD442: Set var_8C = Me.txt
  loc_FCD448: Call 0.Method_Proc_186_53_FCD600C (var_8E, var_86)
  loc_FCD458: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FCD46E:   Set var_8C = Me.txt
  loc_FCD474:   Call 0.Method_Proc_186_53_FCD6000 (CInt(var_86), var_98)
  loc_FCD47C:   var_98.Text = vbNullString
  loc_FCD498:   Set var_8C = Me.txt
  loc_FCD49E:   Call 0.Method_Proc_186_53_FCD6000 (CInt(var_86), var_98)
  loc_FCD4A6:   var_98.Tag = vbNullString
  loc_FCD4B5: Next var_92 'Byte
  loc_FCD4C1: global_88 = vbNullString
  loc_FCD4D8: Me.FGrid.FixedRows = 1
  loc_FCD4F3: Me.FGrid.Rows = 2
  loc_FCD502: For var_BC = 1 To 3: var_86 = var_BC 'Byte
  loc_FCD508:   var_A8 = 1
  loc_FCD516:   var_CC = CVar(CLng(var_86)) 'Long
  loc_FCD51B:   var_EC = vbNullString
  loc_FCD525:   Set var_8C = Me.FGrid
  loc_FCD52B:   LateIdCallSt
  loc_FCD539: Next var_BC 'Byte
  loc_FCD552: Me.FGrid1.FixedRows = 1
  loc_FCD56D: Me.FGrid1.Rows = 2
  loc_FCD57C: For var_100 = 1 To 3: var_86 = var_100 'Byte
  loc_FCD582:   var_A8 = 1
  loc_FCD590:   var_CC = CVar(CLng(var_86)) 'Long
  loc_FCD595:   var_EC = vbNullString
  loc_FCD59F:   Set var_8C = Me.FGrid1
  loc_FCD5A5:   LateIdCallSt
  loc_FCD5B3: Next var_100 'Byte
  loc_FCD5C4: For var_104 = CByte(1) To CByte(7): var_86 = var_104 'Byte
  loc_FCD5D9:   Set var_8C = Me.chkday
  loc_FCD5DF:   Call 0.Method_Proc_186_53_FCD6000 (CInt(var_86), var_98)
  loc_FCD5E7:   var_98.Value = 0
  loc_FCD5F6: Next var_104 'Byte
  loc_FCD5FC: Exit Sub
End Sub

Public Sub Proc_186_54_F584B4
  'Data Table: 4EE6E8
  Dim var_90 As TextBox
  Dim var_A4 As Long
  Dim var_8C As MSFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As String
  loc_F58396: Set var_8C = Me.txt
  loc_F5839C: Call 0.Method_Proc_186_54_F584B40 (CInt(8), var_90)
  loc_F583AF: global_88 = var_90.Tag
  loc_F583D0: Me.FGrid.FixedRows = 1
  loc_F583EB: Me.FGrid.Rows = 2
  loc_F583FA: For var_B8 = 1 To 3: var_86 = var_B8 'Byte
  loc_F58400:   var_A4 = 1
  loc_F5840E:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_F58413:   var_E8 = vbNullString
  loc_F5841D:   Set var_8C = Me.FGrid
  loc_F58423:   LateIdCallSt
  loc_F58431: Next var_B8 'Byte
  loc_F5844A: Me.FGrid1.FixedRows = 1
  loc_F58465: Me.FGrid1.Rows = 2
  loc_F58474: For var_FC = 1 To 3: var_86 = var_FC 'Byte
  loc_F5847A:   var_A4 = 1
  loc_F58488:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_F5848D:   var_E8 = vbNullString
  loc_F58497:   Set var_8C = Me.FGrid1
  loc_F5849D:   LateIdCallSt
  loc_F584AB: Next var_FC 'Byte
  loc_F584B1: Exit Sub
End Sub

Public Sub Proc_186_55_153A2B8
  'Data Table: 4EE6E8
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C8 As String
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_E4 As Variant
  Dim var_134 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_4EE6EF As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Fields15
  Dim var_198 As Fields15
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_1F4 As Double
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim var_194 As Variant
  loc_1539308: On Error Goto loc_153A275
  loc_1539311: Proc_183_45_E5C118(global_52)
  loc_153932D: If (Me.RecordCount <= 0) Then
  loc_1539330:   Call Proc_186_53_FCD600()
  loc_1539338: Else
  loc_1539374:   Set var_B0 = Me.txt
  loc_153937A:   Call 0.Method_Proc_186_55_153A2B80 (CInt(8), var_B4)
  loc_1539382:   var_B4.Text = CStr(Me.Fields.Item("RestName").Value)
  loc_15393B5:   var_AC = Me.Fields.Item("RestCode")
  loc_15393D4:   Set var_B0 = Me.txt
  loc_15393DA:   Call 0.Method_Proc_186_55_153A2B80 (CInt(8), var_B4)
  loc_15393E2:   var_B4.Tag = CStr(var_AC.Value)
  loc_1539406:   Set var_98 = Me.txt
  loc_153940C:   Call 0.Method_Proc_186_55_153A2B80 (CInt(8), var_AC)
  loc_153941F:   global_88 = var_AC.Tag
  loc_1539449:   Me.Recordset15.CursorLocation = 3
  loc_153945C:   Set var_98 = Me.txt
  loc_1539462:   Call 0.Method_Proc_186_55_153A2B80 (CInt(8), var_AC)
  loc_153948D:   var_C8 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1539494:   var_D0 = var_C8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 AND D.Code='"
  loc_15394AC:   Me.Open CVar(var_D0 & var_AC.Tag & "'  Order by I.Name  "), CVar(MemVar_1F92044), 3
  loc_15394CF:   CVarUnk
  loc_15394D4:   VerifyVarObj
  loc_15394DA:   Set var_98 = Me.DGItem
  loc_15394E0:   LateIdStAd
  loc_1539500:   var_98 = Me.Fields
  loc_1539543:   Set var_B0 = Me.txt
  loc_1539549:   Call 0.Method_Proc_186_55_153A2B80 (CInt(1), var_B4, CStr(Format(CVar(var_98.Item("AppDate")), "DD/MMM/YYYY")), 1, 1)
  loc_1539551:   var_B4.Text = var_98
  loc_15395C0:   Set var_B0 = Me.txt
  loc_15395C6:   Call 0.Method_Proc_186_55_153A2B80 (CInt(2), var_B4, CStr(Format(CVar(Me.Fields.Item("EndDate")), "DD/MMM/YYYY")), 1)
  loc_15395CE:   var_B4.Text = 1
  loc_1539622:   var_124 = "Yes"
  loc_1539656:   Set var_B0 = Me.txt
  loc_153965C:   Call 0.Method_Proc_186_55_153A2B80 (CInt(7), var_B4, CStr(IIf((Me.Fields.Item("Active").Value = "Y"), var_124, "No")))
  loc_1539664:   var_B4.Text = New
  loc_15396C9:   Set var_B0 = Me.txt
  loc_15396CF:   Call 0.Method_Proc_186_55_153A2B80 (CInt(3), var_B4, CStr(Left(CVar(Me.Fields.Item("FromTime")), 2)))
  loc_15396D7:   var_B4.Text = 1
  loc_1539734:   Set var_B0 = Me.txt
  loc_153973A:   Call 0.Method_Proc_186_55_153A2B80 (CInt(4), var_B4)
  loc_1539742:   var_B4.Text = CStr(Right(CVar(Me.Fields.Item("FromTime")), 2))
  loc_153979F:   Set var_B0 = Me.txt
  loc_15397A5:   Call 0.Method_Proc_186_55_153A2B80 (CInt(5), var_B4)
  loc_15397AD:   var_B4.Text = CStr(Left(CVar(Me.Fields.Item("ToTime")), 2))
  loc_153980A:   Set var_B0 = Me.txt
  loc_1539810:   Call 0.Method_Proc_186_55_153A2B80 (CInt(6), var_B4)
  loc_1539818:   var_B4.Text = CStr(Right(CVar(Me.Fields.Item("ToTime")), 2))
  loc_153986C:   Set var_B0 = Me.txt
  loc_1539872:   Call 0.Method_Proc_186_55_153A2B80 (CInt(0), var_B4)
  loc_153987A:   var_B4.Text = CStr(Me.Fields.Item("SchemeName").Value)
  loc_15398CC:   Set var_B0 = Me.txt
  loc_15398D2:   Call 0.Method_Proc_186_55_153A2B80 (CInt(0), var_B4)
  loc_15398DA:   var_B4.Tag = CStr(Me.Fields.Item("SchemeCode").Value)
  loc_1539946:   unk_4EE6EF.Execute CStr("Select U_Name,U_AE,U_EntDt From SchemeItemDetail where Code='" & Me.Fields.Item("Code").Value & "'  "), var_124, -1
  loc_1539951:   Set var_88 = var_B0
  loc_1539A0E:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1539A41:   var_1DC = -1 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_194)) 
  loc_1539A53:   Me.LblUser.Caption = CStr(var_1DC)
  loc_1539B2E:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update :   ", "entdt :   "))
  loc_1539B45:   var_198 = var_88.Fields
  loc_1539B55:   var_1BC = CVar(var_198.Item("U_EntDt")) 'Address
  loc_1539B73:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(var_1BC)))
  loc_1539BC5:   var_AC = Me.Fields.Item("DAYcode")
  loc_1539BDD:   var_90 = CStr(Str(CVar(var_AC)))
  loc_1539BF5:   For var_1E8 = CByte(1) To CByte(7):   var_8A = var_1E8 'Byte
  loc_1539C0A:     Set var_98 = Me.chkday
  loc_1539C10:     Call 0.Method_Proc_186_55_153A2B80 (CInt(var_8A), var_AC)
  loc_1539C18:     var_AC.Value = 0
  loc_1539C27:   Next var_1E8 'Byte
  loc_1539C50:   For var_1EC = CByte(1) To CByte(Len(Trim(var_90))):   var_8A = var_1EC 'Byte
  loc_1539C87:     var_1F4 = Val(CStr(Mid(Trim(var_90), CLng(var_8A), 1)))
  loc_1539C97:     Set var_98 = Me.chkday
  loc_1539C9D:     Call 0.Method_Proc_186_55_153A2B80 (CInt(var_1F4), var_AC, 1)
  loc_1539CA5:     var_AC.Value = var_1F4
  loc_1539CC0:   Next var_1EC 'Byte
  loc_1539CDA:   var_C8 = "Select Sno,ItemCode, IM.Name As ItemName, Qty  from SchemeItemDetail SD Join ItemMast IM On SD.ItemCode = IM.Code And SD.RestCode = IM.RestCode where (SD.LOGSITE_CODE='" & MemVar_1F92078
  loc_1539D4B:   var_154 = CVar(var_C8 & "' or SD.LOGSITE_CODE='HO') AND SD.RestCode='") & Me.Fields.Item("RestCode").Value & "' AND SD.Code='" & Me.Fields.Item("Code").Value 
  loc_1539D62:   unk_4EE6EF.Execute CStr(var_154 & "' Order By Sno"), var_1BC, -1
  loc_1539D6D:   Set var_88 = var_198
  loc_1539DAB:   If (var_88.RecordCount > 0) Then
  loc_1539DB2:     var_8A = CByte(1) 'Byte
  loc_1539DC9:     Me.FGrid.FixedRows = 1
  loc_1539DE5:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_1539DF4:     Me.FGrid.Rows = 1
  loc_1539DFC:     ' Referenced from:   1539F9A
  loc_1539E0B:     If Not(var_88.EOF) Then
  loc_1539E12:       Set var_1FC = Me.FGrid
  loc_1539E1A:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_1539E22:       var_134 = CVar(CLng(0)) 'Long
  loc_1539E52:       var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1539E59:       LateIdCallSt
  loc_1539E74:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_1539E7C:       var_134 = CVar(CLng(1)) 'Long
  loc_1539EAC:       var_F4 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_1539EB3:       LateIdCallSt
  loc_1539ECE:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_1539ED6:       var_134 = CVar(CLng(2)) 'Long
  loc_1539F06:       var_F4 = CVar(CStr(var_88.Fields.Item("qty").Value)) 'String
  loc_1539F0D:       LateIdCallSt
  loc_1539F28:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_1539F30:       var_134 = CVar(CLng(3)) 'Long
  loc_1539F60:       var_F4 = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_1539F67:       LateIdCallSt
  loc_1539F7F:       Set var_1FC = Nothing 
  loc_1539F8E:       var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_1539F95:       var_88.MoveNext
  loc_1539F9A:       GoTo loc_1539DFC
  loc_1539F9D:     End If
  loc_1539F9D:   End If
  loc_1539FB1:   var_C8 = "Select Sno, FreeItem, IM.Name As ItemName, FreeQty  from FreeItemDetail FD Join ItemMast IM On  FD.FreeItem = IM.Code And FD.RestCode = IM.RestCode where (FD.LOGSITE_CODE='" & MemVar_1F92078
  loc_1539FE8:   var_104 = CVar(var_C8 & "' or FD.LOGSITE_CODE='HO') AND FD.RestCode='") & Me.Fields.Item("RestCode").Value 
  loc_1539FF1:   var_124 = var_104 & "' AND FD.Code='" 
  loc_153A039:   unk_4EE6EF.Execute CStr(var_124 & Me.Fields.Item("Code").Value & "' Order By Sno"), var_1BC, -1
  loc_153A044:   Set var_88 = var_198
  loc_153A082:   If (var_88.RecordCount > 0) Then
  loc_153A089:     var_8A = CByte(1) 'Byte
  loc_153A0A0:     Me.FGrid1.FixedRows = 1
  loc_153A0BC:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_153A0CB:     Me.FGrid1.Rows = 1
  loc_153A0D3:     ' Referenced from:   153A271
  loc_153A0E2:     If Not(var_88.EOF) Then
  loc_153A0E9:       Set var_200 = Me.FGrid1
  loc_153A0F1:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153A0F9:       var_134 = CVar(CLng(0)) 'Long
  loc_153A129:       var_F4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_153A130:       LateIdCallSt
  loc_153A14B:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153A153:       var_134 = CVar(CLng(1)) 'Long
  loc_153A183:       var_F4 = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_153A18A:       LateIdCallSt
  loc_153A1A5:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153A1AD:       var_134 = CVar(CLng(2)) 'Long
  loc_153A1DD:       var_F4 = CVar(CStr(var_88.Fields.Item("FreeQty").Value)) 'String
  loc_153A1E4:       LateIdCallSt
  loc_153A1FF:       var_E4 = CVar(CLng(var_8A)) 'Long
  loc_153A207:       var_134 = CVar(CLng(3)) 'Long
  loc_153A237:       var_F4 = CVar(CStr(var_88.Fields.Item("FreeItem").Value)) 'String
  loc_153A23E:       LateIdCallSt
  loc_153A256:       Set var_200 = Nothing 
  loc_153A265:       var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_153A26C:       var_88.MoveNext
  loc_153A271:       GoTo loc_153A0D3
  loc_153A274:     End If
  loc_153A274:   End If
  loc_153A274: End If
  loc_153A274: Exit Sub
  loc_153A275: ' Referenced from: 1539308
  loc_153A27D: Set var_98 = Err()
  loc_153A283: Call 0.Method_arg_2C (var_C8, var_200, var_F4, var_134, var_E4, var_200, var_F4)
  loc_153A2A4: MsgBox(CVar(var_C8), &H40, "Information", var_104, var_124)
  loc_153A2B7: Exit Sub
End Sub

Public Sub Proc_186_56_E6FEC0
  'Data Table: 4EE6E8
  loc_E6FE6F: Me.DGItem.Visible = False
  loc_E6FE86: Me.DGRest.Visible = False
  loc_E6FE9D: Me.DGScheme.Visible = False
  loc_E6FEB4: Me.FGPoint.Visible = False
  loc_E6FEBC: Exit Sub
End Sub

Public Sub Proc_186_57_E8DE64(arg_C) 'E8DE64
  'Data Table: 4EE6E8
  Dim var_10C As TextBox
  loc_E8DE33: If (MsgBox("Save Data ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8DE36:   Call TopCtrl1_UnknownEvent_16()
  loc_E8DE3E: Else
  loc_E8DE48:   Set var_108 = Me.txt
  loc_E8DE4E:   Call 0.Method_Proc_186_57_E8DE640 (arg_C)
  loc_E8DE56:   var_10C.SetFocus
  loc_E8DE62: End If
  loc_E8DE62: Exit Sub
End Sub

Public Sub Proc_186_58_E451E4
  'Data Table: 4EE6E8
  loc_E451C0: Set var_88 = Me.TopCtrl1
  loc_E451C6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E451DF: If (CStr() = "Browse") Then
  loc_E451E2:   Exit Sub
  loc_E451E3: End If
  loc_E451E3: Exit Sub
End Sub

Public Sub Proc_186_59_12F8678(arg_C) '12F8678
  'Data Table: 4EE6E8
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_140 As TextBox
  Dim var_B8 As String
  Dim var_160 As Variant
  Dim var_164 As Long
  loc_12F7F87: var_8E = arg_C
  loc_12F7F90: If (var_8E = 0) Then
  loc_12F7FA6:   var_A8 = CLng(Me.FGrid.Col)
  loc_12F7FB6:   If (var_A8 = CLng(1)) Then
  loc_12F8007:     Set var_94 = Me.TxtGrid
  loc_12F800D:     Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_B8)
  loc_12F8015:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_12F802D:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_12F8043:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F804B:       var_E8 = CVar(CLng(1)) 'Long
  loc_12F8050:       var_108 = vbNullString
  loc_12F805A:       Set var_B4 = Me.FGrid
  loc_12F8060:       LateIdCallSt
  loc_12F8085:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F808D:       var_E8 = CVar(CLng(3)) 'Long
  loc_12F8092:       var_108 = vbNullString
  loc_12F809C:       Set var_B4 = Me.FGrid
  loc_12F80A2:       LateIdCallSt
  loc_12F80B7:     Else
  loc_12F80CA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F80D2:       var_F8 = CVar(CLng(1)) 'Long
  loc_12F8105:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12F810D:       Set var_140 = Me.FGrid
  loc_12F8113:       LateIdCallSt
  loc_12F8142:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F814A:       var_F8 = CVar(CLng(3)) 'Long
  loc_12F816C:       var_B4 = Me.Fields.Item("Code")
  loc_12F817D:       var_13C = CVar(CStr(var_B4.Value)) 'String
  loc_12F8185:       Set var_140 = Me.FGrid
  loc_12F818B:       LateIdCallSt
  loc_12F81A7:     End If
  loc_12F81AA:   Else
  loc_12F81B1:     If (var_A8 = CLng(2)) Then
  loc_12F81BE:       Set var_94 = Me.TxtGrid
  loc_12F81C4:       Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_140, var_13C, var_F8, var_D8, var_140)
  loc_12F81E3:       Set var_11C = Me.TxtGrid
  loc_12F81E9:       Call 0.Method_Proc_186_59_12F86780 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_12F81F1:       var_D8 = var_140.Text
  loc_12F8213:       If (var_B4 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_12F821A:         var_B8 = CStr(0)
  loc_12F8227:         Set var_94 = Me.TxtGrid
  loc_12F822D:         Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_B8)
  loc_12F8235:         var_B4.Text = var_108
  loc_12F8249:         Proc_186_59_12F8678 = 0
  loc_12F824F:       End If
  loc_12F825C:       Set var_94 = Me.TxtGrid
  loc_12F8262:       Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_B8)
  loc_12F826A:       var_E8 = var_B4.Text
  loc_12F8282:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F828A:       var_F8 = CVar(CLng(2)) 'Long
  loc_12F82B6:       var_160 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12F82BE:       Set var_140 = Me.FGrid
  loc_12F82C4:       LateIdCallSt
  loc_12F82E4:     End If
  loc_12F82E4:   End If
  loc_12F82E7: Else
  loc_12F82ED:   If (var_8E = 1) Then
  loc_12F8303:     var_164 = CLng(Me.FGrid1.Col)
  loc_12F8313:     If (var_164 = CLng(1)) Then
  loc_12F8364:       Set var_94 = Me.TxtGrid
  loc_12F836A:       Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_B8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_164, var_140)
  loc_12F8372:       var_160 = var_B4.Text
  loc_12F838A:       If (1 Or (var_B8 = vbNullString)) Then
  loc_12F83A0:         var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F83A8:         var_E8 = CVar(CLng(1)) 'Long
  loc_12F83AD:         var_108 = vbNullString
  loc_12F83B7:         Set var_B4 = Me.FGrid1
  loc_12F83BD:         LateIdCallSt
  loc_12F83E2:         var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F83EA:         var_E8 = CVar(CLng(3)) 'Long
  loc_12F83EF:         var_108 = vbNullString
  loc_12F83F9:         Set var_B4 = Me.FGrid1
  loc_12F83FF:         LateIdCallSt
  loc_12F8414:       Else
  loc_12F8427:         var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F842F:         var_F8 = CVar(CLng(1)) 'Long
  loc_12F8462:         var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12F846A:         Set var_140 = Me.FGrid1
  loc_12F8470:         LateIdCallSt
  loc_12F849F:         var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F84A7:         var_F8 = CVar(CLng(3)) 'Long
  loc_12F84C9:         var_B4 = Me.Fields.Item("Code")
  loc_12F84DA:         var_13C = CVar(CStr(var_B4.Value)) 'String
  loc_12F84E2:         Set var_140 = Me.FGrid1
  loc_12F84E8:         LateIdCallSt
  loc_12F8504:       End If
  loc_12F8507:     Else
  loc_12F850E:       If (var_164 = CLng(2)) Then
  loc_12F851B:         Set var_94 = Me.TxtGrid
  loc_12F8521:         Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_140, var_13C, var_F8, var_D8, var_140)
  loc_12F8540:         Set var_11C = Me.TxtGrid
  loc_12F8546:         Call 0.Method_Proc_186_59_12F86780 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_12F854E:         var_D8 = var_140.Text
  loc_12F8570:         If (var_B4 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_12F8577:           var_B8 = CStr(0)
  loc_12F8584:           Set var_94 = Me.TxtGrid
  loc_12F858A:           Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_B8)
  loc_12F8592:           var_B4.Text = var_108
  loc_12F85A6:           Proc_186_59_12F8678 = 0
  loc_12F85AC:         End If
  loc_12F85B9:         Set var_94 = Me.TxtGrid
  loc_12F85BF:         Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, var_B8)
  loc_12F85C7:         var_E8 = var_B4.Text
  loc_12F85DF:         var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F85E7:         var_F8 = CVar(CLng(2)) 'Long
  loc_12F8613:         var_160 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12F861B:         Set var_140 = Me.FGrid1
  loc_12F8621:         LateIdCallSt
  loc_12F8641:       End If
  loc_12F8641:     End If
  loc_12F8641:   End If
  loc_12F8641: End If
  loc_12F8655: Set var_94 = Me.TxtGrid
  loc_12F865B: Call 0.Method_Proc_186_59_12F86780 (arg_C, var_B4, 0, &HFF, var_140, var_160)
  loc_12F8663: var_B4.MaxLength = 1
  loc_12F866F: Proc_186_59_12F8678 = 1
  loc_12F8675: StAryRecMove
End Sub

Public Sub Proc_186_60_E6FC6C
  'Data Table: 4EE6E8
  Dim var_94 As CheckBox
  loc_E6FC17: For var_8C = 1 To 7: var_88 = var_8C 'Integer
  loc_E6FC2A:   Set var_90 = Me.chkday
  loc_E6FC30:   Call 0.Method_Proc_186_60_E6FC6C0 (var_88, var_94)
  loc_E6FC4A:   If (var_94.Value = 1) Then
  loc_E6FC52:     Proc_186_60_E6FC6C = &HFF
  loc_E6FC58:   End If
  loc_E6FC5B: Next var_8C 'Integer
  loc_E6FC65: Proc_186_60_E6FC6C = 0
End Sub
