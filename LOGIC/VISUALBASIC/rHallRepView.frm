VERSION 5.00
Begin VB.Form rHallRepView
  Caption = "HallRepView"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin PictureBox PictPreview
    BackColor = &HC0FFFF&
    Left = 9825
    Top = 0
    Width = 11010
    Height = 3090
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin CommandButton BtnPrintz
      Caption = "&DosPrint"
      Index = 1
      Left = 9135
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 34
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BTNRefreshz
      Caption = "Para&meters"
      Left = 7065
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 33
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Parameters"
      Style = 1
    End
    Begin CommandButton BTNEXITz
      Caption = "E&xit"
      Index = 0
      Left = 9810
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 32
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Exit"
      Style = 1
    End
    Begin CommandButton BtnPrintz
      Caption = "P&review"
      Index = 2
      Left = 7755
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 31
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPrintz
      Caption = "&WinPrint"
      Index = 3
      Left = 8445
      Top = -15
      Width = 750
      Height = 330
      Visible = 0   'False
      TabIndex = 30
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin TextBox Text2
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 660
      Width = 10935
      Height = 270
      TabIndex = 28
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin TextBox Text1
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 390
      Width = 10935
      Height = 270
      TabIndex = 27
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin TextBox Text3
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 930
      Width = 10935
      Height = 270
      TabIndex = 26
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin TextBox Text4
      BackColor = &H8000000F&
      ForeColor = &HFF0000&
      Left = 0
      Top = 1200
      Width = 10935
      Height = 270
      TabIndex = 25
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin MSHFlexGrid FGrid1
      Left = -15
      Top = 1455
      Width = 14415
      Height = 7305
      Visible = 0   'False
      TabIndex = 2
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 2100
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 35
    End
    Begin BtnEnh LblRefresh
      Left = 0
      Top = 0
      Width = 1395
      Height = 465
      TabIndex = 36
    End
    Begin BtnEnh BtnPrint
      Index = 3
      Left = 1395
      Top = 0
      Width = 700
      Height = 465
      TabIndex = 37
    End
    Begin BtnEnh BTNEXIT
      Left = 2805
      Top = 0
      Width = 705
      Height = 465
      TabIndex = 38
    End
    Begin BtnEnh LblRep
      Left = 3495
      Top = 0
      Width = 4470
      Height = 495
      TabIndex = 39
    End
  End
  Begin PictureBox PictParameter
    BackColor = &HC0C0FF&
    Left = 0
    Top = 0
    Width = 9825
    Height = 3090
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin MainCtrl TopCtrl1
      Left = 105
      Top = 10305
      Width = 1515
      Height = 210
      Visible = 0   'False
      TabIndex = 29
    End
    Begin PictureBox Pic
      BackColor = &H808080&
      Left = 0
      Top = 10575
      Width = 20370
      Height = 435
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 17
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      BorderStyle = 0 'None
      TabStop = 0   'False
      Begin Label LblTitle
        Caption = "LblTitle"
        BackColor = &H0&
        ForeColor = &HFFFFFF&
        Left = 7230
        Top = 0
        Width = 4470
        Height = 315
        TabIndex = 19
        Alignment = 1 'Right Justify
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "Tahoma"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Appearance = 0 'Flat
      End
      Begin Label LblProcess
        ForeColor = &HC0&
        Left = 0
        Top = 0
        Width = 3375
        Height = 360
        TabIndex = 18
        BackStyle = 0 'Transparent
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
    End
    Begin Frame FrmList
      Left = 1155
      Top = 5025
      Width = 2520
      Height = 1875
      Visible = 0   'False
      TabIndex = 15
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 0
        Top = 0
        Width = 2325
        Height = 1830
        TabStop = 0   'False
        TabIndex = 16
      End
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 510
      Top = 0
      Width = 690
      Height = 240
      Visible = 0   'False
      TabIndex = 14
      BorderStyle = 0 'None
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
    Begin TextBox TxtSearch
      BackColor = &HE0E0E0&
      Left = 0
      Top = 1440
      Width = 2055
      Height = 240
      Visible = 0   'False
      TabIndex = 13
      BorderStyle = 0 'None
      HideSelection = 0   'False
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 4
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 5175
      Top = 3870
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 12
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
    Begin CheckBox Check1
      Caption = "All"
      Index = 3
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 3855
      Width = 870
      Height = 195
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
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 2
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 5145
      Top = 1800
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 10
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
    Begin CheckBox Check1
      Caption = "All"
      Index = 1
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 375
      Top = 1830
      Width = 915
      Height = 195
      Visible = 0   'False
      TabIndex = 9
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
    Begin Frame Frame1
      Caption = "Site Selection"
      Left = 7065
      Top = 270
      Width = 4065
      Height = 3540
      Visible = 0   'False
      TabIndex = 4
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin CommandButton Command1
        Caption = "&OK"
        Left = 1485
        Top = 3060
        Width = 1485
        Height = 390
        TabIndex = 6
      End
      Begin TextBox txtSite
        Index = 0
        Left = 1095
        Top = 285
        Width = 2820
        Height = 360
        TabIndex = 5
      End
      Begin DataGrid DGSite
        Left = 1095
        Top = 660
        Width = 2835
        Height = 2355
        Visible = 0   'False
        TabStop = 0   'False
        TabIndex = 7
      End
      Begin Label Label1
        Caption = "Site Name"
        Left = 120
        Top = 315
        Width = 900
        Height = 270
        TabIndex = 8
      End
    End
    Begin CommandButton BtnParam
      Caption = "&For Site"
      BackColor = &HC0C0C0&
      Left = 9810
      Top = 15
      Width = 1305
      Height = 375
      Visible = 0   'False
      TabIndex = 3
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rHallRepView.frx":0
      ToolTipText = "Works Only at Head Office"
    End
    Begin MSHFlexGrid GridSel
      Index = 1
      Left = 315
      Top = 1755
      Width = 4695
      Height = 1650
      Visible = 0   'False
      TabIndex = 20
    End
    Begin MSHFlexGrid GridSel
      Index = 2
      Left = 5085
      Top = 1755
      Width = 4710
      Height = 1650
      Visible = 0   'False
      TabIndex = 21
    End
    Begin MSHFlexGrid GridSel
      Index = 4
      Left = 5115
      Top = 3780
      Width = 4710
      Height = 1650
      Visible = 0   'False
      TabIndex = 22
    End
    Begin MSHFlexGrid GridSel
      Index = 3
      Left = 300
      Top = 3795
      Width = 4710
      Height = 1650
      Visible = 0   'False
      TabIndex = 23
    End
    Begin MSHFlexGrid FGrid
      Left = 275
      Top = 75
      Width = 4455
      Height = 1560
      TabIndex = 24
    End
  End
End

Attribute VB_Name = "rHallRepView"

Private global_152 As Integer
Private global_202 As Integer
Private global_148 As Integer
Private global_150 As Integer
Private global_156 As Variant
Private global_188 As Integer
Private global_190 As Integer
Private global_144 As Long
Private global_126 As Integer
Private global_124 As Integer
Private global_128 As Variant

Private Sub btnExit_UnknownEvent_9 'E17D18
  'Data Table: 577ED8
  loc_E17D0D: Me.Global.Unload Me
  loc_E17D15: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 'F3CE84
  'Data Table: 577ED8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CD7B: Me.DGSite.Visible = False
  loc_F3CD9A: If (Me.RecordCount > 0) Then
  loc_F3CDD9:   Set var_B4 = Me.txtSite
  loc_F3CDDF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3CDE7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CE1A:   var_B0 = Me.Fields.Item("Name")
  loc_F3CE39:   Set var_B4 = Me.txtSite
  loc_F3CE3F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3CE47:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CE5D: End If
  loc_F3CE68: Set var_A8 = Me.txtSite
  loc_F3CE6E: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F3CE76: var_B0.SetFocus
  loc_F3CE82: Exit Sub
End Sub

Private Sub BtnParam_Click() 'E9E158
  'Data Table: 577ED8
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9E0DA: Set global_196 = New 
  loc_E9E0EC: Me.Recordset15.CursorLocation = 3
  loc_E9E114: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F92044), 0
  loc_E9E122: CVarUnk
  loc_E9E127: VerifyVarObj
  loc_E9E12D: Set var_88 = Me.DGSite
  loc_E9E133: LateIdStAd
  loc_E9E14D: Me.Frame1.Visible = True
  loc_E9E155: Exit Sub
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FCA1F8
  'Data Table: 577ED8
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FCA058: On Error Goto loc_FCA1CD
  loc_FCA05E: var_8A = Index
  loc_FCA069: If (var_8A = CInt(0)) Then
  loc_FCA0BA:   Set var_98 = Me.txtSite
  loc_FCA0C0:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FCA0C8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FCA0E0:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FCA0E3:     Exit Sub
  loc_FCA0E4:   End If
  loc_FCA0F1:   Set var_98 = Me.txtSite
  loc_FCA0F7:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FCA0FF:   var_A0 = var_9C.Text
  loc_FCA107:   var_D8 = CVar(var_A0) 'String
  loc_FCA14C:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FCA155:     Me.MoveFirst
  loc_FCA17A:     Set var_98 = Me.txtSite
  loc_FCA180:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FCA188:     0 = var_9C.Text
  loc_FCA196:     Proc_6_17_EAA2B0(var_D8, CVar(var_A0))
  loc_FCA1AC:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FCA1C4:   End If
  loc_FCA1C4: End If
  loc_FCA1C9: Set var_88 = Nothing
  loc_FCA1CC: Exit Sub
  loc_FCA1CD: ' Referenced from: FCA058
  loc_FCA1D3: Call 0.Method_arg_50 (var_A0)
  loc_FCA1E8: Proc_6_152_1077F50(var_A0)
  loc_FCA1F4: Exit Sub
  loc_FCA1F5: Set var_114 = "txtSite_GotFocus"
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EF972C
  'Data Table: 577ED8
  loc_EF9668: On Error Goto loc_EF9701
  loc_EF9671: If (Shift = &HD) Then
  loc_EF967C:   var_88 = "	"
  loc_EF9682:   Proc_303_0_FB9B68(var_88)
  loc_EF968A: End If
  loc_EF9698: If (KeyCode = CInt(0)) Then
  loc_EF96B3:   Set var_A0 = Nothing
  loc_EF96BE:   Set var_9C = Nothing
  loc_EF96EC:   Proc_6_69_134A198(Me.DGSite, Me.txtSite, KeyCode, global_196, Shift, &HFF)
  loc_EF9700: End If
  loc_EF9700: Exit Sub
  loc_EF9701: ' Referenced from: EF9668
  loc_EF9707: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EF971C: Proc_6_152_1077F50(var_88, "txtSite_KeyDown", 0)
  loc_EF9728: Exit Sub
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EC052C
  'Data Table: 577ED8
  loc_EC0494: On Error Goto loc_EC0501
  loc_EC04A5: If (KeyAscii = CInt(0)) Then
  loc_EC04C4:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EC04D6:     var_A0 = "Name"
  loc_EC04F1:     Proc_6_89_146F1AC(Me.txtSite, KeyAscii, global_196, arg_10)
  loc_EC0500:   End If
  loc_EC0500: End If
  loc_EC0500: Exit Sub
  loc_EC0501: ' Referenced from: EC0494
  loc_EC0507: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EC051C: Proc_6_152_1077F50(var_A0, "txtSite_KeyPress")
  loc_EC0528: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDE410
  'Data Table: 577ED8
  loc_EDE360: On Error Goto loc_EDE3E7
  loc_EDE371: If (KeyCode = CInt(0)) Then
  loc_EDE397:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDE3A8:     Call txtSite_KeyDown(KeyCode, global_148)
  loc_EDE3BC:     var_A4 = "Name"
  loc_EDE3D7:     Proc_6_89_146F1AC(Me.txtSite, KeyCode, global_196, Shift)
  loc_EDE3E6:   End If
  loc_EDE3E6: End If
  loc_EDE3E6: Exit Sub
  loc_EDE3E7: ' Referenced from: EDE360
  loc_EDE3ED: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDE402: Proc_6_152_1077F50(var_A4, "txtSite_KeyUp")
  loc_EDE40E: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E879B8
  'Data Table: 577ED8
  loc_E8794C: On Error Goto loc_E8798F
  loc_E87957: Call txtSite_Validate(Index)
  loc_E87977: If (Me.FrmList.Visible = &HFF) Then
  loc_E87986:   Me.FrmList.Visible = False
  loc_E8798E: End If
  loc_E8798E: Exit Sub
  loc_E8798F: ' Referenced from: E8794C
  loc_E87995: Call 0.Method_arg_50 (var_90)
  loc_E879AA: Proc_6_152_1077F50(var_90, "txtSite_LostFocus")
  loc_E879B6: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FD95BC
  'Data Table: 577ED8
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD93F4: On Error Goto loc_FD9593
  loc_FD93FA: var_86 = Cancel
  loc_FD9405: If (var_86 = CInt(0)) Then
  loc_FD9456:   Set var_94 = Me.txtSite
  loc_FD945C:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FD9464:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD947C:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FD948D:     Set var_94 = Me.txtSite
  loc_FD9493:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD949B:     var_98.Tag = vbNullString
  loc_FD94B5:     Set var_94 = Me.txtSite
  loc_FD94BB:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD94C3:     var_98.Text = vbNullString
  loc_FD94D2:   Else
  loc_FD950E:     Set var_B0 = Me.txtSite
  loc_FD9514:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD951C:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD9560:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD956E:     Set var_B0 = Me.txtSite
  loc_FD9574:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD957C:     var_B4.Tag = var_9C
  loc_FD9592:   End If
  loc_FD9592: End If
  loc_FD9592: Exit Sub
  loc_FD9593: ' Referenced from: FD93F4
  loc_FD9599: Call 0.Method_arg_50 (var_9C)
  loc_FD95A1: var_CC = "txtSite_Validate"
  loc_FD95AE: Proc_6_152_1077F50(var_9C)
  loc_FD95BA: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '1A157A4
  'Data Table: 577ED8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim unk_577EDB As Connection15
  Dim var_BC As Variant
  Dim var_94 As Recordset15
  Dim var_D4 As String
  Dim var_C4 As Variant
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_13C As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_AC As MSHFlexGrid
  loc_1A1231C: On Error Goto loc_1A1579C
  loc_1A12324: global_152 = &HFF
  loc_1A1232B: Set var_98 = Me.FGrid1
  loc_1A12331: var_A8 = var_98.DataSource
  loc_1A1234D: If (var_A8 Is Nothing) Then
  loc_1A12350:   Exit Sub
  loc_1A12351: End If
  loc_1A12367: unk_577EDB.Execute "Select * From FAEnviro", var_A8, -1
  loc_1A12372: Set var_94 = var_98
  loc_1A1238A: var_98 = var_94.Fields
  loc_1A123EE: var_138 = IIf((Proc_6_38_E68A98(CVar(var_98.Item("daterfill")), var_98) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_1A123F7: MemVar_1F923C0 = CStr(var_138)
  loc_1A1248B: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_1A12494: MemVar_1F923C4 = CStr(var_138)
  loc_1A12528: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_1A12555: var_BC = "linefiller"
  loc_1A12569: var_AC = var_94.Fields.Item(var_BC)
  loc_1A12580: var_D4 = "linefiller"
  loc_1A125A8: var_108 = "-"
  loc_1A125C5: var_138 = IIf((Proc_6_38_E68A98(CVar(var_AC), CStr(var_138)) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_D4)))))
  loc_1A125CE: MemVar_1F923CC = CStr(var_138)
  loc_1A12601: var_140 = CStr(Me.FGrid1.Tag)
  loc_1A12612: If (var_140 = "SalesRegister") Then
  loc_1A12618:   var_88 = "SalesRegHall"
  loc_1A12621:   global_112 = "Sales Register Report"
  loc_1A12628: Else
  loc_1A12630:   If (var_140 = "SalesRegisterItemWise") Then
  loc_1A12636:     var_88 = "SalesRegHallItemWise"
  loc_1A1263F:     global_112 = "Sales Register Item Wise Report"
  loc_1A12646:   Else
  loc_1A1264E:     If (var_140 = "CompanyWiseSaleHall") Then
  loc_1A12654:       var_88 = "SalesRegHallItemWise"
  loc_1A1265D:       global_112 = "Company Wise Sale Report"
  loc_1A12664:     Else
  loc_1A1266C:       If (var_140 = "OutStanding") Then
  loc_1A12672:         var_88 = "OutStanding"
  loc_1A1267B:         global_112 = "OutStanding Report"
  loc_1A12682:       Else
  loc_1A1268A:         If (var_140 = "PartyOutStanding") Then
  loc_1A12690:           var_88 = "PartyOutStanding"
  loc_1A12699:           global_112 = "Party Wise OutStanding"
  loc_1A126A0:         Else
  loc_1A126A8:           If (var_140 = "CashierCollection") Then
  loc_1A126AE:             var_88 = "CashierSummaryHall"
  loc_1A126B7:             global_112 = "Cashier Report"
  loc_1A126BE:           Else
  loc_1A126C6:             If (var_140 = "CashierCollectionMIS") Then
  loc_1A126CC:               var_88 = "CashierSummaryHallMIS"
  loc_1A126D5:               global_112 = "Cashier Colection Summary"
  loc_1A126DC:             Else
  loc_1A126E4:               If (var_140 = "BookingDetail") Then
  loc_1A126EA:                 var_88 = "BookingDetail"
  loc_1A126F3:                 global_112 = "Booking Inquiry Detail"
  loc_1A126FA:               Else
  loc_1A12702:                 If (var_140 = "TaxReportHall") Then
  loc_1A12708:                   var_88 = "TaxReportHall"
  loc_1A12711:                   global_112 = "Tax Report"
  loc_1A12718:                 Else
  loc_1A12720:                   If (var_140 = "TaxDetailsBanq") Then
  loc_1A12726:                     var_88 = "TaxwiseDetailReportHall"
  loc_1A1272F:                     global_112 = "Taxwise Details"
  loc_1A12736:                   Else
  loc_1A1273E:                     If (var_140 = "TaxSummaryHall") Then
  loc_1A12744:                       var_88 = "TaxSummaryHall"
  loc_1A1274D:                       global_112 = "Tax Summary"
  loc_1A12754:                     Else
  loc_1A1275C:                       If (var_140 = "SettleRepHall") Then
  loc_1A12762:                         var_88 = "SettleRepHall"
  loc_1A1276B:                         global_112 = "Settlement Report"
  loc_1A12772:                       Else
  loc_1A1277A:                         If (var_140 = "DailyFuncSheet") Then
  loc_1A12780:                           var_88 = "DailyFuncSheet"
  loc_1A12789:                           global_112 = "Daily Function Sheet"
  loc_1A12790:                         Else
  loc_1A12798:                           If (var_140 = "CoverAnalysis") Then
  loc_1A1279E:                             var_88 = "CoverAnalysisHall"
  loc_1A127A7:                             global_112 = "Cover Analysis Report"
  loc_1A127AE:                           Else
  loc_1A127B6:                             If (var_140 = "ItemWiseSaleHall") Then
  loc_1A127BC:                               var_88 = "ItemWiseSaleHall"
  loc_1A127C5:                               global_112 = "Item Wise Sales Report"
  loc_1A127CC:                             Else
  loc_1A127D4:                               If (var_140 = "FunctionWiseItemDetail") Then
  loc_1A127DA:                                 var_88 = "FunctionWiseItemDetail"
  loc_1A127E3:                                 global_112 = "Function Wise Item Detail"
  loc_1A127E7:                               End If
  loc_1A127E7:                             End If
  loc_1A127E7:                           End If
  loc_1A127E7:                         End If
  loc_1A127E7:                       End If
  loc_1A127E7:                     End If
  loc_1A127E7:                   End If
  loc_1A127E7:                 End If
  loc_1A127E7:               End If
  loc_1A127E7:             End If
  loc_1A127E7:           End If
  loc_1A127E7:         End If
  loc_1A127E7:       End If
  loc_1A127E7:     End If
  loc_1A127E7:   End If
  loc_1A127E7: End If
  loc_1A127F0: If (global_152 = 0) Then
  loc_1A127F3:   Exit Sub
  loc_1A127F4: End If
  loc_1A127F8: Set var_98 = Me.FGrid1
  loc_1A12835: Set var_C4 = var_98.DataSource
  loc_1A1283B: CreateFieldDefFile(var_C4, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_1A12869: var_C0 = "\" & var_88
  loc_1A1287D: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C0 & ".RPT", var_BC, var_98)
  loc_1A12888: MemVar_1F921E4 = var_98
  loc_1A128A4: Set var_98 = Me.FGrid1
  loc_1A128AA: var_A8 = var_98.DataSource
  loc_1A128B5: CVarUnk
  loc_1A128C3: Call 0.Method_arg_64 (var_AC, var_A8, var_BC, var_D4)
  loc_1A128CB: Call 0.Method_arg_2C (var_A8, MemVar_1F923CC)
  loc_1A128E4: Call 0.Method_arg_150 (global_152)
  loc_1A128FA: Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A12902: Call 0.Method_arg_24 (var_8A)
  loc_1A1290E: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_1A12927:   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A1292F:   Call 0.Method_arg_20 (var_AC)
  loc_1A12937:   Call 0.Method_arg_30 (var_C0)
  loc_1A1294D:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_1A1297D:   If (var_160 = Ucase("comp_name")) Then
  loc_1A129A1:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A129A9:     Call 0.Method_arg_20 (var_AC)
  loc_1A129B1:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1A129C7:   Else
  loc_1A129E9:     If (var_160 = Ucase("comp_add1")) Then
  loc_1A12A0D:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12A15:       Call 0.Method_arg_20 (var_AC)
  loc_1A12A1D:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1A12A33:     Else
  loc_1A12A55:       If (var_160 = Ucase("comp_pin")) Then
  loc_1A12A79:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12A81:         Call 0.Method_arg_20 (var_AC)
  loc_1A12A89:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1A12A9F:       Else
  loc_1A12AC1:         If (var_160 = Ucase("comp_GSTIN")) Then
  loc_1A12AE5:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12AED:           Call 0.Method_arg_20 (var_AC)
  loc_1A12AF5:           Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1A12B0B:         Else
  loc_1A12B2D:           If (var_160 = Ucase("Title")) Then
  loc_1A12B54:             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12B5C:             Call 0.Method_arg_20 (var_AC)
  loc_1A12B64:             Call 0.Method_arg_38 ("'" & global_112 & "'")
  loc_1A12B7A:           Else
  loc_1A12B9C:             If (var_160 = Ucase("BetweenDate")) Then
  loc_1A12BA9:               Set var_98 = Me.Text1
  loc_1A12BD2:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A12BDA:               Call 0.Method_arg_20 (var_C4)
  loc_1A12BE2:               Call 0.Method_arg_38 ("'" & var_98.Text & "'")
  loc_1A12BFC:             Else
  loc_1A12C1E:               If (var_160 = Ucase("Dater")) Then
  loc_1A12C42:                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12C4A:                 Call 0.Method_arg_20 (var_AC)
  loc_1A12C52:                 Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_1A12C68:               Else
  loc_1A12C8A:                 If (var_160 = Ucase("Pager")) Then
  loc_1A12C94:                   var_C0 = "'" & MemVar_1F923C4
  loc_1A12CAE:                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12CB6:                   Call 0.Method_arg_20 (var_AC)
  loc_1A12CBE:                   Call 0.Method_arg_38 (var_C0 & "'")
  loc_1A12CD1:                 End If
  loc_1A12CD1:               End If
  loc_1A12CD1:             End If
  loc_1A12CD1:           End If
  loc_1A12CD1:         End If
  loc_1A12CD1:       End If
  loc_1A12CD1:     End If
  loc_1A12CD1:   End If
  loc_1A12CD4: Next var_150 'Integer
  loc_1A12CDD: Set var_98 = Me.FGrid1
  loc_1A12CEB: var_168 = CStr(var_98.Tag)
  loc_1A12CFC: If (var_168 = "SalesRegister") Then
  loc_1A12D10:   Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A12D18:   Call 0.Method_arg_24 (var_8A)
  loc_1A12D24:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_1A12D3D:     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12D45:     Call 0.Method_arg_20 (var_AC)
  loc_1A12D4D:     Call 0.Method_arg_30 (var_C0)
  loc_1A12D63:     var_17C = Ucase(CVar(var_C0)) 'Variant
  loc_1A12D93:     If (var_17C = Ucase("ForOutlet")) Then
  loc_1A12DE4:       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A12DEC:       Call 0.Method_arg_20 (var_C4)
  loc_1A12DF4:       Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A12E13:     Else
  loc_1A12E35:       If (var_17C = Ucase("ItemDetail")) Then
  loc_1A12E86:         Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A12E8E:         Call 0.Method_arg_20 (var_C4)
  loc_1A12E96:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1A12EB2:       End If
  loc_1A12EB2:     End If
  loc_1A12EB5:   Next var_16C 'Integer
  loc_1A12EC0:   If (Cancel = 1) Then
  loc_1A12ED0:     ReDim Preserve var_90(0 To 2)
  loc_1A12F05:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A12F3D:     var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1A12F54:     Set var_98 = Me.Text3
  loc_1A12F5A:     var_C0 = var_98.Text
  loc_1A12F75:     var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1A12F82:   End If
  loc_1A12F85: Else
  loc_1A12F8D:   If Not (var_168 = "SalesRegisterItemWise") Then
  loc_1A12F98:     If (var_168 = "CompanyWiseSaleHall") Then
  loc_1A12F9B:     End If
  loc_1A12FAC:     Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A12FB4:     Call 0.Method_arg_24 (var_8A)
  loc_1A12FC0:     For var_180 =  To CInt(var_14C):   1 = var_180 'Integer
  loc_1A12FD9:       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A12FE1:       Call 0.Method_arg_20 (var_AC)
  loc_1A12FE9:       Call 0.Method_arg_30 (var_C0)
  loc_1A12FFF:       var_190 = Ucase(CVar(var_C0)) 'Variant
  loc_1A1302F:       If (var_190 = Ucase("ForOutlet")) Then
  loc_1A13080:         Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13088:         Call 0.Method_arg_20 (var_C4)
  loc_1A13090:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A130AF:       Else
  loc_1A130D1:         If (var_190 = Ucase("ItemDetail")) Then
  loc_1A13122:           Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A1312A:           Call 0.Method_arg_20 (var_C4)
  loc_1A13132:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1A13151:         Else
  loc_1A13173:           If (var_190 = Ucase("mTax1")) Then
  loc_1A131BE:             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A131C6:             Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A131CE:             Call 0.Method_arg_38 ("'")
  loc_1A131EB:           Else
  loc_1A1320D:             If (var_190 = Ucase("mTax2")) Then
  loc_1A13258:               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A13260:               Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A13268:               Call 0.Method_arg_38 ("'")
  loc_1A13285:             Else
  loc_1A132A7:               If (var_190 = Ucase("mTax3")) Then
  loc_1A132F2:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A132FA:                 Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A13302:                 Call 0.Method_arg_38 ("'")
  loc_1A1331F:               Else
  loc_1A13341:                 If (var_190 = Ucase("mTax4")) Then
  loc_1A1338C:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A13394:                   Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A1339C:                   Call 0.Method_arg_38 ("'")
  loc_1A133B9:                 Else
  loc_1A133DB:                   If (var_190 = Ucase("mTax5")) Then
  loc_1A13426:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A1342E:                     Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A13436:                     Call 0.Method_arg_38 ("'")
  loc_1A13453:                   Else
  loc_1A13475:                     If (var_190 = Ucase("mTax6")) Then
  loc_1A134C0:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A134C8:                       Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A134D0:                       Call 0.Method_arg_38 ("'")
  loc_1A134ED:                     Else
  loc_1A1350F:                       If (var_190 = Ucase("mTax7")) Then
  loc_1A1355A:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A13562:                         Call 0.Method_arg_20 (&HF & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A1356A:                         Call 0.Method_arg_38 ("'")
  loc_1A13587:                       Else
  loc_1A135A9:                         If (var_190 = Ucase("mTax8")) Then
  loc_1A135F4:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A135FC:                           Call 0.Method_arg_20 (&H10 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A13604:                           Call 0.Method_arg_38 ("'")
  loc_1A13621:                         Else
  loc_1A13643:                           If (var_190 = Ucase("mTax9")) Then
  loc_1A1368E:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A13696:                             Call 0.Method_arg_20 (&H11 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A1369E:                             Call 0.Method_arg_38 ("'")
  loc_1A136B8:                           End If
  loc_1A136B8:                         End If
  loc_1A136B8:                       End If
  loc_1A136B8:                     End If
  loc_1A136B8:                   End If
  loc_1A136B8:                 End If
  loc_1A136B8:               End If
  loc_1A136B8:             End If
  loc_1A136B8:           End If
  loc_1A136B8:         End If
  loc_1A136B8:       End If
  loc_1A136BB:     Next var_180 'Integer
  loc_1A136C6:     If (Cancel = 1) Then
  loc_1A136D6:       ReDim Preserve var_90(0 To 2)
  loc_1A1370B:       var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A13743:       var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1A1375A:       Set var_98 = Me.Text3
  loc_1A13760:       var_C0 = var_98.Text
  loc_1A1377B:       var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1A13788:     End If
  loc_1A1378B:   Else
  loc_1A13793:     If (var_168 = "OutStanding") Then
  loc_1A137A7:       Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A137AF:       Call 0.Method_arg_24 (var_8A)
  loc_1A137BB:       For var_194 =  To CInt(var_14C):     1 = var_194 'Integer
  loc_1A137D4:         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A137DC:         Call 0.Method_arg_20 (var_AC)
  loc_1A137E4:         Call 0.Method_arg_30 (var_C0)
  loc_1A137FA:         var_1A4 = Ucase(CVar(var_C0)) 'Variant
  loc_1A1382A:         If (var_1A4 = Ucase("ForOutlet")) Then
  loc_1A1387B:           Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13883:           Call 0.Method_arg_20 (var_C4)
  loc_1A1388B:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A138AA:         Else
  loc_1A138CC:           If (var_1A4 = Ucase("ItemDetail")) Then
  loc_1A1391D:             Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13925:             Call 0.Method_arg_20 (var_C4)
  loc_1A1392D:             Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1A13949:           End If
  loc_1A13949:         End If
  loc_1A1394C:       Next var_194 'Integer
  loc_1A13957:       If (Cancel = 1) Then
  loc_1A13967:         ReDim Preserve var_90(0 To 2)
  loc_1A1399C:         var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A139D4:         var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1A139EB:         Set var_98 = Me.Text3
  loc_1A139F1:         var_C0 = var_98.Text
  loc_1A13A0C:         var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1A13A19:       End If
  loc_1A13A1C:     Else
  loc_1A13A24:       If (var_168 = "PartyOutStanding") Then
  loc_1A13A38:         Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A13A40:         Call 0.Method_arg_24 (var_8A)
  loc_1A13A4C:         For var_1A8 =  To CInt(var_14C):       1 = var_1A8 'Integer
  loc_1A13A65:           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A13A6D:           Call 0.Method_arg_20 (var_AC)
  loc_1A13A75:           Call 0.Method_arg_30 (var_C0)
  loc_1A13A8B:           var_1B8 = Ucase(CVar(var_C0)) 'Variant
  loc_1A13ABB:           If (var_1B8 = Ucase("BetweenDate")) Then
  loc_1A13AF1:             Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13AF9:             Call 0.Method_arg_20 (var_C4)
  loc_1A13B01:             Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A13B1B:           Else
  loc_1A13B3D:             If (var_1B8 = Ucase("Guest_Name")) Then
  loc_1A13B73:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13B7B:               Call 0.Method_arg_20 (var_C4)
  loc_1A13B83:               Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A13B9A:             End If
  loc_1A13B9A:           End If
  loc_1A13B9D:         Next var_1A8 'Integer
  loc_1A13BA8:         If (Cancel = 1) Then
  loc_1A13BB8:           ReDim Preserve var_90(0 To 0)
  loc_1A13BCC:           Set var_98 = Me.Text1
  loc_1A13BD2:           var_C0 = var_98.Text
  loc_1A13BED:           var_90(0) = vbNullString & var_C0 & vbNullString
  loc_1A13BFA:         End If
  loc_1A13BFD:       Else
  loc_1A13C05:         If (var_168 = "CashierCollection") Then
  loc_1A13C19:           Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A13C21:           Call 0.Method_arg_24 (var_8A)
  loc_1A13C2D:           For var_1BC =  To CInt(var_14C):         1 = var_1BC 'Integer
  loc_1A13C46:             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A13C4E:             Call 0.Method_arg_20 (var_AC)
  loc_1A13C56:             Call 0.Method_arg_30 (var_C0)
  loc_1A13C6C:             var_1CC = Ucase(CVar(var_C0)) 'Variant
  loc_1A13C9C:             If (var_1CC = Ucase("ForOutlet")) Then
  loc_1A13CED:               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13CF5:               Call 0.Method_arg_20 (var_C4)
  loc_1A13CFD:               Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A13D1C:             Else
  loc_1A13D3E:               If (var_1CC = Ucase("Guest_Name")) Then
  loc_1A13D74:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13D7C:                 Call 0.Method_arg_20 (var_C4)
  loc_1A13D84:                 Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A13D9B:               End If
  loc_1A13D9B:             End If
  loc_1A13D9E:           Next var_1BC 'Integer
  loc_1A13DA9:           If (Cancel = 1) Then
  loc_1A13DB9:             ReDim Preserve var_90(0 To 1)
  loc_1A13DEE:             var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A13E05:             Set var_98 = Me.Text2
  loc_1A13E0B:             var_C0 = var_98.Text
  loc_1A13E26:             var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A13E33:           End If
  loc_1A13E36:         Else
  loc_1A13E3E:           If (var_168 = "CashierCollectionMIS") Then
  loc_1A13E52:             Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A13E5A:             Call 0.Method_arg_24 (var_8A)
  loc_1A13E66:             For var_1D0 =  To CInt(var_14C):           1 = var_1D0 'Integer
  loc_1A13E7F:               Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A13E87:               Call 0.Method_arg_20 (var_AC)
  loc_1A13E8F:               Call 0.Method_arg_30 (var_C0)
  loc_1A13ED5:               If (Ucase(CVar(var_C0)) = Ucase("ForOutlet")) Then
  loc_1A13F26:                 Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A13F2E:                 Call 0.Method_arg_20 (var_C4)
  loc_1A13F36:                 Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1A13F52:               End If
  loc_1A13F55:             Next var_1D0 'Integer
  loc_1A13F60:             If (Cancel = 1) Then
  loc_1A13F70:               ReDim Preserve var_90(0 To 1)
  loc_1A13FA5:               var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A13FBC:               Set var_98 = Me.Text2
  loc_1A13FC2:               var_C0 = var_98.Text
  loc_1A13FDD:               var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A13FEA:             End If
  loc_1A13FED:           Else
  loc_1A13FF5:             If (var_168 = "DailyFuncSheet") Then
  loc_1A14009:               Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A14011:               Call 0.Method_arg_24 (var_8A)
  loc_1A1401D:               For var_1E4 =  To CInt(var_14C):             1 = var_1E4 'Integer
  loc_1A14036:                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A1403E:                 Call 0.Method_arg_20 (var_AC)
  loc_1A14046:                 Call 0.Method_arg_30 (var_C0)
  loc_1A1405C:                 var_1F4 = Ucase(CVar(var_C0)) 'Variant
  loc_1A1408C:                 If (var_1F4 = Ucase("BetweenDate")) Then
  loc_1A140C2:                   Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A140CA:                   Call 0.Method_arg_20 (var_C4)
  loc_1A140D2:                   Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A140EC:                 Else
  loc_1A1410E:                   If (var_1F4 = Ucase("Detail")) Then
  loc_1A14144:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A1414C:                     Call 0.Method_arg_20 (var_C4)
  loc_1A14154:                     Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A1416E:                   Else
  loc_1A14190:                     If (var_1F4 = Ucase("Company")) Then
  loc_1A141C6:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A141CE:                       Call 0.Method_arg_20 (var_C4)
  loc_1A141D6:                       Call 0.Method_arg_38 ("'" & Me.Text3.Text & "'")
  loc_1A141ED:                     End If
  loc_1A141ED:                   End If
  loc_1A141ED:                 End If
  loc_1A141F0:               Next var_1E4 'Integer
  loc_1A141FB:               If (Cancel = 1) Then
  loc_1A1420B:                 ReDim Preserve var_90(0 To 1)
  loc_1A14240:                 var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A14257:                 Set var_98 = Me.Text2
  loc_1A1425D:                 var_C0 = var_98.Text
  loc_1A14278:                 var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A14285:               End If
  loc_1A14288:             Else
  loc_1A14290:               If (var_168 = "FunctionWiseItemDetail") Then
  loc_1A142A4:                 Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A142AC:                 Call 0.Method_arg_24 (var_8A)
  loc_1A142B8:                 For var_1F8 =  To CInt(var_14C):               1 = var_1F8 'Integer
  loc_1A142D1:                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A142D9:                   Call 0.Method_arg_20 (var_AC)
  loc_1A142E1:                   Call 0.Method_arg_30 (var_C0)
  loc_1A142F7:                   var_208 = Ucase(CVar(var_C0)) 'Variant
  loc_1A14327:                   If (var_208 = Ucase("ForDate")) Then
  loc_1A1435D:                     Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A14365:                     Call 0.Method_arg_20 (var_C4)
  loc_1A1436D:                     Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A14387:                   Else
  loc_1A143A9:                     If (var_208 = Ucase("Detail")) Then
  loc_1A143DF:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A143E7:                       Call 0.Method_arg_20 (var_C4)
  loc_1A143EF:                       Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A14406:                     End If
  loc_1A14406:                   End If
  loc_1A14409:                 Next var_1F8 'Integer
  loc_1A14414:                 If (Cancel = 1) Then
  loc_1A14424:                   ReDim Preserve var_90(0 To 1)
  loc_1A14459:                   var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A14470:                   Set var_98 = Me.Text2
  loc_1A14476:                   var_C0 = var_98.Text
  loc_1A14491:                   var_90(1) = vbNullString & var_C0 & vbNullString
  loc_1A1449E:                 End If
  loc_1A144A1:               Else
  loc_1A144A9:                 If Not (var_168 = "SettleRepHall") Then
  loc_1A144B4:                   If (var_168 = "ArrDepReg") Then
  loc_1A144B7:                   End If
  loc_1A144C8:                   Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A144D0:                   Call 0.Method_arg_24 (var_8A)
  loc_1A144DC:                   For var_20C =  To CInt(var_14C):                 1 = var_20C 'Integer
  loc_1A144F5:                     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A144FD:                     Call 0.Method_arg_20 (var_AC)
  loc_1A14505:                     Call 0.Method_arg_30 (var_C0)
  loc_1A1454B:                     If (Ucase(CVar(var_C0)) = Ucase("BetweenDate")) Then
  loc_1A14581:                       Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A14589:                       Call 0.Method_arg_20 (var_C4)
  loc_1A14591:                       Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A145A8:                     End If
  loc_1A145AB:                   Next var_20C 'Integer
  loc_1A145B6:                   If (Cancel = 1) Then
  loc_1A145C6:                     ReDim Preserve var_90(0 To 0)
  loc_1A145DA:                     Set var_98 = Me.Text1
  loc_1A145E0:                     var_C0 = var_98.Text
  loc_1A145FB:                     var_90(0) = vbNullString & var_C0 & vbNullString
  loc_1A14608:                   End If
  loc_1A1460B:                 Else
  loc_1A14613:                   If (var_168 = "TaxSummaryHall") Then
  loc_1A14627:                     Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A1462F:                     Call 0.Method_arg_24 (var_8A)
  loc_1A1463B:                     For var_220 =  To CInt(var_14C):                   1 = var_220 'Integer
  loc_1A14654:                       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A1465C:                       Call 0.Method_arg_20 (var_AC)
  loc_1A14664:                       Call 0.Method_arg_30 (var_C0)
  loc_1A1467A:                       var_230 = Ucase(CVar(var_C0)) 'Variant
  loc_1A146AA:                       If (var_230 = Ucase("Tax1")) Then
  loc_1A146F5:                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A146FD:                         Call 0.Method_arg_20 (7 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A14705:                         Call 0.Method_arg_38 ("'")
  loc_1A14722:                       Else
  loc_1A14744:                         If (var_230 = Ucase("Tax2")) Then
  loc_1A1478F:                           Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A14797:                           Call 0.Method_arg_20 (8 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A1479F:                           Call 0.Method_arg_38 ("'")
  loc_1A147BC:                         Else
  loc_1A147DE:                           If (var_230 = Ucase("Tax3")) Then
  loc_1A14829:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A14831:                             Call 0.Method_arg_20 (9 & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A14839:                             Call 0.Method_arg_38 ("'")
  loc_1A14856:                           Else
  loc_1A14878:                             If (var_230 = Ucase("Tax4")) Then
  loc_1A148C3:                               Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A148CB:                               Call 0.Method_arg_20 (&HA & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A148D3:                               Call 0.Method_arg_38 ("'")
  loc_1A148F0:                             Else
  loc_1A14912:                               If (var_230 = Ucase("Tax5")) Then
  loc_1A1495D:                                 Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A14965:                                 Call 0.Method_arg_20 (&HB & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A1496D:                                 Call 0.Method_arg_38 ("'")
  loc_1A1498A:                               Else
  loc_1A149AC:                                 If (var_230 = Ucase("Tax6")) Then
  loc_1A149F7:                                   Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A149FF:                                   Call 0.Method_arg_20 (&HC & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A14A07:                                   Call 0.Method_arg_38 ("'")
  loc_1A14A24:                                 Else
  loc_1A14A46:                                   If (var_230 = Ucase("Tax7")) Then
  loc_1A14A91:                                     Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A14A99:                                     Call 0.Method_arg_20 (&HD & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A14AA1:                                     Call 0.Method_arg_38 ("'")
  loc_1A14ABE:                                   Else
  loc_1A14AE0:                                     If (var_230 = Ucase("Tax8")) Then
  loc_1A14B2B:                                       Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A14B33:                                       Call 0.Method_arg_20 (&HE & CStr(Me.FGrid1.TextMatrix)) & "'", 0)
  loc_1A14B3B:                                       Call 0.Method_arg_38 ("'")
  loc_1A14B58:                                     Else
  loc_1A14B7A:                                       If (var_230 = Ucase("Tax9")) Then
  loc_1A14B96:                                         Set var_98 = Me.FGrid1
  loc_1A14BA7:                                         var_C0 = CStr(var_98.TextMatrix))
  loc_1A14BC5:                                         Call 0.Method_arg_90 (var_AC, CLng(var_8A), var_C4)
  loc_1A14BCD:                                         Call 0.Method_arg_20 (&HF & var_C0 & "'", 0)
  loc_1A14BD5:                                         Call 0.Method_arg_38 ("'")
  loc_1A14BEF:                                       End If
  loc_1A14BEF:                                     End If
  loc_1A14BEF:                                   End If
  loc_1A14BEF:                                 End If
  loc_1A14BEF:                               End If
  loc_1A14BEF:                             End If
  loc_1A14BEF:                           End If
  loc_1A14BEF:                         End If
  loc_1A14BEF:                       End If
  loc_1A14BF2:                     Next var_220 'Integer
  loc_1A14BFA:                   Else
  loc_1A14C02:                     If (var_168 = "TaxReportHall") Then
  loc_1A14C16:                       Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A14C1E:                       Call 0.Method_arg_24 (var_8A)
  loc_1A14C2A:                       For var_234 =  To CInt(var_14C):                     1 = var_234 'Integer
  loc_1A14C43:                         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14C4B:                         Call 0.Method_arg_20 (var_AC)
  loc_1A14C53:                         Call 0.Method_arg_30 (var_C0)
  loc_1A14C69:                         var_244 = Ucase(CVar(var_C0)) 'Variant
  loc_1A14C99:                         If (var_244 = Ucase("mTaxP1")) Then
  loc_1A14CC0:                           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14CC8:                           Call 0.Method_arg_20 (var_AC)
  loc_1A14CD0:                           Call 0.Method_arg_38 ("'" & global_212 & "'")
  loc_1A14CE6:                         Else
  loc_1A14D08:                           If (var_244 = Ucase("mTaxP2")) Then
  loc_1A14D2F:                             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14D37:                             Call 0.Method_arg_20 (var_AC)
  loc_1A14D3F:                             Call 0.Method_arg_38 ("'" & global_216 & "'")
  loc_1A14D55:                           Else
  loc_1A14D77:                             If (var_244 = Ucase("mTaxP3")) Then
  loc_1A14D9E:                               Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14DA6:                               Call 0.Method_arg_20 (var_AC)
  loc_1A14DAE:                               Call 0.Method_arg_38 ("'" & global_220 & "'")
  loc_1A14DC4:                             Else
  loc_1A14DE6:                               If (var_244 = Ucase("mTaxP4")) Then
  loc_1A14E0D:                                 Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14E15:                                 Call 0.Method_arg_20 (var_AC)
  loc_1A14E1D:                                 Call 0.Method_arg_38 ("'" & global_224 & "'")
  loc_1A14E33:                               Else
  loc_1A14E55:                                 If (var_244 = Ucase("mTaxP5")) Then
  loc_1A14E7C:                                   Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14E84:                                   Call 0.Method_arg_20 (var_AC)
  loc_1A14E8C:                                   Call 0.Method_arg_38 ("'" & global_228 & "'")
  loc_1A14EA2:                                 Else
  loc_1A14EC4:                                   If (var_244 = Ucase("mTaxP6")) Then
  loc_1A14EEB:                                     Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14EF3:                                     Call 0.Method_arg_20 (var_AC)
  loc_1A14EFB:                                     Call 0.Method_arg_38 ("'" & global_232 & "'")
  loc_1A14F11:                                   Else
  loc_1A14F33:                                     If (var_244 = Ucase("mTaxP7")) Then
  loc_1A14F5A:                                       Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14F62:                                       Call 0.Method_arg_20 (var_AC)
  loc_1A14F6A:                                       Call 0.Method_arg_38 ("'" & global_236 & "'")
  loc_1A14F80:                                     Else
  loc_1A14FA2:                                       If (var_244 = Ucase("mTaxP8")) Then
  loc_1A14FC9:                                         Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A14FD1:                                         Call 0.Method_arg_20 (var_AC)
  loc_1A14FD9:                                         Call 0.Method_arg_38 ("'" & global_240 & "'")
  loc_1A14FEF:                                       Else
  loc_1A15011:                                         If (var_244 = Ucase("mTaxP9")) Then
  loc_1A1501E:                                           var_C0 = "'" & global_244
  loc_1A15038:                                           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A15040:                                           Call 0.Method_arg_20 (var_AC)
  loc_1A15048:                                           Call 0.Method_arg_38 (var_C0 & "'")
  loc_1A1505B:                                         End If
  loc_1A1505B:                                       End If
  loc_1A1505B:                                     End If
  loc_1A1505B:                                   End If
  loc_1A1505B:                                 End If
  loc_1A1505B:                               End If
  loc_1A1505B:                             End If
  loc_1A1505B:                           End If
  loc_1A1505B:                         End If
  loc_1A1505E:                       Next var_234 'Integer
  loc_1A15066:                     Else
  loc_1A1506E:                       If (var_168 = "CoverAnalysis") Then
  loc_1A15082:                         Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A1508A:                         Call 0.Method_arg_24 (var_8A)
  loc_1A15096:                         For var_248 =  To CInt(var_14C):                       1 = var_248 'Integer
  loc_1A150AF:                           Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A150B7:                           Call 0.Method_arg_20 (var_AC)
  loc_1A150BF:                           Call 0.Method_arg_30 (var_C0)
  loc_1A15105:                           If (Ucase(CVar(var_C0)) = Ucase("BetweenDate")) Then
  loc_1A1512F:                             var_118 = CVar("'" & Me.Text1.Text & " To:                        ") 'String
  loc_1A15149:                             var_128 = var_118 & Right(CVar(Me.Text2), &HB) 
  loc_1A1516A:                             Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A15172:                             Call 0.Method_arg_20 (var_C4)
  loc_1A1517A:                             Call 0.Method_arg_38 (CStr(var_128 & "'"))
  loc_1A151A0:                           End If
  loc_1A151A3:                         Next var_248 'Integer
  loc_1A151AE:                         If (Cancel = 1) Then
  loc_1A151BE:                           ReDim Preserve var_90(0 To 0)
  loc_1A151D2:                           Set var_98 = Me.Text1
  loc_1A151D8:                           var_C0 = var_98.Text
  loc_1A151F3:                           var_90(0) = vbNullString & var_C0 & vbNullString
  loc_1A15200:                         End If
  loc_1A15203:                       Else
  loc_1A1520B:                         If (var_168 = "ItemWiseSaleHall") Then
  loc_1A1521F:                           Call 0.Method_arg_90 (var_98, var_14C)
  loc_1A15227:                           Call 0.Method_arg_24 (var_8A)
  loc_1A15233:                           For var_25C =  To CInt(var_14C):                         1 = var_25C 'Integer
  loc_1A1524C:                             Call 0.Method_arg_90 (var_98, CLng(var_8A))
  loc_1A15254:                             Call 0.Method_arg_20 (var_AC)
  loc_1A1525C:                             Call 0.Method_arg_30 (var_C0)
  loc_1A15272:                             var_26C = Ucase(CVar(var_C0)) 'Variant
  loc_1A152A2:                             If (var_26C = Ucase("FromDate")) Then
  loc_1A152D8:                               Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A152E0:                               Call 0.Method_arg_20 (var_C4)
  loc_1A152E8:                               Call 0.Method_arg_38 ("'" & Me.Text1.Text & "'")
  loc_1A15302:                             Else
  loc_1A15324:                               If (var_26C = Ucase("ToDate")) Then
  loc_1A1535A:                                 Call 0.Method_arg_90 (var_AC, CLng(var_8A))
  loc_1A15362:                                 Call 0.Method_arg_20 (var_C4)
  loc_1A1536A:                                 Call 0.Method_arg_38 ("'" & Me.Text2.Text & "'")
  loc_1A15381:                               End If
  loc_1A15381:                             End If
  loc_1A15384:                           Next var_25C 'Integer
  loc_1A1538F:                           If (Cancel = 1) Then
  loc_1A1539F:                             ReDim Preserve var_90(0 To 0)
  loc_1A153D4:                             var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1A153E1:                           End If
  loc_1A153E1:                         End If
  loc_1A153E1:                       End If
  loc_1A153E1:                     End If
  loc_1A153E1:                   End If
  loc_1A153E1:                 End If
  loc_1A153E1:               End If
  loc_1A153E1:             End If
  loc_1A153E1:           End If
  loc_1A153E1:         End If
  loc_1A153E1:       End If
  loc_1A153E1:     End If
  loc_1A153E1:   End If
  loc_1A153E1: End If
  loc_1A153E7: If (Cancel = 1) Then
  loc_1A153FC:   var_270 = CStr(Me.FGrid1.Tag)
  loc_1A1540D:   If (var_270 = "SalesRegister") Then
  loc_1A1542B:     var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A15431:     MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A1544D:     var_13C = 0
  loc_1A15456:     var_C0 = "C"
  loc_1A15471:     Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_112)
  loc_1A1548A:   Else
  loc_1A15492:     If Not (var_270 = "PartyOutStanding") Then
  loc_1A1549D:       If (var_270 = "PartyWiseOutStanding") Then
  loc_1A154A0:       End If
  loc_1A154BB:       var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A154C1:       MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A154DD:       var_13C = 0
  loc_1A15501:       Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_112, var_90, "C")
  loc_1A1551A:     Else
  loc_1A15522:       If Not (var_270 = "CashierCollection") Then
  loc_1A1552D:         If (var_270 = "CashierCollectionMIS") Then
  loc_1A15530:         End If
  loc_1A1554B:         var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A15551:         MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A1556D:         var_13C = 0
  loc_1A15591:         Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_112, var_90, "C")
  loc_1A155AA:       Else
  loc_1A155E9:         var_118 = Me.FGrid1.Tag
  loc_1A15604:         var_128 = Me.FGrid1.Tag
  loc_1A15657:         If (((((CStr(Me.FGrid1.Tag) = "SettleRepHall") Or (CStr(Me.FGrid1.Tag) = "TaxReportHall")) Or (CStr(var_118) = "TaxSummaryHall")) Or (CStr(var_128) = "DailyFuncSheet")) Or (CStr(Me.FGrid1.Tag) = "FunctionWiseItemDetail")) Then
  loc_1A15675:           var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A1567B:           MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A156BB:           Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_112, var_90, "C", 0)
  loc_1A156D1:           Exit Sub
  loc_1A156D2:         End If
  loc_1A156ED:         var_A8 = "Please set 80 col. in your Printer & put it on."
  loc_1A156F3:         MsgBox(var_A8, &H40, "Paper Setting", var_118, var_128)
  loc_1A1570F:         var_13C = 0
  loc_1A15733:         Proc_34_0_14D85A0(var_A8, Me.FGrid1, global_112, var_90, "N", var_13C)
  loc_1A15749:       End If
  loc_1A15749:     End If
  loc_1A15749:   End If
  loc_1A1574C: Else
  loc_1A15768:   Set var_98 = MemVar_1F921E4 
  loc_1A15774:   Proc_6_99_1483714(var_98, Cancel, global_112, &HFF, Nothing)
  loc_1A1577F:   MemVar_1F921E4 = var_98
  loc_1A1578A: End If
  loc_1A1578F: global_202 = 0
  loc_1A15797: MemVar_1F921E4 = Nothing
  loc_1A1579B: Exit Sub
  loc_1A1579C: ' Referenced from: 1A1231C
  loc_1A1579C: Proc_6_60_E62BC4(global_202, var_13C, var_13C)
  loc_1A157A1: Exit Sub
End Sub

Private Sub Form_Load() '12FB9E0
  'Data Table: 577ED8
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_12FB2D4: On Error Goto loc_12FB9D9
  loc_12FB2E5: Me.PictParameter.BackColor = CLng(MemVar_1F921B0)
  loc_12FB2FB: Me.PictPreview.BackColor = CLng(MemVar_1F921B0)
  loc_12FB316: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FB331: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FB340: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12FB357: Set var_88 = Me.GridSel
  loc_12FB35D: Call 0.Method_Form_Load0 (1, var_AC)
  loc_12FB365: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FB383: Set var_88 = Me.GridSel
  loc_12FB389: Call 0.Method_Form_Load0 (2, var_AC)
  loc_12FB391: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FB3AF: Set var_88 = Me.GridSel
  loc_12FB3B5: Call 0.Method_Form_Load0 (3, var_AC)
  loc_12FB3BD: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FB3DB: Set var_88 = Me.GridSel
  loc_12FB3E1: Call 0.Method_Form_Load0 (4, var_AC)
  loc_12FB3E9: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12FB403: Me.Text1.BackColor = CLng(MemVar_1F921B0)
  loc_12FB419: Me.Text2.BackColor = CLng(MemVar_1F921B0)
  loc_12FB42F: Me.Text3.BackColor = CLng(MemVar_1F921B0)
  loc_12FB43F: Set var_88 = Me.Text4
  loc_12FB445: var_88.BackColor = CLng(MemVar_1F921B0)
  loc_12FB456: Call 0.Method_arg_160 (var_88)
  loc_12FB464: Call 0.Method_arg_164 (var_88)
  loc_12FB46C: var_98 = "Add"
  loc_12FB476: Set var_88 = Me.Mas
  loc_12FB48C: Set var_88 = Me.ImgLogo
  loc_12FB492: MDIForm1.ImgLogo.Left = CDbl(0)
  loc_12FB4A8: Me.Text2.Left = CDbl(0)
  loc_12FB4BE: Me.Text3.Left = CDbl(0)
  loc_12FB4D4: Me.Text4.Left = CDbl(0)
  loc_12FB4DF: var_98 = CVar(CDbl(0)) 'Single
  loc_12FB4EE: Me.FGrid1.Left = var_98
  loc_12FB4FA: Set var_AC = Me.LblRefresh
  loc_12FB500: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006(Mas.DispID_68030005)
  loc_12FB50D: Set var_88 = Me.LblRefresh
  loc_12FB513: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_98)
  loc_12FB52D: Me.Text1.Top = (CDbl() + CDbl(var_CC))
  loc_12FB578: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_12FB5BC: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_12FB600: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_12FB615: Set var_AC = Me.Text4
  loc_12FB62D: var_D4 = Me.Text4.Top
  loc_12FB639: var_98 = CVar((var_D4 + var_AC.Height)) 'Single
  loc_12FB648: Me.FGrid1.Top = var_98
  loc_12FB65C: Call 0.Method_Me0 (var_D4)
  loc_12FB673: Me.Text1.Width = (var_D4 - CDbl(&H32))
  loc_12FB681: Call 0.Method_Me0 (var_D4)
  loc_12FB698: Me.Text2.Width = (var_D4 - CDbl(&H32))
  loc_12FB6A6: Call 0.Method_Me0 (var_D4)
  loc_12FB6BD: Me.Text3.Width = (var_D4 - CDbl(&H32))
  loc_12FB6CB: Call 0.Method_Me0 (var_D4)
  loc_12FB6E2: Me.Text4.Width = (var_D4 - CDbl(&H32))
  loc_12FB6F0: Call 0.Method_Me0 (var_D4)
  loc_12FB6FC: var_98 = CVar((var_D4 - CDbl(&H32))) 'Single
  loc_12FB70B: Me.FGrid1.Width = var_98
  loc_12FB719: Call 0.Method_Me8 (var_D4)
  loc_12FB730: Me.FGrid1.Height = CVar(var_D4)
  loc_12FB741: Call 0.Method_arg_1C0 (var_DC)
  loc_12FB74C: global_208 = var_DC
  loc_12FB759: var_E0 = global_52
  loc_12FB764: If (var_E0 = "SalesRegister") Then
  loc_12FB76D:   Call 0.Method_arg_54 ("Sales Register")
  loc_12FB775: Else
  loc_12FB77D:   If (var_E0 = "PartyOutStanding") Then
  loc_12FB786:     Call 0.Method_arg_54 ("Party OutStanding")
  loc_12FB78E:   Else
  loc_12FB796:     If (var_E0 = "PartyWiseOutStanding") Then
  loc_12FB79F:       Call 0.Method_arg_54 ("Party Wise OutStanding")
  loc_12FB7A7:     Else
  loc_12FB7AF:       If (var_E0 = "CashierCollection") Then
  loc_12FB7B8:         Call 0.Method_arg_54 ("Cashier Report")
  loc_12FB7C0:       Else
  loc_12FB7C8:         If (var_E0 = "CashierCollectionMIS") Then
  loc_12FB7D1:           Call 0.Method_arg_54 ("Cashier Collection Summary (MIS)")
  loc_12FB7D9:         Else
  loc_12FB7E1:           If (var_E0 = "BookingDetail") Then
  loc_12FB7EA:             Call 0.Method_arg_54 ("Booking Inquiry Detail")
  loc_12FB7F2:           Else
  loc_12FB7FA:             If (var_E0 = "SettleRepHall") Then
  loc_12FB803:               Call 0.Method_arg_54 ("Settlement Report")
  loc_12FB80B:             Else
  loc_12FB813:               If (var_E0 = "SettleRepHall") Then
  loc_12FB81C:                 Call 0.Method_arg_54 ("Settlement Report")
  loc_12FB824:               Else
  loc_12FB82C:                 If (var_E0 = "TaxReportHall") Then
  loc_12FB835:                   Call 0.Method_arg_54 ("Tax Report")
  loc_12FB83D:                 Else
  loc_12FB845:                   If (var_E0 = "TaxwiseDetailReportHall") Then
  loc_12FB84E:                     Call 0.Method_arg_54 ("Taxwise Detail")
  loc_12FB856:                   Else
  loc_12FB85E:                     If (var_E0 = "TaxSummaryHall") Then
  loc_12FB867:                       Call 0.Method_arg_54 ("Tax Summary")
  loc_12FB86F:                     Else
  loc_12FB877:                       If (var_E0 = "DailyFuncSheet") Then
  loc_12FB880:                         Call 0.Method_arg_54 ("Daily Function Sheet")
  loc_12FB888:                       Else
  loc_12FB890:                         If (var_E0 = "CoverAnalysis") Then
  loc_12FB899:                           Call 0.Method_arg_54 ("Cover Analysis Report")
  loc_12FB8A1:                         Else
  loc_12FB8A9:                           If (var_E0 = "ItemWiseSaleHall") Then
  loc_12FB8B2:                             Call 0.Method_arg_54 ("Item Wise Sale Report")
  loc_12FB8BA:                           Else
  loc_12FB8C2:                             If (var_E0 = "CompanyWiseSaleHall") Then
  loc_12FB8CB:                               Call 0.Method_arg_54 ("Company Wise Sale Report")
  loc_12FB8D3:                             Else
  loc_12FB8DB:                               If (var_E0 = "FunctionWiseItemDetail") Then
  loc_12FB8E4:                                 Call 0.Method_arg_54 ("Function Wise Item Detail")
  loc_12FB8E9:                               End If
  loc_12FB8E9:                             End If
  loc_12FB8E9:                           End If
  loc_12FB8E9:                         End If
  loc_12FB8E9:                       End If
  loc_12FB8E9:                     End If
  loc_12FB8E9:                   End If
  loc_12FB8E9:                 End If
  loc_12FB8E9:               End If
  loc_12FB8E9:             End If
  loc_12FB8E9:           End If
  loc_12FB8E9:         End If
  loc_12FB8E9:       End If
  loc_12FB8E9:     End If
  loc_12FB8E9:   End If
  loc_12FB8E9: End If
  loc_12FB8EF: Call rHallRepView.global_88Put(MemVar_1F92078)
  loc_12FB8FA: Call rHallRepView.global_92Put(MemVar_1F923D4)
  loc_12FB905: Call 0.Method_arg_50 (var_DC)
  loc_12FB910: Call 0.Method_arg_54 (var_DC)
  loc_12FB926: Set var_88 = Me.txtSite
  loc_12FB92C: Call 0.Method_Form_Load0 (0, var_AC)
  loc_12FB934: var_AC.Tag = MemVar_1F92078
  loc_12FB94E: Set var_88 = Me.txtSite
  loc_12FB954: Call 0.Method_Form_Load0 (0, var_AC)
  loc_12FB95C: var_AC.Text = MemVar_1F923D4
  loc_12FB96E: Call 0.Method_arg_50 (var_DC)
  loc_12FB982: Me.LblTitle.Caption = var_DC
  loc_12FB993: Call 0.Method_arg_50 (var_DC)
  loc_12FB9A3: Set var_88 = Me.LblRep
  loc_12FB9A9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_DC))
  loc_12FB9BC: If (MemVar_1F92070 = "HO") Then
  loc_12FB9CB:   Me.BtnParam.Visible = True
  loc_12FB9D3: End If
  loc_12FB9D3: Call Proc_249_90_15ABF24()
  loc_12FB9D8: Exit Sub
  loc_12FB9D9: ' Referenced from: 12FB2D4
  loc_12FB9D9: Proc_6_60_E62BC4()
  loc_12FB9DE: Exit Sub
End Sub

Private Sub Form_Resize() 'F816A4
  'Data Table: 577ED8
  Dim var_AC As Variant
  loc_F81550: On Error Resume Next
  loc_F8155B: Call 0.Method_arg_98 (var_86)
  loc_F8156A: If (CLng(var_86) <> 1) Then
  loc_F81585:   Proc_6_23_DFBA28(Me, 0)
  loc_F81597:   Call 0.Method_arg_7C (CDbl(590))
  loc_F815A5:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_F815AA: End If
  loc_F815B4: Call 0.Method_arg_100 (var_94)
  loc_F815C0: If (var_94 > CDbl(0)) Then
  loc_F815DD:   Call 0.Method_arg_100 (var_94)
  loc_F815F4:   Me.PictPreview.Width = (var_94 - Me.PictParameter.ScaleWidth)
  loc_F8161B:   var_AC = CVar((Me.PictPreview.ScaleWidth - CDbl(&H4B))) 'Single
  loc_F8162A:   Me.FGrid1.Width = var_AC
  loc_F8167D:   var_AC = CVar(((Me.PictPreview.ScaleHeight - (Me.Text4.Top + Me.Text4.Height)) - CDbl(&H4B))) 'Single
  loc_F8168C:   Me.FGrid1.Height = var_AC
  loc_F8169C: End If
  loc_F816A0: Exit Sub
  loc_F816A1: StAryRecMove
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E79C28
  'Data Table: 577ED8
  loc_E79BCF: Set global_96 = Nothing
  loc_E79BE1: Set global_100 = Nothing
  loc_E79BF3: Set global_104 = Nothing
  loc_E79C05: Set global_108 = Nothing
  loc_E79C17: Set global_192 = Nothing
  loc_E79C23: MemVar_1F921E4 = Nothing
  loc_E79C27: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F23B00
  'Data Table: 577ED8
  loc_F23A03: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_F23A2E:   Set var_90 = Me.GridSel
  loc_F23A34:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F23A5C:   Me.TxtSearch.Visible = False
  loc_F23A64: End If
  loc_F23A6E: If (CLng(KeyCode) = &H2E) Then
  loc_F23A7E:   Me.TxtSearch.Text = vbNullString
  loc_F23A86: End If
  loc_F23A9B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F23AC6:   Set var_90 = Me.GridSel
  loc_F23ACC:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F23AF4:   Me.TxtSearch.Visible = False
  loc_F23AFC: End If
  loc_F23AFC: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CE144
  'Data Table: 577ED8
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CDD0D: var_90 = Me.TxtSearch.Tag
  loc_11CDD22: If (var_90 = CStr(1)) Then
  loc_11CDD78:   Set var_A0 = Me.GridSel
  loc_11CDD7E:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CDDF4:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_96, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CDE1F: Else
  loc_11CDE2E:   If (var_90 = CStr(2)) Then
  loc_11CDE59:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CDE84:     Set var_A0 = Me.GridSel
  loc_11CDE8A:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CDF00:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_100, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CDF2B:   Else
  loc_11CDF3A:     If (var_90 = CStr(3)) Then
  loc_11CDF65:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CDF90:       Set var_A0 = Me.GridSel
  loc_11CDF96:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CDF9E:       var_B4 = var_A4.Col
  loc_11CE00C:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE037:     Else
  loc_11CE046:       If (var_90 = CStr(4)) Then
  loc_11CE071:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CE09C:         Set var_A0 = Me.GridSel
  loc_11CE0A2:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CE118:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE140:       End If
  loc_11CE140:     End If
  loc_11CE140:   End If
  loc_11CE140: End If
  loc_11CE140: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E8F8F0
  'Data Table: 577ED8
  loc_E8F889: Me.TxtSearch.Text = vbNullString
  loc_E8F8B9: Set var_90 = Me.GridSel
  loc_E8F8BF: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8F8E7: Me.TxtSearch.Visible = False
  loc_E8F8EF: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E90EBC
  'Data Table: 577ED8
  loc_E90E55: Me.TxtSearch.Text = vbNullString
  loc_E90E85: Set var_90 = Me.GridSel
  loc_E90E8B: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E90EB3: Me.TxtSearch.Visible = False
  loc_E90EBB: Exit Sub
End Sub

Private Sub LblRefresh_UnknownEvent_9 'F1B414
  'Data Table: 577ED8
  Dim var_A8 As Variant
  loc_F1B322: Me.FGrid1.Visible = True
  loc_F1B337: Set var_A8 = Me.BtnPrint
  loc_F1B33D: Call 0.Method_LblRefresh_UnknownEvent_90 (3, var_AC)
  loc_F1B345: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F1B35E: Set var_A8 = Me.BtnPrint
  loc_F1B364: Call 0.Method_LblRefresh_UnknownEvent_90 (2, var_AC)
  loc_F1B36C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F1B37C: Set var_A8 = Me.LblRefresh
  loc_F1B382: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_F1B397: If (CLng(CInt()) = 1) Then
  loc_F1B3A4:   Set var_A8 = Me.LblRefresh
  loc_F1B3AA:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Paramater")
  loc_F1B3BF:   Me.LblProcess.Caption = "Please Wait..."
  loc_F1B3D1:   Me.LblProcess.Refresh
  loc_F1B3D9:   Call Proc_249_88_1565B78()
  loc_F1B3E1: Else
  loc_F1B3EB:   Set var_A8 = Me.LblRefresh
  loc_F1B3F1:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Refresh")
  loc_F1B406:   Me.LblProcess.Caption = " "
  loc_F1B40E:   Call Proc_249_98_E21E24()
  loc_F1B413: End If
  loc_F1B413: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61A34
  'Data Table: 577ED8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E619FF: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E61A07: Call Proc_249_91_E4B07C()
  loc_E61A17: Set var_A8 = Me.TxtGrid
  loc_E61A1D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61A25: var_AC.Visible = False
  loc_E61A31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F180
  'Data Table: 577ED8
  loc_E1F177: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F17F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10A37B8
  'Data Table: 577ED8
  Dim var_9C As String
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A352B: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_126))) Then
  loc_10A3541:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A3551:   var_9C = "+{Tab}"
  loc_10A3557:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag))
  loc_10A3561:   arg_C = 0
  loc_10A3567: Else
  loc_10A359E:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_124))) Then
  loc_10A35B4:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A35CA:     Proc_303_0_FB9B68("	", 0)
  loc_10A35D4:     arg_C = 0
  loc_10A35D7:   End If
  loc_10A35D7: End If
  loc_10A35DD: global_148 = arg_C
  loc_10A3603: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A3627: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10A363D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A3655:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A365A:   var_104 = vbNullString
  loc_10A3664:   Set var_118 = Me.FGrid
  loc_10A366A:   LateIdCallSt
  loc_10A3695:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A369A:   var_E4 = 2
  loc_10A36A3:   var_104 = vbNullString
  loc_10A36AD:   Set var_D4 = Me.FGrid
  loc_10A36B3:   LateIdCallSt
  loc_10A36C5: End If
  loc_10A36CF: If (CLng(arg_C) = &HD) Then
  loc_10A36E5:   var_11C = CLng(Me.FGrid.Row)
  loc_10A36F5:   If Not (var_11C = CLng(0)) Then
  loc_10A36FF:     If Not (var_11C = CLng(1)) Then
  loc_10A3709:       If Not (var_11C = CLng(2)) Then
  loc_10A3713:         If Not (var_11C = CLng(3)) Then
  loc_10A371D:           If Not (var_11C = CLng(4)) Then
  loc_10A3727:             If Not (var_11C = CLng(5)) Then
  loc_10A3731:               If Not (var_11C = CLng(6)) Then
  loc_10A373B:                 If Not (var_11C = CLng(7)) Then
  loc_10A3745:                   If Not (var_11C = CLng(8)) Then
  loc_10A374F:                     If (var_11C = CLng(9)) Then
  loc_10A3752:                     End If
  loc_10A3752:                   End If
  loc_10A3752:                 End If
  loc_10A3752:               End If
  loc_10A3752:             End If
  loc_10A3752:           End If
  loc_10A3752:         End If
  loc_10A3752:       End If
  loc_10A3752:     End If
  loc_10A3793:     Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A37AD:     global_150 = 0
  loc_10A37B0:   End If
  loc_10A37B0: End If
  loc_10A37B2: arg_C = 0
  loc_10A37B5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0A978
  'Data Table: 577ED8
  Dim var_9C As Long
  loc_F0A8AB: var_9C = CLng(Me.FGrid.Row)
  loc_F0A8BB: If Not (var_9C = CLng(0)) Then
  loc_F0A8C5:   If Not (var_9C = CLng(1)) Then
  loc_F0A8CF:     If Not (var_9C = CLng(2)) Then
  loc_F0A8D9:       If Not (var_9C = CLng(3)) Then
  loc_F0A8E3:         If Not (var_9C = CLng(4)) Then
  loc_F0A8ED:           If Not (var_9C = CLng(5)) Then
  loc_F0A8F7:             If Not (var_9C = CLng(6)) Then
  loc_F0A901:               If Not (var_9C = CLng(7)) Then
  loc_F0A90B:                 If Not (var_9C = CLng(8)) Then
  loc_F0A915:                   If (var_9C = CLng(9)) Then
  loc_F0A918:                   End If
  loc_F0A918:                 End If
  loc_F0A918:               End If
  loc_F0A918:             End If
  loc_F0A918:           End If
  loc_F0A918:         End If
  loc_F0A918:       End If
  loc_F0A918:     End If
  loc_F0A918:   End If
  loc_F0A930:   var_AC = 0
  loc_F0A959:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0A96E: End If
  loc_F0A973: global_150 = 0
  loc_F0A976: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F73394
  'Data Table: 577ED8
  Dim var_9C As Long
  loc_F7326B: var_9C = CLng(Me.FGrid.Row)
  loc_F7327B: If Not (var_9C = CLng(5)) Then
  loc_F73285:   If Not (var_9C = CLng(6)) Then
  loc_F7328F:     If Not (var_9C = CLng(7)) Then
  loc_F73299:       If Not (var_9C = CLng(8)) Then
  loc_F732A3:         If (var_9C = CLng(9)) Then
  loc_F732A6:         End If
  loc_F732A6:       End If
  loc_F732A6:     End If
  loc_F732A6:   End If
  loc_F732E4:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F732F9: Else
  loc_F73300:   If Not (var_9C = CLng(0)) Then
  loc_F7330A:     If Not (var_9C = CLng(1)) Then
  loc_F73314:       If Not (var_9C = CLng(2)) Then
  loc_F7331E:         If Not (var_9C = CLng(3)) Then
  loc_F73328:           If (var_9C = CLng(4)) Then
  loc_F7332B:           End If
  loc_F7332B:         End If
  loc_F7332B:       End If
  loc_F7332B:     End If
  loc_F73369:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_F7337B:   End If
  loc_F7337B: End If
  loc_F73385: If (CLng(Index) <> &HD) Then
  loc_F7338D:   global_150 = &HFF
  loc_F73390: End If
  loc_F73390: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F130
  'Data Table: 577ED8
  loc_E1F127: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1F12F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F900
  'Data Table: 577ED8
  loc_E1F8F7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F8FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43820
  'Data Table: 577ED8
  Dim var_8C As TextBox
  loc_E437FF: Set var_88 = Me.TxtGrid
  loc_E43805: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4380D: var_8C.Visible = False
  loc_E43819: Call Proc_249_91_E4B07C()
  loc_E4381E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11DF5D8
  'Data Table: 577ED8
  Dim var_98 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_11DF18B: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11DF1A6: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DF1E4: Set var_108 = Me.TxtGrid
  loc_11DF1EA: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11DF1F2: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11DF223: var_114 = CLng(Me.FGrid.Row)
  loc_11DF233: If (var_114 = CLng(2)) Then
  loc_11DF23C:   var_118 = global_52
  loc_11DF247:   If (var_118 = "BookingDetail") Then
  loc_11DF257:     ReDim var_11C(0 To 2)
  loc_11DF26E:     var_11C(0) = "Active"
  loc_11DF27D:     var_11C(1) = "InActive"
  loc_11DF28C:     var_11C(2) = "ALL"
  loc_11DF2E3:     Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_11DF2F7:   Else
  loc_11DF2FF:     If (var_118 = "SalesRegister") Then
  loc_11DF30F:       ReDim var_11C(0 To 1)
  loc_11DF326:       var_11C(0) = "Yes"
  loc_11DF335:       var_11C(1) = "No"
  loc_11DF38C:       Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_11DF3A0:     Else
  loc_11DF3A8:       If (var_118 = "DailyFuncSheet") Then
  loc_11DF3B8:         ReDim var_11C(0 To 2)
  loc_11DF3CF:         var_11C(0) = "Function"
  loc_11DF3DE:         var_11C(1) = "Pending"
  loc_11DF3ED:         var_11C(2) = "Advance"
  loc_11DF444:         Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 3, Array(var_11C))
  loc_11DF455:       End If
  loc_11DF455:     End If
  loc_11DF455:   End If
  loc_11DF458: Else
  loc_11DF45F:   If (var_114 = CLng(3)) Then
  loc_11DF473:     If (global_52 = "DailyFuncSheet") Then
  loc_11DF483:       ReDim var_11C(0 To 1)
  loc_11DF49A:       var_11C(0) = "Yes"
  loc_11DF4A9:       var_11C(1) = "No"
  loc_11DF500:       Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_11DF511:     End If
  loc_11DF514:   Else
  loc_11DF51B:     If (var_114 = CLng(4)) Then
  loc_11DF52F:       If (global_52 = "DailyFuncSheet") Then
  loc_11DF53F:         ReDim var_11C(0 To 1)
  loc_11DF556:         var_11C(0) = "Yes"
  loc_11DF565:         var_11C(1) = "No"
  loc_11DF57C:         global_156 = Array(var_11C)
  loc_11DF5BC:         Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, global_156, 2, global_156)
  loc_11DF5CD:       End If
  loc_11DF5CD:     End If
  loc_11DF5CD:   End If
  loc_11DF5CD: End If
  loc_11DF5D2: Set var_88 = Nothing
  loc_11DF5D5: Exit Sub
  loc_11DF5D6: Set arg_6000 = global_156
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C84C8
  'Data Table: 577ED8
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_12C7E8A: If (CLng(Shift) = &H1B) Then
  loc_12C7E99:   Set var_8C = Me.TxtGrid
  loc_12C7E9F:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C7EB8:   Set var_98 = Me.TxtGrid
  loc_12C7EBE:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C7EC6:   var_9C.Text = var_90.Tag
  loc_12C7EE2:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C7EEB:   Set var_8C = Me.FGrid
  loc_12C7F07:   Set var_8C = Me.TxtGrid
  loc_12C7F0D:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12C7F15:   var_90.Visible = FGrid.DispID_8001
  loc_12C7F21:   Call Proc_249_91_E4B07C(arg_14)
  loc_12C7F26:   Exit Sub
  loc_12C7F27: End If
  loc_12C7F3A: var_B0 = CLng(Me.FGrid.Row)
  loc_12C7F4A: If (var_B0 = CLng(2)) Then
  loc_12C7F53:   var_B4 = global_52
  loc_12C7F5E:   If Not (var_B4 = "BookingDetail") Then
  loc_12C7F69:     If (var_B4 = "DailyFuncSheet") Then
  loc_12C7F6C:     End If
  loc_12C7F8D:     Set var_8C = Me.TxtGrid
  loc_12C7F93:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C7F9B:     var_B8 = var_90.Left
  loc_12C7FAC:     Set var_98 = Me.TxtGrid
  loc_12C7FB2:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C7FBA:     var_BC = var_9C.Top
  loc_12C7FCB:     Set var_C0 = Me.TxtGrid
  loc_12C7FD1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C7FD9:     var_C8 = var_C4.Height
  loc_12C7FEA:     Set var_CC = Me.TxtGrid
  loc_12C7FF0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C7FF8:     var_D4 = var_D0.Width
  loc_12C8045:     Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C806C:   Else
  loc_12C8074:     If (var_B4 = "SalesRegister") Then
  loc_12C8098:       Set var_8C = Me.TxtGrid
  loc_12C809E:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_12C80A6:       CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_12C80B7:       Set var_98 = Me.TxtGrid
  loc_12C80BD:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_12C80C5:       CInt(var_D4) = var_9C.Top
  loc_12C80D6:       Set var_C0 = Me.TxtGrid
  loc_12C80DC:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_12C80E4:       0 = var_C4.Height
  loc_12C80F5:       Set var_CC = Me.TxtGrid
  loc_12C80FB:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C8103:       var_D4 = var_D0.Width
  loc_12C8150:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C8174:     End If
  loc_12C8174:   End If
  loc_12C817E:   If (CLng(Shift) = &HD) Then
  loc_12C818E:     Call Proc_249_89_1363080(0, 0, var_E6, CInt(var_B8))
  loc_12C8199:     If (var_E6 = &HFF) Then
  loc_12C819C:       Call Proc_249_93_F02A6C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12C81A1:     End If
  loc_12C81A1:   End If
  loc_12C81A4: Else
  loc_12C81AB:   If (var_B0 = CLng(3)) Then
  loc_12C81BF:     If (global_52 = "DailyFuncSheet") Then
  loc_12C81E3:       Set var_8C = Me.TxtGrid
  loc_12C81E9:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12C81F1:       0 = var_90.Left
  loc_12C8202:       Set var_98 = Me.TxtGrid
  loc_12C8208:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C8210:       var_BC = var_9C.Top
  loc_12C8221:       Set var_C0 = Me.TxtGrid
  loc_12C8227:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C822F:       var_C8 = var_C4.Height
  loc_12C8240:       Set var_CC = Me.TxtGrid
  loc_12C8246:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C824E:       var_D4 = var_D0.Width
  loc_12C829B:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C82BF:     End If
  loc_12C82C9:     If (CLng(Shift) = &HD) Then
  loc_12C82D9:       Call Proc_249_89_1363080(0, 0, var_E6, CInt(var_B8))
  loc_12C82E4:       If (var_E6 = &HFF) Then
  loc_12C82E7:         Call Proc_249_93_F02A6C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12C82EC:       End If
  loc_12C82EC:     End If
  loc_12C82EF:   Else
  loc_12C82F6:     If (var_B0 = CLng(4)) Then
  loc_12C830A:       If (global_52 = "DailyFuncSheet") Then
  loc_12C832E:         Set var_8C = Me.TxtGrid
  loc_12C8334:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12C833C:         0 = var_90.Left
  loc_12C834D:         Set var_98 = Me.TxtGrid
  loc_12C8353:         Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C835B:         var_BC = var_9C.Top
  loc_12C836C:         Set var_C0 = Me.TxtGrid
  loc_12C8372:         Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C837A:         var_C8 = var_C4.Height
  loc_12C838B:         Set var_CC = Me.TxtGrid
  loc_12C8391:         Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C8399:         var_D4 = var_D0.Width
  loc_12C83E6:         Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C840A:       End If
  loc_12C8414:       If (CLng(Shift) = &HD) Then
  loc_12C8424:         Call Proc_249_89_1363080(0, 0, var_E6, CInt(var_B8))
  loc_12C842F:         If (var_E6 = &HFF) Then
  loc_12C8432:           Call Proc_249_93_F02A6C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12C8437:         End If
  loc_12C8437:       End If
  loc_12C843A:     Else
  loc_12C8441:       If Not (var_B0 = CLng(0)) Then
  loc_12C844B:         If (var_B0 = CLng(1)) Then
  loc_12C844E:         End If
  loc_12C848E:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_12C849E:           Call Proc_249_89_1363080(0, 0, var_E6)
  loc_12C84A9:           If (var_E6 = &HFF) Then
  loc_12C84AC:             Call Proc_249_93_F02A6C(0)
  loc_12C84B1:           End If
  loc_12C84B1:         End If
  loc_12C84B4:       Else
  loc_12C84BB:         If (var_B0 = CLng(5)) Then
  loc_12C84C4:           var_104 = global_52
  loc_12C84C7:         End If
  loc_12C84C7:       End If
  loc_12C84C7:     End If
  loc_12C84C7:   End If
  loc_12C84C7: End If
  loc_12C84C7: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EADDC0
  'Data Table: 577ED8
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_EADD3B: Proc_6_58_E054C0(arg_10)
  loc_EADD53: var_9C = CLng(Me.FGrid.Row)
  loc_EADD63: If (var_9C = CLng(5)) Then
  loc_EADD66:   GoTo loc_EADDBE
  loc_EADD69: End If
  loc_EADD70: If (var_9C = CLng(2)) Then
  loc_EADD84:   If (global_52 = "WaiterWiseSale") Then
  loc_EADD91:     Set var_88 = Me.TxtGrid
  loc_EADD97:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EADDB2:     Proc_6_42_129A86C(var_A4, arg_10, 2)
  loc_EADDBE:     ' Referenced from: EADD66
  loc_EADDBE:   End If
  loc_EADDBE: End If
  loc_EADDBE: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10C8524
  'Data Table: 577ED8
  Dim var_9C As Long
  loc_10C823F: var_9C = CLng(Me.FGrid.Row)
  loc_10C824F: If Not (var_9C = CLng(2)) Then
  loc_10C8259:   If Not (var_9C = CLng(3)) Then
  loc_10C8263:     If (var_9C = CLng(4)) Then
  loc_10C8266:     End If
  loc_10C8266:   End If
  loc_10C826C:   var_A0 = global_52
  loc_10C8277:   If Not (var_A0 = "BookingDetail") Then
  loc_10C8282:     If (var_A0 = "DailyFuncSheet") Then
  loc_10C8285:     End If
  loc_10C82B3:     Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0)
  loc_10C82E5:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10C82F6:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10C82FB:     End If
  loc_10C82FE:   Else
  loc_10C8306:     If (var_A0 = "SalesRegister") Then
  loc_10C8337:       Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift, global_192)
  loc_10C8369:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10C837A:         Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10C837F:       End If
  loc_10C8382:     Else
  loc_10C838A:       If (var_A0 = "PartyOutStanding") Then
  loc_10C83BB:         Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift, global_192)
  loc_10C83ED:         If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10C83FE:           Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10C8403:         End If
  loc_10C8406:       Else
  loc_10C840E:         If (var_A0 = "PartyWiseOutStanding") Then
  loc_10C843F:           Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift, global_192, 0)
  loc_10C8471:           If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10C8482:             Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10C8487:           End If
  loc_10C848A:         Else
  loc_10C8492:           If Not (var_A0 = "CashierCollection") Then
  loc_10C849D:             If Not (var_A0 = "CashierCollectionMIS") Then
  loc_10C84A8:               If (var_A0 = "SattleRepHall") Then
  loc_10C84AB:               End If
  loc_10C84AB:             End If
  loc_10C84D9:             Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift, global_192, 0)
  loc_10C850B:             If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_10C851C:               Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_10C8521:             End If
  loc_10C8521:           End If
  loc_10C8521:         End If
  loc_10C8521:       End If
  loc_10C8521:     End If
  loc_10C8521:   End If
  loc_10C8521: End If
  loc_10C8521: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22218
  'Data Table: 577ED8
  Dim arg_10 As Integer
  loc_E221F4: On Error Goto loc_E2220F
  loc_E22202: Call Proc_249_89_1363080(Cancel, &HFF)
  loc_E2220B: arg_10 = Not(var_88)
  loc_E2220E: Exit Sub
  loc_E2220F: ' Referenced from: E221F4
  loc_E2220F: Proc_6_60_E62BC4(arg_10)
  loc_E22214: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB3D98
  'Data Table: 577ED8
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB3D24: Set var_9C = Me.ListView.SelectedItem
  loc_EB3D3B: Set var_A4 = Me.TxtGrid
  loc_EB3D41: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB3D49: var_A8.Text = var_9C.Text
  loc_EB3D6B: Me.FrmList.Visible = False
  loc_EB3D7C: Set var_88 = Me.TxtGrid
  loc_EB3D82: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB3D8A: var_9C.SetFocus
  loc_EB3D96: Exit Sub
End Sub

Private Sub Command1_Click() 'E9E2D4
  'Data Table: 577ED8
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E9E25C: Me.Frame1.Visible = False
  loc_E9E272: Set var_88 = Me.txtSite
  loc_E9E278: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9E28B: global_88 = var_8C.Tag
  loc_E9E2A7: Set var_88 = Me.txtSite
  loc_E9E2AD: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9E2C0: global_92 = var_8C.Text
  loc_E9E2CE: Call Proc_249_95_16519DC()
  loc_E9E2D3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 'E17A6C
  'Data Table: 577ED8
  loc_E17A58: Set var_88 = Me.FGrid1
  loc_E17A69: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'DFC7C4
  'Data Table: 577ED8
  loc_DFC7C0: Exit Sub
  loc_DFC7C1: var_C00 = 
End Sub

Private Sub Check1_Click(Index As Integer) 'FFA498
  'Data Table: 577ED8
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FFA2A9: Set var_88 = Me.Check1
  loc_FFA2AF: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA2CD: If (CLng(var_8C.Value) = 0) Then
  loc_FFA2DE:   Set var_88 = Me.GridSel
  loc_FFA2E4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA2EC:   var_8C.Enabled = True
  loc_FFA302:   Set var_88 = Me.GridSel
  loc_FFA308:   Call 0.Method_Check1_Click0 (Index)
  loc_FFA329:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFA33F:     Set var_88 = Me.GridSel
  loc_FFA345:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA34D:     var_8C.Row = 1
  loc_FFA36C:     Set var_88 = Me.GridSel
  loc_FFA372:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA37A:     var_8C.Col = 0
  loc_FFA386:   End If
  loc_FFA389: Else
  loc_FFA398:   Set var_88 = Me.GridSel
  loc_FFA39E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA3A6:   var_8C.Enabled = False
  loc_FFA3BC:   Set var_88 = Me.GridSel
  loc_FFA3C2:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA3E3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFA3F9:     Set var_88 = Me.GridSel
  loc_FFA3FF:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA426:     Set var_88 = Me.GridSel
  loc_FFA42C:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA434:     var_8C.Col = 0
  loc_FFA44A:     Set var_88 = Me.GridSel
  loc_FFA450:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA467:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FFA476:     Set var_C4 = Me.GridSel
  loc_FFA47C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFA484:     var_C8.RowSel = 0
  loc_FFA497:   End If
  loc_FFA497: End If
  loc_FFA497: Exit Sub
End Sub

Private Sub Check1_GotFocus() 'DFC450
  'Data Table: 577ED8
  Dim Check1_GotFocusFF As String
  loc_DFC44C: Exit Sub
  loc_DFC44D: Check1_GotFocusFF = 
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22460
  'Data Table: 577ED8
  loc_E22446: If (Shift = &HD) Then
  loc_E22457:   Proc_303_0_FB9B68("	")
  loc_E2245F: End If
  loc_E2245F: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'DFC8FC
  'Data Table: 577ED8
  loc_DFC8F8: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'DFD254
  'Data Table: 577ED8
  loc_DFD250: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'DFC484
  'Data Table: 577ED8
  Dim arg_7FFF As Integer
  loc_DFC480: Exit Sub
  loc_DFC481: arg_7FFF = 
End Sub

Private Sub GridSel_UnknownEvent_A '1174688
  'Data Table: 577ED8
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_11742DE: If (arg_10 = &HD) Then
  loc_11742EF:   Proc_303_0_FB9B68("	")
  loc_11742F7: End If
  loc_1174301: Set var_94 = Me.GridSel
  loc_1174307: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1174328: If (CLng(var_98.Rows) < 1) Then
  loc_117432B:   Exit Sub
  loc_117432C: End If
  loc_1174340: Set var_94 = Me.GridSel
  loc_1174346: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1174368: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_117437B:   Set var_94 = Me.GridSel
  loc_1174381:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1174389:   var_98.CellFontName = "WINGDINGS"
  loc_11743A7:   Set var_94 = Me.GridSel
  loc_11743AD:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_11743B5:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_11743CB:   Set var_94 = Me.GridSel
  loc_11743D1:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_11743E2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_11743FA:   Set var_CC = Me.GridSel
  loc_1174400:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_D0, 0)
  loc_1174408:   var_100 = var_D0.TextMatrix)
  loc_117441E:   Set var_164 = Me.GridSel
  loc_1174424:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_168, var_100)
  loc_1174435:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1174483:   Set var_17C = Me.GridSel
  loc_1174489:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1174491:   LateIdCallSt
  loc_11744C5:   var_1E2 = Cancel
  loc_11744CE:   If (var_1E2 = 1) Then
  loc_11744E2:     var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11744F4:     ReDim Preserve global_172(0 To CLng(var_86))
  loc_1174508:     Set var_94 = Me.GridSel
  loc_117450E:     Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_1E2)
  loc_117452A:     global_172(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1174538:   Else
  loc_117453E:     If (var_1E2 = 2) Then
  loc_1174552:       var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1174564:       ReDim Preserve global_176(0 To CLng(var_86))
  loc_1174578:       Set var_94 = Me.GridSel
  loc_117457E:       Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_180)
  loc_117459A:       global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11745A8:     Else
  loc_11745AE:       If (var_1E2 = 3) Then
  loc_11745C2:         var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11745D4:         ReDim Preserve global_180(0 To CLng(var_86))
  loc_11745E8:         Set var_94 = Me.GridSel
  loc_11745EE:         Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_117460A:         global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1174618:       Else
  loc_117461E:         If (var_1E2 = 4) Then
  loc_1174632:           var_86 = CInt((UBound(global_184, 1) + 1))
  loc_1174644:           ReDim Preserve global_184(0 To CLng(var_86))
  loc_1174658:           Set var_94 = Me.GridSel
  loc_117465E:           Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_117467A:           global_184(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1174685:         End If
  loc_1174685:       End If
  loc_1174685:     End If
  loc_1174685:   End If
  loc_1174685: End If
  loc_1174685: Exit Sub
  loc_1174686: var_190 = Record Of arg_6000 'Copy battery of vars to single variable
End Sub

Private Sub GridSel_UnknownEvent_C '1138290
  'Data Table: 577ED8
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1137F2A: Set var_88 = Me.GridSel
  loc_1137F30: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel)
  loc_1137F51: Set var_A0 = Me.GridSel
  loc_1137F57: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_A4)
  loc_1137F81: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1137F84:   Exit Sub
  loc_1137F85: End If
  loc_1137F88: var_B6 = Cancel
  loc_1137F91: If (var_B6 = 1) Then
  loc_1137FAC:   Set var_88 = Me.GridSel
  loc_1137FB2:   Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C)
  loc_1137FBA:   var_9C = var_8C.Col
  loc_1138024:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_96, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138045: Else
  loc_113804B:   If (var_B6 = 2) Then
  loc_1138066:     Set var_88 = Me.GridSel
  loc_113806C:     Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1138074:     var_9C = var_8C.Col
  loc_11380DE:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_100, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_11380FF:   Else
  loc_1138105:     If (var_B6 = 3) Then
  loc_1138120:       Set var_88 = Me.GridSel
  loc_1138126:       Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_113812E:       var_9C = var_8C.Col
  loc_1138198:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_11381B9:     Else
  loc_11381BF:       If (var_B6 = 4) Then
  loc_11381DA:         Set var_88 = Me.GridSel
  loc_11381E0:         Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1138252:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1138270:       End If
  loc_1138270:     End If
  loc_1138270:   End If
  loc_1138270: End If
  loc_1138282: Me.TxtSearch.Tag = CStr(Cancel)
  loc_113828D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E825F4
  'Data Table: 577ED8
  Dim var_8C As MSHFlexGrid
  loc_E82596: Set var_88 = Me.GridSel
  loc_E8259C: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel)
  loc_E825BD: If (CLng(var_8C.Col) <> 0) Then
  loc_E825C0:   Exit Sub
  loc_E825C1: End If
  loc_E825CB: Set var_88 = Me.GridSel
  loc_E825D1: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel, var_8C)
  loc_E825E6: global_188 = CInt(CLng(var_8C.Row))
  loc_E825F3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '11CAD50
  'Data Table: 577ED8
  Dim var_90 As MSHFlexGrid
  Dim var_A8 As MSHFlexGrid
  Dim var_C0 As CheckBox
  Dim var_D8 As Variant
  Dim var_16C As Variant
  Dim var_1BE As Integer
  Dim var_86 As Integer
  loc_11CA902: Set var_8C = Me.GridSel
  loc_11CA908: Call 0.Method_GridSel_UnknownEvent_100 (Cancel)
  loc_11CA933: If ((CLng(var_90.Col) <> 0) Or (global_188 = 0)) Then
  loc_11CA936:   Exit Sub
  loc_11CA937: End If
  loc_11CA941: Set var_8C = Me.GridSel
  loc_11CA947: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_11CA968: Set var_A4 = Me.GridSel
  loc_11CA96E: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_A8)
  loc_11CA993: Set var_BC = Me.Check1
  loc_11CA999: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_C0, var_C2)
  loc_11CA9A1: ((CLng(var_90.Row) = 0) And (CLng(var_A8.Col) = 0)) = var_C0.Visible
  loc_11CA9C3: If (var_90 And (var_C2 = 0)) Then
  loc_11CA9C6:   Exit Sub
  loc_11CA9C7: End If
  loc_11CA9D1: Set var_8C = Me.GridSel
  loc_11CA9D7: Call 0.Method_GridSel_UnknownEvent_100 (Cancel)
  loc_11CA9EC: global_190 = CInt(CLng(var_90.RowSel))
  loc_11CAA08: For var_C6 = global_188 To global_190: var_88 = var_C6 'Integer
  loc_11CAA21:   Set var_8C = Me.GridSel
  loc_11CAA27:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, CVar(CLng(var_88)))
  loc_11CAA2F:   var_90.Row = global_188
  loc_11CAA4E:   Set var_8C = Me.GridSel
  loc_11CAA54:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_11CAA5C:   var_90.Col = global_190
  loc_11CAA78:   Set var_8C = Me.GridSel
  loc_11CAA7E:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_11CAA86:   var_90.CellFontName = "WINGDINGS"
  loc_11CAAA4:   Set var_8C = Me.GridSel
  loc_11CAAAA:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_11CAAB2:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_11CAAC2:   var_D8 = CVar(CLng(var_88)) 'Long
  loc_11CAADA:   Set var_8C = Me.GridSel
  loc_11CAAE0:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_11CAAF8:   var_16C = CVar(CLng(var_88)) 'Long
  loc_11CAB46:   Set var_A4 = Me.GridSel
  loc_11CAB4C:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_A8, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_11CAB54:   LateIdCallSt
  loc_11CAB7C:   var_1BE = Cancel
  loc_11CAB85:   If (var_1BE = 1) Then
  loc_11CAB99:     var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11CABAB:     ReDim Preserve global_172(0 To CLng(var_86))
  loc_11CABBF:     Set var_8C = Me.GridSel
  loc_11CABC5:     Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_1BE, var_A8)
  loc_11CABE1:     global_172(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CABEF:   Else
  loc_11CABF5:     If (var_1BE = 2) Then
  loc_11CAC09:       var_86 = CInt((UBound(global_176, 1) + 1))
  loc_11CAC1B:       ReDim Preserve global_176(0 To CLng(var_86))
  loc_11CAC2F:       Set var_8C = Me.GridSel
  loc_11CAC35:       Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_16C)
  loc_11CAC51:       global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CAC5F:     Else
  loc_11CAC65:       If (var_1BE = 3) Then
  loc_11CAC79:         var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11CAC8B:         ReDim Preserve global_180(0 To CLng(var_86))
  loc_11CAC9F:         Set var_8C = Me.GridSel
  loc_11CACA5:         Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_11CACC1:         global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CACCF:       Else
  loc_11CACD5:         If (var_1BE = 4) Then
  loc_11CACE9:           var_86 = CInt((UBound(global_184, 1) + 1))
  loc_11CACFB:           ReDim Preserve global_184(0 To CLng(var_86))
  loc_11CAD0F:           Set var_8C = Me.GridSel
  loc_11CAD15:           Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_11CAD31:           global_184(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11CAD3C:         End If
  loc_11CAD3C:       End If
  loc_11CAD3C:     End If
  loc_11CAD3C:   End If
  loc_11CAD3F: Next var_C6 'Integer
  loc_11CAD49: global_188 = 0
  loc_11CAD4C: Exit Sub
  loc_11CAD4D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'DFCE78
  'Data Table: 577ED8
  loc_DFCE74: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'DFC144
  'Data Table: 577ED8
  Dim arg_7FFF As Double
  loc_DFC140: Exit Sub
  loc_DFC141: arg_7FFF = 
End Sub

Public Function global_52Get() '57A198
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '57A1A7
  global_52 = Value
End Sub

Public Function global_56Get() '57A1B6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '57A1C5
  global_56 = Value
End Sub

Public Function global_60Get() '57A1D4
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '57A1E3
  global_60 = Value
End Sub

Public Function global_64Get() '57A1F2
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '57A201
  global_64 = Value
End Sub

Public Function global_68Get() '57A210
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '57A21F
  global_68 = Value
End Sub

Public Function global_72Get() '57A22E
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '57A23D
  global_72 = Value
End Sub

Public Function global_76Get() '57A24C
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '57A25B
  global_76 = Value
End Sub

Public Function global_80Get() '57A26A
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '57A279
  global_80 = Value
End Sub

Public Function global_84Get() '57A29C
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '57A2AB
  global_84 = Value
End Sub

Public Function global_88Get() '57A2BA
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '57A2C9
  global_88 = Value
End Sub

Public Function global_92Get() '57A2D8
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '57A2E7
  global_92 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11E0924
  'Data Table: 577ED8
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  Dim arg_DFF As Double
  loc_11E04E1: If (Me.GridSel.Text).rows < 1) Then
  loc_11E04E4:   Exit Sub
  loc_11E04E5: End If
  loc_11E04F9: If (Me.RecordCount <= 0) Then
  loc_11E0505:   Me.TEXT = vbNullString
  loc_11E0509:   Exit Sub
  loc_11E050A: End If
  loc_11E051F: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11E0522:   Exit Sub
  loc_11E0523: End If
  loc_11E052D: If (CLng(KeyAscii) = 8) Then
  loc_11E0547:   If (Len(Me.SelText) > 1) Then
  loc_11E055B:     var_DC = (Len(Me.SelText) - 1)
  loc_11E0563:     Me.SelLength = var_DC
  loc_11E0573:     var_88 = CStr(Me.SelText)
  loc_11E057C:   Else
  loc_11E0585:     Me.TEXT = vbNullString
  loc_11E059F:     Call Me.GridSel.Text).SetFocus
  loc_11E05B0:     Me.Visible = False
  loc_11E05B4:     Exit Sub
  loc_11E05B5:   End If
  loc_11E05B8: Else
  loc_11E05CF:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11E05D4:   var_88 = CStr(var_DC)
  loc_11E05E0: End If
  loc_11E05E3: Me.MoveFirst
  loc_11E0620: If (Me.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11E0663:   Me.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11E0678: Else
  loc_11E06A8:   Me.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11E06B8: End If
  loc_11E06BA: KeyAscii = 0
  loc_11E06E6: If ((Me.AbsolutePosition <> -3) And (Me.AbsolutePosition <> -2)) Then
  loc_11E06EC:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11E0705:   Me.GridSel.Text).CellBackColor = index
  loc_11E071A:   var_BC = CVar(Me.AbsolutePosition) 'Long
  loc_11E0733:   Me.GridSel.Text).Row = index
  loc_11E073D:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11E0756:   Me.GridSel.Text).CellBackColor = index
  loc_11E078C:   Me.TEXT = Me.Fields.Item(CVar(FindFldName)).Value
  loc_11E07A6:   Me.SelLength = CVar(Len(var_88))
  loc_11E07BE:   var_DC = Me.GridSel.Text).CellLeft
  loc_11E07DE:   var_138 = (index + Me.GridSel.Text).left)
  loc_11E07E6:   Me.left = var_138
  loc_11E080B:   var_DC = Me.GridSel.Text).CellTop
  loc_11E082B:   var_138 = (index + Me.GridSel.Text).top)
  loc_11E0833:   Me.top = var_138
  loc_11E0856:   If (Me.Visible = False) Then
  loc_11E0860:     Me.Visible = True
  loc_11E0864:     var_9C = 0
  loc_11E086D:     Call Me.ZOrder
  loc_11E0876:     Call Me.SetFocus
  loc_11E089A:     Me.BackColor = Me.GridSel.Text).CellBackColor
  loc_11E08C3:     Me.ForeColor = Me.GridSel.Text).CellForeColor
  loc_11E08EC:     Me.width = Me.GridSel.Text).CellWidth
  loc_11E0915:     Me.height = Me.GridSel.Text).CellHeight
  loc_11E0920:   End If
  loc_11E0920: End If
  loc_11E0920: Exit Sub
  loc_11E0921: arg_DFF = index
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF6A34
  'Data Table: 577ED8
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim Me As MSHFlexGrid
  Dim var_E4 As Integer
  Dim arg_6008 As String
  loc_FF6854: Call Me.ListItems.Clear
  loc_FF6871: If (Me.RecordCount <= 0) Then
  loc_FF6874:   ListView_Items_RecordSet_Local = 
  loc_FF687A: End If
  loc_FF6885: If (global_52 <> "HundiPrint") Then
  loc_FF6890:   var_104 = "All"
  loc_FF6899:   var_A0 = Me.ListItems
  loc_FF68AA:   Set var_8C = var_A0.add
  loc_FF68BC:   var_A0.ListItem.SubItems = 1
  loc_FF68C1:   ' Referenced from: FF69BC
  loc_FF68C1: End If
  loc_FF68C7: var_116 = Me.EOF
  loc_FF68D0: If Not(var_116) Then
  loc_FF68FD:   var_A0 = Me.Fields.Item("Name").Value
  loc_FF6967:   If Not(IsNull(Me.Fields.Item("Code").Value)) Then
  loc_FF6996:     var_134 = CStr(Me.Fields.Item("Code").Value)
  loc_FF699E:     Me.ListItems.add.SubItems = 1
  loc_FF69B4:   End If
  loc_FF69B7:   Me.MoveNext
  loc_FF69BC:   GoTo loc_FF68C1
  loc_FF69BF: End If
  loc_FF69C9: var_A0 = Me.Text)
  loc_FF69D4: var_E4 = 0
  loc_FF69F3: Set var_8C = Me.FindItem
  loc_FF6A04: If (var_8C Is Nothing) Then
  loc_FF6A07:   ListView_Items_RecordSet_Local = 1
  loc_FF6A10: Else
  loc_FF6A16:   var_8C.EnsureVisible var_116
  loc_FF6A20:   var_8C.Selected = True
  loc_FF6A25: End If
  loc_FF6A28: Set var_88 = var_8C 
  loc_FF6A2C: ListView_Items_RecordSet_Local = var_104
  loc_FF6A32: arg_6008 = var_E4
End Function

Public Sub DailyFuncSheet(formName, FRow, Fcol) '1AC243C
  'Data Table: 577ED8
  Dim var_124 As String
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_1B4 As Variant
  Dim var_1D8 As String
  Dim var_E4 As Variant
  Dim var_1DC As Variant
  Dim var_21C As Variant
  Dim var_22C As Variant
  Dim var_250 As Variant
  Dim var_9C As Long
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_98 As Long
  Dim var_88 As Recordset15
  Dim var_B8 As Long
  Dim var_2A4 As Fields15
  Dim unk_577EDB As Connection15
  Dim var_29C As Recordset15
  Dim var_8C As Recordset15
  Dim var_2B8 As Recordset15
  Dim var_90 As Recordset15
  Dim var_2BC As Recordset15
  Dim var_2C8 As MSHFlexGrid
  loc_1ABE4EC: On Error Goto loc_1AC242B
  loc_1ABE4F5: Call 0.Method_arg_54 ("Daily Function Sheet")
  loc_1ABE4FA: var_124 = "Date Between : "
  loc_1ABE4FF: var_D4 = 0
  loc_1ABE539: var_1B4 = Me.FGrid
  loc_1ABE552: Set var_1DC = 1(CStr(1 & var_1B4.TextMatrix))
  loc_1ABE558: var_1B4.TextBox.Text = 1 & Me.FGrid.TextMatrix & " And "
  loc_1ABE587: var_114 = Me.FGrid
  loc_1ABE5A1: Set var_1DC = 2(1 & CStr(var_114.TextMatrix))
  loc_1ABE5A7: var_114.TextBox.Text = "Detail : "
  loc_1ABE5BD: var_D4 = 3
  loc_1ABE5C4: var_F4 = 1
  loc_1ABE5E9: If (Me.FGrid.TextMatrix = "Yes") Then
  loc_1ABE5EC:   var_D4 = 1
  loc_1ABE615:   If (Me.Check1.Value = 0) Then
  loc_1ABE633:     var_C0 = CStr(" AND S.CompanyCode In (" & Me.GridString1 & ") ")
  loc_1ABE676:     Set var_1DC = Me.Text3
  loc_1ABE67C:     Me.Text3.Text = CStr("For Company : " & Left(Me.FormulaString1, &H73) & vbNullString)
  loc_1ABE695:   Else
  loc_1ABE698:     var_C0 = " AND ISNULL(S.CompanyCode,'')<>'' "
  loc_1ABE6A8:     Me.Text3.Text = "For Company :   All"
  loc_1ABE6B0:   End If
  loc_1ABE6B3: Else
  loc_1ABE6C0:   Me.Text3.Text = vbNullString
  loc_1ABE6C8: End If
  loc_1ABE6C8: var_D4 = 4
  loc_1ABE6CF: var_F4 = 1
  loc_1ABE6DD: var_134 = Me.FGrid.TextMatrix
  loc_1ABE6E5: var_124 = "Yes"
  loc_1ABE6EF: var_154 = 2
  loc_1ABE730: If CBool(1 And (CStr(Me.FGrid.TextMatrix) <> "Advance")) Then
  loc_1ABE733:   var_D4 = 2
  loc_1ABE74A:   var_F4 = 0
  loc_1ABE75C:   If (Me.Check1.Value = var_F4) Then
  loc_1ABE77F:     var_C0 = CStr(CVar(var_C0 & " AND VM.Code In (") & Me.GridString2 & ") ")
  loc_1ABE790:     var_114 = Me.FormulaString2
  loc_1ABE797:     var_D4 = "For Venue : "
  loc_1ABE7A7:     var_134 = Left(var_114, &H73)
  loc_1ABE7AF:     var_144 = var_D4 & var_134 
  loc_1ABE7C4:     Set var_1DC = Me.Text4
  loc_1ABE7CA:     Me.Text4.Text = CStr(var_144 & vbNullString)
  loc_1ABE7E3:   Else
  loc_1ABE7F0:     Me.Text4.Text = "For Venue :   All"
  loc_1ABE7F8:   End If
  loc_1ABE7FB: Else
  loc_1ABE802:   Set var_1DC = Me.Text4
  loc_1ABE808:   var_1DC.Text = vbNullString
  loc_1ABE810: End If
  loc_1ABE81D: Call Proc_249_99_11B47F8(New, var_1DC, var_114, var_D4, var_154, (var_134 = var_124), var_F4)
  loc_1ABE825: Set var_94 = var_1DC
  loc_1ABE828: var_D4 = 2
  loc_1ABE82F: var_F4 = 1
  loc_1ABE859: If (CStr(Me.FGrid.TextMatrix) = "Advance") Then
  loc_1ABE870:   var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,PH.AmtCr As Advance,PH.PayType As Adv_Type,PH.Vno As Adv_No,PH.Vdate As Adv_Date,S.Remark,S.CompanyCode,SG.Name Company FROM " & "((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) Left Join PaychargeH PH On S.DocId=PH.ContraDocId And PH.VType='AD') LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1ABE899:   var_D4 = 0
  loc_1ABE8A0:   var_F4 = 1
  loc_1ABE8A9:   var_114 = Me.FGrid
  loc_1ABE8AE:   VarLateMemCallLdRfVar
  loc_1ABE8B9:   Proc_6_7_F25D88(var_144, var_114, var_F4, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And PH.VDate Between "), var_250, -1, var_1DC)
  loc_1ABE8E3:   VarLateMemCallLdRfVar
  loc_1ABE8EE:   Proc_6_7_F25D88(var_20C, Me.FGrid, 1, 1, var_F4 & var_144 & " And ", var_D4)
  loc_1ABE90D:   Me.Connection15.Execute CStr(var_D4 & var_20C & " Order by PH.VDate,PH.VNo,PH.Sno"), var_114, var_D4
  loc_1ABE918:   Set var_88 = var_1DC
  loc_1ABE94B: Else
  loc_1ABE94B:   var_D4 = 2
  loc_1ABE952:   var_F4 = 1
  loc_1ABE97C:   If (CStr(Me.FGrid.TextMatrix) = "Cancel") Then
  loc_1ABE993:     var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime,S.Remark,S.CompanyCode,SG.Name Company FROM " & "(((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1ABE9BC:     var_D4 = 0
  loc_1ABE9C3:     var_F4 = 1
  loc_1ABE9D1:     VarLateMemCallLdRfVar
  loc_1ABE9DC:     Proc_6_7_F25D88(var_144, Me.FGrid, var_F4, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And Vo.FromDate Between "), var_250, -1)
  loc_1ABEA06:     VarLateMemCallLdRfVar
  loc_1ABEA11:     Proc_6_7_F25D88(var_20C, Me.FGrid, 1, 1, var_1DC & var_144 & " And ")
  loc_1ABEA30:     Me.Connection15.Execute CStr(var_F4 & var_20C & " And S.BookingStatus='Cancel' Order by  Vo.FromDate,Vo.FromTime"), var_D4, var_F4
  loc_1ABEA3B:     Set var_88 = var_1DC
  loc_1ABEA6E:   Else
  loc_1ABEA6E:     var_D4 = 2
  loc_1ABEA75:     var_F4 = 1
  loc_1ABEA9F:     If (CStr(Me.FGrid.TextMatrix) = "Pending") Then
  loc_1ABEAB6:       var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime,S.Remark,S.CompanyCode,SG.Name Company FROM " & "(((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1ABEADF:       var_D4 = 0
  loc_1ABEAE6:       var_F4 = 1
  loc_1ABEAF4:       VarLateMemCallLdRfVar
  loc_1ABEAFF:       Proc_6_7_F25D88(var_144, Me.FGrid, var_F4, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And Vo.FromDate Between "), var_290)
  loc_1ABEB07:       var_1B4 = -1 & var_144 
  loc_1ABEB29:       VarLateMemCallLdRfVar
  loc_1ABEB34:       Proc_6_7_F25D88(var_20C, Me.FGrid, 1, 1, var_1DC & var_144 & " And ")
  loc_1ABEB45:       var_22C = var_1DC & var_20C & " And S.BookingStatus<>'Cancel' And S.DocId Not In (Select BookDocId From HallSale1 Where RestCOde='" 
  loc_1ABEB52:       var_250 = var_22C & CVar(global_208) 
  loc_1ABEB69:       Me.Connection15.Execute CStr(var_250 & "') Order by  S.DocId,Vo.FromDate,Vo.FromTime"), var_F4, var_D4
  loc_1ABEB74:       Set var_88 = var_1DC
  loc_1ABEBAB:     Else
  loc_1ABEBBF:       var_1D8 = "SELECT S.DocId,S.Vno,Case When LTrim(RTrim(IsNull(S.MobileNo,'')))<>'' Then LTrim(RTrim(IsNull(S.MobileNo,''))) End ContactNo,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,S.PartyName AS PartyName,S.NetAmount,S.BookingStatus,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime,S.Remark,S.CompanyCode,SG.Name Company FROM " & "(((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) LEFT JOIN Subgroup SG On S.CompanyCode=SG.Subcode "
  loc_1ABEBE8:       var_D4 = 0
  loc_1ABEBFD:       VarLateMemCallLdRfVar
  loc_1ABEC08:       Proc_6_7_F25D88(var_144, Me.FGrid, 1, var_D4, CVar(var_1D8 & "WHERE S.RestCOde='" & global_208 & "' " & var_C0 & " And Vo.FromDate Between "))
  loc_1ABEC32:       VarLateMemCallLdRfVar
  loc_1ABEC3D:       Proc_6_7_F25D88(var_20C, Me.FGrid, 1, 1, var_250 & var_144 & " And ")
  loc_1ABEC45:       var_21C = -1 & var_20C 
  loc_1ABEC5C:       Me.Connection15.Execute CStr(var_1DC & var_20C & " And S.BookingStatus<>'Cancel' Order by Vo.FromDate,Vo.FromTime"), var_1DC, var_D4
  loc_1ABEC67:       Set var_88 = var_1DC
  loc_1ABEC97:     End If
  loc_1ABEC97:   End If
  loc_1ABEC97: End If
  loc_1ABEC9C: var_9C = 0
  loc_1ABECA2: var_A4 = CDbl(0)
  loc_1ABECA8: var_AC = CDbl(0)
  loc_1ABECAE: var_B4 = CDbl(0)
  loc_1ABECB6: var_98 = 0
  loc_1ABECCD: If (var_88.RecordCount > 0) Then
  loc_1ABECD3:   var_88.MoveFirst
  loc_1ABECD8:   ' Referenced from: 1AC1747
  loc_1ABECE7:   If Not(var_88.EOF) Then
  loc_1ABECEA:     var_D4 = 2
  loc_1ABECFA:     var_114 = Me.FGrid
  loc_1ABECFF:     var_134 = var_114.TextMatrix
  loc_1ABED1B:     If (CStr(var_134) = "Advance") Then
  loc_1ABED21:       Set var_29C = var_94 
  loc_1ABED30:       var_D4 = "VNo"
  loc_1ABED53:       Proc_6_39_E7C810(var_134, CVar(var_114.Recordset15.Fields.Item(var_D4)), CVar(var_B8), 1, var_D4, var_98)
  loc_1ABED67:       If CBool(var_B4 <> var_134) Then
  loc_1ABED90:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("VNo")), var_AC)
  loc_1ABED9A:         var_B8 = CLng(var_134)
  loc_1ABEDE1:         var_2A4 = var_88.Fields
  loc_1ABEE20:         var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookingStatus")), var_B8, var_A4) = "Cancel"), CVar(Proc_6_38_E68A98(CVar(var_2A4.Item("BookingStatus")), var_9C)), "Confirm")
  loc_1ABEE29:         var_BC = CStr(var_1B4)
  loc_1ABEE73:         var_C4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("companyCode")))
  loc_1ABEE90:         var_134 = CVar("SELECT VM.Name AS Venue,VO.Fromdate,VO.FromTime AS ForTime,VO.Todate,VO.ToTime AS ToTime FROM VenueOCC VO INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code " & "WHERE VO.FPDocId='") 'String
  loc_1ABEE99:         var_D4 = "DocID"
  loc_1ABEEC1:         var_E4 = "' Order by Vo.FromDate,Vo.FromTime"
  loc_1ABEED4:         unk_577EDB.Execute CStr(var_134 & var_88.Fields.Item(var_D4).Value & var_E4), var_1B4, -1
  loc_1ABEEDF:         Set var_8C = var_2A4
  loc_1ABEF04:         var_98 = (var_98 + 1)
  loc_1ABEF12:         var_29C.AddNew var_D4, var_E4
  loc_1ABEF3C:         var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1ABEF77:         var_29C.Fields.Item("SNo").Value = CVar(CStr(var_98) & ".")
  loc_1ABEFAF:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("VNo")), var_98)
  loc_1ABEFC7:         var_2A4 = var_29C.Fields
  loc_1ABEFD7:         var_2A4.Item("FPNo").Value = var_134
  loc_1ABF065:         var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookingStatus")), var_88.Fields) = "Cancel"), CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookingStatus")))), "Confirm")
  loc_1ABF08D:         var_29C.Fields.Item("BookStatus").Value = var_1B4
  loc_1ABF0DB:         var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1ABF132:         var_29C.Fields.Item("Remark").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark"))))
  loc_1ABF192:         var_29C.Fields.Item("Company").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Company"))))
  loc_1ABF1CD:         var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1ABF1FC:         If ((var_8C.BOF = 0) And (var_8C.EOF = 0)) Then
  loc_1ABF24A:           var_29C.Fields.Item("Venue").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Venue"))))
  loc_1ABF2A2:           var_29C.Fields.Item("ForDate").Value = CVar(var_8C.Fields.Item("FromDate"))
  loc_1ABF2FE:           var_29C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ForTime"))))
  loc_1ABF356:           var_29C.Fields.Item("ToDate").Value = CVar(var_8C.Fields.Item("ToDate"))
  loc_1ABF3B2:           var_29C.Fields.Item("ToTime").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ToTime"))))
  loc_1ABF3CA:           var_8C.MoveNext
  loc_1ABF3CF:         End If
  loc_1ABF41A:         var_29C.Fields.Item("Pax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pax"))))
  loc_1ABF497:         var_29C.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_1ABF504:         var_29C.Fields.Item("FuncType").Value = CVar(1 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("FuncType")), " ", 1))
  loc_1ABF544:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName")))) 'String
  loc_1ABF567:         var_29C.Fields.Item("PartyName").Value = var_134
  loc_1ABF5A2:         Proc_6_47_EF59D0(var_134, CVar(var_88.Fields.Item("NetAmount")))
  loc_1ABF5CA:         var_29C.Fields.Item("Amount").Value = var_134
  loc_1ABF612:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContactNo")))) 'String
  loc_1ABF640:         var_29C.Fields.Item("ContactNo").Value = Left(var_134, &H4B)
  loc_1ABF680:         Proc_6_47_EF59D0(var_134, CVar(var_88.Fields.Item("Advance")))
  loc_1ABF6A8:         var_29C.Fields.Item("Advance").Value = var_134
  loc_1ABF708:         var_29C.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Adv_type"))))
  loc_1ABF768:         var_29C.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Adv_No"))))
  loc_1ABF780:         var_D4 = "Adv_Date"
  loc_1ABF7A3:         var_E4 = "dd/MMM/yy"
  loc_1ABF7A8:         var_134 = var_E4
  loc_1ABF7E0:         var_29C.Fields.Item("AdvDate").Value = Format(CVar(var_88.Fields.Item(var_D4)), var_134)
  loc_1ABF802:         var_29C.Update var_D4, var_E4
  loc_1ABF834:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Pax")), CVar(var_9C))
  loc_1ABF83C:         var_144 = (1 + var_134)
  loc_1ABF842:         var_9C = CLng(Format(CVar(var_88.Fields.Item("Pax")), var_134))
  loc_1ABF87E:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Rate")), CVar(var_A4))
  loc_1ABF886:         var_144 = (var_9C + var_134)
  loc_1ABF88B:         var_A4 = CSng(Format(CVar(var_88.Fields.Item("Rate")), var_134))
  loc_1ABF89D:         var_E4 = CVar(var_AC) 'Double
  loc_1ABF8A4:         var_D4 = "NetAmount"
  loc_1ABF8C7:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1ABF8CF:         var_144 = (var_A4 + var_134)
  loc_1ABF8D4:         var_AC = CSng(Format(CVar(var_88.Fields.Item(var_D4)), var_134))
  loc_1ABF8E6:       Else
  loc_1ABF8F1:         var_29C.AddNew var_D4, var_E4
  loc_1ABF91B:         var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1ABF94E:         var_29C.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1ABF980:         var_29C.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1ABF9B2:         var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1ABF9E1:         If ((var_8C.BOF = 0) And (var_8C.EOF = 0)) Then
  loc_1ABFA2F:           var_29C.Fields.Item("Venue").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Venue")), var_AC))
  loc_1ABFA87:           var_29C.Fields.Item("ForDate").Value = CVar(var_8C.Fields.Item("FromDate"))
  loc_1ABFAE3:           var_29C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ForTime")), 1))
  loc_1ABFB3B:           var_29C.Fields.Item("ToDate").Value = CVar(var_8C.Fields.Item("ToDate"))
  loc_1ABFB74:           var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ToTime")))) 'String
  loc_1ABFB97:           var_29C.Fields.Item("ToTime").Value = var_134
  loc_1ABFBAF:           var_8C.MoveNext
  loc_1ABFBB4:         End If
  loc_1ABFBDA:         Proc_6_47_EF59D0(var_134, CVar(var_88.Fields.Item("Advance")))
  loc_1ABFC02:         var_29C.Fields.Item("Advance").Value = var_134
  loc_1ABFC62:         var_29C.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Adv_type"))))
  loc_1ABFCC2:         var_29C.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Adv_No"))))
  loc_1ABFCDA:         var_D4 = "Adv_Date"
  loc_1ABFCFD:         var_E4 = "dd/MMM/yy"
  loc_1ABFD02:         var_134 = var_E4
  loc_1ABFD3A:         var_29C.Fields.Item("AdvDate").Value = Format(CVar(var_88.Fields.Item(var_D4)), var_134)
  loc_1ABFD5C:         var_29C.Update var_D4, var_E4
  loc_1ABFD61:       End If
  loc_1ABFD8E:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Advance")), CVar(var_B4))
  loc_1ABFD96:       var_144 = (1 + var_134)
  loc_1ABFD9B:       var_B4 = CSng(Format(CVar(var_88.Fields.Item("Advance")), var_134))
  loc_1ABFDAD:       var_88.MoveNext
  loc_1ABFDC3:       If (var_88.EOF = &HFF) Then
  loc_1ABFDC6:         GoTo loc_1AC174A
  loc_1ABFDC9:       End If
  loc_1ABFDCC:       var_E4 = CVar(var_B8) 'Long
  loc_1ABFDD4:       var_D4 = "VNo"
  loc_1ABFDF7:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1ABFE0B:       If CBool(var_B4 <> var_134) Then
  loc_1ABFE0E:         ' Referenced from: 1AC00D8
  loc_1ABFE1D:         If Not(var_8C.EOF) Then
  loc_1ABFE2B:           var_29C.AddNew var_D4, var_E4
  loc_1ABFE55:           var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1ABFE88:           var_29C.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1ABFEBA:           var_29C.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1ABFEEC:           var_29C.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1ABFF43:           var_29C.Fields.Item("Venue").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Venue")), 1))
  loc_1ABFF9B:           var_29C.Fields.Item("ForDate").Value = CVar(var_8C.Fields.Item("FromDate"))
  loc_1ABFFF7:           var_29C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ForTime"))))
  loc_1AC004F:           var_29C.Fields.Item("ToDate").Value = CVar(var_8C.Fields.Item("ToDate"))
  loc_1AC0063:           var_D4 = "ToTime"
  loc_1AC0088:           var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_D4)))) 'String
  loc_1AC008F:           var_E4 = "ToTime"
  loc_1AC00AB:           var_29C.Fields.Item(var_E4).Value = var_134
  loc_1AC00CB:           var_29C.Update var_D4, var_E4
  loc_1AC00D3:           var_8C.MoveNext
  loc_1AC00D8:           GoTo loc_1ABFE0E
  loc_1AC00DB:         End If
  loc_1AC00DB:       End If
  loc_1AC00DD:       Set var_29C = Nothing 
  loc_1AC00E4:     Else
  loc_1AC00E7:       Set var_2B8 = var_94 
  loc_1AC0119:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("VNo")))
  loc_1AC012D:       If CBool(CVar(var_B8) <> var_134) Then
  loc_1AC0156:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("VNo")))
  loc_1AC0160:         var_B8 = CLng(var_134)
  loc_1AC01A7:         var_2A4 = var_88.Fields
  loc_1AC01E6:         var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookingStatus")), var_B8) = "Cancel"), CVar(Proc_6_38_E68A98(CVar(var_2A4.Item("BookingStatus")))), "Confirm")
  loc_1AC01EF:         var_BC = CStr(var_1B4)
  loc_1AC0239:         var_C4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("companyCode")))
  loc_1AC0256:         var_1D8 = "SELECT PH.Vno As Adv_No,PH.Vdate As Adv_Date,Case When PH.Vtype='AD' Then PH.AmtCr Else -PH.AmtDr End As Advance,PH.PayType As Adv_Type FROM " & "PaychargeH PH WHERE PH.VType In ('AD','AR') And PH.RestCOde='"
  loc_1AC0267:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookingStatus")), var_B8) & global_208 & "' And PH.ContraDocId='") 'String
  loc_1AC0270:         var_D4 = "DocID"
  loc_1AC0298:         var_E4 = "' Order by PH.VDate,PH.VNo,PH.Sno"
  loc_1AC02AB:         unk_577EDB.Execute CStr(var_134 & var_88.Fields.Item(var_D4).Value & var_E4), var_1B4, -1
  loc_1AC02B6:         Set var_90 = var_2A4
  loc_1AC02E1:         var_98 = (var_98 + 1)
  loc_1AC02EF:         var_2B8.AddNew var_D4, var_E4
  loc_1AC0319:         var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC0354:         var_2B8.Fields.Item("SNo").Value = CVar(CStr(var_98) & ".")
  loc_1AC038C:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("VNo")), var_98)
  loc_1AC03A4:         var_2A4 = var_2B8.Fields
  loc_1AC03B4:         var_2A4.Item("FPNo").Value = var_134
  loc_1AC03EF:         var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC0421:         var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC0478:         var_2B8.Fields.Item("Remark").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark")), var_2B8.Fields))
  loc_1AC04D8:         var_2B8.Fields.Item("Company").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Company"))))
  loc_1AC0538:         var_2B8.Fields.Item("Venue").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Venue"))))
  loc_1AC0590:         var_2B8.Fields.Item("ForDate").Value = CVar(var_88.Fields.Item("FromDate"))
  loc_1AC05EC:         var_2B8.Fields.Item("ForTime").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForTime"))))
  loc_1AC0644:         var_2B8.Fields.Item("ToDate").Value = CVar(var_88.Fields.Item("ToDate"))
  loc_1AC06A0:         var_2B8.Fields.Item("ToTime").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime"))))
  loc_1AC0700:         var_2B8.Fields.Item("Pax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pax"))))
  loc_1AC077D:         var_2B8.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_1AC07EA:         var_2B8.Fields.Item("FuncType").Value = CVar(1 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("FuncType")), " ", 1))
  loc_1AC082A:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName")))) 'String
  loc_1AC084D:         var_2B8.Fields.Item("PartyName").Value = var_134
  loc_1AC0888:         Proc_6_47_EF59D0(var_134, CVar(var_88.Fields.Item("NetAmount")))
  loc_1AC08B0:         var_2B8.Fields.Item("Amount").Value = var_134
  loc_1AC08F8:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContactNo")))) 'String
  loc_1AC0926:         var_2B8.Fields.Item("ContactNo").Value = Left(var_134, &H4B)
  loc_1AC0963:         If ((var_90.BOF = 0) And (var_90.EOF = 0)) Then
  loc_1AC098C:           Proc_6_47_EF59D0(var_134, CVar(var_90.Fields.Item("Advance")))
  loc_1AC09B4:           var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC0A14:           var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_type"))))
  loc_1AC0A74:           var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC0AB4:           var_134 = "dd/MMM/yy"
  loc_1AC0AEC:           var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item("Adv_Date")), var_134)
  loc_1AC0B06:           var_E4 = CVar(var_B4) 'Double
  loc_1AC0B0D:           var_D4 = "Advance"
  loc_1AC0B30:           Proc_6_39_E7C810(var_134, CVar(var_90.Fields.Item(var_D4)), var_E4)
  loc_1AC0B38:           var_144 = (1 + var_134)
  loc_1AC0B3D:           var_B4 = CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC0B4F:           var_90.MoveNext
  loc_1AC0B54:         End If
  loc_1AC0B5F:         var_2B8.Update var_D4, var_E4
  loc_1AC0B91:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Pax")), CVar(var_9C))
  loc_1AC0B99:         var_144 = (var_B4 + var_134)
  loc_1AC0B9F:         var_9C = CLng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC0BDB:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Rate")), CVar(var_A4))
  loc_1AC0BE3:         var_144 = (var_9C + var_134)
  loc_1AC0BFA:         var_E4 = CVar(var_AC) 'Double
  loc_1AC0C01:         var_D4 = "NetAmount"
  loc_1AC0C24:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1AC0C2C:         var_144 = (CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134)) + var_134)
  loc_1AC0C31:         var_AC = CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC0C43:       Else
  loc_1AC0C4E:         var_2B8.AddNew var_D4, var_E4
  loc_1AC0C78:         var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC0CAB:         var_2B8.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC0CDD:         var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC0D0F:         var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC0D66:         var_2B8.Fields.Item("Venue").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Venue")), var_AC))
  loc_1AC0DBE:         var_2B8.Fields.Item("ForDate").Value = CVar(var_88.Fields.Item("FromDate"))
  loc_1AC0E1A:         var_2B8.Fields.Item("ForTime").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForTime")), 1))
  loc_1AC0E72:         var_2B8.Fields.Item("ToDate").Value = CVar(var_88.Fields.Item("ToDate"))
  loc_1AC0EAB:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")))) 'String
  loc_1AC0ECE:         var_2B8.Fields.Item("ToTime").Value = var_134
  loc_1AC0F06:         If ((var_90.BOF = 0) And (var_90.EOF = 0)) Then
  loc_1AC0F2F:           Proc_6_47_EF59D0(var_134, CVar(var_90.Fields.Item("Advance")))
  loc_1AC0F57:           var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC0FB7:           var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_type"))))
  loc_1AC1017:           var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC1057:           var_134 = "dd/MMM/yy"
  loc_1AC108F:           var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item("Adv_Date")), var_134)
  loc_1AC10A9:           var_E4 = CVar(var_B4) 'Double
  loc_1AC10B0:           var_D4 = "Advance"
  loc_1AC10D3:           Proc_6_39_E7C810(var_134, CVar(var_90.Fields.Item(var_D4)), var_E4)
  loc_1AC10DB:           var_144 = (1 + var_134)
  loc_1AC10E0:           var_B4 = CSng(Format(CVar(var_90.Fields.Item("Adv_Date")), var_134))
  loc_1AC10F2:           var_90.MoveNext
  loc_1AC10F7:         End If
  loc_1AC1102:         var_2B8.Update var_D4, var_E4
  loc_1AC1107:       End If
  loc_1AC110A:       var_88.MoveNext
  loc_1AC1120:       If (var_88.EOF = &HFF) Then
  loc_1AC1123:         ' Referenced from:   1AC140B
  loc_1AC1132:         If Not(var_90.EOF) Then
  loc_1AC1140:           var_2B8.AddNew var_D4, var_E4
  loc_1AC116A:           var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC119D:           var_2B8.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC11CF:           var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC1201:           var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC1233:           Proc_6_47_EF59D0(var_134, CVar(var_90.Fields.Item("Advance")), var_B4)
  loc_1AC125B:           var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC12BB:           var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_type")), 1))
  loc_1AC131B:           var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC1333:           var_D4 = "Adv_Date"
  loc_1AC1356:           var_E4 = "dd/MMM/yy"
  loc_1AC135B:           var_134 = var_E4
  loc_1AC1393:           var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item(var_D4)), var_134)
  loc_1AC13B5:           var_2B8.Update var_D4, var_E4
  loc_1AC13E7:           Proc_6_39_E7C810(var_134, CVar(var_90.Fields.Item("Advance")), CVar(var_B4))
  loc_1AC13EF:           var_144 = (1 + var_134)
  loc_1AC13F4:           var_B4 = CSng(Format(CVar(var_90.Fields.Item("Advance")), var_134))
  loc_1AC1406:           var_90.MoveNext
  loc_1AC140B:           GoTo loc_1AC1123
  loc_1AC140E:         End If
  loc_1AC1411:       Else
  loc_1AC1414:         var_E4 = CVar(var_B8) 'Long
  loc_1AC141C:         var_D4 = "VNo"
  loc_1AC143F:         Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item(var_D4)), var_E4)
  loc_1AC1453:         If CBool(var_B4 <> var_134) Then
  loc_1AC1456:           ' Referenced from:     1AC173E
  loc_1AC1465:           If Not(var_90.EOF) Then
  loc_1AC1473:             var_2B8.AddNew var_D4, var_E4
  loc_1AC149D:             var_2B8.Fields.Item("mLine").Value = vbNullString
  loc_1AC14D0:             var_2B8.Fields.Item("FPNo").Value = CVar(var_B8)
  loc_1AC1502:             var_2B8.Fields.Item("BookStatus").Value = CVar(var_BC)
  loc_1AC1534:             var_2B8.Fields.Item("companyCode").Value = CVar(var_C4)
  loc_1AC1566:             Proc_6_47_EF59D0(var_134, CVar(var_90.Fields.Item("Advance")))
  loc_1AC158E:             var_2B8.Fields.Item("Advance").Value = var_134
  loc_1AC15EE:             var_2B8.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_type")), 1))
  loc_1AC164E:             var_2B8.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adv_No"))))
  loc_1AC1666:             var_D4 = "Adv_Date"
  loc_1AC1689:             var_E4 = "dd/MMM/yy"
  loc_1AC168E:             var_134 = var_E4
  loc_1AC16C6:             var_2B8.Fields.Item("AdvDate").Value = Format(CVar(var_90.Fields.Item(var_D4)), var_134)
  loc_1AC16E8:             var_2B8.Update var_D4, var_E4
  loc_1AC16F0:             var_E4 = CVar(var_B4) 'Double
  loc_1AC16F7:             var_D4 = "Advance"
  loc_1AC171A:             Proc_6_39_E7C810(var_134, CVar(var_90.Fields.Item(var_D4)), var_E4)
  loc_1AC1722:             var_144 = (1 + var_134)
  loc_1AC1727:             var_B4 = CSng(Format(CVar(var_90.Fields.Item(var_D4)), var_134))
  loc_1AC1739:             var_90.MoveNext
  loc_1AC173E:             GoTo loc_1AC1456
  loc_1AC1741:           End If
  loc_1AC1741:         End If
  loc_1AC1743:         Set var_2B8 = Nothing 
  loc_1AC1747:       End If
  loc_1AC1747:       GoTo loc_1ABECD8
  loc_1AC174A:     End If
  loc_1AC174A:     ' Referenced from: 1ABFDC6
  loc_1AC174A:   End If
  loc_1AC174D:   Set var_2BC = var_94 
  loc_1AC175C:   var_2BC.AddNew var_D4, var_E4
  loc_1AC1786:   var_2BC.Fields.Item("mLine").Value = "GF"
  loc_1AC1792:   var_E4 = "Total-->"
  loc_1AC17B7:   var_2BC.Fields.Item("Venue").Value = "GF"
  loc_1AC17EB:   var_2BC.Fields.Item("Pax").Value = CVar(CStr(var_9C))
  loc_1AC1847:   var_2BC.Fields.Item("Amount").Value = CVar(CStr(Format(var_AC, "0.00")))
  loc_1AC1868:   var_E4 = "0.00"
  loc_1AC1876:   var_D4 = var_B4
  loc_1AC18AB:   var_2BC.Fields.Item("Advance").Value = CVar(CStr(Format(var_D4, var_E4)))
  loc_1AC18CD:   var_2BC.Update var_D4, var_E4
  loc_1AC18D4:   Set var_2BC = Nothing 
  loc_1AC18D8: End If
  loc_1AC18DE: CVarUnk
  loc_1AC18E3: VerifyVarObj
  loc_1AC18E9: Set var_1DC = Me.FGrid1
  loc_1AC18EF: LateIdStAd
  loc_1AC191F: Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_94, 1)
  loc_1AC192E: Set var_2C8 = Me.FGrid1
  loc_1AC193A: var_2C8.Tag = "DailyFuncSheet"
  loc_1AC194B: var_2C8.Cols = &H17
  loc_1AC1950: var_D4 = 0
  loc_1AC1959: var_F4 = 0
  loc_1AC1962: var_124 = "mLine"
  loc_1AC196B: LateIdCallSt
  loc_1AC1973: var_D4 = 0
  loc_1AC197C: var_F4 = 0
  loc_1AC1988: LateIdCallSt
  loc_1AC1990: var_D4 = 0
  loc_1AC1999: var_F4 = 1
  loc_1AC19A2: var_124 = "SNo"
  loc_1AC19AB: LateIdCallSt
  loc_1AC19B3: var_D4 = 1
  loc_1AC19C2: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC19C9: LateIdCallSt
  loc_1AC19D1: var_D4 = 1
  loc_1AC19DA: var_F4 = &H1F4
  loc_1AC19E6: LateIdCallSt
  loc_1AC19EE: var_D4 = 0
  loc_1AC19F7: var_F4 = 2
  loc_1AC1A00: var_124 = "FPNo"
  loc_1AC1A09: LateIdCallSt
  loc_1AC1A11: var_D4 = 2
  loc_1AC1A20: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1A27: LateIdCallSt
  loc_1AC1A2F: var_D4 = 2
  loc_1AC1A38: var_F4 = &H3E8
  loc_1AC1A44: LateIdCallSt
  loc_1AC1A4C: var_D4 = 0
  loc_1AC1A55: var_F4 = 3
  loc_1AC1A5E: var_124 = "Venue"
  loc_1AC1A67: LateIdCallSt
  loc_1AC1A6F: var_D4 = 3
  loc_1AC1A7E: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1A85: LateIdCallSt
  loc_1AC1A8D: var_D4 = 3
  loc_1AC1A96: var_F4 = &H7D0
  loc_1AC1AA2: LateIdCallSt
  loc_1AC1AAA: var_D4 = 0
  loc_1AC1AB3: var_F4 = 4
  loc_1AC1ABC: var_124 = "Start Date"
  loc_1AC1AC5: LateIdCallSt
  loc_1AC1ACD: var_D4 = 4
  loc_1AC1ADC: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1AE3: LateIdCallSt
  loc_1AC1AEB: var_D4 = 4
  loc_1AC1AF4: var_F4 = &H5DC
  loc_1AC1B00: LateIdCallSt
  loc_1AC1B08: var_D4 = 0
  loc_1AC1B11: var_F4 = 5
  loc_1AC1B1A: var_124 = "For Time"
  loc_1AC1B23: LateIdCallSt
  loc_1AC1B2B: var_D4 = 5
  loc_1AC1B3A: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1B41: LateIdCallSt
  loc_1AC1B49: var_D4 = 5
  loc_1AC1B52: var_F4 = &H3E8
  loc_1AC1B5E: LateIdCallSt
  loc_1AC1B66: var_D4 = 0
  loc_1AC1B6F: var_F4 = 6
  loc_1AC1B78: var_124 = "End Date"
  loc_1AC1B81: LateIdCallSt
  loc_1AC1B89: var_D4 = 6
  loc_1AC1B98: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1B9F: LateIdCallSt
  loc_1AC1BA7: var_D4 = 6
  loc_1AC1BB0: var_F4 = &H5DC
  loc_1AC1BBC: LateIdCallSt
  loc_1AC1BC4: var_D4 = 0
  loc_1AC1BCD: var_F4 = 7
  loc_1AC1BD6: var_124 = "To Time"
  loc_1AC1BDF: LateIdCallSt
  loc_1AC1BE7: var_D4 = 7
  loc_1AC1BF6: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1BFD: LateIdCallSt
  loc_1AC1C05: var_D4 = 7
  loc_1AC1C0E: var_F4 = &H3E8
  loc_1AC1C1A: LateIdCallSt
  loc_1AC1C22: var_D4 = 0
  loc_1AC1C2B: var_F4 = 8
  loc_1AC1C34: var_124 = "Pax"
  loc_1AC1C3D: LateIdCallSt
  loc_1AC1C45: var_D4 = 8
  loc_1AC1C54: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1C5B: LateIdCallSt
  loc_1AC1C63: var_D4 = 8
  loc_1AC1C72: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1C79: LateIdCallSt
  loc_1AC1C81: var_D4 = 8
  loc_1AC1C8A: var_F4 = &H3E8
  loc_1AC1C96: LateIdCallSt
  loc_1AC1C9E: var_D4 = 0
  loc_1AC1CA7: var_F4 = 9
  loc_1AC1CB0: var_124 = "Pax Rate"
  loc_1AC1CB9: LateIdCallSt
  loc_1AC1CC1: var_D4 = 9
  loc_1AC1CD0: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC1CD7: LateIdCallSt
  loc_1AC1CDF: var_D4 = 9
  loc_1AC1CEE: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC1CF5: LateIdCallSt
  loc_1AC1CFD: var_D4 = 9
  loc_1AC1D06: var_F4 = &H3E8
  loc_1AC1D12: LateIdCallSt
  loc_1AC1D1A: var_D4 = 0
  loc_1AC1D23: var_F4 = &HA
  loc_1AC1D2C: var_124 = " Function Type"
  loc_1AC1D35: LateIdCallSt
  loc_1AC1D3D: var_D4 = &HA
  loc_1AC1D4C: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1D53: LateIdCallSt
  loc_1AC1D5B: var_D4 = &HA
  loc_1AC1D64: var_F4 = &H5DC
  loc_1AC1D70: LateIdCallSt
  loc_1AC1D78: var_D4 = 0
  loc_1AC1D81: var_F4 = &HB
  loc_1AC1D8A: var_124 = " Party Name"
  loc_1AC1D93: LateIdCallSt
  loc_1AC1D9B: var_D4 = &HB
  loc_1AC1DAA: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1DB1: LateIdCallSt
  loc_1AC1DB9: var_D4 = &HB
  loc_1AC1DC2: var_F4 = &H7D0
  loc_1AC1DCE: LateIdCallSt
  loc_1AC1DD6: var_D4 = 0
  loc_1AC1DDF: var_F4 = &HC
  loc_1AC1DE8: var_124 = "Amount"
  loc_1AC1DF1: LateIdCallSt
  loc_1AC1DF9: var_D4 = &HC
  loc_1AC1E08: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC1E0F: LateIdCallSt
  loc_1AC1E17: var_D4 = &HC
  loc_1AC1E26: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC1E2D: LateIdCallSt
  loc_1AC1E35: var_D4 = &HC
  loc_1AC1E3E: var_F4 = &H4B0
  loc_1AC1E4A: LateIdCallSt
  loc_1AC1E52: var_D4 = 0
  loc_1AC1E5B: var_F4 = &HD
  loc_1AC1E64: var_124 = "Advance"
  loc_1AC1E6D: LateIdCallSt
  loc_1AC1E75: var_D4 = &HD
  loc_1AC1E84: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC1E8B: LateIdCallSt
  loc_1AC1E93: var_D4 = &HD
  loc_1AC1EA2: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC1EA9: LateIdCallSt
  loc_1AC1EB1: var_D4 = &HD
  loc_1AC1EBA: var_F4 = &H4B0
  loc_1AC1EC6: LateIdCallSt
  loc_1AC1ECE: var_D4 = 0
  loc_1AC1ED7: var_F4 = &HE
  loc_1AC1EE0: var_124 = "Type"
  loc_1AC1EE9: LateIdCallSt
  loc_1AC1EF1: var_D4 = &HE
  loc_1AC1F00: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1F07: LateIdCallSt
  loc_1AC1F0F: var_D4 = &HE
  loc_1AC1F1E: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1F25: LateIdCallSt
  loc_1AC1F2D: var_D4 = &HE
  loc_1AC1F36: var_F4 = &H514
  loc_1AC1F42: LateIdCallSt
  loc_1AC1F4A: var_D4 = 0
  loc_1AC1F53: var_F4 = &HF
  loc_1AC1F5C: var_124 = "Rect.No."
  loc_1AC1F65: LateIdCallSt
  loc_1AC1F6D: var_D4 = &HF
  loc_1AC1F7C: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1F83: LateIdCallSt
  loc_1AC1F8B: var_D4 = &HF
  loc_1AC1F9A: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1FA1: LateIdCallSt
  loc_1AC1FA9: var_D4 = &HF
  loc_1AC1FB2: var_F4 = &H44C
  loc_1AC1FBE: LateIdCallSt
  loc_1AC1FC6: var_D4 = 0
  loc_1AC1FCF: var_F4 = &H10
  loc_1AC1FD8: var_124 = "Rect.Date"
  loc_1AC1FE1: LateIdCallSt
  loc_1AC1FE9: var_D4 = &H10
  loc_1AC1FF8: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC1FFF: LateIdCallSt
  loc_1AC2007: var_D4 = &H10
  loc_1AC2016: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC201D: LateIdCallSt
  loc_1AC2025: var_D4 = &H10
  loc_1AC202E: var_F4 = &H4B0
  loc_1AC203A: LateIdCallSt
  loc_1AC2042: var_D4 = 0
  loc_1AC204B: var_F4 = &H11
  loc_1AC2054: var_124 = " ContactNo."
  loc_1AC205D: LateIdCallSt
  loc_1AC2065: var_D4 = &H11
  loc_1AC2074: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC207B: LateIdCallSt
  loc_1AC2083: var_D4 = &H11
  loc_1AC208C: var_F4 = 0
  loc_1AC2098: LateIdCallSt
  loc_1AC20A0: var_D4 = 0
  loc_1AC20A9: var_F4 = &H12
  loc_1AC20B2: var_124 = "Status"
  loc_1AC20BB: LateIdCallSt
  loc_1AC20C3: var_D4 = &H12
  loc_1AC20D2: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC20D9: LateIdCallSt
  loc_1AC20E1: var_D4 = &H12
  loc_1AC20F0: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC20F7: LateIdCallSt
  loc_1AC20FF: var_D4 = &H12
  loc_1AC2108: var_F4 = &H4B0
  loc_1AC2114: LateIdCallSt
  loc_1AC211C: var_D4 = 0
  loc_1AC2125: var_F4 = &H13
  loc_1AC212E: var_124 = "Remark"
  loc_1AC2137: LateIdCallSt
  loc_1AC213F: var_D4 = &H13
  loc_1AC214E: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC2155: LateIdCallSt
  loc_1AC215D: var_D4 = &H13
  loc_1AC216C: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC2173: LateIdCallSt
  loc_1AC217B: var_D4 = &H13
  loc_1AC2184: var_F4 = &HBB8
  loc_1AC2190: LateIdCallSt
  loc_1AC2198: var_D4 = 0
  loc_1AC21A1: var_F4 = &H14
  loc_1AC21AA: var_124 = "Company"
  loc_1AC21B3: LateIdCallSt
  loc_1AC21BB: var_D4 = &H14
  loc_1AC21CA: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC21D1: LateIdCallSt
  loc_1AC21D9: var_D4 = &H14
  loc_1AC21E8: var_F4 = CVar(CInt(1)) 'Integer
  loc_1AC21EF: LateIdCallSt
  loc_1AC21F7: var_D4 = &H14
  loc_1AC2200: var_F4 = &HBB8
  loc_1AC220C: LateIdCallSt
  loc_1AC2214: var_D4 = 0
  loc_1AC221D: var_F4 = &H15
  loc_1AC2226: var_124 = "CompanyCode"
  loc_1AC222F: LateIdCallSt
  loc_1AC2237: var_D4 = &H15
  loc_1AC2246: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC224D: LateIdCallSt
  loc_1AC2255: var_D4 = &H15
  loc_1AC225E: var_F4 = 0
  loc_1AC226A: LateIdCallSt
  loc_1AC2272: var_D4 = 0
  loc_1AC227B: var_F4 = &H16
  loc_1AC2284: var_124 = "Mark"
  loc_1AC228D: LateIdCallSt
  loc_1AC2295: var_D4 = &H16
  loc_1AC22A4: var_F4 = CVar(CInt(7)) 'Integer
  loc_1AC22AB: LateIdCallSt
  loc_1AC22B3: var_D4 = &H16
  loc_1AC22BC: var_F4 = 0
  loc_1AC22C8: LateIdCallSt
  loc_1AC22D2: Set var_2C8 = Nothing 
  loc_1AC22DA: Set var_1DC = Me.FGrid1
  loc_1AC230A: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1AC230D:   var_D4 = vbNullString
  loc_1AC2317:   Set var_1DC = Me.FGrid1
  loc_1AC2328: End If
  loc_1AC235F: var_D4 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1AC237F: Me.FGrid1.Row = CVar(CLng(IIf(var_D4, FRow, 1)))
  loc_1AC23A0: var_114 = Me.FGrid1.Cols
  loc_1AC23CD: var_D4 = ((Fcol <> 0) And ((CLng(var_114) - 1) >= CLng(Fcol)))
  loc_1AC23ED: Me.FGrid1.Col = CVar(CLng(IIf(var_D4, Fcol, 1)))
  loc_1AC2409: Set var_94 = Nothing
  loc_1AC2411: Set var_88 = Nothing
  loc_1AC2419: Set var_90 = Nothing
  loc_1AC2421: Set var_8C = Nothing
  loc_1AC2426: IStAd
  loc_1AC242A: Exit Sub
  loc_1AC242B: ' Referenced from: 1ABE4EC
  loc_1AC2433: Proc_6_60_E62BC4(0, Nothing, var_114, var_114, FGrid1.DispID_10000, var_D4, FGrid1.DispID_FFFF)
  loc_1AC2438: Exit Sub
End Sub

Public Sub FunctionWiseItemDetail(formName, FRow, Fcol) '150BC48
  'Data Table: 577ED8
  Dim var_F0 As Variant
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim var_B0 As Variant
  Dim var_118 As Variant
  Dim var_88 As Recordset15
  Dim var_19C As Recordset15
  Dim var_8C As Recordset15
  Dim var_1B4 As MSHFlexGrid
  loc_150AD64: On Error Goto loc_150BC39
  loc_150AD6D: Call 0.Method_arg_54 ("Function Wise Item Detail")
  loc_150AD87: var_E0 = Me.FGrid
  loc_150ADA0: Set var_118 = 0(CStr(1 & var_E0.TextMatrix))
  loc_150ADA6: var_E0.TextBox.Text = "Function Date : "
  loc_150ADBA: var_A0 = 1
  loc_150ADE3: If (Me.Check1.Value = 0) Then
  loc_150AE01:   var_90 = CStr(" And S1.DocId In (" & Me.GridString1 & ") ")
  loc_150AE27:   var_100 = Left(Me.FormulaString1, &H73)
  loc_150AE2F:   var_110 = "Party : " & var_100 
  loc_150AE33:   var_B0 = vbNullString
  loc_150AE44:   Set var_118 = Me.Text2
  loc_150AE4A:   Me.Text2.Text = CStr(var_110 & var_B0)
  loc_150AE63: Else
  loc_150AE6A:   Set var_118 = Me.Text2
  loc_150AE70:   var_118.Text = "For Guest :   All"
  loc_150AE78: End If
  loc_150AE85: Call Proc_249_100_10B85BC(New, var_118)
  loc_150AE8D: Set var_8C = var_118
  loc_150AEA4: var_114 = "SELECT S.VNO,FunctionType.Name AS FuncType,VO.Fromdate,VO.FromTime AS ForTime,VO.ToTime AS ToTime,S.PartyName AS PartyName,VM.Name AS Venue,S.GuarAtt AS Pax,S.Coverrate AS Rate,I.Name AS ItemName, ItemGrp.Name ItemGroup ,K.Name Kitchen,S.Remark FROM " & "(HallBook1 S1 LEFT JOIN ItemMast AS I ON S1.Item = I.Code Left Join Depart K on K.Code=I.Kitchen) LEFT JOIN ItemGrp ON I.ItemGroup = ItemGrp.Code LEFT JOIN HallBook S On S.DocId=S1.DocId LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code Where S.RestCode='"
  loc_150AEB8: var_A0 = 0
  loc_150AECD: VarLateMemCallLdRfVar
  loc_150AED8: Proc_6_7_F25D88(var_110, Me.FGrid, 1, var_A0, CVar(var_114 & global_208 & "' And Vo.FromDate="))
  loc_150AF01: Me.Connection15.Execute CStr(var_190 & var_110 & CVar(var_90) & " Order By S1.DocId,S1.Sno"), -1, var_118
  loc_150AF0C: Set var_88 = var_118
  loc_150AF42: If (var_88.RecordCount > 0) Then
  loc_150AF48:   var_88.MoveFirst
  loc_150AF4D:   ' Referenced from: 150B4BC
  loc_150AF5C:   If Not(var_88.EOF) Then
  loc_150AF62:     Set var_19C = var_8C 
  loc_150AF71:     var_19C.AddNew var_A0, var_B0
  loc_150AF9B:     var_19C.Fields.Item("mLine").Value = vbNullString
  loc_150AFCD:     Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("VNo")))
  loc_150AFF5:     var_19C.Fields.Item("FPNo").Value = var_100
  loc_150B055:     var_19C.Fields.Item("Venue").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Venue")), CVar(var_88.Fields.Item("Venue"))))
  loc_150B0AD:     var_19C.Fields.Item("ForDate").Value = CVar(var_88.Fields.Item("FromDate"))
  loc_150B109:     var_19C.Fields.Item("ForTime").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForTime"))))
  loc_150B169:     var_19C.Fields.Item("ToTime").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime"))))
  loc_150B1C9:     var_19C.Fields.Item("Pax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pax"))))
  loc_150B246:     var_19C.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_150B2B3:     var_19C.Fields.Item("FuncType").Value = CVar(1 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("FuncType")), " ", 1))
  loc_150B2F3:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PartyName")))) 'String
  loc_150B316:     var_19C.Fields.Item("PartyName").Value = var_100
  loc_150B351:     Proc_6_47_EF59D0(var_100, CVar(var_88.Fields.Item("ItemName")))
  loc_150B379:     var_19C.Fields.Item("ItemName").Value = var_100
  loc_150B3D9:     var_19C.Fields.Item("ItemGroup").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemGroup"))))
  loc_150B439:     var_19C.Fields.Item("ItemKitchen").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Kitchen"))))
  loc_150B499:     var_19C.Fields.Item("Remark").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark"))))
  loc_150B4B0:     Set var_19C = Nothing 
  loc_150B4B7:     var_88.MoveNext
  loc_150B4BC:     GoTo loc_150AF4D
  loc_150B4BF:   End If
  loc_150B4BF: End If
  loc_150B4D3: If (var_8C.RecordCount > 0) Then
  loc_150B4DC:   CVarUnk
  loc_150B4E1:   VerifyVarObj
  loc_150B4E7:   Set var_118 = Me.FGrid1
  loc_150B4ED:   LateIdStAd
  loc_150B51D:   Proc_96_13_FACD34(Me.FGrid1, 0, 0)
  loc_150B528: End If
  loc_150B52C: Set var_1B4 = Me.FGrid1
  loc_150B538: var_1B4.Tag = "FunctionWiseItemDetail"
  loc_150B549: var_1B4.Cols = &HF
  loc_150B54E: var_A0 = 0
  loc_150B557: var_C0 = 0
  loc_150B560: var_F0 = "mLine"
  loc_150B569: LateIdCallSt
  loc_150B571: var_A0 = 0
  loc_150B57A: var_C0 = 0
  loc_150B586: LateIdCallSt
  loc_150B58E: var_A0 = 0
  loc_150B597: var_C0 = 1
  loc_150B5A0: var_F0 = "FPNo"
  loc_150B5A9: LateIdCallSt
  loc_150B5B1: var_A0 = 1
  loc_150B5C0: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B5C7: LateIdCallSt
  loc_150B5CF: var_A0 = 1
  loc_150B5D8: var_C0 = &H3E8
  loc_150B5E4: LateIdCallSt
  loc_150B5EC: var_A0 = 0
  loc_150B5F5: var_C0 = 2
  loc_150B5FE: var_F0 = "Venue"
  loc_150B607: LateIdCallSt
  loc_150B60F: var_A0 = 2
  loc_150B61E: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B625: LateIdCallSt
  loc_150B62D: var_A0 = 2
  loc_150B636: var_C0 = &H7D0
  loc_150B642: LateIdCallSt
  loc_150B64A: var_A0 = 0
  loc_150B653: var_C0 = 3
  loc_150B65C: var_F0 = "Func. Date"
  loc_150B665: LateIdCallSt
  loc_150B66D: var_A0 = 3
  loc_150B67C: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B683: LateIdCallSt
  loc_150B68B: var_A0 = 3
  loc_150B694: var_C0 = &H5DC
  loc_150B6A0: LateIdCallSt
  loc_150B6A8: var_A0 = 0
  loc_150B6B1: var_C0 = 4
  loc_150B6BA: var_F0 = "For Time"
  loc_150B6C3: LateIdCallSt
  loc_150B6CB: var_A0 = 4
  loc_150B6DA: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B6E1: LateIdCallSt
  loc_150B6E9: var_A0 = 4
  loc_150B6F2: var_C0 = &H3E8
  loc_150B6FE: LateIdCallSt
  loc_150B706: var_A0 = 0
  loc_150B70F: var_C0 = 5
  loc_150B718: var_F0 = "To Time"
  loc_150B721: LateIdCallSt
  loc_150B729: var_A0 = 5
  loc_150B738: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B73F: LateIdCallSt
  loc_150B747: var_A0 = 5
  loc_150B750: var_C0 = &H3E8
  loc_150B75C: LateIdCallSt
  loc_150B764: var_A0 = 0
  loc_150B76D: var_C0 = 6
  loc_150B776: var_F0 = "Pax"
  loc_150B77F: LateIdCallSt
  loc_150B787: var_A0 = 6
  loc_150B796: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B79D: LateIdCallSt
  loc_150B7A5: var_A0 = 6
  loc_150B7B4: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B7BB: LateIdCallSt
  loc_150B7C3: var_A0 = 6
  loc_150B7CC: var_C0 = &H3E8
  loc_150B7D8: LateIdCallSt
  loc_150B7E0: var_A0 = 0
  loc_150B7E9: var_C0 = 7
  loc_150B7F2: var_F0 = "Pax Rate"
  loc_150B7FB: LateIdCallSt
  loc_150B803: var_A0 = 7
  loc_150B812: var_C0 = CVar(CInt(7)) 'Integer
  loc_150B819: LateIdCallSt
  loc_150B821: var_A0 = 7
  loc_150B830: var_C0 = CVar(CInt(7)) 'Integer
  loc_150B837: LateIdCallSt
  loc_150B83F: var_A0 = 7
  loc_150B848: var_C0 = &H3E8
  loc_150B854: LateIdCallSt
  loc_150B85C: var_A0 = 0
  loc_150B865: var_C0 = 8
  loc_150B86E: var_F0 = "Func. Type"
  loc_150B877: LateIdCallSt
  loc_150B87F: var_A0 = 8
  loc_150B88E: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B895: LateIdCallSt
  loc_150B89D: var_A0 = 8
  loc_150B8A6: var_C0 = &H5DC
  loc_150B8B2: LateIdCallSt
  loc_150B8BA: var_A0 = 0
  loc_150B8C3: var_C0 = 9
  loc_150B8CC: var_F0 = "Party Name"
  loc_150B8D5: LateIdCallSt
  loc_150B8DD: var_A0 = 9
  loc_150B8EC: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B8F3: LateIdCallSt
  loc_150B8FB: var_A0 = 9
  loc_150B904: var_C0 = &H7D0
  loc_150B910: LateIdCallSt
  loc_150B918: var_A0 = 0
  loc_150B921: var_C0 = &HA
  loc_150B92A: var_F0 = "Item Name"
  loc_150B933: LateIdCallSt
  loc_150B93B: var_A0 = &HA
  loc_150B94A: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B951: LateIdCallSt
  loc_150B959: var_A0 = &HA
  loc_150B962: var_C0 = &H7D0
  loc_150B96E: LateIdCallSt
  loc_150B976: var_A0 = 0
  loc_150B97F: var_C0 = &HB
  loc_150B988: var_F0 = "Item Group"
  loc_150B991: LateIdCallSt
  loc_150B999: var_A0 = &HB
  loc_150B9A8: var_C0 = CVar(CInt(1)) 'Integer
  loc_150B9AF: LateIdCallSt
  loc_150B9B7: var_A0 = &HB
  loc_150B9C0: var_C0 = &H7D0
  loc_150B9CC: LateIdCallSt
  loc_150B9D4: var_A0 = 0
  loc_150B9DD: var_C0 = &HC
  loc_150B9E6: var_F0 = "Kitchen"
  loc_150B9EF: LateIdCallSt
  loc_150B9F7: var_A0 = &HC
  loc_150BA06: var_C0 = CVar(CInt(1)) 'Integer
  loc_150BA0D: LateIdCallSt
  loc_150BA15: var_A0 = &HC
  loc_150BA1E: var_C0 = &H7D0
  loc_150BA2A: LateIdCallSt
  loc_150BA32: var_A0 = 0
  loc_150BA3B: var_C0 = &HD
  loc_150BA44: var_F0 = "Remark"
  loc_150BA4D: LateIdCallSt
  loc_150BA55: var_A0 = &HD
  loc_150BA64: var_C0 = CVar(CInt(1)) 'Integer
  loc_150BA6B: LateIdCallSt
  loc_150BA73: var_A0 = &HD
  loc_150BA7C: var_C0 = &H7D0
  loc_150BA88: LateIdCallSt
  loc_150BA90: var_A0 = 0
  loc_150BA99: var_C0 = &HE
  loc_150BAA2: var_F0 = "Mark"
  loc_150BAAB: LateIdCallSt
  loc_150BAB3: var_A0 = &HE
  loc_150BAC2: var_C0 = CVar(CInt(7)) 'Integer
  loc_150BAC9: LateIdCallSt
  loc_150BAD1: var_A0 = &HE
  loc_150BADA: var_C0 = 0
  loc_150BAE6: LateIdCallSt
  loc_150BAF0: Set var_1B4 = Nothing 
  loc_150BAF8: Set var_118 = Me.FGrid1
  loc_150BB28: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_150BB2B:   var_A0 = vbNullString
  loc_150BB35:   Set var_118 = Me.FGrid1
  loc_150BB46: End If
  loc_150BB7D: var_A0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_150BB9D: Me.FGrid1.Row = CVar(CLng(IIf(var_A0, FRow, 1)))
  loc_150BBBE: var_E0 = Me.FGrid1.Cols
  loc_150BBEB: var_A0 = ((Fcol <> 0) And ((CLng(var_E0) - 1) >= CLng(Fcol)))
  loc_150BC0B: Me.FGrid1.Col = CVar(CLng(IIf(var_A0, Fcol, 1)))
  loc_150BC27: Set var_8C = Nothing
  loc_150BC2F: Set var_88 = Nothing
  loc_150BC34: IStAd
  loc_150BC38: Exit Sub
  loc_150BC39: ' Referenced from: 150AD64
  loc_150BC41: Proc_6_60_E62BC4(0, Nothing, var_E0, var_E0, FGrid1.DispID_10000, var_A0, FGrid1.DispID_FFFF)
  loc_150BC46: Exit Sub
End Sub

Public Sub CompanyWiseSaleHall(formName, FRow, Fcol) '1AA2A8C
  'Data Table: 577ED8
  Dim var_150 As String
  Dim var_1D0 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_280 As Variant
  Dim var_1B0 As Variant
  Dim var_170 As Variant
  Dim var_1C0 As Variant
  Dim var_294 As Variant
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_144 As Double
  Dim var_14C As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_90 As Recordset15
  Dim var_D4 As Double
  Dim var_E2 As Integer
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_2A4 As Recordset15
  Dim var_2A8 As Fields15
  Dim var_2B0 As Recordset15
  Dim unk_577EDB As Connection15
  Dim var_D8 As Recordset15
  Dim var_190 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_2C0 As Recordset15
  Dim var_2BC As Fields15
  Dim var_94 As Recordset15
  Dim var_2D0 As Recordset15
  Dim var_2D4 As Recordset15
  Dim var_2D8 As Recordset15
  Dim var_2DC As Recordset15
  Dim var_8C As Recordset15
  Dim var_2E8 As MSHFlexGrid
  loc_1A9ECF1: var_1D0 = CVar("WHERE H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_1A9ED09: VarLateMemCallLdRfVar
  loc_1A9ED14: Proc_6_7_F25D88(var_1C0, Me.FGrid, 1)
  loc_1A9ED3E: VarLateMemCallLdRfVar
  loc_1A9ED49: Proc_6_7_F25D88(var_270, Me.FGrid, 1)
  loc_1A9ED51: var_280 = 1 & var_270 
  loc_1A9ED56: var_98 = CStr(var_280)
  loc_1A9ED79: Call 0.Method_arg_54 ("Party Wise Sale Report", 0 & var_1C0 & " And ")
  loc_1A9ED7E: var_160 = 1
  loc_1A9EDA7: If (Me.Check1.Value = 0) Then
  loc_1A9EDC5:   var_EC = CStr(" AND B.CompanyCode In (" & Me.GridString1 & ") ")
  loc_1A9EDD1: End If
  loc_1A9EDD4: var_160 = 0
  loc_1A9EE11: var_1C0 = Me.FGrid
  loc_1A9EE2B: Set var_294 = 1(1 & CStr(var_1C0.TextMatrix))
  loc_1A9EE31: var_1C0.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1A9EE51: var_160 = 1
  loc_1A9EE7A: If (Me.Check1.Value = 0) Then
  loc_1A9EE80:   var_1A0 = Me.FormulaString1
  loc_1A9EE87:   var_160 = "For Guest : "
  loc_1A9EEA3:   var_170 = vbNullString
  loc_1A9EEB4:   Set var_294 = Me.Text2
  loc_1A9EEBA:   Me.Text2.Text = CStr(var_160 & Left(var_1A0, &H73) & var_170)
  loc_1A9EED3: Else
  loc_1A9EEDA:   Set var_294 = Me.Text2
  loc_1A9EEE0:   var_294.Text = "For Guest :   All"
  loc_1A9EEE8: End If
  loc_1A9EEF5: Call Proc_249_110_10FC9B4(New, var_294, var_1A0, var_160)
  loc_1A9EEFD: Set var_8C = var_294
  loc_1A9EF14: var_150 = "SELECT H.DocId, H.VNo, H.Narration, H.VDate, H.Party,B.CompanyCode,S.Name, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.RestCode From HallSale1 H Inner Join HallBook B On H.BookDocID=B.DocID Left Join SubGroup S On B.CompanyCode=S.SubCode " & var_98
  loc_1A9EF2B: Me.Connection15.Execute var_150 & var_EC & " AND IsNull(B.CompanyCode,'')<>'' Order By S.Name,H.VNo, H.VDate", var_1A0, -1
  loc_1A9EF36: Set var_90 = var_294
  loc_1A9EF4B: var_124 = CDbl(0)
  loc_1A9EF51: var_12C = CDbl(0)
  loc_1A9EF57: var_134 = CDbl(0)
  loc_1A9EF5D: var_13C = CDbl(0)
  loc_1A9EF63: var_144 = CDbl(0)
  loc_1A9EF69: var_14C = CDbl(0)
  loc_1A9EF6F: var_10C = CDbl(0)
  loc_1A9EF75: var_114 = CDbl(0)
  loc_1A9EF7B: var_11C = CDbl(0)
  loc_1A9EF81: var_88 = vbNullString
  loc_1A9EF98: If (var_90.RecordCount > 0) Then
  loc_1A9EF9E:   var_90.MoveFirst
  loc_1A9EFCF:   var_D4 = CDate(var_90.Fields.Item("VDate").Value)
  loc_1A9EFDC:   ' Referenced from: 1AA144C
  loc_1A9EFEB:   If Not(var_90.EOF) Then
  loc_1A9EFF4:     var_E2 = (var_E2 + 1)
  loc_1A9F030:     If (var_14C <> Proc_6_38_E68A98(CVar(var_90.Fields.Item("companyCode")), var_E8, var_E2, var_D4, var_11C, var_114, var_10C)) Then
  loc_1A9F036:       var_A0 = CDbl(0)
  loc_1A9F03C:       var_A8 = CDbl(0)
  loc_1A9F042:       var_B0 = CDbl(0)
  loc_1A9F048:       var_B8 = CDbl(0)
  loc_1A9F04E:       var_C0 = CDbl(0)
  loc_1A9F054:       var_C8 = CDbl(0)
  loc_1A9F05A:       var_F4 = CDbl(0)
  loc_1A9F060:       var_FC = CDbl(0)
  loc_1A9F066:       var_104 = CDbl(0)
  loc_1A9F06C:       var_160 = "companyCode"
  loc_1A9F091:       var_E8 = Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_160)), var_104, var_FC, var_F4, var_C8, var_C0, var_B8)
  loc_1A9F09D:       Set var_2A4 = var_8C 
  loc_1A9F0AC:       var_2A4.AddNew var_160, var_170
  loc_1A9F0D6:       var_2A4.Fields.Item("mLine").Value = "GF"
  loc_1A9F107:       var_2A4.Fields.Item("SrNo").Value = vbNullString
  loc_1A9F138:       var_2A4.Fields.Item("DocID").Value = vbNullString
  loc_1A9F169:       var_2A4.Fields.Item("Billdate").Value = vbNullString
  loc_1A9F1C0:       var_2A4.Fields.Item("Item").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")), var_B0, var_A8, var_A0))
  loc_1A9F1FA:       var_2A4.Fields.Item("qty").Value = vbNullString
  loc_1A9F22B:       var_2A4.Fields.Item("Rate").Value = vbNullString
  loc_1A9F25C:       var_2A4.Fields.Item("nonTaxable").Value = vbNullString
  loc_1A9F28D:       var_2A4.Fields.Item("Taxable").Value = vbNullString
  loc_1A9F2BE:       var_2A4.Fields.Item("Tax1").Value = vbNullString
  loc_1A9F2EF:       var_2A4.Fields.Item("Tax2").Value = vbNullString
  loc_1A9F320:       var_2A4.Fields.Item("Tax3").Value = vbNullString
  loc_1A9F351:       var_2A4.Fields.Item("SrvChrg").Value = vbNullString
  loc_1A9F382:       var_2A4.Fields.Item("DiscAmt").Value = vbNullString
  loc_1A9F3B3:       var_2A4.Fields.Item("RoundOff").Value = vbNullString
  loc_1A9F3E4:       var_2A4.Fields.Item("Amount").Value = vbNullString
  loc_1A9F3F0:       var_170 = vbNullString
  loc_1A9F3F9:       var_160 = "Mark"
  loc_1A9F415:       var_2A4.Fields.Item(var_160).Value = var_170
  loc_1A9F42C:       var_2A4.Update var_160, var_170
  loc_1A9F433:       Set var_2A4 = Nothing 
  loc_1A9F437:     End If
  loc_1A9F43A:     Set var_2B0 = var_8C 
  loc_1A9F449:     var_2B0.AddNew var_160, var_170
  loc_1A9F473:     var_2B0.Fields.Item("mLine").Value = vbNullString
  loc_1A9F4AE:     var_2B0.Fields.Item("SrNo").Value = CVar(CStr(var_E2) & ".")
  loc_1A9F503:     var_2B0.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1A9F557:     var_2B0.Fields.Item("Billdate").Value = CVar(var_90.Fields.Item("VNo"))
  loc_1A9F587:     var_1A0 = CVar(var_90.Fields.Item("Party")) 'Address
  loc_1A9F5AB:     var_2B0.Fields.Item("Item").Value = var_1A0
  loc_1A9F5E1:     var_2B0.Fields.Item("qty").Value = vbNullString
  loc_1A9F612:     var_2B0.Fields.Item("Rate").Value = vbNullString
  loc_1A9F643:     var_2B0.Fields.Item("nonTaxable").Value = vbNullString
  loc_1A9F664:     var_294 = var_2B0.Fields
  loc_1A9F674:     var_294.Item("Taxable").Value = vbNullString
  loc_1A9F694:     var_150 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_98
  loc_1A9F6A4:     unk_577EDB.Execute var_150 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_1A0, -1
  loc_1A9F6AF:     Set var_D8 = var_294
  loc_1A9F6BF:     ' Referenced from: 1A9FEAC
  loc_1A9F6D0:     If (var_D8.EOF = 0) Then
  loc_1A9F70F:       var_1B0 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1A9F77D:       var_260 = var_1B0 & "') and Docid='" & var_90.Fields.Item("DocID").Value & "' And RestCode='" & var_90.Fields.Item("RestCode").Value 
  loc_1A9F794:       unk_577EDB.Execute CStr(var_260 & "'"), var_280, -1
  loc_1A9F79F:       Set var_DC = var_2BC
  loc_1A9F809:       var_1B0 = "Select sum(Amount) as TaxAmt from SunTran where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1A9F877:       var_260 = var_1B0 & "') and Docid='" & var_90.Fields.Item("DocID").Value & "' And RestCode='" & var_90.Fields.Item("RestCode").Value 
  loc_1A9F88E:       unk_577EDB.Execute CStr(var_260 & "'"), var_280, -1
  loc_1A9F899:       Set var_E0 = var_2BC
  loc_1A9F8DB:       If (var_D8.AbsolutePosition = 1) Then
  loc_1A9F93B:         var_1D0 = "0.00"
  loc_1A9F947:         var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9F97B:         var_2B0.Fields.Item("Tax1").Value = CVar(CStr(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0)))
  loc_1A9F9FB:         var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FA02:         Proc_6_39_E7C810(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_F4), 1, 1, var_2BC)
  loc_1A9FA0A:         var_1E0 = (var_2BC + var_1D0)
  loc_1A9FA0F:         var_F4 = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1A9FA43:         var_294 = var_DC.Fields
  loc_1A9FA85:         var_1C0 = (var_294.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FA8C:         Proc_6_39_E7C810(var_1D0, var_294.Item("TaxAmt").Value & "') and Docid='", CVar(var_10C), var_F4)
  loc_1A9FA94:         var_1E0 = (var_294 + var_1D0)
  loc_1A9FA99:         var_10C = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1A9FAB7:       Else
  loc_1A9FACB:         If (var_D8.AbsolutePosition = 2) Then
  loc_1A9FB2B:           var_1D0 = "0.00"
  loc_1A9FB37:           var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FB6B:           var_2B0.Fields.Item("Tax2").Value = CVar(CStr(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0)))
  loc_1A9FBEB:           var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FBF2:           Proc_6_39_E7C810(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_FC), 1, 1)
  loc_1A9FBFA:           var_1E0 = (var_10C + var_1D0)
  loc_1A9FBFF:           var_FC = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1A9FC75:           var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FC7C:           Proc_6_39_E7C810(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_114), var_FC)
  loc_1A9FC84:           var_1E0 = (var_144 + var_1D0)
  loc_1A9FC89:           var_114 = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1A9FCA7:         Else
  loc_1A9FCBB:           If (var_D8.AbsolutePosition = 3) Then
  loc_1A9FD1B:             var_1D0 = "0.00"
  loc_1A9FD27:             var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FD38:             var_200 = CVar(CStr(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))) 'String
  loc_1A9FD5B:             var_2B0.Fields.Item("Tax3").Value = var_200
  loc_1A9FDDB:             var_1C0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FDE2:             Proc_6_39_E7C810(var_1D0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_104), 1)
  loc_1A9FDEA:             var_1E0 = (1 + var_1D0)
  loc_1A9FDEF:             var_104 = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1A9FE33:             var_1B0 = var_DC.Fields.Item("TaxAmt").Value
  loc_1A9FE65:             var_1C0 = (var_1B0 + var_E0.Fields.Item("TaxAmt").Value)
  loc_1A9FE6C:             Proc_6_39_E7C810(var_1D0, var_1B0 & "') and Docid='", CVar(var_11C), var_104)
  loc_1A9FE74:             var_1E0 = (var_114 + var_1D0)
  loc_1A9FE79:             var_11C = CSng(Format(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_1D0))
  loc_1A9FE94:           End If
  loc_1A9FE94:         End If
  loc_1A9FE94:       End If
  loc_1A9FE99:       Set var_DC = Nothing
  loc_1A9FEA1:       Set var_E0 = Nothing
  loc_1A9FEA7:       var_D8.MoveNext
  loc_1A9FEAC:       GoTo loc_1A9F6BF
  loc_1A9FEAF:     End If
  loc_1A9FED5:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Servicecharge")), var_11C)
  loc_1A9FF1D:     var_2B0.Fields.Item("SrvChrg").Value = Format(var_1B0, "0.00")
  loc_1A9FF5C:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("DiscAmt")), 1)
  loc_1A9FFA4:     var_2B0.Fields.Item("DiscAmt").Value = Format(var_1B0, "0.00")
  loc_1A9FFE3:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("RoundOff")), 1, 1)
  loc_1AA002B:     var_2B0.Fields.Item("RoundOff").Value = Format(var_1B0, "0.00")
  loc_1AA006A:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Amount")), 1, 1)
  loc_1AA00B2:     var_2B0.Fields.Item("Amount").Value = Format(var_1B0, "0.00")
  loc_1AA00CB:     var_170 = vbNullString
  loc_1AA00D4:     var_160 = "Mark"
  loc_1AA00F0:     var_2B0.Fields.Item(var_160).Value = var_170
  loc_1AA0107:     var_2B0.Update var_160, var_170
  loc_1AA010E:     Set var_2B0 = Nothing 
  loc_1AA0115:     Set var_2C0 = var_8C 
  loc_1AA0124:     var_2C0.AddNew var_160, var_170
  loc_1AA014E:     var_2C0.Fields.Item("mLine").Value = vbNullString
  loc_1AA017F:     var_2C0.Fields.Item("SrNo").Value = vbNullString
  loc_1AA01CE:     var_2C0.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AA0242:     var_2C0.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YYYY")
  loc_1AA02A6:     var_1B0 = var_90.Fields.Item("NoofPax").Value
  loc_1AA02D1:     Proc_6_48_EF4270(var_200, CVar(var_90.Fields.Item("RatePerPax")), 1)
  loc_1AA0312:     var_1D0 = "PAXs " & var_1B0 & " @ " 
  loc_1AA032F:     var_280 = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("Narration")), 1, 1, 1) = vbNullString), var_1D0 & var_200, CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Narration")), 1)))
  loc_1AA0357:     var_2C0.Fields.Item("Item").Value = var_280
  loc_1AA03D0:     var_2C0.Fields.Item("qty").Value = CVar(var_90.Fields.Item("NoofPax"))
  loc_1AA0407:     Proc_6_47_EF59D0(var_1B0, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AA042F:     var_2C0.Fields.Item("Rate").Value = var_1B0
  loc_1AA0469:     var_2C0.Fields.Item("nonTaxable").Value = "0.00"
  loc_1AA049B:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("NoofPax")))
  loc_1AA04AF:     var_2A8 = var_90.Fields
  loc_1AA04C6:     Proc_6_39_E7C810(var_1D0, CVar(var_2A8.Item("RatePerPax")))
  loc_1AA051C:     var_2C0.Fields.Item("Taxable").Value = Format((var_1B0 * var_1D0), "0.00")
  loc_1AA0562:     var_2C0.Fields.Item("Tax1").Value = vbNullString
  loc_1AA0593:     var_2C0.Fields.Item("Tax2").Value = vbNullString
  loc_1AA05C4:     var_2C0.Fields.Item("Tax3").Value = vbNullString
  loc_1AA05F5:     var_2C0.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AA0626:     var_2C0.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AA0657:     var_2C0.Fields.Item("RoundOff").Value = vbNullString
  loc_1AA0688:     var_2C0.Fields.Item("Amount").Value = vbNullString
  loc_1AA0694:     var_170 = "*"
  loc_1AA069D:     var_160 = "Mark"
  loc_1AA06B9:     var_2C0.Fields.Item(var_160).Value = var_170
  loc_1AA06D0:     var_2C0.Update var_160, var_170
  loc_1AA06D7:     Set var_2C0 = Nothing 
  loc_1AA06E8:     var_170 = "SELECT HStk.DocId, HStk.VNo, HStk.VDate, HStk.Item, I.Name, HStk.QtyIss, HStk.Rate, NonTaxable=Case when HStk.TaxAmt=0 then HStk.Amount else '' end, Taxable= case when HStk.TaxAmt>0 then HStk.Amount else '' end From HallStock HStk left join Itemmast I on HStk.Item=I.Code where HStk.DocId='"
  loc_1AA06F3:     var_160 = "DocID"
  loc_1AA072E:     unk_577EDB.Execute CStr(var_170 & var_90.Fields.Item(var_160).Value & "' Order By I.Name"), var_1D0, -1
  loc_1AA0739:     Set var_94 = var_2A8
  loc_1AA0753:     ' Referenced from: 1AA0C8F
  loc_1AA0762:     If Not(var_94.EOF) Then
  loc_1AA0768:       Set var_2D0 = var_8C 
  loc_1AA0777:       var_2D0.AddNew var_160, var_170
  loc_1AA07A1:       var_2D0.Fields.Item("mLine").Value = vbNullString
  loc_1AA07D2:       var_2D0.Fields.Item("SrNo").Value = vbNullString
  loc_1AA0821:       var_2D0.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1AA085D:       var_1B0 = "DD/MM/YYYY"
  loc_1AA0895:       var_2D0.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), var_1B0)
  loc_1AA08EF:       var_2D0.Fields.Item("Item").Value = CVar(var_94.Fields.Item("Name"))
  loc_1AA0933:       var_2A8 = var_2D0.Fields
  loc_1AA0943:       var_2A8.Item("qty").Value = CVar(var_94.Fields.Item("QtyIss"))
  loc_1AA097A:       Proc_6_39_E7C810(var_1B0, CVar(var_94.Fields.Item("Rate")), 1, 1, var_2A8)
  loc_1AA09C2:       var_2D0.Fields.Item("Rate").Value = Format(var_1B0, "0.00")
  loc_1AA0A01:       Proc_6_39_E7C810(var_1B0, CVar(var_94.Fields.Item("nonTaxable")), 1, 1)
  loc_1AA0A49:       var_2D0.Fields.Item("nonTaxable").Value = Format(var_1B0, "0.00")
  loc_1AA0A88:       Proc_6_39_E7C810(var_1B0, CVar(var_94.Fields.Item("Taxable")), 1, 1)
  loc_1AA0AD0:       var_2D0.Fields.Item("Taxable").Value = Format(var_1B0, "0.00")
  loc_1AA0B0E:       var_2D0.Fields.Item("Tax1").Value = vbNullString
  loc_1AA0B3F:       var_2D0.Fields.Item("Tax2").Value = vbNullString
  loc_1AA0B70:       var_2D0.Fields.Item("Tax3").Value = vbNullString
  loc_1AA0BA1:       var_2D0.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AA0BD2:       var_2D0.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AA0C03:       var_2D0.Fields.Item("RoundOff").Value = vbNullString
  loc_1AA0C34:       var_2D0.Fields.Item("Amount").Value = vbNullString
  loc_1AA0C40:       var_170 = "*"
  loc_1AA0C49:       var_160 = "Mark"
  loc_1AA0C65:       var_2D0.Fields.Item(var_160).Value = var_170
  loc_1AA0C7C:       var_2D0.Update var_160, var_170
  loc_1AA0C83:       Set var_2D0 = Nothing 
  loc_1AA0C8A:       var_94.MoveNext
  loc_1AA0C8F:       GoTo loc_1AA0753
  loc_1AA0C92:     End If
  loc_1AA0CBF:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("nonTaxable")), CVar(var_A8), 1, 1)
  loc_1AA0CC7:     var_1C0 = (1 + var_1B0)
  loc_1AA0CCC:     var_A8 = CSng("0.00")
  loc_1AA0D08:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Taxable")), CVar(var_A0), var_A8)
  loc_1AA0D10:     var_1C0 = (1 + var_1B0)
  loc_1AA0D15:     var_A0 = CSng("0.00")
  loc_1AA0D51:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("DiscAmt")), CVar(var_C0))
  loc_1AA0D59:     var_1C0 = (var_A0 + var_1B0)
  loc_1AA0D5E:     var_C0 = CSng("0.00")
  loc_1AA0D9A:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_B8))
  loc_1AA0DA2:     var_1C0 = (var_C0 + var_1B0)
  loc_1AA0DA7:     var_B8 = CSng("0.00")
  loc_1AA0DE3:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Servicecharge")), CVar(var_C8))
  loc_1AA0DEB:     var_1C0 = (var_B8 + var_1B0)
  loc_1AA0DF0:     var_C8 = CSng("0.00")
  loc_1AA0E2C:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Amount")), CVar(var_B0))
  loc_1AA0E34:     var_1C0 = (var_C8 + var_1B0)
  loc_1AA0E39:     var_B0 = CSng("0.00")
  loc_1AA0E75:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("nonTaxable")), CVar(var_12C))
  loc_1AA0E7D:     var_1C0 = (var_B0 + var_1B0)
  loc_1AA0E82:     var_12C = CSng("0.00")
  loc_1AA0EBE:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Taxable")), CVar(var_124))
  loc_1AA0EC6:     var_1C0 = (var_12C + var_1B0)
  loc_1AA0ECB:     var_124 = CSng("0.00")
  loc_1AA0F07:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("DiscAmt")), CVar(var_144))
  loc_1AA0F0F:     var_1C0 = (var_124 + var_1B0)
  loc_1AA0F14:     var_144 = CSng("0.00")
  loc_1AA0F50:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("RoundOff")), CVar(var_13C))
  loc_1AA0F58:     var_1C0 = (var_144 + var_1B0)
  loc_1AA0F5D:     var_13C = CSng("0.00")
  loc_1AA0F99:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Servicecharge")), CVar(var_14C))
  loc_1AA0FA1:     var_1C0 = (var_13C + var_1B0)
  loc_1AA0FA6:     var_14C = CSng("0.00")
  loc_1AA0FB8:     var_170 = CVar(var_134) 'Double
  loc_1AA0FE2:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("Amount")), var_170)
  loc_1AA0FEA:     var_1C0 = (var_14C + var_1B0)
  loc_1AA0FEF:     var_134 = CSng("0.00")
  loc_1AA1001:     var_90.MoveNext
  loc_1AA1017:     If (var_90.EOF = &HFF) Then
  loc_1AA101A:       GoTo loc_1AA144F
  loc_1AA101D:     End If
  loc_1AA1023:     var_160 = "companyCode"
  loc_1AA1056:     If (var_13C <> Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_160)), var_E8, var_134)) Then
  loc_1AA105C:       Set var_2D4 = var_8C 
  loc_1AA106B:       var_2D4.AddNew var_160, var_170
  loc_1AA1095:       var_2D4.Fields.Item("mLine").Value = "GF"
  loc_1AA10A1:       var_170 = "Total-->"
  loc_1AA10C6:       var_2D4.Fields.Item("Item").Value = "GF"
  loc_1AA111A:       var_2D4.Fields.Item("nonTaxable").Value = Format(var_A8, "0.00")
  loc_1AA1175:       var_2D4.Fields.Item("Taxable").Value = Format(var_A0, "0.00")
  loc_1AA11D0:       var_2D4.Fields.Item("Tax1").Value = Format(var_F4, "0.00")
  loc_1AA122B:       var_2D4.Fields.Item("Tax2").Value = Format(var_FC, "0.00")
  loc_1AA1286:       var_2D4.Fields.Item("Tax3").Value = Format(var_104, "0.00")
  loc_1AA12E1:       var_2D4.Fields.Item("SrvChrg").Value = Format(var_C8, "0.00")
  loc_1AA133C:       var_2D4.Fields.Item("DiscAmt").Value = Format(var_C0, "0.00")
  loc_1AA1397:       var_2D4.Fields.Item("RoundOff").Value = Format(var_B8, "0.00")
  loc_1AA13F2:       var_2D4.Fields.Item("Amount").Value = Format(var_B0, "0.00")
  loc_1AA1405:       var_170 = vbNullString
  loc_1AA140E:       var_160 = "Mark"
  loc_1AA142A:       var_2D4.Fields.Item(var_160).Value = var_170
  loc_1AA1441:       var_2D4.Update var_160, var_170
  loc_1AA1448:       Set var_2D4 = Nothing 
  loc_1AA144C:     End If
  loc_1AA144C:     GoTo loc_1A9EFDC
  loc_1AA144F:     ' Referenced from: 1AA101A
  loc_1AA144F:   End If
  loc_1AA144F: End If
  loc_1AA1452: Set var_2D8 = var_8C 
  loc_1AA1461: var_2D8.AddNew var_160, var_170
  loc_1AA148B: var_2D8.Fields.Item("mLine").Value = "GF"
  loc_1AA1497: var_170 = "Total-->"
  loc_1AA14BC: var_2D8.Fields.Item("Item").Value = "GF"
  loc_1AA1510: var_2D8.Fields.Item("nonTaxable").Value = Format(var_A8, "0.00")
  loc_1AA156B: var_2D8.Fields.Item("Taxable").Value = Format(var_A0, "0.00")
  loc_1AA15C6: var_2D8.Fields.Item("Tax1").Value = Format(var_F4, "0.00")
  loc_1AA1621: var_2D8.Fields.Item("Tax2").Value = Format(var_FC, "0.00")
  loc_1AA167C: var_2D8.Fields.Item("Tax3").Value = Format(var_104, "0.00")
  loc_1AA16D7: var_2D8.Fields.Item("SrvChrg").Value = Format(var_C8, "0.00")
  loc_1AA1732: var_2D8.Fields.Item("DiscAmt").Value = Format(var_C0, "0.00")
  loc_1AA178D: var_2D8.Fields.Item("RoundOff").Value = Format(var_B8, "0.00")
  loc_1AA17E8: var_2D8.Fields.Item("Amount").Value = Format(var_B0, "0.00")
  loc_1AA17FB: var_170 = vbNullString
  loc_1AA1804: var_160 = "Mark"
  loc_1AA1820: var_2D8.Fields.Item(var_160).Value = var_170
  loc_1AA1837: var_2D8.Update var_160, var_170
  loc_1AA183E: Set var_2D8 = Nothing 
  loc_1AA1845: Set var_2DC = var_8C 
  loc_1AA1854: var_2DC.AddNew var_160, var_170
  loc_1AA187E: var_2DC.Fields.Item("mLine").Value = "GF"
  loc_1AA188A: var_170 = "Grand Total-->"
  loc_1AA18AF: var_2DC.Fields.Item("Item").Value = "GF"
  loc_1AA1903: var_2DC.Fields.Item("nonTaxable").Value = Format(var_12C, "0.00")
  loc_1AA195E: var_2DC.Fields.Item("Taxable").Value = Format(var_124, "0.00")
  loc_1AA19B9: var_2DC.Fields.Item("Tax1").Value = Format(var_10C, "0.00")
  loc_1AA1A14: var_2DC.Fields.Item("Tax2").Value = Format(var_114, "0.00")
  loc_1AA1A6F: var_2DC.Fields.Item("Tax3").Value = Format(var_11C, "0.00")
  loc_1AA1ACA: var_2DC.Fields.Item("SrvChrg").Value = Format(var_14C, "0.00")
  loc_1AA1B25: var_2DC.Fields.Item("DiscAmt").Value = Format(var_144, "0.00")
  loc_1AA1B80: var_2DC.Fields.Item("RoundOff").Value = Format(var_13C, "0.00")
  loc_1AA1BA2: var_1A0 = "0.00"
  loc_1AA1BDB: var_2DC.Fields.Item("Amount").Value = Format(var_134, var_1A0)
  loc_1AA1BEE: var_170 = vbNullString
  loc_1AA1BF7: var_160 = "Mark"
  loc_1AA1C13: var_2DC.Fields.Item(var_160).Value = var_170
  loc_1AA1C2A: var_2DC.Update var_160, var_170
  loc_1AA1C31: Set var_2DC = Nothing 
  loc_1AA1C5D: Me.FGrid1.Rows = 2
  loc_1AA1C79: If (var_8C.RecordCount > 0) Then
  loc_1AA1C82:   CVarUnk
  loc_1AA1C87:   VerifyVarObj
  loc_1AA1C8D:   Set var_294 = Me.FGrid1
  loc_1AA1C93:   LateIdStAd
  loc_1AA1CBD:   Set var_294 = Me.FGrid1
  loc_1AA1CC3:   Proc_96_13_FACD34(var_294, 0, 0, var_294, var_8C, Me.FGrid1.Text, 1, 1)
  loc_1AA1CCE: End If
  loc_1AA1CD2: Set var_2E8 = Me.FGrid1
  loc_1AA1CDE: var_2E8.Tag = "CompanyWiseSaleHall"
  loc_1AA1CEF: var_2E8.Cols = &H11
  loc_1AA1CF4: var_160 = 0
  loc_1AA1CFD: var_180 = 0
  loc_1AA1D06: var_1F0 = "mLine"
  loc_1AA1D0F: LateIdCallSt
  loc_1AA1D17: var_160 = 0
  loc_1AA1D20: var_180 = 0
  loc_1AA1D2C: LateIdCallSt
  loc_1AA1D34: var_160 = 0
  loc_1AA1D3D: var_180 = 1
  loc_1AA1D46: var_1F0 = "SNo."
  loc_1AA1D4F: LateIdCallSt
  loc_1AA1D57: var_160 = 1
  loc_1AA1D60: var_180 = &H1F4
  loc_1AA1D6C: LateIdCallSt
  loc_1AA1D74: var_160 = 0
  loc_1AA1D7D: var_180 = 2
  loc_1AA1D86: var_1F0 = "Doc Id"
  loc_1AA1D8F: LateIdCallSt
  loc_1AA1D97: var_160 = 2
  loc_1AA1DA0: var_180 = 0
  loc_1AA1DAC: LateIdCallSt
  loc_1AA1DB4: var_160 = 0
  loc_1AA1DBD: var_180 = 3
  loc_1AA1DC6: var_1F0 = "Bill Date"
  loc_1AA1DCF: LateIdCallSt
  loc_1AA1DD7: var_160 = 3
  loc_1AA1DE0: var_180 = &H4B0
  loc_1AA1DEC: LateIdCallSt
  loc_1AA1DF4: var_160 = 0
  loc_1AA1DFD: var_180 = 4
  loc_1AA1E06: var_1F0 = "Item Name"
  loc_1AA1E0F: LateIdCallSt
  loc_1AA1E17: var_160 = 4
  loc_1AA1E20: var_180 = &HC80
  loc_1AA1E2C: LateIdCallSt
  loc_1AA1E34: var_160 = 0
  loc_1AA1E3D: var_180 = 5
  loc_1AA1E46: var_1F0 = "Qty"
  loc_1AA1E4F: LateIdCallSt
  loc_1AA1E57: var_160 = 5
  loc_1AA1E66: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1E6D: LateIdCallSt
  loc_1AA1E75: var_160 = 5
  loc_1AA1E84: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1E8B: LateIdCallSt
  loc_1AA1E93: var_160 = 5
  loc_1AA1E9C: var_180 = &H320
  loc_1AA1EA8: LateIdCallSt
  loc_1AA1EB0: var_160 = 0
  loc_1AA1EB9: var_180 = 6
  loc_1AA1EC2: var_1F0 = "Rate"
  loc_1AA1ECB: LateIdCallSt
  loc_1AA1ED3: var_160 = 6
  loc_1AA1EE2: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1EE9: LateIdCallSt
  loc_1AA1EF1: var_160 = 6
  loc_1AA1F00: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1F07: LateIdCallSt
  loc_1AA1F0F: var_160 = 6
  loc_1AA1F18: var_180 = &H4B0
  loc_1AA1F24: LateIdCallSt
  loc_1AA1F2C: var_160 = 0
  loc_1AA1F35: var_180 = 7
  loc_1AA1F3E: var_1F0 = "Non-Taxable"
  loc_1AA1F47: LateIdCallSt
  loc_1AA1F4F: var_160 = 7
  loc_1AA1F5E: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1F65: LateIdCallSt
  loc_1AA1F6D: var_160 = 7
  loc_1AA1F7C: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1F83: LateIdCallSt
  loc_1AA1F8B: var_160 = 7
  loc_1AA1F94: var_180 = &H640
  loc_1AA1FA0: LateIdCallSt
  loc_1AA1FA8: var_160 = 0
  loc_1AA1FB1: var_180 = 8
  loc_1AA1FBA: var_1F0 = "Taxable"
  loc_1AA1FC3: LateIdCallSt
  loc_1AA1FCB: var_160 = 8
  loc_1AA1FDA: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1FE1: LateIdCallSt
  loc_1AA1FE9: var_160 = 8
  loc_1AA1FF8: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA1FFF: LateIdCallSt
  loc_1AA2007: var_160 = 8
  loc_1AA2010: var_180 = &H640
  loc_1AA201C: LateIdCallSt
  loc_1AA2038: var_150 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_98
  loc_1AA2048: unk_577EDB.Execute var_150 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_1A0, -1
  loc_1AA2053: Set var_D8 = var_294
  loc_1AA2063: ' Referenced from: 1AA26D5
  loc_1AA2074: If (var_D8.EOF = 0) Then
  loc_1AA208B:   If (var_D8.RecordCount = 1) Then
  loc_1AA208E:     var_170 = 0
  loc_1AA2097:     var_190 = 9
  loc_1AA20CB:     var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA20D2:     LateIdCallSt
  loc_1AA20E8:     var_160 = 9
  loc_1AA20F1:     var_180 = &H640
  loc_1AA20FD:     LateIdCallSt
  loc_1AA2105:     var_160 = 9
  loc_1AA2114:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA211B:     LateIdCallSt
  loc_1AA2123:     var_160 = 9
  loc_1AA2132:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2139:     LateIdCallSt
  loc_1AA2141:     var_160 = 0
  loc_1AA214A:     var_180 = &HA
  loc_1AA2153:     var_1F0 = "Tax2"
  loc_1AA215C:     LateIdCallSt
  loc_1AA2164:     var_160 = &HA
  loc_1AA216D:     var_180 = &H640
  loc_1AA2179:     LateIdCallSt
  loc_1AA2181:     var_160 = &HA
  loc_1AA2190:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2197:     LateIdCallSt
  loc_1AA219F:     var_160 = &HA
  loc_1AA21AE:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA21B5:     LateIdCallSt
  loc_1AA21BD:     var_160 = 0
  loc_1AA21C6:     var_180 = &HB
  loc_1AA21CF:     var_1F0 = "Tax3"
  loc_1AA21D8:     LateIdCallSt
  loc_1AA21E0:     var_160 = &HB
  loc_1AA21E9:     var_180 = &H640
  loc_1AA21F5:     LateIdCallSt
  loc_1AA21FD:     var_160 = &HB
  loc_1AA220C:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2213:     LateIdCallSt
  loc_1AA221B:     var_160 = &HB
  loc_1AA222A:     var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2231:     LateIdCallSt
  loc_1AA223C:   Else
  loc_1AA2250:     If (var_D8.RecordCount = 2) Then
  loc_1AA2267:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AA226A:         var_170 = 0
  loc_1AA2273:         var_190 = 9
  loc_1AA22A7:         var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA22AE:         LateIdCallSt
  loc_1AA22C4:         var_160 = 9
  loc_1AA22CD:         var_180 = &H640
  loc_1AA22D9:         LateIdCallSt
  loc_1AA22E1:         var_160 = 9
  loc_1AA22F0:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA22F7:         LateIdCallSt
  loc_1AA22FF:         var_160 = 9
  loc_1AA230E:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2315:         LateIdCallSt
  loc_1AA2320:       Else
  loc_1AA2320:         var_170 = 0
  loc_1AA2329:         var_190 = &HA
  loc_1AA235D:         var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA2364:         LateIdCallSt
  loc_1AA237A:         var_160 = &HA
  loc_1AA2383:         var_180 = &H640
  loc_1AA238F:         LateIdCallSt
  loc_1AA2397:         var_160 = &HA
  loc_1AA23A6:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA23AD:         LateIdCallSt
  loc_1AA23B5:         var_160 = &HA
  loc_1AA23C4:         var_180 = CVar(CInt(7)) 'Integer
  loc_1AA23CB:         LateIdCallSt
  loc_1AA23D3:       End If
  loc_1AA23D3:       var_160 = 0
  loc_1AA23DC:       var_180 = &HB
  loc_1AA23E5:       var_1F0 = "Tax3"
  loc_1AA23EE:       LateIdCallSt
  loc_1AA23F6:       var_160 = &HB
  loc_1AA23FF:       var_180 = &H640
  loc_1AA240B:       LateIdCallSt
  loc_1AA2413:       var_160 = &HB
  loc_1AA2422:       var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2429:       LateIdCallSt
  loc_1AA2431:       var_160 = &HB
  loc_1AA2440:       var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2447:       LateIdCallSt
  loc_1AA2452:     Else
  loc_1AA2466:       If (var_D8.RecordCount > 2) Then
  loc_1AA247D:         If (var_D8.AbsolutePosition = 1) Then
  loc_1AA2480:           var_170 = 0
  loc_1AA2489:           var_190 = 9
  loc_1AA24BD:           var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA24C4:           LateIdCallSt
  loc_1AA24DA:           var_160 = 9
  loc_1AA24E3:           var_180 = &H640
  loc_1AA24EF:           LateIdCallSt
  loc_1AA24F7:           var_160 = 9
  loc_1AA2506:           var_180 = CVar(CInt(7)) 'Integer
  loc_1AA250D:           LateIdCallSt
  loc_1AA2515:           var_160 = 9
  loc_1AA2524:           var_180 = CVar(CInt(7)) 'Integer
  loc_1AA252B:           LateIdCallSt
  loc_1AA2536:         Else
  loc_1AA254A:           If (var_D8.AbsolutePosition = 2) Then
  loc_1AA254D:             var_170 = 0
  loc_1AA2556:             var_190 = &HA
  loc_1AA258A:             var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA2591:             LateIdCallSt
  loc_1AA25A7:             var_160 = &HA
  loc_1AA25B0:             var_180 = &H640
  loc_1AA25BC:             LateIdCallSt
  loc_1AA25C4:             var_160 = &HA
  loc_1AA25D3:             var_180 = CVar(CInt(7)) 'Integer
  loc_1AA25DA:             LateIdCallSt
  loc_1AA25E2:             var_160 = &HA
  loc_1AA25F1:             var_180 = CVar(CInt(7)) 'Integer
  loc_1AA25F8:             LateIdCallSt
  loc_1AA2603:           Else
  loc_1AA2617:             If (var_D8.AbsolutePosition = 3) Then
  loc_1AA261A:               var_170 = 0
  loc_1AA2623:               var_190 = &HB
  loc_1AA2657:               var_1B0 = CVar(CStr(var_D8.Fields.Item("Name").Value)) 'String
  loc_1AA265E:               LateIdCallSt
  loc_1AA2674:               var_160 = &HB
  loc_1AA267D:               var_180 = &H640
  loc_1AA2689:               LateIdCallSt
  loc_1AA2691:               var_160 = &HB
  loc_1AA26A0:               var_180 = CVar(CInt(7)) 'Integer
  loc_1AA26A7:               LateIdCallSt
  loc_1AA26AF:               var_160 = &HB
  loc_1AA26BE:               var_180 = CVar(CInt(7)) 'Integer
  loc_1AA26C5:               LateIdCallSt
  loc_1AA26CD:             End If
  loc_1AA26CD:           End If
  loc_1AA26CD:         End If
  loc_1AA26CD:       End If
  loc_1AA26CD:     End If
  loc_1AA26CD:   End If
  loc_1AA26D0:   var_D8.MoveNext
  loc_1AA26D5:   GoTo loc_1AA2063
  loc_1AA26D8: End If
  loc_1AA26D8: var_160 = 0
  loc_1AA26E1: var_180 = &HC
  loc_1AA26EA: var_1F0 = "SRV. Charge"
  loc_1AA26F3: LateIdCallSt
  loc_1AA26FB: var_160 = &HC
  loc_1AA270A: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2711: LateIdCallSt
  loc_1AA2719: var_160 = &HC
  loc_1AA2728: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA272F: LateIdCallSt
  loc_1AA2737: var_160 = &HC
  loc_1AA2740: var_180 = &H640
  loc_1AA274C: LateIdCallSt
  loc_1AA2754: var_160 = 0
  loc_1AA275D: var_180 = &HD
  loc_1AA2766: var_1F0 = "Discount"
  loc_1AA276F: LateIdCallSt
  loc_1AA2777: var_160 = &HD
  loc_1AA2786: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA278D: LateIdCallSt
  loc_1AA2795: var_160 = &HD
  loc_1AA27A4: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA27AB: LateIdCallSt
  loc_1AA27B3: var_160 = &HD
  loc_1AA27BC: var_180 = &H578
  loc_1AA27C8: LateIdCallSt
  loc_1AA27D0: var_160 = 0
  loc_1AA27D9: var_180 = &HE
  loc_1AA27E2: var_1F0 = "ROff."
  loc_1AA27EB: LateIdCallSt
  loc_1AA27F3: var_160 = &HE
  loc_1AA2802: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2809: LateIdCallSt
  loc_1AA2811: var_160 = &HE
  loc_1AA2820: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2827: LateIdCallSt
  loc_1AA282F: var_160 = &HE
  loc_1AA2838: var_180 = &H320
  loc_1AA2844: LateIdCallSt
  loc_1AA284C: var_160 = 0
  loc_1AA2855: var_180 = &HF
  loc_1AA285E: var_1F0 = "Net Amount"
  loc_1AA2867: LateIdCallSt
  loc_1AA286F: var_160 = &HF
  loc_1AA287E: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA2885: LateIdCallSt
  loc_1AA288D: var_160 = &HF
  loc_1AA289C: var_180 = CVar(CInt(7)) 'Integer
  loc_1AA28A3: LateIdCallSt
  loc_1AA28AB: var_160 = &HF
  loc_1AA28B4: var_180 = &H640
  loc_1AA28C0: LateIdCallSt
  loc_1AA28C8: var_160 = 0
  loc_1AA28D1: var_180 = &H10
  loc_1AA28DA: var_1F0 = "MARK"
  loc_1AA28E3: LateIdCallSt
  loc_1AA28EB: var_160 = &H10
  loc_1AA28F4: var_180 = 0
  loc_1AA2900: LateIdCallSt
  loc_1AA290A: Set var_2E8 = Nothing 
  loc_1AA2922: If (var_90.RecordCount <= 0) Then
  loc_1AA292A:   global_152 = 0
  loc_1AA292D:   Exit Sub
  loc_1AA292E: End If
  loc_1AA2932: Set var_294 = Me.FGrid1
  loc_1AA2962: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1AA2965:   var_160 = vbNullString
  loc_1AA296F:   Set var_294 = Me.FGrid1
  loc_1AA2980: End If
  loc_1AA29B7: var_160 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1AA29D7: Me.FGrid1.Row = CVar(CLng(IIf(var_160, FRow, 1)))
  loc_1AA2A25: var_160 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1AA2A45: Me.FGrid1.Col = CVar(CLng(IIf(var_160, Fcol, 1)))
  loc_1AA2A61: Set var_8C = Nothing
  loc_1AA2A69: Set var_90 = Nothing
  loc_1AA2A71: Set var_DC = Nothing
  loc_1AA2A79: Set var_E0 = Nothing
  loc_1AA2A81: Set var_D8 = Nothing
  loc_1AA2A86: IStAd
  loc_1AA2A8A: Exit Sub
End Sub

Public Sub ItemWiseSaleHall(formName, FRow, Fcol) '144C7DC
  'Data Table: 577ED8
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_124 As Variant
  Dim var_164 As Variant
  Dim var_1F4 As Variant
  Dim var_9A As Integer
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_220 As Recordset15
  Dim var_CC As Variant
  Dim var_184 As Variant
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_23C As MSHFlexGrid
  loc_144BCD4: On Error Goto loc_144C7CB
  loc_144BCDD: Call 0.Method_arg_54 ("Item Wise Sales Report")
  loc_144BCE5: var_BC = 0
  loc_144BD22: var_164 = Me.FGrid
  loc_144BD3C: Set var_184 = 1(1 & CStr(var_164.TextMatrix))
  loc_144BD42: var_164.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_144BD6F: Call Proc_249_101_FC2810(New, var_184)
  loc_144BD77: Set var_8C = var_184
  loc_144BD8F: If (global_208 = MemVar_1F92078 & "BANQ") Then
  loc_144BD95:   var_94 = "IDC"
  loc_144BD9B: Else
  loc_144BD9E:   var_94 = "ODC"
  loc_144BDA1: End If
  loc_144BDB5: var_110 = "SELECT Max(H.VDate) AS SDate,Max(I.Name) AS Item,Sum(H.QtyIss) AS Qty,Max(H.Unit) AS Unit,Max(H.Rate) AS Rate,Sum(Amount) AS Amount " & "FROM HallStock H INNER JOIN ItemMast I ON H.Item = I.Code "
  loc_144BDCD: var_BC = 0
  loc_144BDE2: VarLateMemCallLdRfVar
  loc_144BDED: Proc_6_7_F25D88(var_164, Me.FGrid, 1, var_BC, CVar(var_110 & "Group By H.VType,H.VDate,H.Item HAVING H.VType='" & var_94 & "' AND H.VDate Between "))
  loc_144BE17: VarLateMemCallLdRfVar
  loc_144BE22: Proc_6_7_F25D88(var_1E4, Me.FGrid, 1, 1, var_214 & var_164 & " AND ")
  loc_144BE2A: var_1F4 = -1 & var_1E4 
  loc_144BE38: Me.Connection15.Execute CStr(var_1F4), var_184, var_BC
  loc_144BE43: Set var_88 = var_184
  loc_144BE6F: var_9A = 0
  loc_144BE75: var_A4 = CDbl(0)
  loc_144BE7B: var_AC = CDbl(0)
  loc_144BE80: var_8E = 0
  loc_144BE97: If (var_88.RecordCount > 0) Then
  loc_144BE9D:   var_88.MoveFirst
  loc_144BEA2:   ' Referenced from: 144C1C7
  loc_144BEB1:   If Not(var_88.EOF) Then
  loc_144BEB7:     Set var_220 = var_8C 
  loc_144BEC1:     var_8E = (var_8E + 1)
  loc_144BECF:     var_220.AddNew var_BC, var_CC
  loc_144BEF9:     var_220.Fields.Item("mLine").Value = vbNullString
  loc_144BF34:     var_220.Fields.Item("SNo").Value = CVar(CStr(var_8E) & ".")
  loc_144BF89:     var_220.Fields.Item("Item").Value = CVar(var_88.Fields.Item("Item"))
  loc_144BFE5:     var_220.Fields.Item("qty").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("qty")), var_8E, var_8E, var_AC))
  loc_144C045:     var_220.Fields.Item("Unit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), var_A4))
  loc_144C0C2:     var_220.Fields.Item("Rate").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_144C0E0:     var_BC = "Amount"
  loc_144C103:     var_CC = "0.00"
  loc_144C108:     var_10C = var_CC
  loc_144C145:     var_220.Fields.Item("Amount").Value = CVar(CStr(Format(CVar(var_88.Fields.Item(var_BC)), var_10C)))
  loc_144C16B:     var_220.Update var_BC, var_CC
  loc_144C173:     var_CC = CVar(var_A4) 'Double
  loc_144C17A:     var_BC = "Amount"
  loc_144C19D:     Proc_6_39_E7C810(var_10C, CVar(var_88.Fields.Item(var_BC)), var_CC, 1, 1)
  loc_144C1A5:     var_164 = (1 + var_10C)
  loc_144C1AA:     var_A4 = CSng(Format(CVar(var_88.Fields.Item(var_BC)), var_10C))
  loc_144C1BB:     Set var_220 = Nothing 
  loc_144C1C2:     var_88.MoveNext
  loc_144C1C7:     GoTo loc_144BEA2
  loc_144C1CA:   End If
  loc_144C1CD:   Set var_230 = var_8C 
  loc_144C1DC:   var_230.AddNew var_BC, var_CC
  loc_144C206:   var_230.Fields.Item("mLine").Value = "GF"
  loc_144C212:   var_CC = "Total-->"
  loc_144C237:   var_230.Fields.Item("Item").Value = "GF"
  loc_144C24D:   var_CC = "0.00"
  loc_144C25B:   var_BC = var_A4
  loc_144C290:   var_230.Fields.Item("Amount").Value = CVar(CStr(Format(var_BC, var_CC)))
  loc_144C2B2:   var_230.Update var_BC, var_CC
  loc_144C2B9:   Set var_230 = Nothing 
  loc_144C2BD: End If
  loc_144C2D1: If (var_8C.RecordCount > 0) Then
  loc_144C2DA:   CVarUnk
  loc_144C2DF:   VerifyVarObj
  loc_144C2E5:   Set var_184 = Me.FGrid1
  loc_144C2EB:   LateIdStAd
  loc_144C31B:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_8C, 1)
  loc_144C326: End If
  loc_144C32A: Set var_23C = Me.FGrid1
  loc_144C336: var_23C.Tag = "ItemWiseSaleHall"
  loc_144C347: var_23C.Cols = 8
  loc_144C34C: var_BC = 0
  loc_144C355: var_DC = 0
  loc_144C35E: var_124 = "mLine"
  loc_144C367: LateIdCallSt
  loc_144C36F: var_BC = 0
  loc_144C378: var_DC = 0
  loc_144C384: LateIdCallSt
  loc_144C38C: var_BC = 0
  loc_144C395: var_DC = 1
  loc_144C39E: var_124 = "SNo"
  loc_144C3A7: LateIdCallSt
  loc_144C3AF: var_BC = 1
  loc_144C3BE: var_DC = CVar(CInt(1)) 'Integer
  loc_144C3C5: LateIdCallSt
  loc_144C3CD: var_BC = 1
  loc_144C3D6: var_DC = &H1F4
  loc_144C3E2: LateIdCallSt
  loc_144C3EA: var_BC = 0
  loc_144C3F3: var_DC = 2
  loc_144C3FC: var_124 = "Item"
  loc_144C405: LateIdCallSt
  loc_144C40D: var_BC = 2
  loc_144C41C: var_DC = CVar(CInt(1)) 'Integer
  loc_144C423: LateIdCallSt
  loc_144C42B: var_BC = 2
  loc_144C434: var_DC = &HC80
  loc_144C440: LateIdCallSt
  loc_144C448: var_BC = 0
  loc_144C451: var_DC = 3
  loc_144C45A: var_124 = "Qty Issue"
  loc_144C463: LateIdCallSt
  loc_144C46B: var_BC = 3
  loc_144C47A: var_DC = CVar(CInt(1)) 'Integer
  loc_144C481: LateIdCallSt
  loc_144C489: var_BC = 3
  loc_144C492: var_DC = &H5DC
  loc_144C49E: LateIdCallSt
  loc_144C4A6: var_BC = 0
  loc_144C4AF: var_DC = 4
  loc_144C4B8: var_124 = "Unit"
  loc_144C4C1: LateIdCallSt
  loc_144C4C9: var_BC = 4
  loc_144C4D8: var_DC = CVar(CInt(1)) 'Integer
  loc_144C4DF: LateIdCallSt
  loc_144C4E7: var_BC = 4
  loc_144C4F6: var_DC = CVar(CInt(1)) 'Integer
  loc_144C4FD: LateIdCallSt
  loc_144C505: var_BC = 4
  loc_144C50E: var_DC = &H3E8
  loc_144C51A: LateIdCallSt
  loc_144C522: var_BC = 0
  loc_144C52B: var_DC = 5
  loc_144C534: var_124 = "Rate"
  loc_144C53D: LateIdCallSt
  loc_144C545: var_BC = 5
  loc_144C554: var_DC = CVar(CInt(7)) 'Integer
  loc_144C55B: LateIdCallSt
  loc_144C563: var_BC = 5
  loc_144C572: var_DC = CVar(CInt(7)) 'Integer
  loc_144C579: LateIdCallSt
  loc_144C581: var_BC = 5
  loc_144C58A: var_DC = &H4B0
  loc_144C596: LateIdCallSt
  loc_144C59E: var_BC = 0
  loc_144C5A7: var_DC = 6
  loc_144C5B0: var_124 = "Amount"
  loc_144C5B9: LateIdCallSt
  loc_144C5C1: var_BC = 6
  loc_144C5D0: var_DC = CVar(CInt(7)) 'Integer
  loc_144C5D7: LateIdCallSt
  loc_144C5DF: var_BC = 6
  loc_144C5EE: var_DC = CVar(CInt(7)) 'Integer
  loc_144C5F5: LateIdCallSt
  loc_144C5FD: var_BC = 6
  loc_144C606: var_DC = &H6A4
  loc_144C612: LateIdCallSt
  loc_144C61A: var_BC = 0
  loc_144C623: var_DC = 7
  loc_144C62C: var_124 = "Mark"
  loc_144C635: LateIdCallSt
  loc_144C63D: var_BC = 7
  loc_144C64C: var_DC = CVar(CInt(7)) 'Integer
  loc_144C653: LateIdCallSt
  loc_144C65B: var_BC = 7
  loc_144C664: var_DC = 0
  loc_144C670: LateIdCallSt
  loc_144C67A: Set var_23C = Nothing 
  loc_144C682: Set var_184 = Me.FGrid1
  loc_144C6B2: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_144C6B5:   var_BC = vbNullString
  loc_144C6BF:   Set var_184 = Me.FGrid1
  loc_144C6D0: End If
  loc_144C707: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_144C727: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_144C748: var_FC = Me.FGrid1.Cols
  loc_144C775: var_BC = ((Fcol <> 0) And ((CLng(var_FC) - 1) >= CLng(Fcol)))
  loc_144C795: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_144C7B1: Set var_8C = Nothing
  loc_144C7B9: Set var_88 = Nothing
  loc_144C7C1: Set var_98 = Nothing
  loc_144C7C6: IStAd
  loc_144C7CA: Exit Sub
  loc_144C7CB: ' Referenced from: 144BCD4
  loc_144C7D3: Proc_6_60_E62BC4(0, Nothing, var_FC, var_FC, FGrid1.DispID_10000, var_BC, FGrid1.DispID_FFFF)
  loc_144C7D8: Exit Sub
End Sub

Public Sub CoverAnalysis(formName, FRow, Fcol) '1465DC4
  'Data Table: 577ED8
  Dim var_10C As String
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_130 As String
  Dim var_13C As String
  Dim var_9A As Integer
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_220 As Recordset15
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_23C As MSHFlexGrid
  loc_1465230: On Error Goto loc_1465DB6
  loc_1465239: Call 0.Method_arg_54 ("Cover Analysis Report")
  loc_1465253: var_FC = Me.FGrid
  loc_146526C: Set var_134 = 0(CStr(1 & var_FC.TextMatrix))
  loc_1465272: var_FC.TextBox.Text = "From Date  : "
  loc_146529B: var_FC = Me.FGrid
  loc_14652A8: var_12C = 1 & var_FC.TextMatrix 
  loc_14652B4: Set var_134 = 1(CStr(var_12C))
  loc_14652BA: var_FC.TextBox.Text = "To Date  : "
  loc_14652DB: Call Proc_249_102_FA2F4C(New)
  loc_14652E3: Set var_8C = var_134
  loc_14652FB: If (global_208 = MemVar_1F92078 & "BANQ") Then
  loc_1465301:   var_94 = "IBOOK"
  loc_1465307: Else
  loc_146530A:   var_94 = "OBOOK"
  loc_146530D: End If
  loc_1465321: var_130 = "SELECT max(S.VDate) AS FuncDate,sum(S.GuarAtt) AS Pax, " & "Sum(GuarAtt * CoverRate) AS Amount,sum(GuarAtt * CoverRate)/sum(GuarAtt) AS Average "
  loc_146532F: var_13C = var_130 & "FROM HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code " & "GROUP BY S.VType,S.VDate HAVING S.VType='"
  loc_1465340: var_BC = 0
  loc_1465355: VarLateMemCallLdRfVar
  loc_1465360: Proc_6_7_F25D88(var_12C, Me.FGrid, 1, var_BC, CVar(var_13C & var_94 & "' AND S.VDate Between "))
  loc_146538A: VarLateMemCallLdRfVar
  loc_1465395: Proc_6_7_F25D88(var_1E0, Me.FGrid, 1, 1)
  loc_14653AB: Me.Connection15.Execute CStr(var_214 & var_12C & " AND " & var_1E0), -1, var_134
  loc_14653B6: Set var_88 = var_134
  loc_14653E4: var_9A = 0
  loc_14653EA: var_A4 = CDbl(0)
  loc_14653F0: var_AC = CDbl(0)
  loc_14653F5: var_8E = 0
  loc_146540C: If (var_88.RecordCount > 0) Then
  loc_1465412:   var_88.MoveFirst
  loc_1465417:   ' Referenced from: 1465793
  loc_1465426:   If Not(var_88.EOF) Then
  loc_146542C:     Set var_220 = var_8C 
  loc_1465436:     var_8E = (var_8E + 1)
  loc_1465444:     var_220.AddNew var_BC, var_CC
  loc_146546E:     var_220.Fields.Item("mLine").Value = vbNullString
  loc_14654A9:     var_220.Fields.Item("SNo").Value = CVar(CStr(var_8E) & ".")
  loc_146551E:     var_220.Fields.Item("FuncDate").Value = Format(CVar(var_88.Fields.Item("FuncDate")), "dd/MMM/yy")
  loc_1465580:     var_220.Fields.Item("Pax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pax")), 1, 1, var_8E, var_8E))
  loc_14655FD:     var_220.Fields.Item("Amount").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00")))
  loc_146561B:     var_BC = "Average"
  loc_146563E:     var_CC = "0.00"
  loc_1465643:     var_11C = var_CC
  loc_1465680:     var_220.Fields.Item("Average").Value = CVar(CStr(Format(CVar(var_88.Fields.Item(var_BC)), var_11C)))
  loc_14656A6:     var_220.Update var_BC, var_CC
  loc_14656D7:     Proc_6_39_E7C810(var_11C, CVar(var_88.Fields.Item("Pax")), CVar(var_9A), 1, 1, 1)
  loc_14656DF:     var_12C = (1 + var_11C)
  loc_14656E4:     var_9A = CInt(Format(CVar(var_88.Fields.Item("Pax")), var_11C))
  loc_1465720:     Proc_6_39_E7C810(var_11C, CVar(var_88.Fields.Item("Amount")), CVar(var_A4), var_9A)
  loc_1465728:     var_12C = (var_AC + var_11C)
  loc_146572D:     var_A4 = CSng(Format(CVar(var_88.Fields.Item("Amount")), var_11C))
  loc_146573F:     var_CC = CVar(var_AC) 'Double
  loc_1465746:     var_BC = "Average"
  loc_1465769:     Proc_6_39_E7C810(var_11C, CVar(var_88.Fields.Item(var_BC)), var_CC, var_A4)
  loc_1465771:     var_12C = (var_A4 + var_11C)
  loc_1465776:     var_AC = CSng(Format(CVar(var_88.Fields.Item(var_BC)), var_11C))
  loc_1465787:     Set var_220 = Nothing 
  loc_146578E:     var_88.MoveNext
  loc_1465793:     GoTo loc_1465417
  loc_1465796:   End If
  loc_1465799:   Set var_230 = var_8C 
  loc_14657A8:   var_230.AddNew var_BC, var_CC
  loc_14657D2:   var_230.Fields.Item("mLine").Value = "GF"
  loc_14657DE:   var_CC = "Total-->"
  loc_1465803:   var_230.Fields.Item("FuncDate").Value = "GF"
  loc_1465837:   var_230.Fields.Item("Pax").Value = CVar(CStr(var_9A))
  loc_1465893:   var_230.Fields.Item("Amount").Value = CVar(CStr(Format(var_A4, "0.00")))
  loc_14658B4:   var_CC = "0.00"
  loc_14658C2:   var_BC = var_AC
  loc_14658F7:   var_230.Fields.Item("Average").Value = CVar(CStr(Format(var_BC, var_CC)))
  loc_1465919:   var_230.Update var_BC, var_CC
  loc_1465920:   Set var_230 = Nothing 
  loc_1465924: End If
  loc_1465938: If (var_8C.RecordCount > 0) Then
  loc_1465941:   CVarUnk
  loc_1465946:   VerifyVarObj
  loc_146594C:   Set var_134 = Me.FGrid1
  loc_1465952:   LateIdStAd
  loc_1465982:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_8C, 1)
  loc_146598D: End If
  loc_1465991: Set var_23C = Me.FGrid1
  loc_146599D: var_23C.Tag = "CoverAnalysis"
  loc_14659AE: var_23C.Cols = 7
  loc_14659B3: var_BC = 0
  loc_14659BC: var_DC = 0
  loc_14659C5: var_10C = "mLine"
  loc_14659CE: LateIdCallSt
  loc_14659D6: var_BC = 0
  loc_14659DF: var_DC = 0
  loc_14659EB: LateIdCallSt
  loc_14659F3: var_BC = 0
  loc_14659FC: var_DC = 1
  loc_1465A05: var_10C = "SNo"
  loc_1465A0E: LateIdCallSt
  loc_1465A16: var_BC = 1
  loc_1465A25: var_DC = CVar(CInt(1)) 'Integer
  loc_1465A2C: LateIdCallSt
  loc_1465A34: var_BC = 1
  loc_1465A3D: var_DC = &H1F4
  loc_1465A49: LateIdCallSt
  loc_1465A51: var_BC = 0
  loc_1465A5A: var_DC = 2
  loc_1465A63: var_10C = "Function Date"
  loc_1465A6C: LateIdCallSt
  loc_1465A74: var_BC = 2
  loc_1465A83: var_DC = CVar(CInt(1)) 'Integer
  loc_1465A8A: LateIdCallSt
  loc_1465A92: var_BC = 2
  loc_1465A9B: var_DC = &H6A4
  loc_1465AA7: LateIdCallSt
  loc_1465AAF: var_BC = 0
  loc_1465AB8: var_DC = 3
  loc_1465AC1: var_10C = "No Of Cover"
  loc_1465ACA: LateIdCallSt
  loc_1465AD2: var_BC = 3
  loc_1465AE1: var_DC = CVar(CInt(1)) 'Integer
  loc_1465AE8: LateIdCallSt
  loc_1465AF0: var_BC = 3
  loc_1465AF9: var_DC = &H5DC
  loc_1465B05: LateIdCallSt
  loc_1465B0D: var_BC = 0
  loc_1465B16: var_DC = 4
  loc_1465B1F: var_10C = "Sales Amount"
  loc_1465B28: LateIdCallSt
  loc_1465B30: var_BC = 4
  loc_1465B3F: var_DC = CVar(CInt(7)) 'Integer
  loc_1465B46: LateIdCallSt
  loc_1465B4E: var_BC = 4
  loc_1465B5D: var_DC = CVar(CInt(7)) 'Integer
  loc_1465B64: LateIdCallSt
  loc_1465B6C: var_BC = 4
  loc_1465B75: var_DC = &H76C
  loc_1465B81: LateIdCallSt
  loc_1465B89: var_BC = 0
  loc_1465B92: var_DC = 5
  loc_1465B9B: var_10C = "Average Cover"
  loc_1465BA4: LateIdCallSt
  loc_1465BAC: var_BC = 5
  loc_1465BBB: var_DC = CVar(CInt(7)) 'Integer
  loc_1465BC2: LateIdCallSt
  loc_1465BCA: var_BC = 5
  loc_1465BD9: var_DC = CVar(CInt(7)) 'Integer
  loc_1465BE0: LateIdCallSt
  loc_1465BE8: var_BC = 5
  loc_1465BF1: var_DC = &H6A4
  loc_1465BFD: LateIdCallSt
  loc_1465C05: var_BC = 0
  loc_1465C0E: var_DC = 6
  loc_1465C17: var_10C = "Mark"
  loc_1465C20: LateIdCallSt
  loc_1465C28: var_BC = 6
  loc_1465C37: var_DC = CVar(CInt(7)) 'Integer
  loc_1465C3E: LateIdCallSt
  loc_1465C46: var_BC = 6
  loc_1465C4F: var_DC = 0
  loc_1465C5B: LateIdCallSt
  loc_1465C65: Set var_23C = Nothing 
  loc_1465C6D: Set var_134 = Me.FGrid1
  loc_1465C9D: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1465CA0:   var_BC = vbNullString
  loc_1465CAA:   Set var_134 = Me.FGrid1
  loc_1465CBB: End If
  loc_1465CF2: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1465D12: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_1465D33: var_FC = Me.FGrid1.Cols
  loc_1465D60: var_BC = ((Fcol <> 0) And ((CLng(var_FC) - 1) >= CLng(Fcol)))
  loc_1465D80: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_1465D9C: Set var_8C = Nothing
  loc_1465DA4: Set var_88 = Nothing
  loc_1465DAC: Set var_98 = Nothing
  loc_1465DB1: IStAd
  loc_1465DB5: Exit Sub
  loc_1465DB6: ' Referenced from: 1465230
  loc_1465DBE: Proc_6_60_E62BC4(0, Nothing, var_FC, var_FC, FGrid1.DispID_10000, var_BC, FGrid1.DispID_FFFF)
  loc_1465DC3: Exit Sub
End Sub

Public Sub TaxReportHall(formName, FRow, Fcol) '1C2DBD8
  'Data Table: 577ED8
  Dim var_25C As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_30C As Variant
  Dim var_310 As String
  Dim var_314 As Variant
  Dim var_344 As Variant
  Dim var_348 As String
  Dim var_350 As String
  Dim unk_577EDB As Connection15
  Dim var_90 As Recordset15
  Dim var_1FA As Integer
  Dim var_A2 As Integer
  Dim var_21C As Variant
  Dim var_35C As String
  Dim var_370 As String
  Dim var_378 As String
  Dim var_37C As String
  Dim var_3A8 As String
  Dim var_3B0 As String
  Dim var_324 As Variant
  Dim var_3E8 As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_428 As Variant
  Dim var_42C As Fields15
  Dim var_450 As Variant
  Dim var_460 As Variant
  Dim var_4A8 As Variant
  Dim var_4C8 As Variant
  Dim var_4E8 As Variant
  Dim var_508 As Variant
  Dim var_528 As Variant
  Dim var_560 As Variant
  Dim var_580 As Variant
  Dim var_5C8 As Variant
  Dim var_5E8 As Variant
  Dim var_608 As Variant
  Dim var_628 As Variant
  Dim var_648 As Variant
  Dim var_680 As Variant
  Dim var_6A0 As Variant
  Dim var_6E8 As Variant
  Dim var_708 As Variant
  Dim var_728 As Variant
  Dim var_748 As Variant
  Dim var_88 As Recordset15
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_150 As Double
  Dim var_158 As Double
  Dim var_160 As Double
  Dim var_168 As Double
  Dim var_170 As Double
  Dim var_178 As Double
  Dim var_180 As Double
  Dim var_188 As Double
  Dim var_190 As Double
  Dim var_198 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_138 As Double
  Dim var_130 As Double
  Dim var_AC As Double
  Dim var_750 As Recordset15
  Dim var_118 As Double
  Dim var_1A0 As Double
  Dim var_1A8 As Double
  Dim var_1B0 As Double
  Dim var_1B8 As Double
  Dim var_1C0 As Double
  Dim var_1C8 As Double
  Dim var_1D0 As Double
  Dim var_1D8 As Double
  Dim var_1E0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_B0 As Recordset15
  Dim var_754 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_760 As MSHFlexGrid
  Dim var_334 As Variant
  loc_1C27EC4: On Error Goto loc_1C2DBCA
  loc_1C27ECD: Call 0.Method_arg_54 ("Tax Report")
  loc_1C27ED2: var_25C = "For Date Between : "
  loc_1C27ED7: var_20C = 0
  loc_1C27EF4: var_27C = 1 & Me.FGrid.TextMatrix 
  loc_1C27F11: var_2EC = Me.FGrid
  loc_1C27F2A: Set var_314 = 1(CStr(1 & var_2EC.TextMatrix))
  loc_1C27F30: var_2EC.TextBox.Text = var_27C & " and "
  loc_1C27F5F: Me.FGrid1.Rows = 3
  loc_1C27F74: Set var_314 = Me.FGrid1
  loc_1C27F7A: var_314.FixedRows = 2
  loc_1C27F97: If (global_208 = MemVar_1F92078 & "BANQ") Then
  loc_1C27FC6:   VarLateMemCallLdRfVar
  loc_1C27FD1:   Proc_6_7_F25D88(var_27C, Me.FGrid, 1, 0)
  loc_1C27FFB:   VarLateMemCallLdRfVar
  loc_1C28006:   Proc_6_7_F25D88(var_334, Me.FGrid, 1, 1)
  loc_1C28013:   var_98 = CStr(CVar(" AND P.VTYPE ='" & "IDC" & "' AND P.VDate Between ") & var_27C & " And " & var_334)
  loc_1C28033: Else
  loc_1C2805F:   VarLateMemCallLdRfVar
  loc_1C2806A:   Proc_6_7_F25D88(var_27C, Me.FGrid, 1, 0)
  loc_1C28094:   VarLateMemCallLdRfVar
  loc_1C2809F:   Proc_6_7_F25D88(var_334, Me.FGrid, 1, 1)
  loc_1C280AC:   var_98 = CStr(CVar(" AND P.VTYPE ='" & "ODC" & "' AND P.VDate Between ") & var_27C & " And " & var_334)
  loc_1C280C9: End If
  loc_1C280D5: var_20C = 1
  loc_1C280FE: If (Me.Check1.Value = 0) Then
  loc_1C28121:   var_9C = CStr(CVar(var_98 & " AND P.TaxCode In (") & Me.GridString1 & ") ")
  loc_1C28136:   var_24C = CVar(var_98 & " AND RevMast.Code In (") 'String
  loc_1C28145:   var_20C = ") "
  loc_1C2814F:   var_A0 = CStr(var_24C & Me.GridString1 & var_20C)
  loc_1C2815D: End If
  loc_1C2816A: Call Proc_249_103_1305CCC(New, var_314, var_20C)
  loc_1C28172: Set var_8C = var_314
  loc_1C28178: var_1E8 = "SELECT P.DOCID,P.Vdate,P.VNo,P.Party,P.NetAmt,P.Taxable,P.NonTaxable,P.RestCode,P.RoundOff,P.ServiceCharge,P.DiscAmt,P.Total"
  loc_1C2817E: var_1EC = " FROM HallSale1 P Left Join (Select DocID"
  loc_1C28184: var_1F0 = " From (Select P.DocId"
  loc_1C2819B: var_310 = "Select Distinct Q.Name,Q.code,Q.Sundry,Q.TaxPer From (SELECT RevMast.Name,RevMast.code,RevMast.Sundry,P.TaxPer FROM (HallSale2 P INNER JOIN RevMast ON P.TaxCode = RevMast.Code) where RevMast.FieldType='T' And P.DELFLAG<>'D'" & var_A0
  loc_1C281A2: var_348 = var_310 & "Union All SELECT RevMast.Name,RevMast.Code,RevMast.Sundry,P.SValue TaxPer FROM (SunTranH P INNER JOIN RevMast ON P.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code where RevMast.FieldType='T' And P.DELFLAG<>'D'"
  loc_1C281B9: unk_577EDB.Execute var_348 & var_A0 & ")Q Order by Q.TaxPer", var_24C, -1
  loc_1C281C4: Set var_90 = var_314
  loc_1C281E7: var_1FA = CInt(var_90.RecordCount)
  loc_1C281EC: var_A2 = 1
  loc_1C281EF: ' Referenced from: 1C28838
  loc_1C281FE: If Not(var_90.EOF) Then
  loc_1C2820E:   var_350 = "+IsNull(SL." & "BASEVALUE"
  loc_1C28250:   var_27C = IIf((var_1F4 = vbNullString), CVar("IsNull(SL." & "BASEVALUE" & CStr(var_A2) & ",0)"), CVar(CStr(var_A2) & var_A0 & ")Q Order by Q.TaxPer" & CStr(var_A2) & ",0)"))
  loc_1C28258:   var_29C = (CVar(var_1F4) + var_27C)
  loc_1C2825D:   var_1F4 = CStr(CVar("IsNull(SL." & "BASEVALUE" & CStr(var_A2) & ",0)") & Me.GridString1 & (var_1F4 = vbNullString))
  loc_1C28289:   var_350 = "+IsNull(SL." & "TAXAMT"
  loc_1C282CB:   var_27C = IIf((var_1F8 = vbNullString), CVar("IsNull(SL." & "TAXAMT" & CStr(var_A2) & ",0)"), CVar(CStr(var_A2) & var_A0 & ")Q Order by Q.TaxPer" & CStr(var_A2) & ",0)"))
  loc_1C282D3:   var_29C = (CVar(var_1F8) + var_27C)
  loc_1C282D8:   var_1F8 = CStr(CVar("IsNull(SL." & "TAXAMT" & CStr(var_A2) & ",0)") & Me.GridString1 & (var_1F8 = vbNullString))
  loc_1C28345:   var_378 = var_1E8 & ", IsNull(SL." & "SUNCODE" & CStr(var_A2) & ",'') As " & "SUNCODE" & CStr(var_A2) & ", IsNull(SL." & "BASEVALUE" & CStr(var_A2)
  loc_1C28393:   var_3A8 = var_378 & ",0) As " & "BASEVALUE" & CStr(var_A2) & ", IsNull(SL." & "TAXPER" & CStr(var_A2) & ",0) As " & "TAXPER" & CStr(var_A2)
  loc_1C283C7:   var_1E8 = var_3A8 & ", IsNull(SL." & "TAXAMT" & CStr(var_A2) & ",0) As " & "TAXAMT" & CStr(var_A2)
  loc_1C28460:   var_37C = var_1EC & ", Max(" & "SUNCODE" & CStr(var_A2) & ") As " & "SUNCODE" & CStr(var_A2) & ", Max(" & "BASEVALUE" & CStr(var_A2) & ") As "
  loc_1C284B5:   var_3B0 = var_37C & "BASEVALUE" & CStr(var_A2) & ", Max(" & "TAXPER" & CStr(var_A2) & ") As " & "TAXPER" & CStr(var_A2) & ", Max(" & "TAXAMT"
  loc_1C284DB:   var_1EC = var_3B0 & CStr(var_A2) & ") As " & "TAXAMT" & CStr(var_A2)
  loc_1C2852F:   var_20C = "Code"
  loc_1C2853B:   var_314 = var_90.Fields
  loc_1C28553:   var_27C = (CVar(var_1F0 & ", CASE When P.TaxCode='") + var_314.Item(var_20C).Value)
  loc_1C28557:   var_21C = "' And P.TaxPer="
  loc_1C2855C:   var_29C = (var_27C + var_21C)
  loc_1C2858F:   var_30C = (var_314.Item(var_20C).Value & Me.GridString1 & var_20C + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C28598:   var_324 = (Me.FGrid + " then '")
  loc_1C285BE:   var_334 = var_90.Fields.Item("Sundry").Value
  loc_1C285C6:   var_344 = (var_324 + var_334)
  loc_1C285CF:   var_3E8 = (CVar(" AND P.VTYPE ='" & "ODC" & "' AND P.VDate Between ") & var_27C & " And " & var_334 + "' END As ")
  loc_1C285D8:   var_3F8 = (var_3E8 + "SUNCODE")
  loc_1C285E4:   var_418 = (var_3F8 + CVar(CStr(var_A2)))
  loc_1C285ED:   var_428 = (var_418 + ", CASE When P.TaxCode='")
  loc_1C28603:   var_42C = var_90.Fields
  loc_1C2861B:   var_450 = (var_428 + var_42C.Item("Code").Value)
  loc_1C28624:   var_460 = (var_450 + "' And P.TaxPer=")
  loc_1C28657:   var_4A8 = (var_460 + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C28660:   var_4C8 = (var_4A8 + " then Sum(P.BASEVALUE) END As ")
  loc_1C28669:   var_4E8 = (var_4C8 + "BASEVALUE")
  loc_1C28675:   var_508 = (var_4E8 + CVar(CStr(var_A2)))
  loc_1C2867E:   var_528 = (var_508 + ", CASE When P.TaxCode='")
  loc_1C286AC:   var_560 = (var_528 + var_90.Fields.Item("Code").Value)
  loc_1C286B5:   var_580 = (var_560 + "' And P.TaxPer=")
  loc_1C286E8:   var_5C8 = (var_580 + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C286F1:   var_5E8 = (var_5C8 + " then Max(P.TAXPER) END As ")
  loc_1C286FA:   var_608 = (var_5E8 + "TAXPER")
  loc_1C28706:   var_628 = (var_608 + CVar(CStr(var_A2)))
  loc_1C2870F:   var_648 = (var_628 + ", CASE When P.TaxCode='")
  loc_1C2873D:   var_680 = (var_648 + var_90.Fields.Item("Code").Value)
  loc_1C28746:   var_6A0 = (var_680 + "' And P.TaxPer=")
  loc_1C28779:   var_6E8 = (var_6A0 + CVar(CStr(var_90.Fields.Item("TaxPer").Value)))
  loc_1C28782:   var_708 = (var_6E8 + " then Sum(P.TaxAmt) END As ")
  loc_1C2878B:   var_728 = (var_708 + "TAXAMT")
  loc_1C28797:   var_748 = (var_728 + CVar(CStr(var_A2)))
  loc_1C2879C:   var_1F0 = CStr(var_748)
  loc_1C2882A:   var_90.MoveNext
  loc_1C28835:   var_A2 = (var_A2 + 1)
  loc_1C28838:   GoTo loc_1C281EF
  loc_1C2883B: End If
  loc_1C2884F: If (var_90.RecordCount > 0) Then
  loc_1C28875:   var_1E8 = var_1E8 & "," & var_1F4 & " As EBASEVALUE," & var_1F8 & " As ETAXAMT"
  loc_1C28883: End If
  loc_1C28886: var_24C = Me.LoginSite
  loc_1C28890: var_26C = Me.LoginSite
  loc_1C288C1: var_35C = Proc_6_45_EAD428(CStr(var_24C), 2, var_1E8 & var_1EC & var_1F0 & " From HallSale2 P Where P.DelFlag<>'D' and P.LogSite_Code='", var_26C, var_24C, var_A2)
  loc_1C288DA: var_370 = var_A2 & var_35C & "' " & var_9C & " Group By P.DocId,P.TaxCode,P.Taxper) a Group By DocId) SL On P.DocId=SL.DocId Inner Join Voucher_type VT On (P.VType=VT.V_Type And P.Site_Code=VT.Site_Code) Where P.DELFLAG<>'D' AND P.LogSite_Code='"
  loc_1C28947: Me.Connection15.Execute var_314 & Proc_6_45_EAD428(CStr(var_26C), 2, var_370, var_1FA) & "' " & var_98 & " order by P.VDate,P.Vno", var_24C, -1
  loc_1C28952: Set var_88 = var_314
  loc_1C2896F: If (var_88.RecordCount > 0) Then
  loc_1C28975:   var_120 = CDbl(0)
  loc_1C2897B:   var_128 = CDbl(0)
  loc_1C28981:   var_140 = CDbl(0)
  loc_1C28987:   var_148 = CDbl(0)
  loc_1C2898D:   var_150 = CDbl(0)
  loc_1C28993:   var_158 = CDbl(0)
  loc_1C28999:   var_160 = CDbl(0)
  loc_1C2899F:   var_168 = CDbl(0)
  loc_1C289A5:   var_170 = CDbl(0)
  loc_1C289AB:   var_178 = CDbl(0)
  loc_1C289B1:   var_180 = CDbl(0)
  loc_1C289B7:   var_188 = CDbl(0)
  loc_1C289BD:   var_190 = CDbl(0)
  loc_1C289C3:   var_198 = CDbl(0)
  loc_1C289C9:   var_C8 = CDbl(0)
  loc_1C289CF:   var_D0 = CDbl(0)
  loc_1C289D5:   var_D8 = CDbl(0)
  loc_1C289DB:   var_E0 = CDbl(0)
  loc_1C289E1:   var_E8 = CDbl(0)
  loc_1C289E7:   var_F0 = CDbl(0)
  loc_1C289ED:   var_F8 = CDbl(0)
  loc_1C289F3:   var_100 = CDbl(0)
  loc_1C289F9:   var_108 = CDbl(0)
  loc_1C289FF:   var_138 = CDbl(0)
  loc_1C28A05:   var_130 = CDbl(0)
  loc_1C28A0B:   var_AC = CDbl(0)
  loc_1C28A11:   var_88.MoveFirst
  loc_1C28A16:   ' Referenced from: 1C2B1DC
  loc_1C28A25:   If Not(var_88.EOF) Then
  loc_1C28A2B:     Set var_750 = var_8C 
  loc_1C28A3A:     var_750.AddNew var_20C, var_21C
  loc_1C28A45:     var_A2 = (var_A2 + 1)
  loc_1C28A6D:     var_750.Fields.Item("mLine").Value = vbNullString
  loc_1C28AA8:     var_750.Fields.Item("SNo").Value = CVar(CStr(var_A2) & ".")
  loc_1C28B1D:     var_750.Fields.Item("Billdate").Value = Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")
  loc_1C28B7F:     var_750.Fields.Item("BillNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")), 1, 1, var_A2, var_AC, var_130))
  loc_1C28BBC:     var_26C = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Party")), var_138, var_108, var_100)) 'String
  loc_1C28BDF:     var_750.Fields.Item("Party").Value = var_26C
  loc_1C28C1A:     Proc_6_47_EF59D0(var_26C, CVar(var_88.Fields.Item("nonTaxable")), var_F8)
  loc_1C28C42:     var_750.Fields.Item("NonTaxable").Value = var_26C
  loc_1C28C84:     Proc_6_39_E7C810(var_26C, CVar(var_88.Fields.Item("nonTaxable")), CVar(var_130))
  loc_1C28C8C:     var_27C = (var_F0 + var_26C)
  loc_1C28C91:     var_130 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C28CCD:     Proc_6_39_E7C810(var_26C, CVar(var_88.Fields.Item("nonTaxable")), CVar(var_118))
  loc_1C28CD5:     var_27C = (var_130 + var_26C)
  loc_1C28D0F:     Proc_6_47_EF59D0(var_26C, CVar(var_88.Fields.Item("Total")))
  loc_1C28D37:     var_750.Fields.Item("GoodsAmt").Value = var_26C
  loc_1C28D79:     Proc_6_39_E7C810(var_26C, CVar(var_88.Fields.Item("Total")), CVar(var_120))
  loc_1C28D81:     var_27C = (CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")) + var_26C)
  loc_1C28D86:     var_120 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C28DBB:     Proc_6_47_EF59D0(var_26C, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1C28DE3:     var_750.Fields.Item("Disc").Value = var_26C
  loc_1C28E25:     Proc_6_39_E7C810(var_26C, CVar(var_88.Fields.Item("DiscAmt")), CVar(var_140))
  loc_1C28E2D:     var_27C = (var_120 + var_26C)
  loc_1C28E32:     var_140 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C28E67:     Proc_6_47_EF59D0(var_26C, CVar(var_88.Fields.Item("RoundOff")))
  loc_1C28E8F:     var_750.Fields.Item("Roff").Value = var_26C
  loc_1C28ED1:     Proc_6_39_E7C810(var_26C, CVar(var_88.Fields.Item("RoundOff")), CVar(var_148))
  loc_1C28ED9:     var_27C = (var_140 + var_26C)
  loc_1C28EDE:     var_148 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C28F13:     Proc_6_47_EF59D0(var_26C, CVar(var_88.Fields.Item("NetAmt")))
  loc_1C28F3B:     var_750.Fields.Item("BillAmt").Value = var_26C
  loc_1C28F7D:     Proc_6_39_E7C810(var_26C, CVar(var_88.Fields.Item("NetAmt")), CVar(var_128))
  loc_1C28F85:     var_27C = (var_148 + var_26C)
  loc_1C28F8A:     var_128 = CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY"))
  loc_1C28F9C:     var_1A0 = CDbl(0)
  loc_1C28FA2:     var_1A8 = CDbl(0)
  loc_1C28FA8:     var_1B0 = CDbl(0)
  loc_1C28FAE:     var_1B8 = CDbl(0)
  loc_1C28FB4:     var_1C0 = CDbl(0)
  loc_1C28FBA:     var_1C8 = CDbl(0)
  loc_1C28FC0:     var_1D0 = CDbl(0)
  loc_1C28FC6:     var_1D8 = CDbl(0)
  loc_1C28FCC:     var_1E0 = CDbl(0)
  loc_1C28FE3:     If (var_88.AbsolutePosition = 1) Then
  loc_1C28FFA:       If (var_90.RecordCount > 0) Then
  loc_1C29000:         var_90.MoveFirst
  loc_1C29005:         ' Referenced from: 1C29525
  loc_1C29005:       End If
  loc_1C29016:       If (var_90.EOF = 0) Then
  loc_1C2902D:         If (var_90.AbsolutePosition = 1) Then
  loc_1C29066:           var_26C = CVar(var_1B8 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer")), "@ ", var_1E0, var_1D8, var_1D0, var_1C8, var_1C0) & ") 'String
  loc_1C29089:           var_750.Fields.Item("TaxP1").Value = var_26C
  loc_1C290A8:         Else
  loc_1C290BC:           If (var_90.AbsolutePosition = 2) Then
  loc_1C29118:             var_750.Fields.Item("TaxP2").Value = CVar(var_1A0 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer")), "@ ", var_1B0, var_1A8) & ") 'String
  loc_1C29137:           Else
  loc_1C2914B:             If (var_90.AbsolutePosition = 3) Then
  loc_1C291A7:               var_750.Fields.Item("TaxP3").Value = CVar(var_128 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer")), "@ ") & ") 'String
  loc_1C291C6:             Else
  loc_1C291DA:               If (var_90.AbsolutePosition = 4) Then
  loc_1C29236:                 var_750.Fields.Item("TaxP4").Value = CVar(var_E8 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer")), "@ ") & ") 'String
  loc_1C29255:               Else
  loc_1C29269:                 If (var_90.AbsolutePosition = 5) Then
  loc_1C292C5:                   var_750.Fields.Item("TaxP5").Value = CVar("@ " & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C292E4:                 Else
  loc_1C292F8:                   If (var_90.AbsolutePosition = 6) Then
  loc_1C29354:                     var_750.Fields.Item("TaxP6").Value = CVar("@ " & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C29373:                   Else
  loc_1C29387:                     If (var_90.AbsolutePosition = 7) Then
  loc_1C293E3:                       var_750.Fields.Item("TaxP7").Value = CVar("@ " & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C29402:                     Else
  loc_1C29416:                       If (var_90.AbsolutePosition = 8) Then
  loc_1C29472:                         var_750.Fields.Item("TaxP8").Value = CVar("@ " & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C29491:                       Else
  loc_1C294A5:                         If (var_90.AbsolutePosition = 9) Then
  loc_1C29501:                           var_750.Fields.Item("TaxP9").Value = CVar("@ " & Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxPer"))) & ") 'String
  loc_1C2951D:                         End If
  loc_1C2951D:                       End If
  loc_1C2951D:                     End If
  loc_1C2951D:                   End If
  loc_1C2951D:                 End If
  loc_1C2951D:               End If
  loc_1C2951D:             End If
  loc_1C2951D:           End If
  loc_1C2951D:         End If
  loc_1C29520:         var_90.MoveNext
  loc_1C29525:         GoTo loc_1C29005
  loc_1C29528:       End If
  loc_1C29528:     End If
  loc_1C2953C:     If (var_90.RecordCount > 0) Then
  loc_1C29542:       var_90.MoveFirst
  loc_1C29547:     End If
  loc_1C2954D:     If (var_1FA >= 1) Then
  loc_1C29633:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C29678:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C29683:       Set var_B0 = var_42C
  loc_1C296C3:       If (var_B0.RecordCount > 0) Then
  loc_1C296F7:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue1").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C296FC:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29736:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2973E:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT1").Value)) + var_24C)
  loc_1C29743:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29754:       End If
  loc_1C2975F:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8)
  loc_1C29787:       var_750.Fields.Item("Tax1").Value = var_24C
  loc_1C297A1:       Proc_6_47_EF59D0(var_24C, var_C0, var_42C)
  loc_1C297C9:       var_750.Fields.Item("TaxAmt1").Value = var_24C
  loc_1C297DF:       var_118 = (var_118 + var_B8)
  loc_1C297E5:       var_1A0 = var_C0
  loc_1C297EF:       var_158 = (var_158 + var_C0)
  loc_1C297F9:       var_C8 = (var_C8 + var_B8)
  loc_1C297FF:       var_90.MoveNext
  loc_1C29804:     End If
  loc_1C2980A:     If (var_1FA >= 2) Then
  loc_1C298F0:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C29935:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C29940:       Set var_B0 = var_42C
  loc_1C29980:       If (var_B0.RecordCount > 0) Then
  loc_1C299B4:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue2").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C299B9:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C299F3:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C299FB:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT2").Value)) + var_24C)
  loc_1C29A00:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29A11:       End If
  loc_1C29A1C:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C29A44:       var_750.Fields.Item("Tax2").Value = var_24C
  loc_1C29A5E:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_C8)
  loc_1C29A86:       var_750.Fields.Item("TaxAmt2").Value = var_24C
  loc_1C29A9C:       var_118 = (var_118 + var_B8)
  loc_1C29AA2:       var_1A8 = var_C0
  loc_1C29AAC:       var_160 = (var_160 + var_C0)
  loc_1C29AB6:       var_D0 = (var_D0 + var_B8)
  loc_1C29ABC:       var_90.MoveNext
  loc_1C29AC1:     End If
  loc_1C29AC7:     If (var_1FA >= 3) Then
  loc_1C29BAD:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C29BF2:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C29BFD:       Set var_B0 = var_42C
  loc_1C29C3D:       If (var_B0.RecordCount > 0) Then
  loc_1C29C71:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue3").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C29C76:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29CB0:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C29CB8:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT3").Value)) + var_24C)
  loc_1C29CBD:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29CCE:       End If
  loc_1C29CD9:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C29D01:       var_750.Fields.Item("Tax3").Value = var_24C
  loc_1C29D1B:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_D0)
  loc_1C29D43:       var_750.Fields.Item("TaxAmt3").Value = var_24C
  loc_1C29D59:       var_118 = (var_118 + var_B8)
  loc_1C29D5F:       var_1B0 = var_C0
  loc_1C29D69:       var_168 = (var_168 + var_C0)
  loc_1C29D73:       var_D8 = (var_D8 + var_B8)
  loc_1C29D79:       var_90.MoveNext
  loc_1C29D7E:     End If
  loc_1C29D84:     If (var_1FA >= 4) Then
  loc_1C29E6A:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C29EAF:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C29EBA:       Set var_B0 = var_42C
  loc_1C29EFA:       If (var_B0.RecordCount > 0) Then
  loc_1C29F2E:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue4").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C29F33:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29F6D:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C29F75:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT4").Value)) + var_24C)
  loc_1C29F7A:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C29F8B:       End If
  loc_1C29F96:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C29FBE:       var_750.Fields.Item("Tax4").Value = var_24C
  loc_1C29FD8:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_D8)
  loc_1C2A000:       var_750.Fields.Item("TaxAmt4").Value = var_24C
  loc_1C2A016:       var_118 = (var_118 + var_B8)
  loc_1C2A01C:       var_1B8 = var_C0
  loc_1C2A026:       var_170 = (var_170 + var_C0)
  loc_1C2A030:       var_E0 = (var_E0 + var_B8)
  loc_1C2A036:       var_90.MoveNext
  loc_1C2A03B:     End If
  loc_1C2A041:     If (var_1FA >= 5) Then
  loc_1C2A127:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2A16C:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2A177:       Set var_B0 = var_42C
  loc_1C2A1B7:       If (var_B0.RecordCount > 0) Then
  loc_1C2A1EB:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue5").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2A1F0:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2A22A:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2A232:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT5").Value)) + var_24C)
  loc_1C2A237:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2A248:       End If
  loc_1C2A253:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2A27B:       var_750.Fields.Item("Tax5").Value = var_24C
  loc_1C2A295:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_E0)
  loc_1C2A2BD:       var_750.Fields.Item("TaxAmt5").Value = var_24C
  loc_1C2A2D3:       var_118 = (var_118 + var_B8)
  loc_1C2A2D9:       var_1C0 = var_C0
  loc_1C2A2E3:       var_178 = (var_178 + var_C0)
  loc_1C2A2ED:       var_E8 = (var_E8 + var_B8)
  loc_1C2A2F3:       var_90.MoveNext
  loc_1C2A2F8:     End If
  loc_1C2A2FE:     If (var_1FA >= 6) Then
  loc_1C2A3E4:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2A429:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2A434:       Set var_B0 = var_42C
  loc_1C2A474:       If (var_B0.RecordCount > 0) Then
  loc_1C2A4A8:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue6").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2A4AD:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2A4E7:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2A4EF:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT6").Value)) + var_24C)
  loc_1C2A4F4:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2A505:       End If
  loc_1C2A510:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2A538:       var_750.Fields.Item("Tax6").Value = var_24C
  loc_1C2A552:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_E8)
  loc_1C2A57A:       var_750.Fields.Item("TaxAmt6").Value = var_24C
  loc_1C2A590:       var_118 = (var_118 + var_B8)
  loc_1C2A596:       var_1C8 = var_C0
  loc_1C2A5A0:       var_180 = (var_180 + var_C0)
  loc_1C2A5AA:       var_F0 = (var_F0 + var_B8)
  loc_1C2A5B0:       var_90.MoveNext
  loc_1C2A5B5:     End If
  loc_1C2A5BB:     If (var_1FA >= 7) Then
  loc_1C2A6A1:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2A6E6:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2A6F1:       Set var_B0 = var_42C
  loc_1C2A731:       If (var_B0.RecordCount > 0) Then
  loc_1C2A765:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue7").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2A76A:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2A7A4:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2A7AC:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT7").Value)) + var_24C)
  loc_1C2A7B1:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2A7C2:       End If
  loc_1C2A7CD:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2A7F5:       var_750.Fields.Item("Tax7").Value = var_24C
  loc_1C2A80F:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_F0)
  loc_1C2A837:       var_750.Fields.Item("TaxAmt7").Value = var_24C
  loc_1C2A84D:       var_118 = (var_118 + var_B8)
  loc_1C2A853:       var_1D0 = var_C0
  loc_1C2A85D:       var_188 = (var_188 + var_C0)
  loc_1C2A867:       var_F8 = (var_F8 + var_B8)
  loc_1C2A86D:       var_90.MoveNext
  loc_1C2A872:     End If
  loc_1C2A878:     If (var_1FA >= 8) Then
  loc_1C2A95E:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2A9A3:       unk_577EDB.Execute CStr(var_2EC & "' And SValue=" & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2A9AE:       Set var_B0 = var_42C
  loc_1C2A9EE:       If (var_B0.RecordCount > 0) Then
  loc_1C2AA22:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue8").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2AA27:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2AA61:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2AA69:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT8").Value)) + var_24C)
  loc_1C2AA6E:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2AA7F:       End If
  loc_1C2AA8A:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2AAB2:       var_750.Fields.Item("Tax8").Value = var_24C
  loc_1C2AACC:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_F8)
  loc_1C2AAF4:       var_750.Fields.Item("TaxAmt8").Value = var_24C
  loc_1C2AB0A:       var_118 = (var_118 + var_B8)
  loc_1C2AB10:       var_1D8 = var_C0
  loc_1C2AB1A:       var_190 = (var_190 + var_C0)
  loc_1C2AB24:       var_100 = (var_100 + var_B8)
  loc_1C2AB2A:       var_90.MoveNext
  loc_1C2AB2F:     End If
  loc_1C2AB35:     If (var_1FA >= 9) Then
  loc_1C2AC1B:       var_2EC = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='" & var_90.Fields.Item("Sundry").Value 
  loc_1C2AC24:       var_2FC = var_2EC & "' And SValue=" 
  loc_1C2AC60:       unk_577EDB.Execute CStr(var_2FC & var_90.Fields.Item("TaxPer").Value), var_334, -1
  loc_1C2AC6B:       Set var_B0 = var_42C
  loc_1C2ACAB:       If (var_B0.RecordCount > 0) Then
  loc_1C2ACDF:         var_26C = (CVar(CSng(var_88.Fields.Item("BaseValue9").Value)) + var_B0.Fields.Item("BaseAmount").Value)
  loc_1C2ACE4:         var_B8 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2AD1E:         var_24C = var_B0.Fields.Item("Amount").Value
  loc_1C2AD26:         var_26C = (CVar(CSng(var_88.Fields.Item("TAXAMT9").Value)) + var_24C)
  loc_1C2AD2B:         var_C0 = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2AD3C:       End If
  loc_1C2AD47:       Proc_6_47_EF59D0(var_24C, var_B8, var_C0, var_B8, var_42C, var_C0)
  loc_1C2AD6F:       var_750.Fields.Item("Tax9").Value = var_24C
  loc_1C2AD89:       Proc_6_47_EF59D0(var_24C, var_C0, var_B8, var_100)
  loc_1C2ADB1:       var_750.Fields.Item("TaxAmt9").Value = var_24C
  loc_1C2ADC7:       var_118 = (var_118 + var_B8)
  loc_1C2ADCD:       var_1E0 = var_C0
  loc_1C2ADD7:       var_198 = (var_198 + var_C0)
  loc_1C2ADE1:       var_108 = (var_108 + var_B8)
  loc_1C2ADE7:       var_90.MoveNext
  loc_1C2ADEC:     End If
  loc_1C2ADF3:     If (CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")) <> CDbl(0)) Then
  loc_1C2ADFD:       var_138 = (var_138 + CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")))
  loc_1C2AE00:     End If
  loc_1C2AE0B:     Proc_6_47_EF59D0(var_24C, var_1A0, var_138, var_108, var_198, var_1E0)
  loc_1C2AE33:     var_750.Fields.Item("TaxAmt1").Value = var_24C
  loc_1C2AE4D:     Proc_6_47_EF59D0(var_24C, var_1A8, CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")), var_190)
  loc_1C2AE75:     var_750.Fields.Item("TaxAmt2").Value = var_24C
  loc_1C2AE8F:     Proc_6_47_EF59D0(var_24C, var_1B0, var_1D8)
  loc_1C2AEB7:     var_750.Fields.Item("TaxAmt3").Value = var_24C
  loc_1C2AED1:     Proc_6_47_EF59D0(var_24C, var_1B8)
  loc_1C2AEF9:     var_750.Fields.Item("TaxAmt4").Value = var_24C
  loc_1C2AF13:     Proc_6_47_EF59D0(var_24C, var_1C0)
  loc_1C2AF3B:     var_750.Fields.Item("TaxAmt5").Value = var_24C
  loc_1C2AF55:     Proc_6_47_EF59D0(var_24C, var_1C8)
  loc_1C2AF7D:     var_750.Fields.Item("TaxAmt6").Value = var_24C
  loc_1C2AF97:     Proc_6_47_EF59D0(var_24C, var_1D0)
  loc_1C2AFBF:     var_750.Fields.Item("TaxAmt7").Value = var_24C
  loc_1C2AFD9:     Proc_6_47_EF59D0(var_24C, var_1D8)
  loc_1C2B001:     var_750.Fields.Item("TaxAmt8").Value = var_24C
  loc_1C2B01B:     Proc_6_47_EF59D0(var_24C, var_1E0)
  loc_1C2B043:     var_750.Fields.Item("TaxAmt9").Value = var_24C
  loc_1C2B075:     var_24C = CVar(((((((((var_1A0 + var_1A8) + var_1B0) + var_1B8) + var_1C0) + var_1C8) + var_1D0) + var_1D8) + var_1E0)) 'Double
  loc_1C2B07C:     Proc_6_47_EF59D0("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, var_24C)
  loc_1C2B0A4:     var_750.Fields.Item("TaxAmt").Value = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value
  loc_1C2B0DE:     var_150 = (((((((((var_150 + var_1A0) + var_1A8) + var_1B0) + var_1B8) + var_1C0) + var_1C8) + var_1D0) + var_1D8) + var_1E0)
  loc_1C2B107:     Proc_6_47_EF59D0("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, CVar(var_88.Fields.Item("Servicecharge")), var_150)
  loc_1C2B12F:     var_750.Fields.Item("SCharge").Value = "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value
  loc_1C2B16A:     var_24C = CVar(var_88.Fields.Item("Servicecharge")) 'Address
  loc_1C2B171:     Proc_6_39_E7C810("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, var_24C, CVar(var_AC))
  loc_1C2B179:     var_27C = (CSng(Format(CVar(var_88.Fields.Item("VDate")), "DD/MM/YY")) + "Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value)
  loc_1C2B17E:     var_AC = CSng("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value & "' And SunCode='")
  loc_1C2B18D:     var_21C = vbNullString
  loc_1C2B196:     var_20C = "Mark"
  loc_1C2B1B2:     var_750.Fields.Item(var_20C).Value = var_21C
  loc_1C2B1C9:     var_750.Update var_20C, var_21C
  loc_1C2B1D0:     Set var_750 = Nothing 
  loc_1C2B1D7:     var_88.MoveNext
  loc_1C2B1DC:     GoTo loc_1C28A16
  loc_1C2B1DF:   End If
  loc_1C2B1E2:   Set var_754 = var_8C 
  loc_1C2B1F1:   var_754.AddNew var_20C, var_21C
  loc_1C2B1FC:   var_A2 = (var_A2 + 1)
  loc_1C2B224:   var_754.Fields.Item("MLine").Value = "GF"
  loc_1C2B230:   var_21C = "Total-->"
  loc_1C2B255:   var_754.Fields.Item("Billdate").Value = "GF"
  loc_1C2B26C:   Proc_6_47_EF59D0(var_24C, var_130, var_A2)
  loc_1C2B294:   var_754.Fields.Item("nonTaxable").Value = var_24C
  loc_1C2B2AE:   Proc_6_47_EF59D0(var_24C, var_C8)
  loc_1C2B2D6:   var_754.Fields.Item("Tax1").Value = var_24C
  loc_1C2B2F0:   Proc_6_47_EF59D0(var_24C, var_D0)
  loc_1C2B318:   var_754.Fields.Item("Tax2").Value = var_24C
  loc_1C2B332:   Proc_6_47_EF59D0(var_24C, var_D8)
  loc_1C2B35A:   var_754.Fields.Item("Tax3").Value = var_24C
  loc_1C2B374:   Proc_6_47_EF59D0(var_24C, var_E0)
  loc_1C2B39C:   var_754.Fields.Item("Tax4").Value = var_24C
  loc_1C2B3B6:   Proc_6_47_EF59D0(var_24C, var_E8)
  loc_1C2B3DE:   var_754.Fields.Item("Tax5").Value = var_24C
  loc_1C2B3F8:   Proc_6_47_EF59D0(var_24C, var_F0)
  loc_1C2B420:   var_754.Fields.Item("Tax6").Value = var_24C
  loc_1C2B43A:   Proc_6_47_EF59D0(var_24C, var_F8)
  loc_1C2B462:   var_754.Fields.Item("Tax7").Value = var_24C
  loc_1C2B47C:   Proc_6_47_EF59D0(var_24C, var_100)
  loc_1C2B4A4:   var_754.Fields.Item("Tax8").Value = var_24C
  loc_1C2B4BE:   Proc_6_47_EF59D0(var_24C, var_108)
  loc_1C2B4E6:   var_754.Fields.Item("Tax9").Value = var_24C
  loc_1C2B500:   Proc_6_47_EF59D0(var_24C, var_120)
  loc_1C2B528:   var_754.Fields.Item("GoodsAmt").Value = var_24C
  loc_1C2B542:   Proc_6_47_EF59D0(var_24C, var_158)
  loc_1C2B56A:   var_754.Fields.Item("TaxAmt1").Value = var_24C
  loc_1C2B584:   Proc_6_47_EF59D0(var_24C, var_160)
  loc_1C2B5AC:   var_754.Fields.Item("TaxAmt2").Value = var_24C
  loc_1C2B5C6:   Proc_6_47_EF59D0(var_24C, var_168)
  loc_1C2B5EE:   var_754.Fields.Item("TaxAmt3").Value = var_24C
  loc_1C2B608:   Proc_6_47_EF59D0(var_24C, var_170)
  loc_1C2B630:   var_754.Fields.Item("TaxAmt4").Value = var_24C
  loc_1C2B64A:   Proc_6_47_EF59D0(var_24C, var_178)
  loc_1C2B672:   var_754.Fields.Item("TaxAmt5").Value = var_24C
  loc_1C2B68C:   Proc_6_47_EF59D0(var_24C, var_180)
  loc_1C2B6B4:   var_754.Fields.Item("TaxAmt6").Value = var_24C
  loc_1C2B6CE:   Proc_6_47_EF59D0(var_24C, var_188)
  loc_1C2B6F6:   var_754.Fields.Item("TaxAmt7").Value = var_24C
  loc_1C2B710:   Proc_6_47_EF59D0(var_24C, var_190)
  loc_1C2B738:   var_754.Fields.Item("TaxAmt8").Value = var_24C
  loc_1C2B752:   Proc_6_47_EF59D0(var_24C, var_198)
  loc_1C2B77A:   var_754.Fields.Item("TaxAmt9").Value = var_24C
  loc_1C2B794:   Proc_6_47_EF59D0(var_24C, var_150)
  loc_1C2B7BC:   var_754.Fields.Item("TaxAmt").Value = var_24C
  loc_1C2B7D6:   Proc_6_47_EF59D0(var_24C, var_AC)
  loc_1C2B7FE:   var_754.Fields.Item("SCharge").Value = var_24C
  loc_1C2B818:   Proc_6_47_EF59D0(var_24C, var_140)
  loc_1C2B840:   var_754.Fields.Item("Disc").Value = var_24C
  loc_1C2B85A:   Proc_6_47_EF59D0(var_24C, var_148)
  loc_1C2B882:   var_754.Fields.Item("Roff").Value = var_24C
  loc_1C2B894:   var_20C = var_128
  loc_1C2B89C:   Proc_6_47_EF59D0(var_24C, var_20C)
  loc_1C2B8A8:   var_21C = "BillAmt"
  loc_1C2B8C4:   var_754.Fields.Item(var_21C).Value = var_24C
  loc_1C2B8DE:   var_754.Update var_20C, var_21C
  loc_1C2B8E5:   Set var_754 = Nothing 
  loc_1C2B8E9: End If
  loc_1C2B8F3: arg_2C = Me.FGrid1.Text
  loc_1C2B911: Me.FGrid1.Rows = 3
  loc_1C2B92D: If (var_8C.RecordCount > 0) Then
  loc_1C2B936:   CVarUnk
  loc_1C2B93B:   VerifyVarObj
  loc_1C2B941:   Set var_314 = Me.FGrid1
  loc_1C2B947:   LateIdStAd
  loc_1C2B977:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1C2B982: End If
  loc_1C2B986: Set var_760 = Me.FGrid1
  loc_1C2B992: var_760.Tag = "TaxReportHall"
  loc_1C2B9A3: var_760.Cols = &H28
  loc_1C2B9A8: var_20C = 0
  loc_1C2B9B1: var_22C = 0
  loc_1C2B9BA: var_25C = "mLine"
  loc_1C2B9C3: LateIdCallSt
  loc_1C2B9CB: var_20C = 0
  loc_1C2B9D4: var_22C = 0
  loc_1C2B9E0: LateIdCallSt
  loc_1C2B9E8: var_20C = 0
  loc_1C2B9F1: var_22C = 1
  loc_1C2B9FA: var_25C = "SNo"
  loc_1C2BA03: LateIdCallSt
  loc_1C2BA0B: var_20C = 1
  loc_1C2BA1A: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2BA21: LateIdCallSt
  loc_1C2BA29: var_20C = 1
  loc_1C2BA32: var_22C = &H1F4
  loc_1C2BA3E: LateIdCallSt
  loc_1C2BA46: var_20C = 0
  loc_1C2BA4F: var_22C = 2
  loc_1C2BA58: var_25C = "Bill Date"
  loc_1C2BA61: LateIdCallSt
  loc_1C2BA69: var_20C = 2
  loc_1C2BA78: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2BA7F: LateIdCallSt
  loc_1C2BA87: var_20C = 2
  loc_1C2BA90: var_22C = &H4B0
  loc_1C2BA9C: LateIdCallSt
  loc_1C2BAA4: var_20C = 0
  loc_1C2BAAD: var_22C = 3
  loc_1C2BAB6: var_25C = "Bill No"
  loc_1C2BABF: LateIdCallSt
  loc_1C2BAC7: var_20C = 3
  loc_1C2BAD6: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2BADD: LateIdCallSt
  loc_1C2BAE5: var_20C = 3
  loc_1C2BAF4: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2BAFB: LateIdCallSt
  loc_1C2BB03: var_20C = 3
  loc_1C2BB0C: var_22C = &H3E8
  loc_1C2BB18: LateIdCallSt
  loc_1C2BB20: var_20C = 0
  loc_1C2BB29: var_22C = 4
  loc_1C2BB32: var_25C = "Party"
  loc_1C2BB3B: LateIdCallSt
  loc_1C2BB43: var_20C = 4
  loc_1C2BB52: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2BB59: LateIdCallSt
  loc_1C2BB61: var_20C = 4
  loc_1C2BB70: var_22C = CVar(CInt(1)) 'Integer
  loc_1C2BB77: LateIdCallSt
  loc_1C2BB7F: var_20C = 4
  loc_1C2BB88: var_22C = &H9C4
  loc_1C2BB94: LateIdCallSt
  loc_1C2BB9C: var_20C = 0
  loc_1C2BBA5: var_22C = 5
  loc_1C2BBAE: var_25C = "Non-Taxable"
  loc_1C2BBB7: LateIdCallSt
  loc_1C2BBBF: var_20C = 1
  loc_1C2BBC8: var_22C = 5
  loc_1C2BBD1: var_25C = "Amount"
  loc_1C2BBDA: LateIdCallSt
  loc_1C2BBE2: var_20C = 5
  loc_1C2BBF1: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2BBF8: LateIdCallSt
  loc_1C2BC00: var_20C = 5
  loc_1C2BC0F: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2BC16: LateIdCallSt
  loc_1C2BC1E: var_20C = 5
  loc_1C2BC27: var_22C = &H578
  loc_1C2BC33: LateIdCallSt
  loc_1C2BC3B: var_20C = 6
  loc_1C2BC44: var_22C = 0
  loc_1C2BC50: LateIdCallSt
  loc_1C2BC58: var_20C = 7
  loc_1C2BC61: var_22C = 0
  loc_1C2BC6D: LateIdCallSt
  loc_1C2BC75: var_20C = 8
  loc_1C2BC7E: var_22C = 0
  loc_1C2BC8A: LateIdCallSt
  loc_1C2BC92: var_20C = 9
  loc_1C2BC9B: var_22C = 0
  loc_1C2BCA7: LateIdCallSt
  loc_1C2BCAF: var_20C = &HA
  loc_1C2BCB8: var_22C = 0
  loc_1C2BCC4: LateIdCallSt
  loc_1C2BCCC: var_20C = &HB
  loc_1C2BCD5: var_22C = 0
  loc_1C2BCE1: LateIdCallSt
  loc_1C2BCE9: var_20C = &HC
  loc_1C2BCF2: var_22C = 0
  loc_1C2BCFE: LateIdCallSt
  loc_1C2BD06: var_20C = &HD
  loc_1C2BD0F: var_22C = 0
  loc_1C2BD1B: LateIdCallSt
  loc_1C2BD23: var_20C = &HE
  loc_1C2BD2C: var_22C = 0
  loc_1C2BD38: LateIdCallSt
  loc_1C2BD40: var_20C = 0
  loc_1C2BD49: var_22C = &HF
  loc_1C2BD52: var_25C = "TTL"
  loc_1C2BD5B: LateIdCallSt
  loc_1C2BD63: var_20C = 1
  loc_1C2BD6C: var_22C = &HF
  loc_1C2BD75: var_25C = "GROSS AMT"
  loc_1C2BD7E: LateIdCallSt
  loc_1C2BD86: var_20C = &HF
  loc_1C2BD8F: var_22C = &H640
  loc_1C2BD9B: LateIdCallSt
  loc_1C2BDA3: var_20C = &HF
  loc_1C2BDB2: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2BDB9: LateIdCallSt
  loc_1C2BDC1: var_20C = &HF
  loc_1C2BDD0: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2BDD7: LateIdCallSt
  loc_1C2BDDF: var_20C = &H10
  loc_1C2BDE8: var_22C = 0
  loc_1C2BDF4: LateIdCallSt
  loc_1C2BDFC: var_20C = &H11
  loc_1C2BE05: var_22C = 0
  loc_1C2BE11: LateIdCallSt
  loc_1C2BE19: var_20C = &H12
  loc_1C2BE22: var_22C = 0
  loc_1C2BE2E: LateIdCallSt
  loc_1C2BE36: var_20C = &H13
  loc_1C2BE3F: var_22C = 0
  loc_1C2BE4B: LateIdCallSt
  loc_1C2BE53: var_20C = &H14
  loc_1C2BE5C: var_22C = 0
  loc_1C2BE68: LateIdCallSt
  loc_1C2BE70: var_20C = &H15
  loc_1C2BE79: var_22C = 0
  loc_1C2BE85: LateIdCallSt
  loc_1C2BE8D: var_20C = &H16
  loc_1C2BE96: var_22C = 0
  loc_1C2BEA2: LateIdCallSt
  loc_1C2BEAA: var_20C = &H17
  loc_1C2BEB3: var_22C = 0
  loc_1C2BEBF: LateIdCallSt
  loc_1C2BEC7: var_20C = &H18
  loc_1C2BED0: var_22C = 0
  loc_1C2BEDC: LateIdCallSt
  loc_1C2BEEA: global_212 = vbNullString
  loc_1C2BEF4: global_216 = vbNullString
  loc_1C2BEFE: global_220 = vbNullString
  loc_1C2BF08: global_224 = vbNullString
  loc_1C2BF12: global_228 = vbNullString
  loc_1C2BF1C: global_232 = vbNullString
  loc_1C2BF26: global_236 = vbNullString
  loc_1C2BF30: global_240 = vbNullString
  loc_1C2BF3A: global_244 = vbNullString
  loc_1C2BF52: If (var_90.RecordCount > 0) Then
  loc_1C2BF58:   var_90.MoveFirst
  loc_1C2BF5D:   ' Referenced from: 1C2D675
  loc_1C2BF5D: End If
  loc_1C2BF6E: If (var_90.EOF = 0) Then
  loc_1C2BF85:   If (var_90.AbsolutePosition = 1) Then
  loc_1C2BF8E:     var_20C = "TaxPer"
  loc_1C2BFB1:     Proc_6_39_E7C810("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2BFCC:     global_212 = var_22C & CStr("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value) & "
  loc_1C2BFE5:     var_20C = 0
  loc_1C2C000:     LateIdCallSt
  loc_1C2C040:     Proc_6_39_E7C810("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value, CVar(var_90.Fields.Item("TaxPer")), 6, 1, var_760, "SALE", 6)
  loc_1C2C051:     var_27C = CVar(CStr("Select Amount,BaseAmount From SuntranH Where DocId='" & var_88.Fields.Item("DocID").Value) & ") 'String
  loc_1C2C058:     LateIdCallSt
  loc_1C2C071:     var_20C = 6
  loc_1C2C07A:     var_22C = &H640
  loc_1C2C086:     LateIdCallSt
  loc_1C2C08E:     var_20C = 6
  loc_1C2C09D:     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C0A4:     LateIdCallSt
  loc_1C2C0AC:     var_20C = 6
  loc_1C2C0C2:     LateIdCallSt
  loc_1C2C0DF:     var_20C = "Name"
  loc_1C2C104:     var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H10, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2C11A:     LateIdCallSt
  loc_1C2C168:     Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H10, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2C179:     var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C180:     LateIdCallSt
  loc_1C2C199:     var_20C = &H10
  loc_1C2C1A2:     var_22C = &H640
  loc_1C2C1AE:     LateIdCallSt
  loc_1C2C1B6:     var_20C = &H10
  loc_1C2C1C5:     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C1CC:     LateIdCallSt
  loc_1C2C1D4:     var_20C = &H10
  loc_1C2C1E3:     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C1EA:     LateIdCallSt
  loc_1C2C1F5:   Else
  loc_1C2C209:     If (var_90.AbsolutePosition = 2) Then
  loc_1C2C212:       var_20C = "TaxPer"
  loc_1C2C235:       Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2C250:       global_216 = var_22C & CStr(var_26C) & "
  loc_1C2C269:       var_20C = 0
  loc_1C2C284:       LateIdCallSt
  loc_1C2C2C4:       Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), 7, 1, var_760, "SALE", 7)
  loc_1C2C2D5:       var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C2DC:       LateIdCallSt
  loc_1C2C2F5:       var_20C = 7
  loc_1C2C2FE:       var_22C = &H640
  loc_1C2C30A:       LateIdCallSt
  loc_1C2C312:       var_20C = 7
  loc_1C2C321:       var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C328:       LateIdCallSt
  loc_1C2C330:       var_20C = 7
  loc_1C2C346:       LateIdCallSt
  loc_1C2C363:       var_20C = "Name"
  loc_1C2C388:       var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H11, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2C39E:       LateIdCallSt
  loc_1C2C3EC:       Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H11, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2C3FD:       var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C404:       LateIdCallSt
  loc_1C2C41D:       var_20C = &H11
  loc_1C2C426:       var_22C = &H640
  loc_1C2C432:       LateIdCallSt
  loc_1C2C43A:       var_20C = &H11
  loc_1C2C449:       var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C450:       LateIdCallSt
  loc_1C2C458:       var_20C = &H11
  loc_1C2C467:       var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C46E:       LateIdCallSt
  loc_1C2C479:     Else
  loc_1C2C48D:       If (var_90.AbsolutePosition = 3) Then
  loc_1C2C496:         var_20C = "TaxPer"
  loc_1C2C4B9:         Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2C4D4:         global_220 = var_22C & CStr(var_26C) & "
  loc_1C2C4ED:         var_20C = 0
  loc_1C2C508:         LateIdCallSt
  loc_1C2C548:         Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), 8, 1, var_760, "SALE", 8)
  loc_1C2C559:         var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C560:         LateIdCallSt
  loc_1C2C579:         var_20C = 8
  loc_1C2C582:         var_22C = &H640
  loc_1C2C58E:         LateIdCallSt
  loc_1C2C596:         var_20C = 8
  loc_1C2C5A5:         var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C5AC:         LateIdCallSt
  loc_1C2C5B4:         var_20C = 8
  loc_1C2C5CA:         LateIdCallSt
  loc_1C2C5E7:         var_20C = "Name"
  loc_1C2C60C:         var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H12, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2C622:         LateIdCallSt
  loc_1C2C670:         Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H12, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2C681:         var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C688:         LateIdCallSt
  loc_1C2C6A1:         var_20C = &H12
  loc_1C2C6AA:         var_22C = &H640
  loc_1C2C6B6:         LateIdCallSt
  loc_1C2C6BE:         var_20C = &H12
  loc_1C2C6CD:         var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C6D4:         LateIdCallSt
  loc_1C2C6DC:         var_20C = &H12
  loc_1C2C6EB:         var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C6F2:         LateIdCallSt
  loc_1C2C6FD:       Else
  loc_1C2C711:         If (var_90.AbsolutePosition = 4) Then
  loc_1C2C71A:           var_20C = "TaxPer"
  loc_1C2C73D:           Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2C758:           global_224 = var_22C & CStr(var_26C) & "
  loc_1C2C771:           var_20C = 0
  loc_1C2C78C:           LateIdCallSt
  loc_1C2C7CC:           Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), 9, 1, var_760, "SALE", 9)
  loc_1C2C7DD:           var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C7E4:           LateIdCallSt
  loc_1C2C7FD:           var_20C = 9
  loc_1C2C806:           var_22C = &H640
  loc_1C2C812:           LateIdCallSt
  loc_1C2C81A:           var_20C = 9
  loc_1C2C829:           var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C830:           LateIdCallSt
  loc_1C2C838:           var_20C = 9
  loc_1C2C84E:           LateIdCallSt
  loc_1C2C86B:           var_20C = "Name"
  loc_1C2C890:           var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H13, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2C8A6:           LateIdCallSt
  loc_1C2C8F4:           Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H13, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2C905:           var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2C90C:           LateIdCallSt
  loc_1C2C925:           var_20C = &H13
  loc_1C2C92E:           var_22C = &H640
  loc_1C2C93A:           LateIdCallSt
  loc_1C2C942:           var_20C = &H13
  loc_1C2C951:           var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C958:           LateIdCallSt
  loc_1C2C960:           var_20C = &H13
  loc_1C2C96F:           var_22C = CVar(CInt(7)) 'Integer
  loc_1C2C976:           LateIdCallSt
  loc_1C2C981:         Else
  loc_1C2C995:           If (var_90.AbsolutePosition = 5) Then
  loc_1C2C99E:             var_20C = "TaxPer"
  loc_1C2C9C1:             Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2C9DC:             global_228 = var_22C & CStr(var_26C) & "
  loc_1C2C9F5:             var_20C = 0
  loc_1C2CA10:             LateIdCallSt
  loc_1C2CA50:             Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HA, 1, var_760, "SALE", &HA)
  loc_1C2CA61:             var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2CA68:             LateIdCallSt
  loc_1C2CA81:             var_20C = &HA
  loc_1C2CA8A:             var_22C = &H640
  loc_1C2CA96:             LateIdCallSt
  loc_1C2CA9E:             var_20C = &HA
  loc_1C2CAAD:             var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CAB4:             LateIdCallSt
  loc_1C2CABC:             var_20C = &HA
  loc_1C2CAD2:             LateIdCallSt
  loc_1C2CAEF:             var_20C = "Name"
  loc_1C2CB14:             var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H14, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2CB2A:             LateIdCallSt
  loc_1C2CB78:             Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H14, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2CB89:             var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2CB90:             LateIdCallSt
  loc_1C2CBA9:             var_20C = &H14
  loc_1C2CBB2:             var_22C = &H640
  loc_1C2CBBE:             LateIdCallSt
  loc_1C2CBC6:             var_20C = &H14
  loc_1C2CBD5:             var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CBDC:             LateIdCallSt
  loc_1C2CBE4:             var_20C = &H14
  loc_1C2CBF3:             var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CBFA:             LateIdCallSt
  loc_1C2CC05:           Else
  loc_1C2CC19:             If (var_90.AbsolutePosition = 6) Then
  loc_1C2CC22:               var_20C = "TaxPer"
  loc_1C2CC45:               Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2CC60:               global_232 = var_22C & CStr(var_26C) & "
  loc_1C2CC79:               var_20C = 0
  loc_1C2CC94:               LateIdCallSt
  loc_1C2CCD4:               Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HB, 1, var_760, "SALE", &HB)
  loc_1C2CCE5:               var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2CCEC:               LateIdCallSt
  loc_1C2CD05:               var_20C = &HB
  loc_1C2CD0E:               var_22C = &H640
  loc_1C2CD1A:               LateIdCallSt
  loc_1C2CD22:               var_20C = &HB
  loc_1C2CD31:               var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CD38:               LateIdCallSt
  loc_1C2CD40:               var_20C = &HB
  loc_1C2CD56:               LateIdCallSt
  loc_1C2CD73:               var_20C = "Name"
  loc_1C2CD98:               var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H15, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2CDAE:               LateIdCallSt
  loc_1C2CDFC:               Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H15, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2CE0D:               var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2CE14:               LateIdCallSt
  loc_1C2CE2D:               var_20C = &H15
  loc_1C2CE36:               var_22C = &H640
  loc_1C2CE42:               LateIdCallSt
  loc_1C2CE4A:               var_20C = &H15
  loc_1C2CE59:               var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CE60:               LateIdCallSt
  loc_1C2CE68:               var_20C = &H15
  loc_1C2CE77:               var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CE7E:               LateIdCallSt
  loc_1C2CE89:             Else
  loc_1C2CE9D:               If (var_90.AbsolutePosition = 7) Then
  loc_1C2CEA6:                 var_20C = "TaxPer"
  loc_1C2CEC9:                 Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2CEE4:                 global_236 = var_22C & CStr(var_26C) & "
  loc_1C2CEFD:                 var_20C = 0
  loc_1C2CF18:                 LateIdCallSt
  loc_1C2CF58:                 Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HC, 1, var_760, "SALE", &HC)
  loc_1C2CF69:                 var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2CF70:                 LateIdCallSt
  loc_1C2CF89:                 var_20C = &HC
  loc_1C2CF92:                 var_22C = &H640
  loc_1C2CF9E:                 LateIdCallSt
  loc_1C2CFA6:                 var_20C = &HC
  loc_1C2CFB5:                 var_22C = CVar(CInt(7)) 'Integer
  loc_1C2CFBC:                 LateIdCallSt
  loc_1C2CFC4:                 var_20C = &HC
  loc_1C2CFDA:                 LateIdCallSt
  loc_1C2CFF7:                 var_20C = "Name"
  loc_1C2D01C:                 var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H16, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2D032:                 LateIdCallSt
  loc_1C2D080:                 Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H16, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2D091:                 var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2D098:                 LateIdCallSt
  loc_1C2D0B1:                 var_20C = &H16
  loc_1C2D0BA:                 var_22C = &H640
  loc_1C2D0C6:                 LateIdCallSt
  loc_1C2D0CE:                 var_20C = &H16
  loc_1C2D0DD:                 var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D0E4:                 LateIdCallSt
  loc_1C2D0EC:                 var_20C = &H16
  loc_1C2D0FB:                 var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D102:                 LateIdCallSt
  loc_1C2D10D:               Else
  loc_1C2D121:                 If (var_90.AbsolutePosition = 8) Then
  loc_1C2D12A:                   var_20C = "TaxPer"
  loc_1C2D14D:                   Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2D168:                   global_240 = var_22C & CStr(var_26C) & "
  loc_1C2D181:                   var_20C = 0
  loc_1C2D19C:                   LateIdCallSt
  loc_1C2D1DC:                   Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HD, 1, var_760, "SALE", &HD)
  loc_1C2D1ED:                   var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2D1F4:                   LateIdCallSt
  loc_1C2D20D:                   var_20C = &HD
  loc_1C2D216:                   var_22C = &H640
  loc_1C2D222:                   LateIdCallSt
  loc_1C2D22A:                   var_20C = &HD
  loc_1C2D239:                   var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D240:                   LateIdCallSt
  loc_1C2D248:                   var_20C = &HD
  loc_1C2D25E:                   LateIdCallSt
  loc_1C2D27B:                   var_20C = "Name"
  loc_1C2D2A0:                   var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H17, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2D2B6:                   LateIdCallSt
  loc_1C2D304:                   Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H17, 1, var_760, CVar(CStr(Trim(var_26C))))
  loc_1C2D315:                   var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2D31C:                   LateIdCallSt
  loc_1C2D335:                   var_20C = &H17
  loc_1C2D33E:                   var_22C = &H640
  loc_1C2D34A:                   LateIdCallSt
  loc_1C2D352:                   var_20C = &H17
  loc_1C2D361:                   var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D368:                   LateIdCallSt
  loc_1C2D370:                   var_20C = &H17
  loc_1C2D37F:                   var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D386:                   LateIdCallSt
  loc_1C2D391:                 Else
  loc_1C2D3A5:                   If (var_90.AbsolutePosition = 9) Then
  loc_1C2D3AE:                     var_20C = "TaxPer"
  loc_1C2D3D1:                     Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item(var_20C)), "@ ", var_760, var_22C, var_20C, var_760)
  loc_1C2D3EC:                     global_244 = var_22C & CStr(var_26C) & "
  loc_1C2D405:                     var_20C = 0
  loc_1C2D420:                     LateIdCallSt
  loc_1C2D460:                     Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &HE, 1, var_760, "SALE", &HE)
  loc_1C2D471:                     var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2D478:                     LateIdCallSt
  loc_1C2D491:                     var_20C = &HE
  loc_1C2D49A:                     var_22C = &H640
  loc_1C2D4A6:                     LateIdCallSt
  loc_1C2D4AE:                     var_20C = &HE
  loc_1C2D4BD:                     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D4C4:                     LateIdCallSt
  loc_1C2D4CC:                     var_20C = &HE
  loc_1C2D4E2:                     LateIdCallSt
  loc_1C2D4FF:                     var_20C = "Name"
  loc_1C2D524:                     var_26C = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_20C)), &H18, 0, var_760, CVar(CInt(7)), var_20C, var_760)) 'String
  loc_1C2D537:                     var_29C = (Trim(var_26C) + " ")
  loc_1C2D53E:                     var_22C = "TaxPer"
  loc_1C2D561:                     Proc_6_39_E7C810(var_2FC, CVar(var_90.Fields.Item(var_22C)), CVar(CStr(Trim(var_26C))), var_22C, var_20C)
  loc_1C2D56E:                     var_324 = (var_760 + CVar(CStr(var_2FC)))
  loc_1C2D577:                     var_334 = (var_2FC & var_90.Fields.Item("TaxPer").Value + "%")
  loc_1C2D57C:                     var_344 = CVar(CStr(var_334)) 'String
  loc_1C2D583:                     LateIdCallSt
  loc_1C2D5E3:                     Proc_6_39_E7C810(var_26C, CVar(var_90.Fields.Item("TaxPer")), &H18, 1, var_760)
  loc_1C2D5F4:                     var_27C = CVar(CStr(var_26C) & ") 'String
  loc_1C2D5FB:                     LateIdCallSt
  loc_1C2D614:                     var_20C = &H18
  loc_1C2D61D:                     var_22C = &H640
  loc_1C2D629:                     LateIdCallSt
  loc_1C2D631:                     var_20C = &H18
  loc_1C2D640:                     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D647:                     LateIdCallSt
  loc_1C2D64F:                     var_20C = &H18
  loc_1C2D65E:                     var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D665:                     LateIdCallSt
  loc_1C2D66D:                   End If
  loc_1C2D66D:                 End If
  loc_1C2D66D:               End If
  loc_1C2D66D:             End If
  loc_1C2D66D:           End If
  loc_1C2D66D:         End If
  loc_1C2D66D:       End If
  loc_1C2D66D:     End If
  loc_1C2D66D:   End If
  loc_1C2D670:   var_90.MoveNext
  loc_1C2D675:   GoTo loc_1C2BF5D
  loc_1C2D678: End If
  loc_1C2D678: var_20C = 0
  loc_1C2D681: var_22C = &H19
  loc_1C2D68A: var_25C = "TTL"
  loc_1C2D693: LateIdCallSt
  loc_1C2D69B: var_20C = 1
  loc_1C2D6A4: var_22C = &H19
  loc_1C2D6AD: var_25C = "TAX AMT"
  loc_1C2D6B6: LateIdCallSt
  loc_1C2D6BE: var_20C = &H19
  loc_1C2D6C7: var_22C = &H640
  loc_1C2D6D3: LateIdCallSt
  loc_1C2D6DB: var_20C = &H19
  loc_1C2D6EA: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D6F1: LateIdCallSt
  loc_1C2D6F9: var_20C = &H19
  loc_1C2D708: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D70F: LateIdCallSt
  loc_1C2D717: var_20C = &H1A
  loc_1C2D720: var_22C = 0
  loc_1C2D72C: LateIdCallSt
  loc_1C2D734: var_20C = &H1B
  loc_1C2D73D: var_22C = 0
  loc_1C2D749: LateIdCallSt
  loc_1C2D751: var_20C = &H1C
  loc_1C2D75A: var_22C = 0
  loc_1C2D766: LateIdCallSt
  loc_1C2D76E: var_20C = &H1D
  loc_1C2D777: var_22C = 0
  loc_1C2D783: LateIdCallSt
  loc_1C2D78B: var_20C = &H1E
  loc_1C2D794: var_22C = 0
  loc_1C2D7A0: LateIdCallSt
  loc_1C2D7A8: var_20C = &H1F
  loc_1C2D7B1: var_22C = 0
  loc_1C2D7BD: LateIdCallSt
  loc_1C2D7C5: var_20C = &H20
  loc_1C2D7CE: var_22C = 0
  loc_1C2D7DA: LateIdCallSt
  loc_1C2D7E2: var_20C = &H21
  loc_1C2D7EB: var_22C = 0
  loc_1C2D7F7: LateIdCallSt
  loc_1C2D7FF: var_20C = &H22
  loc_1C2D808: var_22C = 0
  loc_1C2D814: LateIdCallSt
  loc_1C2D81C: var_20C = 0
  loc_1C2D825: var_22C = &H23
  loc_1C2D82E: var_25C = "Service"
  loc_1C2D837: LateIdCallSt
  loc_1C2D83F: var_20C = 1
  loc_1C2D848: var_22C = &H23
  loc_1C2D851: var_25C = "Charge"
  loc_1C2D85A: LateIdCallSt
  loc_1C2D862: var_20C = &H23
  loc_1C2D871: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D878: LateIdCallSt
  loc_1C2D880: var_20C = &H23
  loc_1C2D88F: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D896: LateIdCallSt
  loc_1C2D89E: var_20C = &H23
  loc_1C2D8A7: var_22C = &H578
  loc_1C2D8B3: LateIdCallSt
  loc_1C2D8BB: var_20C = 0
  loc_1C2D8C4: var_22C = &H24
  loc_1C2D8CD: var_25C = "Discount"
  loc_1C2D8D6: LateIdCallSt
  loc_1C2D8DE: var_20C = &H24
  loc_1C2D8ED: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D8F4: LateIdCallSt
  loc_1C2D8FC: var_20C = &H24
  loc_1C2D90B: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D912: LateIdCallSt
  loc_1C2D91A: var_20C = &H24
  loc_1C2D923: var_22C = &H578
  loc_1C2D92F: LateIdCallSt
  loc_1C2D937: var_20C = 0
  loc_1C2D940: var_22C = &H25
  loc_1C2D949: var_25C = "Round Off"
  loc_1C2D952: LateIdCallSt
  loc_1C2D95A: var_20C = &H25
  loc_1C2D969: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D970: LateIdCallSt
  loc_1C2D978: var_20C = &H25
  loc_1C2D987: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D98E: LateIdCallSt
  loc_1C2D996: var_20C = &H25
  loc_1C2D99F: var_22C = &H578
  loc_1C2D9AB: LateIdCallSt
  loc_1C2D9B3: var_20C = 0
  loc_1C2D9BC: var_22C = &H26
  loc_1C2D9C5: var_25C = "Bill Amount"
  loc_1C2D9CE: LateIdCallSt
  loc_1C2D9D6: var_20C = &H26
  loc_1C2D9E5: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2D9EC: LateIdCallSt
  loc_1C2D9F4: var_20C = &H26
  loc_1C2DA03: var_22C = CVar(CInt(7)) 'Integer
  loc_1C2DA0A: LateIdCallSt
  loc_1C2DA12: var_20C = &H26
  loc_1C2DA1B: var_22C = &H578
  loc_1C2DA27: LateIdCallSt
  loc_1C2DA2F: var_20C = 0
  loc_1C2DA38: var_22C = &H27
  loc_1C2DA41: var_25C = "Mark"
  loc_1C2DA4A: LateIdCallSt
  loc_1C2DA52: var_20C = &H27
  loc_1C2DA5B: var_22C = 0
  loc_1C2DA67: LateIdCallSt
  loc_1C2DA71: Set var_760 = Nothing 
  loc_1C2DA79: Set var_314 = Me.FGrid1
  loc_1C2DAA9: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1C2DAAC:   var_20C = vbNullString
  loc_1C2DAB6:   Set var_314 = Me.FGrid1
  loc_1C2DAC7: End If
  loc_1C2DAFE: var_20C = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1C2DB1E: Me.FGrid1.Row = CVar(CLng(IIf(var_20C, FRow, 1)))
  loc_1C2DB3F: var_24C = Me.FGrid1.Cols
  loc_1C2DB6C: var_20C = ((Fcol <> 0) And ((CLng(var_24C) - 1) >= CLng(Fcol)))
  loc_1C2DB8C: Me.FGrid1.Col = CVar(CLng(IIf(var_20C, Fcol, 1)))
  loc_1C2DBA8: Set var_88 = Nothing
  loc_1C2DBB0: Set var_8C = Nothing
  loc_1C2DBB8: Set var_90 = Nothing
  loc_1C2DBC0: Set var_B0 = Nothing
  loc_1C2DBC5: IStAd
  loc_1C2DBC9: Exit Sub
  loc_1C2DBCA: ' Referenced from: 1C27EC4
  loc_1C2DBD2: Proc_6_60_E62BC4(0, Nothing, var_24C, var_24C, FGrid1.DispID_10000, var_20C, FGrid1.DispID_FFFF)
  loc_1C2DBD7: Exit Sub
End Sub

Public Sub TaxSummaryHall(formName, FRow, Fcol) '1730D68
  'Data Table: 577ED8
  Dim var_160 As String
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_214 As String
  Dim var_218 As Variant
  Dim var_24C As Variant
  Dim var_88 As Recordset15
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_B8 As Double
  Dim var_28C As Recordset15
  Dim var_96 As Integer
  Dim var_120 As Variant
  Dim var_294 As Fields15
  Dim unk_577EDB As Connection15
  Dim var_90 As Recordset15
  Dim var_29C As Recordset15
  Dim var_8C As Recordset15
  Dim var_2A8 As MSHFlexGrid
  Dim var_140 As Variant
  loc_172F100: On Error Goto loc_1730D59
  loc_172F109: Call 0.Method_arg_54 ("Tax Summary")
  loc_172F10E: var_160 = "For Date Between : "
  loc_172F113: var_110 = 0
  loc_172F130: var_180 = 1 & Me.FGrid.TextMatrix 
  loc_172F14D: var_1F0 = Me.FGrid
  loc_172F166: Set var_218 = 1(CStr(1 & var_1F0.TextMatrix))
  loc_172F16C: var_1F0.TextBox.Text = var_180 & " and "
  loc_172F19B: Me.FGrid1.Rows = 3
  loc_172F1B0: Set var_218 = Me.FGrid1
  loc_172F1B6: var_218.FixedRows = 2
  loc_172F1D3: If (global_208 = MemVar_1F92078 & "BANQ") Then
  loc_172F1D9:   var_94 = "IDC"
  loc_172F1DF: Else
  loc_172F1E2:   var_94 = "ODC"
  loc_172F1E5: End If
  loc_172F1F2: Call Proc_249_104_111F1A4(New, var_218)
  loc_172F1FA: Set var_8C = var_218
  loc_172F211: var_214 = "SELECT max(HS.DocId) AS DocId, max(HS.VDate) AS BillDate, max(HS.VNo) AS BillNo, sum(HS.NetAmt) AS BillAmount, sum(HS.Taxable) AS Taxable " & ",sum(HS.NonTaxable) AS NonTaxable,sum(HS.ServiceCharge) AS ServiceCharge FROM Hallsale1 HS GROUP By HS.VType,HS.VDate HAVING HS.VType='"
  loc_172F222: var_110 = 0
  loc_172F237: VarLateMemCallLdRfVar
  loc_172F242: Proc_6_7_F25D88(var_180, Me.FGrid, 1, var_110, CVar(var_214 & var_94 & "' AND HS.VDate between "))
  loc_172F253: var_200 = var_280 & var_180 & " and " 
  loc_172F26C: VarLateMemCallLdRfVar
  loc_172F277: Proc_6_7_F25D88(var_23C, Me.FGrid, 1, 1, var_200)
  loc_172F27F: var_24C = -1 & var_23C 
  loc_172F296: Me.Connection15.Execute CStr(var_24C & " Order By HS.Vdate "), var_218, var_110
  loc_172F2A1: Set var_88 = var_218
  loc_172F2DF: If (var_88.RecordCount > 0) Then
  loc_172F2E5:   var_A0 = CDbl(0)
  loc_172F2EB:   var_A8 = CDbl(0)
  loc_172F2F1:   var_B0 = CDbl(0)
  loc_172F2F7:   var_C0 = CDbl(0)
  loc_172F2FD:   var_C8 = CDbl(0)
  loc_172F303:   var_D0 = CDbl(0)
  loc_172F309:   var_D8 = CDbl(0)
  loc_172F30F:   var_E0 = CDbl(0)
  loc_172F315:   var_E8 = CDbl(0)
  loc_172F31B:   var_F0 = CDbl(0)
  loc_172F321:   var_F8 = CDbl(0)
  loc_172F327:   var_100 = CDbl(0)
  loc_172F32D:   var_B8 = CDbl(0)
  loc_172F333:   var_88.MoveFirst
  loc_172F338:   ' Referenced from: 172FF85
  loc_172F347:   If Not(var_88.EOF) Then
  loc_172F34D:     Set var_28C = var_8C 
  loc_172F35C:     var_28C.AddNew var_110, var_120
  loc_172F367:     var_96 = (var_96 + 1)
  loc_172F38F:     var_28C.Fields.Item("mLine").Value = vbNullString
  loc_172F3CA:     var_28C.Fields.Item("SNo").Value = CVar(CStr(var_96) & ".")
  loc_172F43F:     var_28C.Fields.Item("Billdate").Value = Format(CVar(var_88.Fields.Item("Billdate")), "DD/MM/YY")
  loc_172F4A1:     var_28C.Fields.Item("BillNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BillNo")), 1, 1, var_96, var_B8, var_100))
  loc_172F4E1:     var_170 = "0.00"
  loc_172F51E:     var_28C.Fields.Item("BillAmount").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("BillAmount")), var_170)))
  loc_172F566:     Proc_6_39_E7C810(var_170, CVar(var_88.Fields.Item("BillAmount")), CVar(var_A0), 1, 1, var_F8)
  loc_172F56E:     var_180 = (var_F0 + var_170)
  loc_172F573:     var_A0 = CSng(Format(CVar(var_88.Fields.Item("BillAmount")), var_170))
  loc_172F5AD:     var_170 = "0.00"
  loc_172F5EA:     var_28C.Fields.Item("Taxable").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("Taxable")), var_170)))
  loc_172F632:     Proc_6_39_E7C810(var_170, CVar(var_88.Fields.Item("Taxable")), CVar(var_A8), 1, 1)
  loc_172F63A:     var_180 = (var_A0 + var_170)
  loc_172F63F:     var_A8 = CSng(Format(CVar(var_88.Fields.Item("Taxable")), var_170))
  loc_172F679:     var_170 = "0.00"
  loc_172F6A6:     var_294 = var_28C.Fields
  loc_172F6B6:     var_294.Item("nonTaxable").Value = CVar(CStr(Format(CVar(var_88.Fields.Item("nonTaxable")), var_170)))
  loc_172F6FE:     Proc_6_39_E7C810(var_170, CVar(var_88.Fields.Item("nonTaxable")), CVar(var_B0), 1, 1)
  loc_172F706:     var_180 = (var_A8 + var_170)
  loc_172F70B:     var_B0 = CSng(Format(CVar(var_88.Fields.Item("nonTaxable")), var_170))
  loc_172F731:     var_214 = "SELECT Sum(Amt) AS Tax, Max(SunCode) AS TaxType FROM (SunTransaction  as S inner join RevMast on S.Revcode=Revmast.Code) Inner Join SundryMast on Revmast.Sundry=SundryMast.Code WHERE RestCode='" & global_208
  loc_172F761:     Proc_6_7_F25D88(var_170, CVar(var_88.Fields.Item("Billdate")), CVar(var_214 & "' and VDate ="), var_200, -1, var_294)
  loc_172F780:     unk_577EDB.Execute CStr(var_B0 & var_170 & " GROUP By SunCode Order By max(SundryMast.Name) Desc"), var_E8, var_E0
  loc_172F78B:     Set var_90 = var_294
  loc_172F7AB:     ' Referenced from: 172FEB8
  loc_172F7BA:     If Not(var_90.EOF) Then
  loc_172F7D1:       If (var_90.AbsolutePosition = 1) Then
  loc_172F7FA:         Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172F822:         var_28C.Fields.Item("Tax1").Value = var_170
  loc_172F864:         Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_C0))
  loc_172F86C:         var_180 = (var_D8 + var_170)
  loc_172F871:         var_C0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172F883:       Else
  loc_172F897:         If (var_90.AbsolutePosition = 2) Then
  loc_172F8C0:           Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172F8E8:           var_28C.Fields.Item("Tax2").Value = var_170
  loc_172F92A:           Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_C8))
  loc_172F932:           var_180 = (var_C0 + var_170)
  loc_172F937:           var_C8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172F949:         Else
  loc_172F95D:           If (var_90.AbsolutePosition = 3) Then
  loc_172F986:             Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172F9AE:             var_28C.Fields.Item("Tax3").Value = var_170
  loc_172F9F0:             Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_D0))
  loc_172F9F8:             var_180 = (var_C8 + var_170)
  loc_172F9FD:             var_D0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FA0F:           Else
  loc_172FA23:             If (var_90.AbsolutePosition = 4) Then
  loc_172FA4C:               Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172FA74:               var_28C.Fields.Item("Tax4").Value = var_170
  loc_172FAB6:               Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_D8))
  loc_172FABE:               var_180 = (var_D0 + var_170)
  loc_172FAC3:               var_D8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FAD5:             Else
  loc_172FAE9:               If (var_90.AbsolutePosition = 5) Then
  loc_172FB12:                 Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172FB3A:                 var_28C.Fields.Item("Tax5").Value = var_170
  loc_172FB7C:                 Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_E0))
  loc_172FB84:                 var_180 = (var_D8 + var_170)
  loc_172FB89:                 var_E0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FB9B:               Else
  loc_172FBAF:                 If (var_90.AbsolutePosition = 6) Then
  loc_172FBD8:                   Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172FC00:                   var_28C.Fields.Item("Tax6").Value = var_170
  loc_172FC42:                   Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_E8))
  loc_172FC4A:                   var_180 = (var_E0 + var_170)
  loc_172FC4F:                   var_E8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FC61:                 Else
  loc_172FC75:                   If (var_90.AbsolutePosition = 7) Then
  loc_172FC9E:                     Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172FCC6:                     var_28C.Fields.Item("Tax7").Value = var_170
  loc_172FD08:                     Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_F0))
  loc_172FD10:                     var_180 = (var_E8 + var_170)
  loc_172FD15:                     var_F0 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FD27:                   Else
  loc_172FD3B:                     If (var_90.AbsolutePosition = 8) Then
  loc_172FD64:                       Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172FD8C:                       var_28C.Fields.Item("Tax8").Value = var_170
  loc_172FDCE:                       Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_F8))
  loc_172FDD6:                       var_180 = (var_F0 + var_170)
  loc_172FDDB:                       var_F8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FDED:                     Else
  loc_172FE01:                       If (var_90.AbsolutePosition = 9) Then
  loc_172FE2A:                         Proc_6_47_EF59D0(var_170, CVar(var_90.Fields.Item("Tax")))
  loc_172FE52:                         var_28C.Fields.Item("Tax9").Value = var_170
  loc_172FE94:                         Proc_6_39_E7C810(var_170, CVar(var_90.Fields.Item("Tax")), CVar(var_100))
  loc_172FE9C:                         var_180 = (var_F8 + var_170)
  loc_172FEA1:                         var_100 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FEB0:                       End If
  loc_172FEB0:                     End If
  loc_172FEB0:                   End If
  loc_172FEB0:                 End If
  loc_172FEB0:               End If
  loc_172FEB0:             End If
  loc_172FEB0:           End If
  loc_172FEB0:         End If
  loc_172FEB0:       End If
  loc_172FEB3:       var_90.MoveNext
  loc_172FEB8:       GoTo loc_172F7AB
  loc_172FEBB:     End If
  loc_172FEE1:     Proc_6_47_EF59D0(var_170, CVar(var_88.Fields.Item("Servicecharge")))
  loc_172FF09:     var_28C.Fields.Item("SCharge").Value = var_170
  loc_172FF21:     var_120 = CVar(var_B8) 'Double
  loc_172FF28:     var_110 = "Servicecharge"
  loc_172FF4B:     Proc_6_39_E7C810(var_170, CVar(var_88.Fields.Item(var_110)), var_120)
  loc_172FF53:     var_180 = (var_100 + var_170)
  loc_172FF58:     var_B8 = CSng(CVar(var_214 & "' and VDate ="))
  loc_172FF72:     var_28C.Update var_110, var_120
  loc_172FF79:     Set var_28C = Nothing 
  loc_172FF80:     var_88.MoveNext
  loc_172FF85:     GoTo loc_172F338
  loc_172FF88:   End If
  loc_172FF8B:   Set var_29C = var_8C 
  loc_172FF9A:   var_29C.AddNew var_110, var_120
  loc_172FFA5:   var_96 = (var_96 + 1)
  loc_172FFCD:   var_29C.Fields.Item("MLine").Value = "GF"
  loc_172FFD9:   var_120 = "Total-->"
  loc_172FFFE:   var_29C.Fields.Item("Billdate").Value = "GF"
  loc_1730057:   var_29C.Fields.Item("BillAmount").Value = CVar(CStr(Format(var_A0, "0.00")))
  loc_17300BB:   var_29C.Fields.Item("Taxable").Value = CVar(CStr(Format(var_A8, "0.00")))
  loc_173011F:   var_29C.Fields.Item("nonTaxable").Value = CVar(CStr(Format(var_B0, "0.00")))
  loc_1730183:   var_29C.Fields.Item("Tax1").Value = CVar(CStr(Format(var_C0, "0.00")))
  loc_17301E7:   var_29C.Fields.Item("Tax2").Value = CVar(CStr(Format(var_C8, "0.00")))
  loc_173024B:   var_29C.Fields.Item("Tax3").Value = CVar(CStr(Format(var_D0, "0.00")))
  loc_17302AF:   var_29C.Fields.Item("Tax4").Value = CVar(CStr(Format(var_D8, "0.00")))
  loc_1730313:   var_29C.Fields.Item("Tax5").Value = CVar(CStr(Format(var_E0, "0.00")))
  loc_1730377:   var_29C.Fields.Item("Tax6").Value = CVar(CStr(Format(var_E8, "0.00")))
  loc_17303DB:   var_29C.Fields.Item("Tax7").Value = CVar(CStr(Format(var_F0, "0.00")))
  loc_173043F:   var_29C.Fields.Item("Tax8").Value = CVar(CStr(Format(var_F8, "0.00")))
  loc_17304A3:   var_29C.Fields.Item("Tax9").Value = CVar(CStr(Format(var_100, "0.00")))
  loc_17304C4:   var_120 = "0.00"
  loc_17304D2:   var_110 = var_B8
  loc_17304E4:   var_180 = CVar(CStr(Format(var_110, var_120))) 'String
  loc_1730507:   var_29C.Fields.Item("SCharge").Value = var_180
  loc_1730529:   var_29C.Update var_110, var_120
  loc_1730530:   Set var_29C = Nothing 
  loc_1730534: End If
  loc_173055C: Me.FGrid1.Rows = 3
  loc_1730578: If (var_8C.RecordCount > 0) Then
  loc_1730581:   CVarUnk
  loc_1730586:   VerifyVarObj
  loc_173058C:   Set var_218 = Me.FGrid1
  loc_1730592:   LateIdStAd
  loc_17305BC:   Set var_218 = Me.FGrid1
  loc_17305C2:   Proc_96_13_FACD34(var_218, 0, 0, var_218, var_8C, Me.FGrid1.Text, 1, 1)
  loc_17305CD: End If
  loc_17305D1: Set var_2A8 = Me.FGrid1
  loc_17305DD: var_2A8.Tag = "TaxSummaryHall"
  loc_17305EE: var_2A8.Cols = &H12
  loc_17305F3: var_110 = 0
  loc_17305FC: var_130 = 0
  loc_1730605: var_160 = "mLine"
  loc_173060E: LateIdCallSt
  loc_1730616: var_110 = 0
  loc_173061F: var_130 = 0
  loc_173062B: LateIdCallSt
  loc_1730633: var_110 = 0
  loc_173063C: var_130 = 1
  loc_1730645: var_160 = "SNo"
  loc_173064E: LateIdCallSt
  loc_1730656: var_110 = 1
  loc_1730665: var_130 = CVar(CInt(1)) 'Integer
  loc_173066C: LateIdCallSt
  loc_1730674: var_110 = 1
  loc_173067D: var_130 = &H1F4
  loc_1730689: LateIdCallSt
  loc_1730691: var_110 = 0
  loc_173069A: var_130 = 2
  loc_17306A3: var_160 = "Bill Date"
  loc_17306AC: LateIdCallSt
  loc_17306B4: var_110 = 2
  loc_17306C3: var_130 = CVar(CInt(1)) 'Integer
  loc_17306CA: LateIdCallSt
  loc_17306D2: var_110 = 2
  loc_17306DB: var_130 = &H4B0
  loc_17306E7: LateIdCallSt
  loc_17306EF: var_110 = 0
  loc_17306F8: var_130 = 3
  loc_1730701: var_160 = "Bill No"
  loc_173070A: LateIdCallSt
  loc_1730712: var_110 = 3
  loc_1730721: var_130 = CVar(CInt(1)) 'Integer
  loc_1730728: LateIdCallSt
  loc_1730730: var_110 = 3
  loc_173073F: var_130 = CVar(CInt(1)) 'Integer
  loc_1730746: LateIdCallSt
  loc_173074E: var_110 = 3
  loc_1730757: var_130 = 0
  loc_1730763: LateIdCallSt
  loc_173076B: var_110 = 0
  loc_1730774: var_130 = 4
  loc_173077D: var_160 = "Bill Amount"
  loc_1730786: LateIdCallSt
  loc_173078E: var_110 = 4
  loc_173079D: var_130 = CVar(CInt(7)) 'Integer
  loc_17307A4: LateIdCallSt
  loc_17307AC: var_110 = 4
  loc_17307BB: var_130 = CVar(CInt(7)) 'Integer
  loc_17307C2: LateIdCallSt
  loc_17307CA: var_110 = 4
  loc_17307D3: var_130 = &H708
  loc_17307DF: LateIdCallSt
  loc_17307E7: var_110 = 0
  loc_17307F0: var_130 = 5
  loc_17307F9: var_160 = "Taxable"
  loc_1730802: LateIdCallSt
  loc_173080A: var_110 = 1
  loc_1730813: var_130 = 5
  loc_173081C: var_160 = "Amount"
  loc_1730825: LateIdCallSt
  loc_173082D: var_110 = 5
  loc_173083C: var_130 = CVar(CInt(7)) 'Integer
  loc_1730843: LateIdCallSt
  loc_173084B: var_110 = 5
  loc_173085A: var_130 = CVar(CInt(7)) 'Integer
  loc_1730861: LateIdCallSt
  loc_1730869: var_110 = 5
  loc_1730872: var_130 = &H5DC
  loc_173087E: LateIdCallSt
  loc_1730886: var_110 = 0
  loc_173088F: var_130 = 6
  loc_1730898: var_160 = "Non-Taxable"
  loc_17308A1: LateIdCallSt
  loc_17308A9: var_110 = 1
  loc_17308B2: var_130 = 6
  loc_17308BB: var_160 = "Amount"
  loc_17308C4: LateIdCallSt
  loc_17308CC: var_110 = 6
  loc_17308DB: var_130 = CVar(CInt(7)) 'Integer
  loc_17308E2: LateIdCallSt
  loc_17308EA: var_110 = 6
  loc_17308F9: var_130 = CVar(CInt(7)) 'Integer
  loc_1730900: LateIdCallSt
  loc_1730908: var_110 = 6
  loc_1730911: var_130 = &H5DC
  loc_173091D: LateIdCallSt
  loc_173093C: var_214 = "SELECT DISTINCT SundryMast.Name FROM (SunTransaction AS S INNER JOIN RevMast ON S.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code where s.restcode in ('" & global_208
  loc_1730946: var_110 = 0
  loc_173094D: var_130 = 1
  loc_173095B: VarLateMemCallLdRfVar
  loc_1730966: Proc_6_7_F25D88(var_180, Me.FGrid, var_130, var_110, CVar(var_214 & "') and VDate between "), var_280, -1, var_218)
  loc_1730990: VarLateMemCallLdRfVar
  loc_173099B: Proc_6_7_F25D88(var_23C, Me.FGrid, 1, 1, var_2A8 & var_180 & " and ", var_130)
  loc_17309BA: Me.Connection15.Execute CStr(var_110 & var_23C & "  order by SundryMast.Name Desc"), var_2A8, var_130
  loc_17309C5: Set var_88 = var_218
  loc_17309F4: For var_2AC = 7 To &HF: var_96 = var_2AC 'Integer
  loc_1730A0B:   If (var_88.EOF = 0) Then
  loc_1730A0E:     var_120 = 0
  loc_1730A1B:     var_140 = CVar(CLng(var_96)) 'Long
  loc_1730A4B:     var_170 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1730A52:     LateIdCallSt
  loc_1730A6C:     var_110 = CVar(CLng(var_96)) 'Long
  loc_1730A71:     var_130 = &H708
  loc_1730A7D:     LateIdCallSt
  loc_1730A88:     var_88.MoveNext
  loc_1730A90:   Else
  loc_1730A90:     var_110 = 0
  loc_1730A9D:     var_130 = CVar(CLng(var_96)) 'Long
  loc_1730AAD:     var_214 = CStr((var_96 - 6))
  loc_1730AB1:     var_150 = CVar("Tax" & var_214) 'String
  loc_1730AB8:     LateIdCallSt
  loc_1730ACA:     var_110 = CVar(CLng(var_96)) 'Long
  loc_1730ACF:     var_130 = 0
  loc_1730ADB:     LateIdCallSt
  loc_1730AE3:   End If
  loc_1730AE7:   var_110 = CVar(CLng(var_96)) 'Long
  loc_1730AF2:   var_130 = CVar(CInt(7)) 'Integer
  loc_1730AF9:   LateIdCallSt
  loc_1730B05:   var_110 = CVar(CLng(var_96)) 'Long
  loc_1730B10:   var_130 = CVar(CInt(7)) 'Integer
  loc_1730B17:   LateIdCallSt
  loc_1730B22: Next var_2AC 'Integer
  loc_1730B27: var_110 = 0
  loc_1730B30: var_130 = &H10
  loc_1730B39: var_160 = "Service"
  loc_1730B42: LateIdCallSt
  loc_1730B4A: var_110 = 1
  loc_1730B53: var_130 = &H10
  loc_1730B5C: var_160 = "Charge"
  loc_1730B65: LateIdCallSt
  loc_1730B6D: var_110 = &H10
  loc_1730B7C: var_130 = CVar(CInt(7)) 'Integer
  loc_1730B83: LateIdCallSt
  loc_1730B8B: var_110 = &H10
  loc_1730B9A: var_130 = CVar(CInt(7)) 'Integer
  loc_1730BA1: LateIdCallSt
  loc_1730BA9: var_110 = &H10
  loc_1730BB2: var_130 = &H640
  loc_1730BBE: LateIdCallSt
  loc_1730BC6: var_110 = 0
  loc_1730BCF: var_130 = &H11
  loc_1730BD8: var_160 = "Mark"
  loc_1730BE1: LateIdCallSt
  loc_1730BE9: var_110 = &H11
  loc_1730BF2: var_130 = 0
  loc_1730BFE: LateIdCallSt
  loc_1730C08: Set var_2A8 = Nothing 
  loc_1730C10: Set var_218 = Me.FGrid1
  loc_1730C40: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1730C43:   var_110 = vbNullString
  loc_1730C4D:   Set var_218 = Me.FGrid1
  loc_1730C5E: End If
  loc_1730C95: var_110 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1730CB5: Me.FGrid1.Row = CVar(CLng(IIf(var_110, FRow, 1)))
  loc_1730CD6: var_150 = Me.FGrid1.Cols
  loc_1730D03: var_110 = ((Fcol <> 0) And ((CLng(var_150) - 1) >= CLng(Fcol)))
  loc_1730D23: Me.FGrid1.Col = CVar(CLng(IIf(var_110, Fcol, 1)))
  loc_1730D3F: Set var_8C = Nothing
  loc_1730D47: Set var_88 = Nothing
  loc_1730D4F: Set var_90 = Nothing
  loc_1730D54: IStAd
  loc_1730D58: Exit Sub
  loc_1730D59: ' Referenced from: 172F100
  loc_1730D61: Proc_6_60_E62BC4(0, Nothing, var_150, var_150, FGrid1.DispID_10000, var_110, FGrid1.DispID_FFFF)
  loc_1730D66: Exit Sub
End Sub

Public Sub SettleReport(formName, FRow, Fcol) '173F700
  'Data Table: 577ED8
  Dim var_1D0 As String
  Dim var_250 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_270 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_304 As String
  Dim var_2A0 As Integer
  Dim var_1CC As Integer
  Dim var_1F0 As Variant
  Dim var_314 As Variant
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_144 As Double
  Dim var_14C As Double
  Dim var_94 As Recordset15
  Dim var_31C As Recordset15
  Dim var_1CA As Integer
  Dim var_334 As Double
  Dim var_348 As Recordset15
  Dim unk_577EDB As Connection15
  Dim var_9C As Recordset15
  Dim var_90 As Recordset15
  Dim var_35C As MSHFlexGrid
  loc_173DA55: var_250 = CVar("WHERE P.VType<>'AD' AND P.RestCode='" & global_208 & "' AND P.VDate Between ") 'String
  loc_173DA6D: VarLateMemCallLdRfVar
  loc_173DA78: Proc_6_7_F25D88(var_240, Me.FGrid, 1)
  loc_173DAA2: VarLateMemCallLdRfVar
  loc_173DAAD: Proc_6_7_F25D88(var_2F0, Me.FGrid, 1)
  loc_173DADD: Call 0.Method_arg_54 ("Sattlement Report", 0 & var_240 & " And ")
  loc_173DAE2: var_1E0 = 1
  loc_173DB0B: If (Me.Check1.Value = 0) Then
  loc_173DB2E:   var_98 = CStr(CVar(CStr(1 & var_2F0) & " AND P.U_Name In (") & Me.GridString1 & ") ")
  loc_173DB3C: End If
  loc_173DB3F: var_1E0 = 0
  loc_173DB7C: var_240 = Me.FGrid
  loc_173DB96: Set var_314 = 1(1 & CStr(var_240.TextMatrix))
  loc_173DB9C: var_240.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_173DBBC: var_1E0 = 0
  loc_173DBC3: var_200 = 1
  loc_173DBDB: var_270 = 1
  loc_173DBE2: var_2A0 = 1
  loc_173DC23: var_1CC = CInt(DateDiff("d", CVar(CStr(Me.FGrid.TextMatrix)), CVar(CStr(Me.FGrid.TextMatrix)), 1, 1))
  loc_173DC37: var_1E0 = 1
  loc_173DC60: If (Me.Check1.Value = 0) Then
  loc_173DC66:   var_220 = Me.FormulaString1
  loc_173DC6D:   var_1E0 = "For User : "
  loc_173DC89:   var_1F0 = vbNullString
  loc_173DC8E:   var_250 = var_1E0 & Left(var_220, &H73) & var_1F0 
  loc_173DC9A:   Set var_314 = Me.Text2
  loc_173DCA0:   Me.Text2.Text = CStr(var_250)
  loc_173DCB9: Else
  loc_173DCC0:   Set var_314 = Me.Text2
  loc_173DCC6:   var_314.Text = "For User :   All"
  loc_173DCCE: End If
  loc_173DCDB: Call Proc_249_106_1041930(New, var_314, var_220, var_1E0, var_1CC, var_250, var_2A0)
  loc_173DCE3: Set var_90 = var_314
  loc_173DCFA: var_1D0 = "SELECT P.DocID, P.SettleDate AS SettleDate , P.VDate AS BillDate, P.VNo AS BillNo,H.PartyName AS PartyName, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount, P.Comments AS Narration, P.U_Name AS Employee,SubGroup.Name FROM PayChargeH P " & "LEFT JOIN HallBook H ON P.ContraDocID=H.DocId LEFT JOIN SUBGROUP ON P.COMPCODE=SUBGROUP.SUBCODE "
  loc_173DD11: Me.Connection15.Execute var_1D0 & var_98 & " ORDER BY P.VDate, P.VNo", var_220, -1
  loc_173DD1C: Set var_94 = var_314
  loc_173DD31: var_A4 = CDbl(0)
  loc_173DD37: var_AC = CDbl(0)
  loc_173DD3D: var_B4 = CDbl(0)
  loc_173DD43: var_BC = CDbl(0)
  loc_173DD49: var_C4 = CDbl(0)
  loc_173DD4F: var_CC = CDbl(0)
  loc_173DD55: var_D4 = CDbl(0)
  loc_173DD5B: var_DC = CDbl(0)
  loc_173DD61: var_E4 = CDbl(0)
  loc_173DD67: var_EC = CDbl(0)
  loc_173DD6D: var_F4 = CDbl(0)
  loc_173DD73: var_FC = CDbl(0)
  loc_173DD79: var_104 = CDbl(0)
  loc_173DD7F: var_10C = CDbl(0)
  loc_173DD85: var_114 = CDbl(0)
  loc_173DD8B: var_11C = CDbl(0)
  loc_173DD91: var_124 = CDbl(0)
  loc_173DD97: var_12C = CDbl(0)
  loc_173DD9D: var_134 = CDbl(0)
  loc_173DDA3: var_13C = CDbl(0)
  loc_173DDA9: var_144 = CDbl(0)
  loc_173DDAF: var_14C = CDbl(0)
  loc_173DDB5: var_88 = vbNullString
  loc_173DDCC: If (var_94.RecordCount > 0) Then
  loc_173DDD2:   var_94.MoveFirst
  loc_173DDDA:   Set var_31C = var_90 
  loc_173DDE9:   var_31C.AddNew var_1E0, var_1F0
  loc_173DE13:   var_31C.Fields.Item("mLine").Value = "BL"
  loc_173DE44:   var_31C.Fields.Item("PartyName").Value = "** SETTLEMENT'S DETAILS **"
  loc_173DE50:   var_1F0 = "*"
  loc_173DE59:   var_1E0 = "Mark"
  loc_173DE75:   var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_173DE8C:   var_31C.Update var_1E0, var_1F0
  loc_173DE91:   ' Referenced from: 173E76F
  loc_173DEA0:   If Not(var_94.EOF) Then
  loc_173DEA9:     var_1CA = (var_1CA + 1)
  loc_173DEB7:     var_31C.AddNew var_1E0, var_1F0
  loc_173DEE1:     var_31C.Fields.Item("mLine").Value = vbNullString
  loc_173DF1C:     var_31C.Fields.Item("SNo").Value = CVar(CStr(var_1CA) & ".")
  loc_173DF91:     var_31C.Fields.Item("SettleDate").Value = Format(CVar(var_94.Fields.Item("SettleDate")), "dd/MMM/yy")
  loc_173E00B:     var_31C.Fields.Item("Billdate").Value = Format(CVar(var_94.Fields.Item("Billdate")), "dd/MMM/yy")
  loc_173E071:     var_31C.Fields.Item("BillNo").Value = CVar(CStr(var_94.Fields.Item("BillNo").Value))
  loc_173E0AE:     var_230 = Trim(CVar(var_94.Fields.Item("PartyName")))
  loc_173E0E6:     var_31C.Fields.Item("PartyName").Value = Left(var_230, &H19)
  loc_173E123:     Proc_6_47_EF59D0(var_230, CVar(var_94.Fields.Item("Amount")), 1, 1, 1, 1, var_1CA)
  loc_173E14B:     var_31C.Fields.Item("Amount").Value = var_230
  loc_173E193:     var_334 = Val(CStr(var_94.Fields.Item("Amount").Value))
  loc_173E19D:     var_A4 = (var_A4 + var_334)
  loc_173E1F0:     var_230 = CVar(Proc_6_45_EAD428(" " & Proc_6_38_E68A98(CVar(var_94.Fields.Item("Narration")), var_A4, var_334, var_14C, var_144), &H64, var_13C)) 'String
  loc_173E213:     var_31C.Fields.Item("Narration").Value = var_230
  loc_173E27F:     var_31C.Fields.Item("Mode").Value = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_173E2D7:     var_31C.Fields.Item("EmpLoyee").Value = CVar(var_94.Fields.Item("EmpLoyee"))
  loc_173E30E:     var_230 = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_173E321:     var_344 = Ucase(var_230) 'Variant
  loc_173E33A:     If (var_344 = "CREDIT CARD") Then
  loc_173E36A:       Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_CC))
  loc_173E372:       var_240 = (var_134 + var_230)
  loc_173E377:       var_CC = CSng(Ucase(var_230))
  loc_173E389:     Else
  loc_173E394:       If (var_344 = "CASH") Then
  loc_173E3C4:         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_AC))
  loc_173E3CC:         var_240 = (var_CC + var_230)
  loc_173E3D1:         var_AC = CSng(Ucase(var_230))
  loc_173E3E3:       Else
  loc_173E3EE:         If (var_344 = "CHEQUE") Then
  loc_173E41E:           Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B4))
  loc_173E426:           var_240 = (var_AC + var_230)
  loc_173E42B:           var_B4 = CSng(Ucase(var_230))
  loc_173E43D:         Else
  loc_173E448:           If (var_344 = "COMPLEMENTARY") Then
  loc_173E478:             Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_BC))
  loc_173E480:             var_240 = (var_B4 + var_230)
  loc_173E485:             var_BC = CSng(Ucase(var_230))
  loc_173E497:           Else
  loc_173E4A2:             If (var_344 = "COMPANY") Then
  loc_173E4E8:               var_230 = CVar(Proc_6_45_EAD428(" " & Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")), var_BC), &H64)) 'String
  loc_173E50B:               var_31C.Fields.Item("Narration").Value = var_230
  loc_173E556:               Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C4))
  loc_173E55E:               var_240 = (var_12C + var_230)
  loc_173E563:               var_C4 = CSng(Ucase(var_230))
  loc_173E575:             Else
  loc_173E580:               If (var_344 = "HOLD") Then
  loc_173E5B0:                 Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D4))
  loc_173E5B8:                 var_240 = (var_C4 + var_230)
  loc_173E5BD:                 var_D4 = CSng(Ucase(var_230))
  loc_173E5CF:               Else
  loc_173E5DA:                 If (var_344 = "ROOM") Then
  loc_173E60A:                   Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_DC))
  loc_173E612:                   var_240 = (var_D4 + var_230)
  loc_173E617:                   var_DC = CSng(Ucase(var_230))
  loc_173E629:                 Else
  loc_173E634:                   If (var_344 = "STAFF") Then
  loc_173E664:                     Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E4))
  loc_173E66C:                     var_240 = (var_DC + var_230)
  loc_173E671:                     var_E4 = CSng(Ucase(var_230))
  loc_173E683:                   Else
  loc_173E68E:                     If (var_344 = "VOID") Then
  loc_173E6BE:                       Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_EC))
  loc_173E6C6:                       var_240 = (var_E4 + var_230)
  loc_173E6CB:                       var_EC = CSng(Ucase(var_230))
  loc_173E6DD:                     Else
  loc_173E703:                       var_220 = CVar(var_94.Fields.Item("Amount")) 'Address
  loc_173E70A:                       Proc_6_39_E7C810(var_230, var_220, CVar(var_F4))
  loc_173E712:                       var_240 = (var_EC + var_230)
  loc_173E717:                       var_F4 = CSng(Ucase(var_230))
  loc_173E726:                     End If
  loc_173E726:                   End If
  loc_173E726:                 End If
  loc_173E726:               End If
  loc_173E726:             End If
  loc_173E726:           End If
  loc_173E726:         End If
  loc_173E726:       End If
  loc_173E726:     End If
  loc_173E726:     var_1F0 = "*"
  loc_173E72F:     var_1E0 = "Mark"
  loc_173E74B:     var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_173E762:     var_31C.Update var_1E0, var_1F0
  loc_173E76A:     var_94.MoveNext
  loc_173E76F:     GoTo loc_173DE91
  loc_173E772:   End If
  loc_173E774:   Set var_31C = Nothing 
  loc_173E77B:   Set var_348 = var_90 
  loc_173E78A:   var_348.AddNew var_1E0, var_1F0
  loc_173E7B4:   var_348.Fields.Item("mLine").Value = "BL"
  loc_173E7E5:   var_348.Fields.Item("PartyName").Value = "** SETTLEMENT'S SUMMARY **"
  loc_173E7F1:   var_1F0 = "*"
  loc_173E7FA:   var_1E0 = "Mark"
  loc_173E806:   var_314 = var_348.Fields
  loc_173E816:   var_314.Item(var_1E0).Value = var_1F0
  loc_173E82D:   var_348.Update var_1E0, var_1F0
  loc_173E84D:   var_304 = "SELECT  Distinct P.PayType FROM PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId " & var_98 & " ORDER BY P.PayType"
  loc_173E856:   unk_577EDB.Execute var_304, var_220, -1
  loc_173E861:   Set var_9C = var_314
  loc_173E885:   If (var_9C.RecordCount > 0) Then
  loc_173E888:     ' Referenced from: 173EF4B
  loc_173E897:     If Not(var_9C.EOF) Then
  loc_173E8A5:       var_348.AddNew var_1E0, var_1F0
  loc_173E8CF:       var_348.Fields.Item("mLine").Value = vbNullString
  loc_173E914:       var_358 = Ucase(Trim(CVar(var_9C.Fields.Item("PayType")))) 'Variant
  loc_173E92D:       If (var_358 = "CREDIT CARD") Then
  loc_173E955:         var_348.Fields.Item("Narration").Value = "** Credit Total **"
  loc_173E9A9:         var_348.Fields.Item("Amount").Value = Format(var_CC, "0.00")
  loc_173E9BF:       Else
  loc_173E9CA:         If (var_358 = "CASH") Then
  loc_173E9F2:           var_348.Fields.Item("Narration").Value = "** Cash Total **"
  loc_173EA46:           var_348.Fields.Item("Amount").Value = Format(var_AC, "0.00")
  loc_173EA5C:         Else
  loc_173EA67:           If (var_358 = "CHEQUE") Then
  loc_173EA8F:             var_348.Fields.Item("Narration").Value = "** Cheque Total **"
  loc_173EAE3:             var_348.Fields.Item("Amount").Value = Format(var_B4, "0.00")
  loc_173EAF9:           Else
  loc_173EB04:             If (var_358 = "COMPLEMENTARY") Then
  loc_173EB2C:               var_348.Fields.Item("Narration").Value = "** Complementry Total **"
  loc_173EB80:               var_348.Fields.Item("Amount").Value = Format(var_BC, "0.00")
  loc_173EB96:             Else
  loc_173EBA1:               If (var_358 = "COMPANY") Then
  loc_173EBC9:                 var_348.Fields.Item("Narration").Value = "** Company Total **"
  loc_173EC1D:                 var_348.Fields.Item("Amount").Value = Format(var_C4, "0.00")
  loc_173EC33:               Else
  loc_173EC3E:                 If (var_358 = "HOLD") Then
  loc_173EC66:                   var_348.Fields.Item("Narration").Value = "** Hold Total **"
  loc_173ECBA:                   var_348.Fields.Item("Amount").Value = Format(var_D4, "0.00")
  loc_173ECD0:                 Else
  loc_173ECDB:                   If (var_358 = "ROOM") Then
  loc_173ED03:                     var_348.Fields.Item("Narration").Value = "** Room Total **"
  loc_173ED57:                     var_348.Fields.Item("Amount").Value = Format(var_DC, "0.00")
  loc_173ED6D:                   Else
  loc_173ED78:                     If (var_358 = "STAFF") Then
  loc_173EDA0:                       var_348.Fields.Item("Narration").Value = "** Staff Total **"
  loc_173EDF4:                       var_348.Fields.Item("Amount").Value = Format(var_E4, "0.00")
  loc_173EE0A:                     Else
  loc_173EE15:                       If (var_358 = "VOID") Then
  loc_173EE3D:                         var_348.Fields.Item("Narration").Value = "** Void Total **"
  loc_173EE91:                         var_348.Fields.Item("Amount").Value = Format(var_EC, "0.00")
  loc_173EEA7:                       Else
  loc_173EECC:                         var_348.Fields.Item("Narration").Value = "** Others Total **"
  loc_173EEE2:                         var_1F0 = "0.00"
  loc_173EEF0:                         var_1E0 = var_F4
  loc_173EF20:                         var_348.Fields.Item("Amount").Value = Format(var_1E0, var_1F0)
  loc_173EF33:                       End If
  loc_173EF33:                     End If
  loc_173EF33:                   End If
  loc_173EF33:                 End If
  loc_173EF33:               End If
  loc_173EF33:             End If
  loc_173EF33:           End If
  loc_173EF33:         End If
  loc_173EF33:       End If
  loc_173EF3E:       var_348.Update var_1E0, var_1F0
  loc_173EF46:       var_9C.MoveNext
  loc_173EF4B:       GoTo loc_173E888
  loc_173EF4E:     End If
  loc_173EF4E:   End If
  loc_173EF59:   var_348.AddNew var_1E0, var_1F0
  loc_173EF83:   var_348.Fields.Item("mLine").Value = "GL"
  loc_173EF8F:   var_1F0 = "Total-->"
  loc_173EFB4:   var_348.Fields.Item("Narration").Value = "GL"
  loc_173F008:   var_348.Fields.Item("Amount").Value = Format(var_A4, "0.00")
  loc_173F01B:   var_1F0 = vbNullString
  loc_173F024:   var_1E0 = "Mark"
  loc_173F040:   var_348.Fields.Item(var_1E0).Value = var_1F0
  loc_173F057:   var_348.Update var_1E0, var_1F0
  loc_173F05E:   Set var_348 = Nothing 
  loc_173F062: End If
  loc_173F08A: Me.FGrid1.Rows = 2
  loc_173F0A6: If (var_90.RecordCount > 0) Then
  loc_173F0AF:   CVarUnk
  loc_173F0B4:   VerifyVarObj
  loc_173F0BA:   Set var_314 = Me.FGrid1
  loc_173F0C0:   LateIdStAd
  loc_173F0F0:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_90, Me.FGrid1.Text, 1, 1)
  loc_173F0FB: End If
  loc_173F0FF: Set var_35C = Me.FGrid1
  loc_173F10B: var_35C.Tag = "SettleRepHall"
  loc_173F11C: var_35C.Cols = &HC
  loc_173F121: var_1E0 = 0
  loc_173F12A: var_200 = 0
  loc_173F133: var_270 = "mLine"
  loc_173F13C: LateIdCallSt
  loc_173F144: var_1E0 = 0
  loc_173F14D: var_200 = 0
  loc_173F159: LateIdCallSt
  loc_173F161: var_1E0 = 0
  loc_173F16A: var_200 = 1
  loc_173F173: var_270 = "SNo"
  loc_173F17C: LateIdCallSt
  loc_173F184: var_1E0 = 1
  loc_173F193: var_200 = CVar(CInt(1)) 'Integer
  loc_173F19A: LateIdCallSt
  loc_173F1A2: var_1E0 = 1
  loc_173F1AB: var_200 = &H1F4
  loc_173F1B7: LateIdCallSt
  loc_173F1BF: var_1E0 = 0
  loc_173F1C8: var_200 = 2
  loc_173F1D1: var_270 = "Sattle Date"
  loc_173F1DA: LateIdCallSt
  loc_173F1E2: var_1E0 = 2
  loc_173F1F1: var_200 = CVar(CInt(1)) 'Integer
  loc_173F1F8: LateIdCallSt
  loc_173F200: var_1E0 = 2
  loc_173F209: var_200 = &H578
  loc_173F215: LateIdCallSt
  loc_173F21D: var_1E0 = 0
  loc_173F226: var_200 = 3
  loc_173F22F: var_270 = "Bill No"
  loc_173F238: LateIdCallSt
  loc_173F240: var_1E0 = 3
  loc_173F24F: var_200 = CVar(CInt(1)) 'Integer
  loc_173F256: LateIdCallSt
  loc_173F25E: var_1E0 = 3
  loc_173F267: var_200 = &H3B6
  loc_173F273: LateIdCallSt
  loc_173F27B: var_1E0 = 0
  loc_173F284: var_200 = 4
  loc_173F28D: var_270 = "Bill Date"
  loc_173F296: LateIdCallSt
  loc_173F29E: var_1E0 = 4
  loc_173F2AD: var_200 = CVar(CInt(1)) 'Integer
  loc_173F2B4: LateIdCallSt
  loc_173F2BC: var_1E0 = 4
  loc_173F2CB: var_200 = CVar(CInt(1)) 'Integer
  loc_173F2D2: LateIdCallSt
  loc_173F2DA: var_1E0 = 4
  loc_173F2E3: var_200 = &H514
  loc_173F2EF: LateIdCallSt
  loc_173F2F7: var_1E0 = 0
  loc_173F300: var_200 = 5
  loc_173F309: var_270 = "Party Name"
  loc_173F312: LateIdCallSt
  loc_173F31A: var_1E0 = 5
  loc_173F329: var_200 = CVar(CInt(1)) 'Integer
  loc_173F330: LateIdCallSt
  loc_173F338: var_1E0 = 5
  loc_173F347: var_200 = CVar(CInt(1)) 'Integer
  loc_173F34E: LateIdCallSt
  loc_173F356: var_1E0 = 5
  loc_173F35F: var_200 = &HC80
  loc_173F36B: LateIdCallSt
  loc_173F373: var_1E0 = 0
  loc_173F37C: var_200 = 6
  loc_173F385: var_270 = "Narration"
  loc_173F38E: LateIdCallSt
  loc_173F396: var_1E0 = 6
  loc_173F3A5: var_200 = CVar(CInt(1)) 'Integer
  loc_173F3AC: LateIdCallSt
  loc_173F3B4: var_1E0 = 6
  loc_173F3BD: var_200 = &HC80
  loc_173F3C9: LateIdCallSt
  loc_173F3D1: var_1E0 = 0
  loc_173F3DA: var_200 = 7
  loc_173F3E3: var_270 = "Amount "
  loc_173F3EC: LateIdCallSt
  loc_173F3F4: var_1E0 = 7
  loc_173F403: var_200 = CVar(CInt(7)) 'Integer
  loc_173F40A: LateIdCallSt
  loc_173F412: var_1E0 = 7
  loc_173F421: var_200 = CVar(CInt(7)) 'Integer
  loc_173F428: LateIdCallSt
  loc_173F430: var_1E0 = 7
  loc_173F439: var_200 = &H5DC
  loc_173F445: LateIdCallSt
  loc_173F44D: var_1E0 = 0
  loc_173F456: var_200 = 8
  loc_173F45F: var_270 = " Modes"
  loc_173F468: LateIdCallSt
  loc_173F470: var_1E0 = 8
  loc_173F47F: var_200 = CVar(CInt(1)) 'Integer
  loc_173F486: LateIdCallSt
  loc_173F48E: var_1E0 = 8
  loc_173F497: var_200 = &H640
  loc_173F4A3: LateIdCallSt
  loc_173F4AB: var_1E0 = 0
  loc_173F4B4: var_200 = 9
  loc_173F4BD: var_270 = "Employee"
  loc_173F4C6: LateIdCallSt
  loc_173F4CE: var_1E0 = 9
  loc_173F4DD: var_200 = CVar(CInt(1)) 'Integer
  loc_173F4E4: LateIdCallSt
  loc_173F4EC: var_1E0 = 9
  loc_173F4FB: var_200 = CVar(CInt(1)) 'Integer
  loc_173F502: LateIdCallSt
  loc_173F50A: var_1E0 = 9
  loc_173F513: var_200 = &H44C
  loc_173F51F: LateIdCallSt
  loc_173F527: var_1E0 = 0
  loc_173F530: var_200 = &HA
  loc_173F539: var_270 = "MARK"
  loc_173F542: LateIdCallSt
  loc_173F54A: var_1E0 = &HA
  loc_173F553: var_200 = 0
  loc_173F55F: LateIdCallSt
  loc_173F567: var_1E0 = 0
  loc_173F570: var_200 = &HB
  loc_173F579: var_270 = "MARK1"
  loc_173F582: LateIdCallSt
  loc_173F58A: var_1E0 = &HB
  loc_173F593: var_200 = 0
  loc_173F59F: LateIdCallSt
  loc_173F5A9: Set var_35C = Nothing 
  loc_173F5B1: Set var_314 = Me.FGrid1
  loc_173F5E1: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_173F5E4:   var_1E0 = vbNullString
  loc_173F5EE:   Set var_314 = Me.FGrid1
  loc_173F5FF: End If
  loc_173F636: var_1E0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_173F656: Me.FGrid1.Row = CVar(CLng(IIf(var_1E0, FRow, 1)))
  loc_173F677: var_220 = Me.FGrid1.Cols
  loc_173F6A4: var_1E0 = ((Fcol <> 0) And ((CLng(var_220) - 1) >= CLng(Fcol)))
  loc_173F6C4: Me.FGrid1.Col = CVar(CLng(IIf(var_1E0, Fcol, 1)))
  loc_173F6E0: Set var_90 = Nothing
  loc_173F6E8: Set var_94 = Nothing
  loc_173F6ED: IStAd
  loc_173F6F1: Exit Sub
  loc_173F6FA: Proc_6_60_E62BC4(0, Nothing, var_220, var_220, FGrid1.DispID_10000, var_1E0, FGrid1.DispID_FFFF)
  loc_173F6FF: Exit Sub
End Sub

Public Sub PartyOutStanding(formName, FRow, Fcol) '15F3194
  'Data Table: 577ED8
  Dim var_15C As String
  Dim var_1DC As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_290 As String
  Dim var_294 As String
  Dim var_298 As String
  Dim var_17C As Variant
  Dim var_2A0 As Variant
  Dim var_9C As Double
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_CC As Double
  Dim var_C4 As Double
  Dim var_BC As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_90 As Recordset15
  Dim var_2AC As Recordset15
  Dim var_152 As Integer
  Dim var_27C As Variant
  Dim var_2C4 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_2D0 As MSHFlexGrid
  loc_15F1DCD: var_1DC = CVar(" H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_15F1DE5: VarLateMemCallLdRfVar
  loc_15F1DF0: Proc_6_7_F25D88(var_1CC, Me.FGrid, 1)
  loc_15F1E1A: VarLateMemCallLdRfVar
  loc_15F1E25: Proc_6_7_F25D88(var_27C, Me.FGrid, 1)
  loc_15F1E55: Call 0.Method_arg_54 ("OutStanding Report", 0 & var_1CC & " And ")
  loc_15F1E5A: var_16C = 1
  loc_15F1E83: If (Me.Check1.Value = 0) Then
  loc_15F1EA6:   var_94 = CStr(CVar(CStr(1 & var_27C) & " AND H.Party In (") & Me.GridString1 & ") ")
  loc_15F1EB4: End If
  loc_15F1EB7: var_16C = 0
  loc_15F1EF4: var_1CC = Me.FGrid
  loc_15F1F0E: Set var_2A0 = 1(1 & CStr(var_1CC.TextMatrix))
  loc_15F1F14: var_1CC.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_15F1F34: var_16C = 1
  loc_15F1F5D: If (Me.Check1.Value = 0) Then
  loc_15F1F63:   var_1AC = Me.FormulaString1
  loc_15F1F6A:   var_16C = "For Guest : "
  loc_15F1F97:   Set var_2A0 = Me.Text2
  loc_15F1F9D:   Me.Text2.Text = CStr(var_16C & Left(var_1AC, &H73) & vbNullString)
  loc_15F1FB6: Else
  loc_15F1FBD:   Set var_2A0 = Me.Text2
  loc_15F1FC3:   var_2A0.Text = "For Guest :   All"
  loc_15F1FCB: End If
  loc_15F1FD8: Call Proc_249_113_10413E8(New, var_2A0, var_1AC, var_16C)
  loc_15F1FE0: Set var_8C = var_2A0
  loc_15F1FF7: var_15C = "SELECT DISTINCT H.DocID, HB.VDate AS BookDate, V.FromDate AS FuncStartDate, V.ToDate AS FuncEndDate, V.FromTime AS FuncStartTime, V.ToTime AS FuncEndTime, F.Name AS FuncName, H.Party AS PartyName, H.Vno as BillNo, H.VDate as BillDate,(H.NetAmt) AS Amount, isnull((select sum(amtcr) from PaychargeH where contradocid=H.BookDocID),0) as Advance, (H.NetAmt)-isnull((select sum(amtcr) from PaychargeH where contradocid=H.BookDocID),0) as Balance, H.BookDocID " & "FROM (((((HallSale1 AS H LEFT JOIN PayChargeH AS P ON H.DocId = P.DocId) LEFT JOIN HallBook AS HB ON H.BookDocID=HB.DocID) LEFT JOIN FunctionType AS F ON HB.Func_Name=F.Code) LEFT JOIN VenueOCC V ON HB.DocId=V.FPDocId)) "
  loc_15F200C: var_298 = CStr(var_16C & Left(var_1AC, &H73) & vbNullString) & "WHERE " & var_94 & " AND (H.NetAmt)-isnull((select sum(amtcr) from PaychargeH where contradocid=H.BookDocID),0)>0 Order By H.Party,H.Vno"
  loc_15F2015: Me.Connection15.Execute CStr(var_16C & Left(var_1AC, &H73).TextMatrix), var_1AC, -1
  loc_15F2020: Set var_90 = var_2A0
  loc_15F2037: var_9C = CDbl(0)
  loc_15F203D: var_A4 = CDbl(0)
  loc_15F2043: var_AC = CDbl(0)
  loc_15F2049: var_B4 = CDbl(0)
  loc_15F204F: var_CC = CDbl(0)
  loc_15F2055: var_C4 = CDbl(0)
  loc_15F205B: var_BC = CDbl(0)
  loc_15F2061: var_D4 = CDbl(0)
  loc_15F2067: var_DC = CDbl(0)
  loc_15F206D: var_E4 = CDbl(0)
  loc_15F2073: var_EC = CDbl(0)
  loc_15F2079: var_88 = vbNullString
  loc_15F207F: var_9C = CDbl(0)
  loc_15F2085: var_A4 = CDbl(0)
  loc_15F208B: var_AC = CDbl(0)
  loc_15F2091: var_B4 = CDbl(0)
  loc_15F2097: var_CC = CDbl(0)
  loc_15F209D: var_C4 = CDbl(0)
  loc_15F20A3: var_BC = CDbl(0)
  loc_15F20A9: var_D4 = CDbl(0)
  loc_15F20AF: var_DC = CDbl(0)
  loc_15F20B5: var_E4 = CDbl(0)
  loc_15F20BB: var_EC = CDbl(0)
  loc_15F20C1: var_88 = vbNullString
  loc_15F20C7: var_9C = CDbl(0)
  loc_15F20CD: var_A4 = CDbl(0)
  loc_15F20D3: var_AC = CDbl(0)
  loc_15F20D9: var_B4 = CDbl(0)
  loc_15F20DF: var_C4 = CDbl(0)
  loc_15F20E5: var_CC = CDbl(0)
  loc_15F20EB: var_D4 = CDbl(0)
  loc_15F20F1: var_DC = CDbl(0)
  loc_15F20F7: var_E4 = CDbl(0)
  loc_15F20FD: var_EC = CDbl(0)
  loc_15F2103: var_88 = vbNullString
  loc_15F211A: If (var_90.RecordCount > 0) Then
  loc_15F2120:   var_90.MoveFirst
  loc_15F2125:   ' Referenced from: 15F29E3
  loc_15F2134:   If Not(var_90.EOF) Then
  loc_15F213A:     Set var_2AC = var_8C 
  loc_15F213E:     var_16C = 1
  loc_15F2147:     var_1AC = Me.Check1
  loc_15F2167:     If (var_1AC.Value = 1) Then
  loc_15F216D:       var_17C = CVar(var_158) 'String
  loc_15F2177:       var_16C = "PartyName"
  loc_15F21A7:       If CBool(var_17C <> var_1AC.Recordset15.Fields.Item(var_16C).Value) Then
  loc_15F21BE:         If (var_90.AbsolutePosition > 1) Then
  loc_15F21CC:           var_2AC.AddNew var_16C, var_17C
  loc_15F21D1:           var_17C = vbNullString
  loc_15F21DA:           var_16C = "mLine"
  loc_15F21F6:           var_2AC.Fields.Item(var_16C).Value = var_17C
  loc_15F220D:           var_2AC.Update var_16C, var_17C
  loc_15F2212:         End If
  loc_15F2214:         var_152 = 0
  loc_15F2222:         var_2AC.AddNew var_16C, var_17C
  loc_15F224C:         var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_15F227D:         var_2AC.Fields.Item("SrNo").Value = vbNullString
  loc_15F228C:         var_16C = "PartyName"
  loc_15F22B4:         var_17C = "*"
  loc_15F22F9:         var_2AC.Fields.Item("FuncDate").Value = var_17C & Left(Trim(CVar(var_90.Fields.Item(var_16C))), &H13) & "*"
  loc_15F231F:         var_2AC.Update var_16C, var_17C
  loc_15F2324:       End If
  loc_15F2324:     End If
  loc_15F232A:     var_152 = (var_152 + 1)
  loc_15F2338:     var_2AC.AddNew var_16C, var_17C
  loc_15F2362:     var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_15F239D:     var_2AC.Fields.Item("SrNo").Value = CVar(CStr(var_152) & ".")
  loc_15F23F2:     var_2AC.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_15F2467:     var_1DC = Format(CVar(var_90.Fields.Item("FuncStartDate")), "DD/MM/YY") & " To " 
  loc_15F24B6:     var_2AC.Fields.Item("FuncDate").Value = 1 & Format(CVar(var_90.Fields.Item("FuncEndDate")), "DD/MM/YY")
  loc_15F24DC:     var_16C = "FuncStartTime"
  loc_15F2508:     var_294 = Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_16C)), 1, var_1DC, 1, 1, var_152) & " - "
  loc_15F2533:     var_290 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("FuncEndTime")), CStr(var_16C & Left(CVar(var_90.Fields.Item(var_16C)), &H73) & vbNullString) & "WHERE " & var_94, var_152, var_16C)
  loc_15F255A:     var_2AC.Fields.Item("FuncTime").Value = CVar(var_EC & var_290)
  loc_15F25BF:     var_2AC.Fields.Item("FuncName").Value = CVar(var_90.Fields.Item("FuncName"))
  loc_15F261F:     var_2AC.Fields.Item("BillNo").Value = CVar(CStr(var_90.Fields.Item("BillNo").Value))
  loc_15F2661:     var_1BC = "DD/MM/YY"
  loc_15F2699:     var_2AC.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("Billdate")), var_1BC)
  loc_15F26D6:     Proc_6_47_EF59D0(var_1BC, CVar(var_90.Fields.Item("Amount")), 1, 1)
  loc_15F26FE:     var_2AC.Fields.Item("Amount").Value = var_1BC
  loc_15F2739:     Proc_6_47_EF59D0(var_1BC, CVar(var_90.Fields.Item("Advance")), var_E4)
  loc_15F2761:     var_2AC.Fields.Item("Advance").Value = var_1BC
  loc_15F279C:     Proc_6_39_E7C810(var_1BC, CVar(var_90.Fields.Item("Amount")))
  loc_15F27C7:     Proc_6_39_E7C810(var_1DC, CVar(var_90.Fields.Item("Advance")))
  loc_15F27E7:     var_1EC = (var_1BC - var_1DC)
  loc_15F2822:     var_2AC.Fields.Item("Balance").Value = CVar(CStr(Format(CVar(var_90.Fields.Item("FuncEndDate")), "0.00")))
  loc_15F2847:     var_17C = "*"
  loc_15F2850:     var_16C = "Mark"
  loc_15F286C:     var_2AC.Fields.Item(var_16C).Value = var_17C
  loc_15F2883:     var_2AC.Update var_16C, var_17C
  loc_15F288A:     Set var_2AC = Nothing 
  loc_15F28BB:     Proc_6_47_EF59D0(var_1BC, CVar(var_90.Fields.Item("Amount")), CVar(var_CC), 1)
  loc_15F28C3:     var_1CC = (1 + var_1BC)
  loc_15F28ED:     Proc_6_39_E7C810(CVar(var_90.Fields.Item("FuncEndDate")), CVar(var_90.Fields.Item("Advance")), CVar(var_90.Fields.Item("Advance")))
  loc_15F28F5:     var_20C = (var_DC - CVar(var_90.Fields.Item("FuncEndDate")))
  loc_15F28FA:     var_BC = CSng(CVar(var_90.Fields.Item("FuncEndDate")))
  loc_15F293E:     Proc_6_39_E7C810(var_1BC, CVar(var_90.Fields.Item("Advance")), CVar(var_E4))
  loc_15F2946:     var_1CC = (var_BC + var_1BC)
  loc_15F294B:     var_E4 = CSng(CVar(var_90.Fields.Item("Advance")))
  loc_15F295D:     var_17C = CVar(var_C4) 'Double
  loc_15F2987:     Proc_6_39_E7C810(var_1BC, CVar(var_90.Fields.Item("Amount")), var_17C)
  loc_15F298F:     var_1CC = (var_E4 + var_1BC)
  loc_15F2994:     var_C4 = CSng(CVar(var_90.Fields.Item("Advance")))
  loc_15F29A9:     var_16C = "PartyName"
  loc_15F29C5:     var_1AC = var_90.Fields.Item(var_16C).Value
  loc_15F29CE:     var_158 = CStr(var_1AC)
  loc_15F29DE:     var_90.MoveNext
  loc_15F29E3:     GoTo loc_15F2125
  loc_15F29E6:   End If
  loc_15F29E9:   Set var_2C4 = var_8C 
  loc_15F29F8:   var_2C4.AddNew var_16C, var_17C
  loc_15F2A22:   var_2C4.Fields.Item("mLine").Value = "GF"
  loc_15F2A2E:   var_17C = "Total--> "
  loc_15F2A53:   var_2C4.Fields.Item("FuncDate").Value = "GF"
  loc_15F2A6A:   Proc_6_47_EF59D0(var_1AC, var_C4)
  loc_15F2A92:   var_2C4.Fields.Item("Amount").Value = var_1AC
  loc_15F2AAC:   Proc_6_47_EF59D0(var_1AC, var_E4)
  loc_15F2AD4:   var_2C4.Fields.Item("Advance").Value = var_1AC
  loc_15F2AE6:   var_16C = var_BC
  loc_15F2AEE:   Proc_6_47_EF59D0(var_1AC, var_16C)
  loc_15F2AFA:   var_17C = "Balance"
  loc_15F2B16:   var_2C4.Fields.Item(var_17C).Value = var_1AC
  loc_15F2B30:   var_2C4.Update var_16C, var_17C
  loc_15F2B37:   Set var_2C4 = Nothing 
  loc_15F2B3B: End If
  loc_15F2B45: arg_2C = Me.FGrid1.Text
  loc_15F2B63: Me.FGrid1.Rows = 2
  loc_15F2B7F: If (var_8C.RecordCount > 0) Then
  loc_15F2B88:   CVarUnk
  loc_15F2B8D:   VerifyVarObj
  loc_15F2B93:   Set var_2A0 = Me.FGrid1
  loc_15F2B99:   LateIdStAd
  loc_15F2BC9:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_15F2BD4: End If
  loc_15F2BD8: Set var_2D0 = Me.FGrid1
  loc_15F2BE4: var_2D0.Tag = "PartyOutStanding"
  loc_15F2BF5: var_2D0.Cols = &HC
  loc_15F2BFA: var_16C = 0
  loc_15F2C03: var_18C = 0
  loc_15F2C0C: var_1FC = "mLine"
  loc_15F2C15: LateIdCallSt
  loc_15F2C1D: var_16C = 0
  loc_15F2C26: var_18C = 0
  loc_15F2C32: LateIdCallSt
  loc_15F2C3A: var_16C = 0
  loc_15F2C43: var_18C = 1
  loc_15F2C4C: var_1FC = "SNo."
  loc_15F2C55: LateIdCallSt
  loc_15F2C5D: var_16C = 1
  loc_15F2C6C: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2C73: LateIdCallSt
  loc_15F2C7B: var_16C = 1
  loc_15F2C8A: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2C91: LateIdCallSt
  loc_15F2C99: var_16C = 1
  loc_15F2CA2: var_18C = &H226
  loc_15F2CAE: LateIdCallSt
  loc_15F2CB6: var_16C = 0
  loc_15F2CBF: var_18C = 2
  loc_15F2CC8: var_1FC = "Doc Id"
  loc_15F2CD1: LateIdCallSt
  loc_15F2CD9: var_16C = 2
  loc_15F2CE2: var_18C = 0
  loc_15F2CEE: LateIdCallSt
  loc_15F2CF6: var_16C = 0
  loc_15F2CFF: var_18C = 3
  loc_15F2D08: var_1FC = "Function Date"
  loc_15F2D11: LateIdCallSt
  loc_15F2D19: var_16C = 3
  loc_15F2D22: var_18C = &H8FC
  loc_15F2D2E: LateIdCallSt
  loc_15F2D36: var_16C = 0
  loc_15F2D3F: var_18C = 4
  loc_15F2D48: var_1FC = "Function Time"
  loc_15F2D51: LateIdCallSt
  loc_15F2D59: var_16C = 4
  loc_15F2D62: var_18C = &H6A4
  loc_15F2D6E: LateIdCallSt
  loc_15F2D76: var_16C = 0
  loc_15F2D7F: var_18C = 5
  loc_15F2D88: var_1FC = "Function Type"
  loc_15F2D91: LateIdCallSt
  loc_15F2D99: var_16C = 5
  loc_15F2DA2: var_18C = &HBB8
  loc_15F2DAE: LateIdCallSt
  loc_15F2DB6: var_16C = 0
  loc_15F2DBF: var_18C = 6
  loc_15F2DC8: var_1FC = "Order No."
  loc_15F2DD1: LateIdCallSt
  loc_15F2DD9: var_16C = 6
  loc_15F2DE8: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2DEF: LateIdCallSt
  loc_15F2DF7: var_16C = 6
  loc_15F2E06: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2E0D: LateIdCallSt
  loc_15F2E15: var_16C = 6
  loc_15F2E1E: var_18C = &H4B0
  loc_15F2E2A: LateIdCallSt
  loc_15F2E32: var_16C = 0
  loc_15F2E3B: var_18C = 7
  loc_15F2E44: var_1FC = "Order Date"
  loc_15F2E4D: LateIdCallSt
  loc_15F2E55: var_16C = 7
  loc_15F2E5E: var_18C = &H578
  loc_15F2E6A: LateIdCallSt
  loc_15F2E72: var_16C = 0
  loc_15F2E7B: var_18C = 8
  loc_15F2E84: var_1FC = "Bill Amount"
  loc_15F2E8D: LateIdCallSt
  loc_15F2E95: var_16C = 8
  loc_15F2EA4: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2EAB: LateIdCallSt
  loc_15F2EB3: var_16C = 8
  loc_15F2EC2: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2EC9: LateIdCallSt
  loc_15F2ED1: var_16C = 8
  loc_15F2EDA: var_18C = &H578
  loc_15F2EE6: LateIdCallSt
  loc_15F2EEE: var_16C = 0
  loc_15F2EF7: var_18C = 9
  loc_15F2F00: var_1FC = "Advance"
  loc_15F2F09: LateIdCallSt
  loc_15F2F11: var_16C = 9
  loc_15F2F20: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2F27: LateIdCallSt
  loc_15F2F2F: var_16C = 9
  loc_15F2F3E: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2F45: LateIdCallSt
  loc_15F2F4D: var_16C = 9
  loc_15F2F56: var_18C = &H578
  loc_15F2F62: LateIdCallSt
  loc_15F2F6A: var_16C = 0
  loc_15F2F73: var_18C = &HA
  loc_15F2F7C: var_1FC = "Balance"
  loc_15F2F85: LateIdCallSt
  loc_15F2F8D: var_16C = &HA
  loc_15F2F9C: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2FA3: LateIdCallSt
  loc_15F2FAB: var_16C = &HA
  loc_15F2FBA: var_18C = CVar(CInt(7)) 'Integer
  loc_15F2FC1: LateIdCallSt
  loc_15F2FC9: var_16C = &HA
  loc_15F2FD2: var_18C = &H578
  loc_15F2FDE: LateIdCallSt
  loc_15F2FE6: var_16C = 0
  loc_15F2FEF: var_18C = &HB
  loc_15F2FF8: var_1FC = "MARK"
  loc_15F3001: LateIdCallSt
  loc_15F3009: var_16C = &HB
  loc_15F3012: var_18C = 0
  loc_15F301E: LateIdCallSt
  loc_15F3028: Set var_2D0 = Nothing 
  loc_15F3040: If (var_90.RecordCount <= 0) Then
  loc_15F3048:   global_152 = 0
  loc_15F304B:   Exit Sub
  loc_15F304C: End If
  loc_15F3050: Set var_2A0 = Me.FGrid1
  loc_15F3080: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_15F3083:   var_16C = vbNullString
  loc_15F308D:   Set var_2A0 = Me.FGrid1
  loc_15F309E: End If
  loc_15F30D5: var_16C = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_15F30F5: Me.FGrid1.Row = CVar(CLng(IIf(var_16C, FRow, 1)))
  loc_15F3143: var_16C = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_15F3163: Me.FGrid1.Col = CVar(CLng(IIf(var_16C, Fcol, 1)))
  loc_15F317F: Set var_8C = Nothing
  loc_15F3187: Set var_90 = Nothing
  loc_15F318C: IStAd
  loc_15F3190: Exit Sub
End Sub

Public Sub CashierCollection(formName, FRow, Fcol) '19B62EC
  'Data Table: 577ED8
  Dim var_1CC As String
  Dim var_24C As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_26C As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_29C As Integer
  Dim var_1C8 As Integer
  Dim var_1EC As Variant
  Dim var_310 As Variant
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_94 As Recordset15
  Dim var_1C4 As Double
  Dim var_31C As Recordset15
  Dim var_1C6 As Integer
  Dim var_338 As Double
  Dim var_35C As Recordset15
  Dim var_360 As Recordset15
  Dim arg_2C As Variant
  Dim var_90 As Recordset15
  Dim var_364 As MSHFlexGrid
  loc_19B3315: var_24C = CVar("WHERE P.RestCode='" & global_208 & "' AND P.VDate Between ") 'String
  loc_19B332D: VarLateMemCallLdRfVar
  loc_19B3338: Proc_6_7_F25D88(var_23C, Me.FGrid, 1)
  loc_19B3362: VarLateMemCallLdRfVar
  loc_19B336D: Proc_6_7_F25D88(var_2EC, Me.FGrid, 1)
  loc_19B339D: Call 0.Method_arg_54 ("Cashier Report", 0 & var_23C & " And ")
  loc_19B33A2: var_1DC = 1
  loc_19B33CB: If (Me.Check1.Value = 0) Then
  loc_19B33EE:   var_98 = CStr(CVar(CStr(1 & var_2EC) & " AND P.U_Name In (") & Me.GridString1 & ") ")
  loc_19B33FC: End If
  loc_19B33FF: var_1DC = 0
  loc_19B343C: var_23C = Me.FGrid
  loc_19B3456: Set var_310 = 1(1 & CStr(var_23C.TextMatrix))
  loc_19B345C: var_23C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_19B347C: var_1DC = 0
  loc_19B3483: var_1FC = 1
  loc_19B349B: var_26C = 1
  loc_19B34A2: var_29C = 1
  loc_19B34E3: var_1C8 = CInt(DateDiff("d", CVar(CStr(Me.FGrid.TextMatrix)), CVar(CStr(Me.FGrid.TextMatrix)), 1, 1))
  loc_19B34F7: var_1DC = 1
  loc_19B3520: If (Me.Check1.Value = 0) Then
  loc_19B3526:   var_21C = Me.FormulaString1
  loc_19B352D:   var_1DC = "For User : "
  loc_19B354E:   var_24C = var_1DC & Left(var_21C, &H73) & vbNullString 
  loc_19B355A:   Set var_310 = Me.Text2
  loc_19B3560:   Me.Text2.Text = CStr(var_24C)
  loc_19B3579: Else
  loc_19B3580:   Set var_310 = Me.Text2
  loc_19B3586:   var_310.Text = "For User :   All"
  loc_19B358E: End If
  loc_19B359B: Call Proc_249_114_1160D38(New, var_310, var_21C, var_1DC, var_1C8, var_24C, var_29C)
  loc_19B35A3: Set var_90 = var_310
  loc_19B35BA: var_1CC = "SELECT P.DocID, P.VDate AS BillDate,P.VTYPE,P.VNO, H.PartyName AS PartyName, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount, P.Comments AS Narration, P.U_Name AS Name,P.VType FROM PayChargeH P " & "INNER JOIN HallBook H ON P.ContraDocID=H.DocId "
  loc_19B35D1: Me.Connection15.Execute var_1CC & var_98 & " ORDER BY P.VDate, P.VNo", var_21C, -1
  loc_19B35DC: Set var_94 = var_310
  loc_19B35F1: var_A0 = CDbl(0)
  loc_19B35F7: var_A8 = CDbl(0)
  loc_19B35FD: var_B0 = CDbl(0)
  loc_19B3603: var_B8 = CDbl(0)
  loc_19B3609: var_C0 = CDbl(0)
  loc_19B360F: var_C8 = CDbl(0)
  loc_19B3615: var_D0 = CDbl(0)
  loc_19B361B: var_D8 = CDbl(0)
  loc_19B3621: var_E0 = CDbl(0)
  loc_19B3627: var_E8 = CDbl(0)
  loc_19B362D: var_F0 = CDbl(0)
  loc_19B3633: var_F8 = CDbl(0)
  loc_19B3639: var_100 = CDbl(0)
  loc_19B363F: var_108 = CDbl(0)
  loc_19B3645: var_110 = CDbl(0)
  loc_19B364B: var_118 = CDbl(0)
  loc_19B3651: var_120 = CDbl(0)
  loc_19B3657: var_128 = CDbl(0)
  loc_19B365D: var_130 = CDbl(0)
  loc_19B3663: var_138 = CDbl(0)
  loc_19B3669: var_140 = CDbl(0)
  loc_19B366F: var_148 = CDbl(0)
  loc_19B3675: var_88 = vbNullString
  loc_19B368C: If (var_94.RecordCount > 0) Then
  loc_19B3692:   var_94.MoveFirst
  loc_19B36C3:   var_1C4 = CDate(var_94.Fields.Item("VDate").Value)
  loc_19B36D3:   Set var_31C = var_90 
  loc_19B36D7:   ' Referenced from: 19B502E
  loc_19B36E6:   If Not(var_94.EOF) Then
  loc_19B36F6:     var_1EC = CDate(var_1C4)
  loc_19B3701:     var_1DC = "VDate"
  loc_19B371D:     var_21C = var_94.Fields.Item(var_1DC).Value
  loc_19B373D:     If CBool((var_1C8 > 0) And (var_1EC <> var_21C)) Then
  loc_19B374B:       var_31C.AddNew var_1DC, var_1EC
  loc_19B3775:       var_31C.Fields.Item("mLine").Value = "BL"
  loc_19B3781:       var_1EC = "Total-->"
  loc_19B37A6:       var_31C.Fields.Item("Billdate").Value = "BL"
  loc_19B37BD:       Proc_6_47_EF59D0(var_21C, var_A0, var_1C4, var_148, var_140, var_138)
  loc_19B37E5:       var_31C.Fields.Item("BillAmount").Value = var_21C
  loc_19B37FF:       Proc_6_47_EF59D0(var_21C, var_A8, var_130, var_128)
  loc_19B3827:       var_31C.Fields.Item("Cash").Value = var_21C
  loc_19B3841:       Proc_6_47_EF59D0(var_21C, var_B0, var_120)
  loc_19B3869:       var_31C.Fields.Item("Cheque").Value = var_21C
  loc_19B3883:       Proc_6_47_EF59D0(var_21C, var_B8)
  loc_19B38AB:       var_31C.Fields.Item("Complementary").Value = var_21C
  loc_19B38C5:       Proc_6_47_EF59D0(var_21C, var_C0)
  loc_19B38ED:       var_31C.Fields.Item("Company").Value = var_21C
  loc_19B3907:       Proc_6_47_EF59D0(var_21C, var_C8)
  loc_19B392F:       var_31C.Fields.Item("CreditCard").Value = var_21C
  loc_19B3949:       Proc_6_47_EF59D0(var_21C, var_D0)
  loc_19B3971:       var_31C.Fields.Item("Hold").Value = var_21C
  loc_19B398B:       Proc_6_47_EF59D0(var_21C, var_D8)
  loc_19B39B3:       var_31C.Fields.Item("Room").Value = var_21C
  loc_19B39CD:       Proc_6_47_EF59D0(var_21C, var_E0)
  loc_19B39F5:       var_31C.Fields.Item("Staff").Value = var_21C
  loc_19B3A0F:       Proc_6_47_EF59D0(var_21C, var_E8)
  loc_19B3A37:       var_31C.Fields.Item("Void").Value = var_21C
  loc_19B3A51:       Proc_6_47_EF59D0(var_21C, var_F0)
  loc_19B3A79:       var_31C.Fields.Item("Other").Value = var_21C
  loc_19B3A88:       var_1EC = vbNullString
  loc_19B3A91:       var_1DC = "Mark"
  loc_19B3AAD:       var_31C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B3AC4:       var_31C.Update var_1DC, var_1EC
  loc_19B3AD4:       var_31C.AddNew var_1DC, var_1EC
  loc_19B3AD9:       var_1EC = vbNullString
  loc_19B3AE2:       var_1DC = "mLine"
  loc_19B3AFE:       var_31C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B3B15:       var_31C.Update var_1DC, var_1EC
  loc_19B3B1C:       var_1C6 = 0
  loc_19B3B26:       var_F8 = (var_F8 + var_A0)
  loc_19B3B30:       var_100 = (var_100 + var_A8)
  loc_19B3B3A:       var_108 = (var_108 + var_B0)
  loc_19B3B44:       var_110 = (var_110 + var_B8)
  loc_19B3B4E:       var_118 = (var_118 + var_C0)
  loc_19B3B58:       var_120 = (var_120 + var_C8)
  loc_19B3B62:       var_128 = (var_128 + var_D0)
  loc_19B3B68:       var_D8 = CDbl(0)
  loc_19B3B72:       var_138 = (var_138 + var_E0)
  loc_19B3B7C:       var_140 = (var_140 + var_E8)
  loc_19B3B86:       var_148 = (var_148 + var_F0)
  loc_19B3B8C:       var_A0 = CDbl(0)
  loc_19B3B92:       var_A8 = CDbl(0)
  loc_19B3B98:       var_B0 = CDbl(0)
  loc_19B3B9E:       var_B8 = CDbl(0)
  loc_19B3BA4:       var_C0 = CDbl(0)
  loc_19B3BAA:       var_C8 = CDbl(0)
  loc_19B3BB0:       var_D0 = CDbl(0)
  loc_19B3BB6:       var_D8 = CDbl(0)
  loc_19B3BBC:       var_E0 = CDbl(0)
  loc_19B3BC2:       var_E8 = CDbl(0)
  loc_19B3BC8:       var_F0 = CDbl(0)
  loc_19B3BCB:     End If
  loc_19B3BD1:     var_1DC = "DocID"
  loc_19B3BF8:     var_1EC = CVar(var_88) 'String
  loc_19B3C08:     If CBool(var_94.Fields.Item(var_1DC).Value <> var_1EC) Then
  loc_19B3C11:       var_1C6 = (var_1C6 + 1)
  loc_19B3C1F:       var_31C.AddNew var_1DC, var_1EC
  loc_19B3C49:       var_31C.Fields.Item("mLine").Value = vbNullString
  loc_19B3C84:       var_31C.Fields.Item("SrNo").Value = CVar(CStr(var_1C6) & ".")
  loc_19B3CD9:       var_31C.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_19B3D73:       var_31C.Fields.Item("BillNo").Value = CVar(CStr(var_94.Fields.Item("vType").Value) & "/" & CStr(var_94.Fields.Item("VNo").Value))
  loc_19B3DDC:       var_31C.Fields.Item("Billdate").Value = CVar(var_94.Fields.Item("Billdate"))
  loc_19B3E4B:       var_31C.Fields.Item("PartyName").Value = Left(Trim(CVar(var_94.Fields.Item("PartyName"))), &H19)
  loc_19B3E88:       var_22C = Trim(CVar(var_94.Fields.Item("vType")))
  loc_19B3EA2:       If (var_22C = "AD") Then
  loc_19B3ECA:         var_31C.Fields.Item("BillAmount").Value = "Adv."
  loc_19B3ED9:       Else
  loc_19B3EFF:         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("BillAmount")), var_1C6, var_F0, var_E8, var_E0)
  loc_19B3F27:         var_31C.Fields.Item("BillAmount").Value = var_22C
  loc_19B3F3C:       End If
  loc_19B3F6F:       var_338 = Val(CStr(var_94.Fields.Item("BillAmount").Value))
  loc_19B3F79:       var_A0 = (var_A0 + var_338)
  loc_19B3FCC:       var_31C.Fields.Item("Narration").Value = CVar(var_94.Fields.Item("Narration"))
  loc_19B4020:       var_31C.Fields.Item("Name").Value = CVar(var_94.Fields.Item("Name"))
  loc_19B4057:       var_22C = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_19B406A:       var_348 = Ucase(var_22C) 'Variant
  loc_19B4083:       If (var_348 = "CREDIT CARD") Then
  loc_19B40AC:         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")), var_A0, var_338, var_D8)
  loc_19B40D4:         var_31C.Fields.Item("CreditCard").Value = var_22C
  loc_19B4116:         Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C8), var_D0)
  loc_19B411E:         var_23C = (var_C8 + var_22C)
  loc_19B4123:         var_C8 = CSng(Ucase(var_22C))
  loc_19B4135:       Else
  loc_19B4140:         If (var_348 = "CASH") Then
  loc_19B4169:           Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")), var_C8)
  loc_19B4191:           var_31C.Fields.Item("Cash").Value = var_22C
  loc_19B41D3:           Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_A8))
  loc_19B41DB:           var_23C = (var_C0 + var_22C)
  loc_19B41E0:           var_A8 = CSng(Ucase(var_22C))
  loc_19B41F2:         Else
  loc_19B41FD:           If (var_348 = "CHEQUE") Then
  loc_19B4226:             Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")), var_A8)
  loc_19B424E:             var_31C.Fields.Item("Cheque").Value = var_22C
  loc_19B4290:             Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B0))
  loc_19B4298:             var_23C = (var_B8 + var_22C)
  loc_19B429D:             var_B0 = CSng(Ucase(var_22C))
  loc_19B42AF:           Else
  loc_19B42BA:             If (var_348 = "COMPLEMENTARY") Then
  loc_19B42E3:               Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B430B:               var_31C.Fields.Item("Complementary").Value = var_22C
  loc_19B434D:               Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_19B4355:               var_23C = (var_B0 + var_22C)
  loc_19B435A:               var_B8 = CSng(Ucase(var_22C))
  loc_19B436C:             Else
  loc_19B4377:               If (var_348 = "COMPANY") Then
  loc_19B43A0:                 Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B43C8:                 var_31C.Fields.Item("Company").Value = var_22C
  loc_19B440A:                 Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_19B4412:                 var_23C = (var_B8 + var_22C)
  loc_19B4417:                 var_C0 = CSng(Ucase(var_22C))
  loc_19B4429:               Else
  loc_19B4434:                 If (var_348 = "HOLD") Then
  loc_19B445D:                   Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4485:                   var_31C.Fields.Item("Hold").Value = var_22C
  loc_19B44C7:                   Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_19B44CF:                   var_23C = (var_C0 + var_22C)
  loc_19B44D4:                   var_D0 = CSng(Ucase(var_22C))
  loc_19B44E6:                 Else
  loc_19B44F1:                   If (var_348 = "ROOM") Then
  loc_19B451A:                     Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4542:                     var_31C.Fields.Item("Room").Value = var_22C
  loc_19B4584:                     Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_19B458C:                     var_23C = (var_D0 + var_22C)
  loc_19B4591:                     var_D8 = CSng(Ucase(var_22C))
  loc_19B45A3:                   Else
  loc_19B45AE:                     If (var_348 = "STAFF") Then
  loc_19B45D7:                       Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B45FF:                       var_31C.Fields.Item("Staff").Value = var_22C
  loc_19B4641:                       Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E0))
  loc_19B4649:                       var_23C = (var_D8 + var_22C)
  loc_19B464E:                       var_E0 = CSng(Ucase(var_22C))
  loc_19B4660:                     Else
  loc_19B466B:                       If (var_348 = "VOID") Then
  loc_19B4694:                         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B46BC:                         var_31C.Fields.Item("Void").Value = var_22C
  loc_19B46FE:                         Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_19B4706:                         var_23C = (var_E0 + var_22C)
  loc_19B470B:                         var_E8 = CSng(Ucase(var_22C))
  loc_19B471D:                       Else
  loc_19B4743:                         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B476B:                         var_31C.Fields.Item("Other").Value = var_22C
  loc_19B47AD:                         Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_F0))
  loc_19B47B5:                         var_23C = (var_E8 + var_22C)
  loc_19B47BA:                         var_F0 = CSng(Ucase(var_22C))
  loc_19B47C9:                       End If
  loc_19B47C9:                     End If
  loc_19B47C9:                   End If
  loc_19B47C9:                 End If
  loc_19B47C9:               End If
  loc_19B47C9:             End If
  loc_19B47C9:           End If
  loc_19B47C9:         End If
  loc_19B47C9:       End If
  loc_19B47C9:       var_1EC = "*"
  loc_19B47D2:       var_1DC = "Mark"
  loc_19B47EE:       var_31C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B4805:       var_31C.Update var_1DC, var_1EC
  loc_19B480D:     Else
  loc_19B4833:       var_22C = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_19B4846:       var_358 = Ucase(var_22C) 'Variant
  loc_19B485F:       If (var_358 = "CREDIT CARD") Then
  loc_19B4888:         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B48B0:         var_31C.Fields.Item("CreditCard").Value = var_22C
  loc_19B48F2:         Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C8))
  loc_19B48FA:         var_23C = (var_F0 + var_22C)
  loc_19B48FF:         var_C8 = CSng(Ucase(var_22C))
  loc_19B4911:       Else
  loc_19B491C:         If (var_358 = "CASH") Then
  loc_19B4945:           Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B496D:           var_31C.Fields.Item("Cash").Value = var_22C
  loc_19B49AF:           Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_A8))
  loc_19B49B7:           var_23C = (var_C8 + var_22C)
  loc_19B49BC:           var_A8 = CSng(Ucase(var_22C))
  loc_19B49CE:         Else
  loc_19B49D9:           If (var_358 = "CHEQUE") Then
  loc_19B4A02:             Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4A2A:             var_31C.Fields.Item("Cheque").Value = var_22C
  loc_19B4A6C:             Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B0))
  loc_19B4A74:             var_23C = (var_A8 + var_22C)
  loc_19B4A79:             var_B0 = CSng(Ucase(var_22C))
  loc_19B4A8B:           Else
  loc_19B4A96:             If (var_358 = "COMPLEMENTARY") Then
  loc_19B4ABF:               Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4AE7:               var_31C.Fields.Item("Complementary").Value = var_22C
  loc_19B4B29:               Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_19B4B31:               var_23C = (var_B0 + var_22C)
  loc_19B4B36:               var_B8 = CSng(Ucase(var_22C))
  loc_19B4B48:             Else
  loc_19B4B53:               If (var_358 = "COMPANY") Then
  loc_19B4B7C:                 Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4BA4:                 var_31C.Fields.Item("Company").Value = var_22C
  loc_19B4BE6:                 Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_19B4BEE:                 var_23C = (var_B8 + var_22C)
  loc_19B4BF3:                 var_C0 = CSng(Ucase(var_22C))
  loc_19B4C05:               Else
  loc_19B4C10:                 If (var_358 = "HOLD") Then
  loc_19B4C39:                   Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4C61:                   var_31C.Fields.Item("Hold").Value = var_22C
  loc_19B4CA3:                   Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_19B4CAB:                   var_23C = (var_C0 + var_22C)
  loc_19B4CB0:                   var_D0 = CSng(Ucase(var_22C))
  loc_19B4CC2:                 Else
  loc_19B4CCD:                   If (var_358 = "ROOM") Then
  loc_19B4CF6:                     Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4D1E:                     var_31C.Fields.Item("Room").Value = var_22C
  loc_19B4D60:                     Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_19B4D68:                     var_23C = (var_D0 + var_22C)
  loc_19B4D6D:                     var_D8 = CSng(Ucase(var_22C))
  loc_19B4D7F:                   Else
  loc_19B4D8A:                     If (var_358 = "STAFF") Then
  loc_19B4DB3:                       Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4DDB:                       var_31C.Fields.Item("Staff").Value = var_22C
  loc_19B4E1D:                       Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E0))
  loc_19B4E25:                       var_23C = (var_D8 + var_22C)
  loc_19B4E2A:                       var_E0 = CSng(Ucase(var_22C))
  loc_19B4E3C:                     Else
  loc_19B4E47:                       If (var_358 = "VOID") Then
  loc_19B4E70:                         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4E98:                         var_31C.Fields.Item("Void").Value = var_22C
  loc_19B4EDA:                         Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_19B4EE2:                         var_23C = (var_E0 + var_22C)
  loc_19B4EE7:                         var_E8 = CSng(Ucase(var_22C))
  loc_19B4EF9:                       Else
  loc_19B4F1F:                         Proc_6_47_EF59D0(var_22C, CVar(var_94.Fields.Item("Amount")))
  loc_19B4F47:                         var_31C.Fields.Item("Other").Value = var_22C
  loc_19B4F5F:                         var_1EC = CVar(var_F0) 'Double
  loc_19B4F66:                         var_1DC = "Amount"
  loc_19B4F89:                         Proc_6_39_E7C810(var_22C, CVar(var_94.Fields.Item(var_1DC)), var_1EC)
  loc_19B4F91:                         var_23C = (var_E8 + var_22C)
  loc_19B4F96:                         var_F0 = CSng(Ucase(var_22C))
  loc_19B4FA5:                       End If
  loc_19B4FA5:                     End If
  loc_19B4FA5:                   End If
  loc_19B4FA5:                 End If
  loc_19B4FA5:               End If
  loc_19B4FA5:             End If
  loc_19B4FA5:           End If
  loc_19B4FA5:         End If
  loc_19B4FA5:       End If
  loc_19B4FB0:       var_31C.Update var_1DC, var_1EC
  loc_19B4FB5:     End If
  loc_19B4FE0:     var_88 = CStr(var_94.Fields.Item("DocID").Value)
  loc_19B4FF3:     var_1DC = "VDate"
  loc_19B500F:     var_21C = var_94.Fields.Item(var_1DC).Value
  loc_19B5019:     var_1C4 = CDate(var_21C)
  loc_19B5029:     var_94.MoveNext
  loc_19B502E:     GoTo loc_19B36D7
  loc_19B5031:   End If
  loc_19B5033:   Set var_31C = Nothing 
  loc_19B503A:   Set var_35C = var_90 
  loc_19B5073:   var_35C.Fields.Item("mLine").Value = "BL"
  loc_19B507F:   var_1EC = "Total-->"
  loc_19B50A4:   var_35C.Fields.Item("Billdate").Value = "BL"
  loc_19B50BB:   Proc_6_47_EF59D0(var_21C, var_A0, var_1C4)
  loc_19B50E3:   var_35C.Fields.Item("BillAmount").Value = var_21C
  loc_19B50FD:   Proc_6_47_EF59D0(var_21C, var_A8)
  loc_19B5125:   var_35C.Fields.Item("Cash").Value = var_21C
  loc_19B513F:   Proc_6_47_EF59D0(var_21C, var_B0)
  loc_19B5167:   var_35C.Fields.Item("Cheque").Value = var_21C
  loc_19B5181:   Proc_6_47_EF59D0(var_21C, var_B8)
  loc_19B51A9:   var_35C.Fields.Item("Complementary").Value = var_21C
  loc_19B51C3:   Proc_6_47_EF59D0(var_21C, var_C0)
  loc_19B51EB:   var_35C.Fields.Item("Company").Value = var_21C
  loc_19B5205:   Proc_6_47_EF59D0(var_21C, var_C8)
  loc_19B522D:   var_35C.Fields.Item("CreditCard").Value = var_21C
  loc_19B5247:   Proc_6_47_EF59D0(var_21C, var_D0)
  loc_19B526F:   var_35C.Fields.Item("Hold").Value = var_21C
  loc_19B5289:   Proc_6_47_EF59D0(var_21C, var_D8)
  loc_19B52B1:   var_35C.Fields.Item("Room").Value = var_21C
  loc_19B52CB:   Proc_6_47_EF59D0(var_21C, var_E0)
  loc_19B52F3:   var_35C.Fields.Item("Staff").Value = var_21C
  loc_19B530D:   Proc_6_47_EF59D0(var_21C, var_E8)
  loc_19B5335:   var_35C.Fields.Item("Void").Value = var_21C
  loc_19B534F:   Proc_6_47_EF59D0(var_21C, var_F0)
  loc_19B5377:   var_35C.Fields.Item("Other").Value = var_21C
  loc_19B5386:   var_1EC = vbNullString
  loc_19B538F:   var_1DC = "Mark"
  loc_19B53AB:   var_35C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B53D2:   r_1DC, var_1EC var_1DC, var_1EC
  loc_19B53D7:   var_1EC = vbNullString
  loc_19B53E0:   var_1DC = "mLine"
  loc_19B53FC:   var_35C.Fields.Item(var_1DC).Value = var_1EC
  loc_19B5413:   r_1DC, var_1EC var_1DC, var_1EC
  loc_19B541F:   var_F8 = (var_F8 + var_A0)
  loc_19B5429:   var_100 = (var_100 + var_A8)
  loc_19B5433:   var_108 = (var_108 + var_B0)
  loc_19B543D:   var_110 = (var_110 + var_B8)
  loc_19B5447:   var_118 = (var_118 + var_C0)
  loc_19B5451:   var_120 = (var_120 + var_C8)
  loc_19B545B:   var_128 = (var_128 + var_D0)
  loc_19B546B:   var_138 = (var_138 + var_E0)
  loc_19B5475:   var_140 = (var_140 + var_E8)
  loc_19B547F:   var_148 = (var_148 + var_F0)
  loc_19B5484:   Set var_35C = Nothing 
  loc_19B548E:   If (var_1C8 > 0) Then
  loc_19B5494:     Set var_360 = var_90 
  loc_19B54CD:     var_360.Fields.Item("mLine").Value = "BL"
  loc_19B54D9:     var_1EC = "G.Total-->"
  loc_19B54FE:     var_360.Fields.Item("Billdate").Value = "BL"
  loc_19B5515:     Proc_6_47_EF59D0(var_21C, var_F8, var_148, var_140, var_138, CDbl(0), var_128)
  loc_19B553D:     var_360.Fields.Item("BillAmount").Value = var_21C
  loc_19B5557:     Proc_6_47_EF59D0(var_21C, var_100, var_120, var_118)
  loc_19B557F:     var_360.Fields.Item("Cash").Value = var_21C
  loc_19B5599:     Proc_6_47_EF59D0(var_21C, var_108, var_110)
  loc_19B55C1:     var_360.Fields.Item("Cheque").Value = var_21C
  loc_19B55DB:     Proc_6_47_EF59D0(var_21C, var_110, var_108)
  loc_19B5603:     var_360.Fields.Item("Complementary").Value = var_21C
  loc_19B561D:     Proc_6_47_EF59D0(var_21C, var_118)
  loc_19B5645:     var_360.Fields.Item("Company").Value = var_21C
  loc_19B565F:     Proc_6_47_EF59D0(var_21C, var_120)
  loc_19B5687:     var_360.Fields.Item("CreditCard").Value = var_21C
  loc_19B56A1:     Proc_6_47_EF59D0(var_21C, var_128)
  loc_19B56C9:     var_360.Fields.Item("Hold").Value = var_21C
  loc_19B56E3:     Proc_6_47_EF59D0(var_21C, var_130)
  loc_19B570B:     var_360.Fields.Item("Room").Value = var_21C
  loc_19B5725:     Proc_6_47_EF59D0(var_21C, var_138)
  loc_19B574D:     var_360.Fields.Item("Staff").Value = var_21C
  loc_19B5767:     Proc_6_47_EF59D0(var_21C, var_140)
  loc_19B578F:     var_360.Fields.Item("Void").Value = var_21C
  loc_19B57A9:     Proc_6_47_EF59D0(var_21C, var_148)
  loc_19B57D1:     var_360.Fields.Item("Other").Value = var_21C
  loc_19B57E0:     var_1EC = vbNullString
  loc_19B57E9:     var_1DC = "Mark"
  loc_19B5805:     var_360.Fields.Item(var_1DC).Value = var_1EC
  loc_19B582C:     r_1DC, var_1EC var_1DC, var_1EC
  loc_19B5831:     var_1EC = vbNullString
  loc_19B583A:     var_1DC = "mLine"
  loc_19B5856:     var_360.Fields.Item(var_1DC).Value = var_1EC
  loc_19B586D:     r_1DC, var_1EC var_1DC, var_1EC
  loc_19B5874:     Set var_360 = Nothing 
  loc_19B5878:   End If
  loc_19B5878: End If
  loc_19B5882: arg_2C = Me.FGrid1.Text
  loc_19B58A0: Me.FGrid1.Rows = 2
  loc_19B58BC: If (var_90.RecordCount > 0) Then
  loc_19B58C5:   CVarUnk
  loc_19B58CA:   VerifyVarObj
  loc_19B58D0:   Set var_310 = Me.FGrid1
  loc_19B58D6:   LateIdStAd
  loc_19B5906:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_19B5911: End If
  loc_19B5915: Set var_364 = Me.FGrid1
  loc_19B5921: var_364.Tag = "CashierCollection"
  loc_19B5932: var_364.Cols = &H15
  loc_19B5937: var_1DC = 0
  loc_19B5940: var_1FC = 0
  loc_19B5949: var_26C = "mLine"
  loc_19B5952: LateIdCallSt
  loc_19B595A: var_1DC = 0
  loc_19B5963: var_1FC = 0
  loc_19B596F: LateIdCallSt
  loc_19B5977: var_1DC = 0
  loc_19B5980: var_1FC = 1
  loc_19B5989: var_26C = "SNo."
  loc_19B5992: LateIdCallSt
  loc_19B599A: var_1DC = 1
  loc_19B59A3: var_1FC = &H1F4
  loc_19B59AF: LateIdCallSt
  loc_19B59B7: var_1DC = 0
  loc_19B59C0: var_1FC = 2
  loc_19B59C9: var_26C = "Doc Id"
  loc_19B59D2: LateIdCallSt
  loc_19B59DA: var_1DC = 2
  loc_19B59E3: var_1FC = 0
  loc_19B59EF: LateIdCallSt
  loc_19B59F7: var_1DC = 0
  loc_19B5A00: var_1FC = 3
  loc_19B5A09: var_26C = "Date"
  loc_19B5A12: LateIdCallSt
  loc_19B5A1A: var_1DC = 3
  loc_19B5A29: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B5A30: LateIdCallSt
  loc_19B5A38: var_1DC = 3
  loc_19B5A47: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B5A4E: LateIdCallSt
  loc_19B5A56: var_1DC = 3
  loc_19B5A5F: var_1FC = &H578
  loc_19B5A6B: LateIdCallSt
  loc_19B5A73: var_1DC = 0
  loc_19B5A7C: var_1FC = 4
  loc_19B5A85: var_26C = "Bill No"
  loc_19B5A8E: LateIdCallSt
  loc_19B5A96: var_1DC = 4
  loc_19B5AA5: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B5AAC: LateIdCallSt
  loc_19B5AB4: var_1DC = 4
  loc_19B5AC3: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B5ACA: LateIdCallSt
  loc_19B5AD2: var_1DC = 4
  loc_19B5ADB: var_1FC = &H3E8
  loc_19B5AE7: LateIdCallSt
  loc_19B5AEF: var_1DC = 0
  loc_19B5AF8: var_1FC = 5
  loc_19B5B01: var_26C = "Party Name"
  loc_19B5B0A: LateIdCallSt
  loc_19B5B12: var_1DC = 5
  loc_19B5B21: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B5B28: LateIdCallSt
  loc_19B5B30: var_1DC = 5
  loc_19B5B3F: var_1FC = CVar(CInt(1)) 'Integer
  loc_19B5B46: LateIdCallSt
  loc_19B5B4E: var_1DC = 5
  loc_19B5B57: var_1FC = &HC80
  loc_19B5B63: LateIdCallSt
  loc_19B5B6B: var_1DC = 0
  loc_19B5B74: var_1FC = 6
  loc_19B5B7D: var_26C = "Bill Amount"
  loc_19B5B86: LateIdCallSt
  loc_19B5B8E: var_1DC = 6
  loc_19B5B9D: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5BA4: LateIdCallSt
  loc_19B5BAC: var_1DC = 6
  loc_19B5BBB: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5BC2: LateIdCallSt
  loc_19B5BCA: var_1DC = 6
  loc_19B5BD3: var_1FC = &H640
  loc_19B5BDF: LateIdCallSt
  loc_19B5BE7: var_1DC = 0
  loc_19B5BF0: var_1FC = 7
  loc_19B5BF9: var_26C = "Narration"
  loc_19B5C02: LateIdCallSt
  loc_19B5C0A: var_1DC = 7
  loc_19B5C13: var_1FC = 0
  loc_19B5C1F: LateIdCallSt
  loc_19B5C27: var_1DC = 0
  loc_19B5C30: var_1FC = 8
  loc_19B5C39: var_26C = "Cash"
  loc_19B5C42: LateIdCallSt
  loc_19B5C4A: var_1DC = 8
  loc_19B5C59: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5C60: LateIdCallSt
  loc_19B5C68: var_1DC = 8
  loc_19B5C77: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5C7E: LateIdCallSt
  loc_19B5C86: var_1DC = 8
  loc_19B5C8F: var_1FC = &H578
  loc_19B5C9B: LateIdCallSt
  loc_19B5CA3: var_1DC = 0
  loc_19B5CAC: var_1FC = 9
  loc_19B5CB5: var_26C = "Cheque"
  loc_19B5CBE: LateIdCallSt
  loc_19B5CC6: var_1DC = 9
  loc_19B5CD5: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5CDC: LateIdCallSt
  loc_19B5CE4: var_1DC = 9
  loc_19B5CF3: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5CFA: LateIdCallSt
  loc_19B5D02: var_1DC = 9
  loc_19B5D0B: var_1FC = &H578
  loc_19B5D17: LateIdCallSt
  loc_19B5D1F: var_1DC = 0
  loc_19B5D28: var_1FC = &HC
  loc_19B5D31: var_26C = "Credit Card"
  loc_19B5D3A: LateIdCallSt
  loc_19B5D42: var_1DC = &HC
  loc_19B5D51: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5D58: LateIdCallSt
  loc_19B5D60: var_1DC = &HC
  loc_19B5D6F: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5D76: LateIdCallSt
  loc_19B5D7E: var_1DC = &HC
  loc_19B5D87: var_1FC = &H578
  loc_19B5D93: LateIdCallSt
  loc_19B5D9B: var_1DC = 0
  loc_19B5DA4: var_1FC = &HA
  loc_19B5DAD: var_26C = "Compl."
  loc_19B5DB6: LateIdCallSt
  loc_19B5DBE: var_1DC = &HA
  loc_19B5DCD: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5DD4: LateIdCallSt
  loc_19B5DDC: var_1DC = &HA
  loc_19B5DEB: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5DF2: LateIdCallSt
  loc_19B5DFA: var_1DC = &HA
  loc_19B5E03: var_1FC = &H578
  loc_19B5E0F: LateIdCallSt
  loc_19B5E17: var_1DC = 0
  loc_19B5E20: var_1FC = &HB
  loc_19B5E29: var_26C = "Company"
  loc_19B5E32: LateIdCallSt
  loc_19B5E3A: var_1DC = &HB
  loc_19B5E49: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5E50: LateIdCallSt
  loc_19B5E58: var_1DC = &HB
  loc_19B5E67: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5E6E: LateIdCallSt
  loc_19B5E76: var_1DC = &HB
  loc_19B5E7F: var_1FC = &H578
  loc_19B5E8B: LateIdCallSt
  loc_19B5E93: var_1DC = 0
  loc_19B5E9C: var_1FC = &HD
  loc_19B5EA5: var_26C = "Hold"
  loc_19B5EAE: LateIdCallSt
  loc_19B5EB6: var_1DC = &HD
  loc_19B5EC5: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5ECC: LateIdCallSt
  loc_19B5ED4: var_1DC = &HD
  loc_19B5EE3: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5EEA: LateIdCallSt
  loc_19B5EF2: var_1DC = &HD
  loc_19B5EFB: var_1FC = &H578
  loc_19B5F07: LateIdCallSt
  loc_19B5F0F: var_1DC = 0
  loc_19B5F18: var_1FC = &HE
  loc_19B5F21: var_26C = "Room"
  loc_19B5F2A: LateIdCallSt
  loc_19B5F32: var_1DC = &HE
  loc_19B5F41: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5F48: LateIdCallSt
  loc_19B5F50: var_1DC = &HE
  loc_19B5F5F: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5F66: LateIdCallSt
  loc_19B5F6E: var_1DC = &HE
  loc_19B5F77: var_1FC = &H578
  loc_19B5F83: LateIdCallSt
  loc_19B5F8B: var_1DC = 0
  loc_19B5F94: var_1FC = &HF
  loc_19B5F9D: var_26C = "Staff"
  loc_19B5FA6: LateIdCallSt
  loc_19B5FAE: var_1DC = &HF
  loc_19B5FBD: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5FC4: LateIdCallSt
  loc_19B5FCC: var_1DC = &HF
  loc_19B5FDB: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B5FE2: LateIdCallSt
  loc_19B5FEA: var_1DC = &HF
  loc_19B5FF3: var_1FC = &H578
  loc_19B5FFF: LateIdCallSt
  loc_19B6007: var_1DC = 0
  loc_19B6010: var_1FC = &H10
  loc_19B6019: var_26C = "Void"
  loc_19B6022: LateIdCallSt
  loc_19B602A: var_1DC = &H10
  loc_19B6039: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B6040: LateIdCallSt
  loc_19B6048: var_1DC = &H10
  loc_19B6057: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B605E: LateIdCallSt
  loc_19B6066: var_1DC = &H10
  loc_19B606F: var_1FC = &H578
  loc_19B607B: LateIdCallSt
  loc_19B6083: var_1DC = 0
  loc_19B608C: var_1FC = &H11
  loc_19B6095: var_26C = "Other"
  loc_19B609E: LateIdCallSt
  loc_19B60A6: var_1DC = &H11
  loc_19B60B5: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B60BC: LateIdCallSt
  loc_19B60C4: var_1DC = &H11
  loc_19B60D3: var_1FC = CVar(CInt(7)) 'Integer
  loc_19B60DA: LateIdCallSt
  loc_19B60E2: var_1DC = &H11
  loc_19B60EB: var_1FC = &H578
  loc_19B60F7: LateIdCallSt
  loc_19B60FF: var_1DC = 0
  loc_19B6108: var_1FC = &H11
  loc_19B6111: var_26C = "Name"
  loc_19B611A: LateIdCallSt
  loc_19B6122: var_1DC = &H11
  loc_19B612B: var_1FC = &H960
  loc_19B6137: LateIdCallSt
  loc_19B613F: var_1DC = 0
  loc_19B6148: var_1FC = &H13
  loc_19B6151: var_26C = "MARK"
  loc_19B615A: LateIdCallSt
  loc_19B6162: var_1DC = &H13
  loc_19B616B: var_1FC = 0
  loc_19B6177: LateIdCallSt
  loc_19B6181: Set var_364 = Nothing 
  loc_19B6199: If (var_94.RecordCount <= 0) Then
  loc_19B61A1:   global_152 = 0
  loc_19B61A4:   Exit Sub
  loc_19B61A5: End If
  loc_19B61A9: Set var_310 = Me.FGrid1
  loc_19B61D9: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_19B61DC:   var_1DC = vbNullString
  loc_19B61E6:   Set var_310 = Me.FGrid1
  loc_19B61F7: End If
  loc_19B622E: var_1DC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_19B624E: Me.FGrid1.Row = CVar(CLng(IIf(var_1DC, FRow, 1)))
  loc_19B629C: var_1DC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_19B62BC: Me.FGrid1.Col = CVar(CLng(IIf(var_1DC, Fcol, 1)))
  loc_19B62D8: Set var_90 = Nothing
  loc_19B62E0: Set var_94 = Nothing
  loc_19B62E5: IStAd
  loc_19B62E9: Exit Sub
End Sub

Public Sub CashierCollectionMIS(formName, FRow, Fcol) '1894884
  'Data Table: 577ED8
  Dim var_1D0 As String
  Dim var_250 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_270 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_1CA As Integer
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_E8 As Double
  Dim var_F0 As Double
  Dim var_94 As Recordset15
  Dim var_314 As Variant
  Dim var_1F0 As Variant
  Dim var_31C As Recordset15
  Dim var_334 As Double
  Dim var_120 As Double
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_118 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_140 As Double
  Dim var_148 As Double
  Dim var_90 As Recordset15
  Dim var_358 As MSHFlexGrid
  loc_1892141: var_250 = CVar("WHERE P.RestCode='" & global_208 & "' AND P.VDate Between ") 'String
  loc_1892159: VarLateMemCallLdRfVar
  loc_1892164: Proc_6_7_F25D88(var_240, Me.FGrid, 1)
  loc_189218E: VarLateMemCallLdRfVar
  loc_1892199: Proc_6_7_F25D88(var_2F0, Me.FGrid, 1)
  loc_18921C9: Call 0.Method_arg_54 ("Cashier Collection Summary", 0 & var_240 & " And ")
  loc_18921E1: var_220 = Me.FGrid
  loc_189220E: var_240 = Me.FGrid
  loc_1892228: Set var_314 = 1(1 & CStr(var_240.TextMatrix))
  loc_189222E: var_240.TextBox.Text = 1 & CStr(var_220.TextMatrix) & " To : "
  loc_189225B: Call Proc_249_115_10D96BC(New, var_314, 0)
  loc_1892263: Set var_90 = var_314
  loc_189227A: var_1D0 = "SELECT P.DocID, P.U_Name AS Name, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount FROM PayChargeH P " & CStr(1 & var_2F0)
  loc_189228A: Me.Connection15.Execute var_1D0 & " ORDER BY P.U_Name", var_220, -1
  loc_1892295: Set var_94 = var_314
  loc_18922A7: var_1CA = 0
  loc_18922AD: var_A0 = CDbl(0)
  loc_18922B3: var_A8 = CDbl(0)
  loc_18922B9: var_B0 = CDbl(0)
  loc_18922BF: var_B8 = CDbl(0)
  loc_18922C5: var_C0 = CDbl(0)
  loc_18922CB: var_C8 = CDbl(0)
  loc_18922D1: var_D0 = CDbl(0)
  loc_18922D7: var_D8 = CDbl(0)
  loc_18922DD: var_E0 = CDbl(0)
  loc_18922E3: var_E8 = CDbl(0)
  loc_18922E9: var_F0 = CDbl(0)
  loc_18922EF: var_88 = vbNullString
  loc_1892306: If (var_94.RecordCount > 0) Then
  loc_189230C:   var_94.MoveFirst
  loc_1892314:   Set var_31C = var_90 
  loc_1892318:   ' Referenced from: 1893B13
  loc_1892327:   If Not(var_94.EOF) Then
  loc_1892330:     var_1E0 = "Name"
  loc_1892357:     var_1F0 = CVar(var_1C8) 'String
  loc_1892367:     If CBool(var_94.Fields.Item(var_1E0).Value <> var_1F0) Then
  loc_1892373:       var_A8 = CDbl(0)
  loc_1892379:       var_B0 = CDbl(0)
  loc_189237F:       var_B8 = CDbl(0)
  loc_1892385:       var_C0 = CDbl(0)
  loc_189238B:       var_C8 = CDbl(0)
  loc_1892391:       var_D0 = CDbl(0)
  loc_1892397:       var_D8 = CDbl(0)
  loc_189239D:       var_E0 = CDbl(0)
  loc_18923A3:       var_E8 = CDbl(0)
  loc_18923A9:       var_F0 = CDbl(0)
  loc_18923B2:       var_1CA = (var_1CA + 1)
  loc_18923C0:       var_31C.AddNew var_1E0, var_1F0
  loc_18923EA:       var_31C.Fields.Item("mLine").Value = vbNullString
  loc_1892425:       var_31C.Fields.Item("SrNo").Value = CVar(CStr(var_1CA) & ".")
  loc_1892456:       var_220 = CVar(var_94.Fields.Item("Name")) 'Address
  loc_189247A:       var_31C.Fields.Item("Name").Value = var_220
  loc_1892496:       Proc_6_47_EF59D0(var_220, CDbl(0), var_1CA, var_F0, var_E8, var_E0, var_D8)
  loc_18924BE:       var_31C.Fields.Item("BillAmount").Value = var_220
  loc_18924EF:       var_220 = var_94.Fields.Item("BillAmount").Value
  loc_1892500:       var_334 = Val(CStr(var_220))
  loc_189250A:       var_A0 = (var_A0 + var_334)
  loc_1892525:       Proc_6_47_EF59D0(var_220, CDbl(0), CDbl(0), var_334, var_D0)
  loc_189254D:       var_31C.Fields.Item("BillAmount").Value = var_220
  loc_1892582:       var_230 = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_1892595:       var_344 = Ucase(var_230) 'Variant
  loc_18925AE:       If (var_344 = "CREDIT CARD") Then
  loc_18925DE:         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C8), var_C8)
  loc_18925E6:         var_240 = (var_C0 + var_230)
  loc_18925EB:         var_C8 = CSng(Ucase(var_230))
  loc_1892627:         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_120), var_C8)
  loc_189262F:         var_240 = (var_B8 + var_230)
  loc_1892634:         var_120 = CSng(Ucase(var_230))
  loc_189266A:         var_31C.Fields.Item("CreditCard").Value = CVar(var_C8)
  loc_1892679:       Else
  loc_1892684:         If (var_344 = "CASH") Then
  loc_18926B4:           Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_A8))
  loc_18926BC:           var_240 = (var_120 + var_230)
  loc_18926C1:           var_A8 = CSng(Ucase(var_230))
  loc_18926FD:           Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_100))
  loc_1892705:           var_240 = (var_A8 + var_230)
  loc_189270A:           var_100 = CSng(Ucase(var_230))
  loc_1892739:           var_230 = Format(var_A8, "0.00")
  loc_1892761:           var_31C.Fields.Item("Cash").Value = var_230
  loc_1892777:         Else
  loc_1892782:           If (var_344 = "CHEQUE") Then
  loc_18927B2:             Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B0), 1)
  loc_18927BA:             var_240 = (1 + var_230)
  loc_18927BF:             var_B0 = CSng(Ucase(var_230))
  loc_18927FB:             Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_108), var_B0)
  loc_1892803:             var_240 = (var_100 + var_230)
  loc_1892808:             var_108 = CSng(Ucase(var_230))
  loc_1892837:             var_230 = Format(var_B0, "0.00")
  loc_189285F:             var_31C.Fields.Item("Cheque").Value = var_230
  loc_1892875:           Else
  loc_1892880:             If (var_344 = "COMPLEMENTARY") Then
  loc_18928B0:               Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B8), 1)
  loc_18928B8:               var_240 = (1 + var_230)
  loc_18928BD:               var_B8 = CSng(Ucase(var_230))
  loc_18928F9:               Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_110), var_B8)
  loc_1892901:               var_240 = (var_108 + var_230)
  loc_1892906:               var_110 = CSng(Ucase(var_230))
  loc_1892935:               var_230 = Format(var_B8, "0.00")
  loc_189295D:               var_31C.Fields.Item("Complementary").Value = var_230
  loc_1892973:             Else
  loc_189297E:               If (var_344 = "COMPANY") Then
  loc_18929AE:                 Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C0), 1)
  loc_18929B6:                 var_240 = (1 + var_230)
  loc_18929BB:                 var_C0 = CSng(Ucase(var_230))
  loc_18929F7:                 Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_118), var_C0)
  loc_18929FF:                 var_240 = (var_110 + var_230)
  loc_1892A04:                 var_118 = CSng(Ucase(var_230))
  loc_1892A33:                 var_230 = Format(var_C0, "0.00")
  loc_1892A5B:                 var_31C.Fields.Item("Company").Value = var_230
  loc_1892A71:               Else
  loc_1892A7C:                 If (var_344 = "HOLD") Then
  loc_1892AAC:                   Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D0), 1)
  loc_1892AB4:                   var_240 = (1 + var_230)
  loc_1892AB9:                   var_D0 = CSng(Ucase(var_230))
  loc_1892AF5:                   Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_128), var_D0)
  loc_1892AFD:                   var_240 = (var_118 + var_230)
  loc_1892B02:                   var_128 = CSng(Ucase(var_230))
  loc_1892B31:                   var_230 = Format(var_D0, "0.00")
  loc_1892B59:                   var_31C.Fields.Item("Hold").Value = var_230
  loc_1892B6F:                 Else
  loc_1892B7A:                   If (var_344 = "ROOM") Then
  loc_1892BAA:                     Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D8), 1)
  loc_1892BB2:                     var_240 = (1 + var_230)
  loc_1892BB7:                     var_D8 = CSng(Ucase(var_230))
  loc_1892BF3:                     Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_130), var_D8)
  loc_1892BFB:                     var_240 = (var_128 + var_230)
  loc_1892C00:                     var_130 = CSng(Ucase(var_230))
  loc_1892C2F:                     var_230 = Format(var_D8, "0.00")
  loc_1892C57:                     var_31C.Fields.Item("Room").Value = var_230
  loc_1892C6D:                   Else
  loc_1892C78:                     If (var_344 = "STAFF") Then
  loc_1892CA8:                       Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E0), 1)
  loc_1892CB0:                       var_240 = (1 + var_230)
  loc_1892CB5:                       var_E0 = CSng(Ucase(var_230))
  loc_1892CF1:                       Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_138), var_E0)
  loc_1892CF9:                       var_240 = (var_130 + var_230)
  loc_1892CFE:                       var_138 = CSng(Ucase(var_230))
  loc_1892D2D:                       var_230 = Format(var_E0, "0.00")
  loc_1892D55:                       var_31C.Fields.Item("Staff").Value = var_230
  loc_1892D6B:                     Else
  loc_1892D76:                       If (var_344 = "VOID") Then
  loc_1892DA6:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E8), 1)
  loc_1892DAE:                         var_240 = (1 + var_230)
  loc_1892DB3:                         var_E8 = CSng(Ucase(var_230))
  loc_1892DEF:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_140), var_E8)
  loc_1892DF7:                         var_240 = (var_138 + var_230)
  loc_1892DFC:                         var_140 = CSng(Ucase(var_230))
  loc_1892E2B:                         var_230 = Format(var_E8, "0.00")
  loc_1892E53:                         var_31C.Fields.Item("Void").Value = var_230
  loc_1892E69:                       Else
  loc_1892E96:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_F0), 1)
  loc_1892E9E:                         var_240 = (1 + var_230)
  loc_1892EA3:                         var_F0 = CSng(Ucase(var_230))
  loc_1892EDF:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_148), var_F0)
  loc_1892EE7:                         var_240 = (var_140 + var_230)
  loc_1892EEC:                         var_148 = CSng(Ucase(var_230))
  loc_1892F43:                         var_31C.Fields.Item("Other").Value = Format(var_F0, "0.00")
  loc_1892F56:                       End If
  loc_1892F56:                     End If
  loc_1892F56:                   End If
  loc_1892F56:                 End If
  loc_1892F56:               End If
  loc_1892F56:             End If
  loc_1892F56:           End If
  loc_1892F56:         End If
  loc_1892F56:       End If
  loc_1892F56:       var_1F0 = "*"
  loc_1892F5F:       var_1E0 = "Mark"
  loc_1892F7B:       var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_1892F92:       var_31C.Update var_1E0, var_1F0
  loc_1892F9A:     Else
  loc_1892FD7:       If CBool(var_94.Fields.Item("DocID").Value <> CVar(var_88)) Then
  loc_1892FFC:         var_220 = var_94.Fields.Item("BillAmount").Value
  loc_189300D:         var_334 = Val(CStr(var_220))
  loc_1893017:         var_A0 = (var_A0 + var_334)
  loc_1893032:         Proc_6_47_EF59D0(var_220, CDbl(0), CDbl(0), var_334, 1)
  loc_189305A:         var_31C.Fields.Item("BillAmount").Value = var_220
  loc_1893069:       End If
  loc_189308F:       var_230 = Trim(CVar(var_94.Fields.Item("PayType")))
  loc_18930A2:       var_354 = Ucase(var_230) 'Variant
  loc_18930BB:       If (var_354 = "CREDIT CARD") Then
  loc_18930EB:         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C8), 1)
  loc_18930F3:         var_240 = (var_148 + var_230)
  loc_18930F8:         var_C8 = CSng(Ucase(var_230))
  loc_1893134:         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_120))
  loc_189313C:         var_240 = (var_C8 + var_230)
  loc_1893141:         var_120 = CSng(Ucase(var_230))
  loc_1893170:         var_230 = Format(var_C8, "0.00")
  loc_1893198:         var_31C.Fields.Item("CreditCard").Value = var_230
  loc_18931AE:       Else
  loc_18931B9:         If (var_354 = "CASH") Then
  loc_18931E9:           Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_100), 1)
  loc_18931F1:           var_240 = (1 + var_230)
  loc_18931F6:           var_100 = CSng(Ucase(var_230))
  loc_1893232:           Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_A8), var_100)
  loc_189323A:           var_240 = (var_120 + var_230)
  loc_189323F:           var_A8 = CSng(Ucase(var_230))
  loc_189326E:           var_230 = Format(var_A8, "0.00")
  loc_1893296:           var_31C.Fields.Item("Cash").Value = var_230
  loc_18932AC:         Else
  loc_18932B7:           If (var_354 = "CHEQUE") Then
  loc_18932E7:             Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B0), 1)
  loc_18932EF:             var_240 = (1 + var_230)
  loc_18932F4:             var_B0 = CSng(Ucase(var_230))
  loc_1893330:             Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_108), var_B0)
  loc_1893338:             var_240 = (var_A8 + var_230)
  loc_189333D:             var_108 = CSng(Ucase(var_230))
  loc_189336C:             var_230 = Format(var_B0, "0.00")
  loc_1893394:             var_31C.Fields.Item("Cheque").Value = var_230
  loc_18933AA:           Else
  loc_18933B5:             If (var_354 = "COMPLEMENTARY") Then
  loc_18933E5:               Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_B8), 1)
  loc_18933ED:               var_240 = (1 + var_230)
  loc_18933F2:               var_B8 = CSng(Ucase(var_230))
  loc_189342E:               Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_110), var_B8)
  loc_1893436:               var_240 = (var_108 + var_230)
  loc_189343B:               var_110 = CSng(Ucase(var_230))
  loc_189346A:               var_230 = Format(var_B8, "0.00")
  loc_1893492:               var_31C.Fields.Item("Complementary").Value = var_230
  loc_18934A8:             Else
  loc_18934B3:               If (var_354 = "COMPANY") Then
  loc_18934E3:                 Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_C0), 1)
  loc_18934EB:                 var_240 = (1 + var_230)
  loc_18934F0:                 var_C0 = CSng(Ucase(var_230))
  loc_189352C:                 Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_118), var_C0)
  loc_1893534:                 var_240 = (var_110 + var_230)
  loc_1893539:                 var_118 = CSng(Ucase(var_230))
  loc_1893568:                 var_230 = Format(var_C0, "0.00")
  loc_1893590:                 var_31C.Fields.Item("Company").Value = var_230
  loc_18935A6:               Else
  loc_18935B1:                 If (var_354 = "HOLD") Then
  loc_18935E1:                   Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D0), 1)
  loc_18935E9:                   var_240 = (1 + var_230)
  loc_18935EE:                   var_D0 = CSng(Ucase(var_230))
  loc_189362A:                   Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_128), var_D0)
  loc_1893632:                   var_240 = (var_118 + var_230)
  loc_1893637:                   var_128 = CSng(Ucase(var_230))
  loc_1893666:                   var_230 = Format(var_D0, "0.00")
  loc_189368E:                   var_31C.Fields.Item("Hold").Value = var_230
  loc_18936A4:                 Else
  loc_18936AF:                   If (var_354 = "ROOM") Then
  loc_18936DF:                     Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_D8), 1)
  loc_18936E7:                     var_240 = (1 + var_230)
  loc_18936EC:                     var_D8 = CSng(Ucase(var_230))
  loc_1893728:                     Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_130), var_D8)
  loc_1893730:                     var_240 = (var_128 + var_230)
  loc_1893735:                     var_130 = CSng(Ucase(var_230))
  loc_1893764:                     var_230 = Format(var_D8, "0.00")
  loc_189378C:                     var_31C.Fields.Item("Room").Value = var_230
  loc_18937A2:                   Else
  loc_18937AD:                     If (var_354 = "STAFF") Then
  loc_18937DD:                       Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E0), 1)
  loc_18937E5:                       var_240 = (1 + var_230)
  loc_18937EA:                       var_E0 = CSng(Ucase(var_230))
  loc_1893826:                       Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_138), var_E0)
  loc_189382E:                       var_240 = (var_130 + var_230)
  loc_1893833:                       var_138 = CSng(Ucase(var_230))
  loc_1893862:                       var_230 = Format(var_E0, "0.00")
  loc_189388A:                       var_31C.Fields.Item("Staff").Value = var_230
  loc_18938A0:                     Else
  loc_18938AB:                       If (var_354 = "VOID") Then
  loc_18938DB:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_E8), 1)
  loc_18938E3:                         var_240 = (1 + var_230)
  loc_18938E8:                         var_E8 = CSng(Ucase(var_230))
  loc_1893924:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_140), var_E8)
  loc_189392C:                         var_240 = (var_138 + var_230)
  loc_1893931:                         var_140 = CSng(Ucase(var_230))
  loc_1893960:                         var_230 = Format(var_E8, "0.00")
  loc_1893988:                         var_31C.Fields.Item("Void").Value = var_230
  loc_189399E:                       Else
  loc_18939CB:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_F0), 1)
  loc_18939D3:                         var_240 = (1 + var_230)
  loc_18939D8:                         var_F0 = CSng(Ucase(var_230))
  loc_1893A14:                         Proc_6_39_E7C810(var_230, CVar(var_94.Fields.Item("Amount")), CVar(var_148), var_F0)
  loc_1893A1C:                         var_240 = (var_140 + var_230)
  loc_1893A21:                         var_148 = CSng(Ucase(var_230))
  loc_1893A3A:                         var_1F0 = "0.00"
  loc_1893A48:                         var_1E0 = var_F0
  loc_1893A78:                         var_31C.Fields.Item("Other").Value = Format(var_1E0, var_1F0)
  loc_1893A8B:                       End If
  loc_1893A8B:                     End If
  loc_1893A8B:                   End If
  loc_1893A8B:                 End If
  loc_1893A8B:               End If
  loc_1893A8B:             End If
  loc_1893A8B:           End If
  loc_1893A8B:         End If
  loc_1893A8B:       End If
  loc_1893A96:       var_31C.Update var_1E0, var_1F0
  loc_1893A9B:     End If
  loc_1893AC6:     var_88 = CStr(var_94.Fields.Item("DocID").Value)
  loc_1893AD9:     var_1E0 = "Name"
  loc_1893AF5:     var_220 = var_94.Fields.Item(var_1E0).Value
  loc_1893AFE:     var_1C8 = CStr(var_220)
  loc_1893B0E:     var_94.MoveNext
  loc_1893B13:     GoTo loc_1892318
  loc_1893B16:   End If
  loc_1893B21:   var_31C.AddNew var_1E0, var_1F0
  loc_1893B4B:   var_31C.Fields.Item("mLine").Value = "BL"
  loc_1893B57:   var_1F0 = "Total-->"
  loc_1893B7C:   var_31C.Fields.Item("Name").Value = "BL"
  loc_1893B93:   Proc_6_47_EF59D0(var_220, var_F8, 1, 1)
  loc_1893BDB:   var_31C.Fields.Item("BillAmount").Value = Format(var_220, "0.00")
  loc_1893C38:   var_31C.Fields.Item("Cash").Value = Format(var_100, "0.00")
  loc_1893C93:   var_31C.Fields.Item("Cheque").Value = Format(var_108, "0.00")
  loc_1893CEE:   var_31C.Fields.Item("Complementary").Value = Format(var_110, "0.00")
  loc_1893D49:   var_31C.Fields.Item("Company").Value = Format(var_118, "0.00")
  loc_1893DA4:   var_31C.Fields.Item("CreditCard").Value = Format(var_120, "0.00")
  loc_1893DFF:   var_31C.Fields.Item("Hold").Value = Format(var_128, "0.00")
  loc_1893E5A:   var_31C.Fields.Item("Room").Value = Format(var_130, "0.00")
  loc_1893EB5:   var_31C.Fields.Item("Staff").Value = Format(var_138, "0.00")
  loc_1893F10:   var_31C.Fields.Item("Void").Value = Format(var_140, "0.00")
  loc_1893F6B:   var_31C.Fields.Item("Other").Value = Format(var_148, "0.00")
  loc_1893F7E:   var_1F0 = vbNullString
  loc_1893F87:   var_1E0 = "Mark"
  loc_1893FA3:   var_31C.Fields.Item(var_1E0).Value = var_1F0
  loc_1893FBA:   var_31C.Update var_1E0, var_1F0
  loc_1893FC1:   Set var_31C = Nothing 
  loc_1893FC5: End If
  loc_1893FED: Me.FGrid1.Rows = 2
  loc_1894009: If (var_90.RecordCount > 0) Then
  loc_1894012:   CVarUnk
  loc_1894017:   VerifyVarObj
  loc_189401D:   Set var_314 = Me.FGrid1
  loc_1894023:   LateIdStAd
  loc_1894053:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_90, Me.FGrid1.Text, 1, 1)
  loc_189405E: End If
  loc_1894062: Set var_358 = Me.FGrid1
  loc_189406E: var_358.Tag = "CashierCollectionMIS"
  loc_189407F: var_358.Cols = &H10
  loc_1894084: var_1E0 = 0
  loc_189408D: var_200 = 0
  loc_1894096: var_270 = "mLine"
  loc_189409F: LateIdCallSt
  loc_18940A7: var_1E0 = 0
  loc_18940B0: var_200 = 0
  loc_18940BC: LateIdCallSt
  loc_18940C4: var_1E0 = 0
  loc_18940CD: var_200 = 1
  loc_18940D6: var_270 = "SNo."
  loc_18940DF: LateIdCallSt
  loc_18940E7: var_1E0 = 1
  loc_18940F0: var_200 = &H1F4
  loc_18940FC: LateIdCallSt
  loc_1894104: var_1E0 = 0
  loc_189410D: var_200 = 2
  loc_1894116: var_270 = "Doc Id"
  loc_189411F: LateIdCallSt
  loc_1894127: var_1E0 = 2
  loc_1894130: var_200 = 0
  loc_189413C: LateIdCallSt
  loc_1894144: var_1E0 = 0
  loc_189414D: var_200 = 3
  loc_1894156: var_270 = "Cashier"
  loc_189415F: LateIdCallSt
  loc_1894167: var_1E0 = 3
  loc_1894170: var_200 = &H960
  loc_189417C: LateIdCallSt
  loc_1894184: var_1E0 = 0
  loc_189418D: var_200 = 4
  loc_1894196: var_270 = "Bill Amount"
  loc_189419F: LateIdCallSt
  loc_18941A7: var_1E0 = 4
  loc_18941B6: var_200 = CVar(CInt(7)) 'Integer
  loc_18941BD: LateIdCallSt
  loc_18941C5: var_1E0 = 4
  loc_18941D4: var_200 = CVar(CInt(7)) 'Integer
  loc_18941DB: LateIdCallSt
  loc_18941E3: var_1E0 = 4
  loc_18941EC: var_200 = &H708
  loc_18941F8: LateIdCallSt
  loc_1894200: var_1E0 = 0
  loc_1894209: var_200 = 5
  loc_1894212: var_270 = "Cash"
  loc_189421B: LateIdCallSt
  loc_1894223: var_1E0 = 5
  loc_1894232: var_200 = CVar(CInt(7)) 'Integer
  loc_1894239: LateIdCallSt
  loc_1894241: var_1E0 = 5
  loc_1894250: var_200 = CVar(CInt(7)) 'Integer
  loc_1894257: LateIdCallSt
  loc_189425F: var_1E0 = 5
  loc_1894268: var_200 = &H578
  loc_1894274: LateIdCallSt
  loc_189427C: var_1E0 = 0
  loc_1894285: var_200 = 6
  loc_189428E: var_270 = "Cheque"
  loc_1894297: LateIdCallSt
  loc_189429F: var_1E0 = 6
  loc_18942AE: var_200 = CVar(CInt(7)) 'Integer
  loc_18942B5: LateIdCallSt
  loc_18942BD: var_1E0 = 6
  loc_18942CC: var_200 = CVar(CInt(7)) 'Integer
  loc_18942D3: LateIdCallSt
  loc_18942DB: var_1E0 = 6
  loc_18942E4: var_200 = &H578
  loc_18942F0: LateIdCallSt
  loc_18942F8: var_1E0 = 0
  loc_1894301: var_200 = 9
  loc_189430A: var_270 = "Credit Card"
  loc_1894313: LateIdCallSt
  loc_189431B: var_1E0 = 9
  loc_189432A: var_200 = CVar(CInt(7)) 'Integer
  loc_1894331: LateIdCallSt
  loc_1894339: var_1E0 = 9
  loc_1894348: var_200 = CVar(CInt(7)) 'Integer
  loc_189434F: LateIdCallSt
  loc_1894357: var_1E0 = 9
  loc_1894360: var_200 = &H578
  loc_189436C: LateIdCallSt
  loc_1894374: var_1E0 = 0
  loc_189437D: var_200 = 7
  loc_1894386: var_270 = "Compl."
  loc_189438F: LateIdCallSt
  loc_1894397: var_1E0 = 7
  loc_18943A6: var_200 = CVar(CInt(7)) 'Integer
  loc_18943AD: LateIdCallSt
  loc_18943B5: var_1E0 = 7
  loc_18943C4: var_200 = CVar(CInt(7)) 'Integer
  loc_18943CB: LateIdCallSt
  loc_18943D3: var_1E0 = 7
  loc_18943DC: var_200 = &H578
  loc_18943E8: LateIdCallSt
  loc_18943F0: var_1E0 = 0
  loc_18943F9: var_200 = 8
  loc_1894402: var_270 = "Company"
  loc_189440B: LateIdCallSt
  loc_1894413: var_1E0 = 8
  loc_1894422: var_200 = CVar(CInt(7)) 'Integer
  loc_1894429: LateIdCallSt
  loc_1894431: var_1E0 = 8
  loc_1894440: var_200 = CVar(CInt(7)) 'Integer
  loc_1894447: LateIdCallSt
  loc_189444F: var_1E0 = 8
  loc_1894458: var_200 = &H578
  loc_1894464: LateIdCallSt
  loc_189446C: var_1E0 = 0
  loc_1894475: var_200 = &HA
  loc_189447E: var_270 = "Hold"
  loc_1894487: LateIdCallSt
  loc_189448F: var_1E0 = &HA
  loc_189449E: var_200 = CVar(CInt(7)) 'Integer
  loc_18944A5: LateIdCallSt
  loc_18944AD: var_1E0 = &HA
  loc_18944BC: var_200 = CVar(CInt(7)) 'Integer
  loc_18944C3: LateIdCallSt
  loc_18944CB: var_1E0 = &HA
  loc_18944D4: var_200 = &H578
  loc_18944E0: LateIdCallSt
  loc_18944E8: var_1E0 = 0
  loc_18944F1: var_200 = &HB
  loc_18944FA: var_270 = "Room"
  loc_1894503: LateIdCallSt
  loc_189450B: var_1E0 = &HB
  loc_189451A: var_200 = CVar(CInt(7)) 'Integer
  loc_1894521: LateIdCallSt
  loc_1894529: var_1E0 = &HB
  loc_1894538: var_200 = CVar(CInt(7)) 'Integer
  loc_189453F: LateIdCallSt
  loc_1894547: var_1E0 = &HB
  loc_1894550: var_200 = &H578
  loc_189455C: LateIdCallSt
  loc_1894564: var_1E0 = 0
  loc_189456D: var_200 = &HC
  loc_1894576: var_270 = "Staff"
  loc_189457F: LateIdCallSt
  loc_1894587: var_1E0 = &HC
  loc_1894596: var_200 = CVar(CInt(7)) 'Integer
  loc_189459D: LateIdCallSt
  loc_18945A5: var_1E0 = &HC
  loc_18945B4: var_200 = CVar(CInt(7)) 'Integer
  loc_18945BB: LateIdCallSt
  loc_18945C3: var_1E0 = &HC
  loc_18945CC: var_200 = &H578
  loc_18945D8: LateIdCallSt
  loc_18945E0: var_1E0 = 0
  loc_18945E9: var_200 = &HD
  loc_18945F2: var_270 = "Void"
  loc_18945FB: LateIdCallSt
  loc_1894603: var_1E0 = &HD
  loc_1894612: var_200 = CVar(CInt(7)) 'Integer
  loc_1894619: LateIdCallSt
  loc_1894621: var_1E0 = &HD
  loc_1894630: var_200 = CVar(CInt(7)) 'Integer
  loc_1894637: LateIdCallSt
  loc_189463F: var_1E0 = &HD
  loc_1894648: var_200 = &H578
  loc_1894654: LateIdCallSt
  loc_189465C: var_1E0 = 0
  loc_1894665: var_200 = &HE
  loc_189466E: var_270 = "Other"
  loc_1894677: LateIdCallSt
  loc_189467F: var_1E0 = &HE
  loc_189468E: var_200 = CVar(CInt(7)) 'Integer
  loc_1894695: LateIdCallSt
  loc_189469D: var_1E0 = &HE
  loc_18946AC: var_200 = CVar(CInt(7)) 'Integer
  loc_18946B3: LateIdCallSt
  loc_18946BB: var_1E0 = &HE
  loc_18946C4: var_200 = &H578
  loc_18946D0: LateIdCallSt
  loc_18946D8: var_1E0 = 0
  loc_18946E1: var_200 = &HF
  loc_18946EA: var_270 = "MARK"
  loc_18946F3: LateIdCallSt
  loc_18946FB: var_1E0 = &HF
  loc_1894704: var_200 = 0
  loc_1894710: LateIdCallSt
  loc_189471A: Set var_358 = Nothing 
  loc_1894732: If (var_94.RecordCount <= 0) Then
  loc_189473A:   global_152 = 0
  loc_189473D:   Exit Sub
  loc_189473E: End If
  loc_1894742: Set var_314 = Me.FGrid1
  loc_1894772: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1894775:   var_1E0 = vbNullString
  loc_189477F:   Set var_314 = Me.FGrid1
  loc_1894790: End If
  loc_18947C7: var_1E0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_18947E7: Me.FGrid1.Row = CVar(CLng(IIf(var_1E0, FRow, 1)))
  loc_1894835: var_1E0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1894855: Me.FGrid1.Col = CVar(CLng(IIf(var_1E0, Fcol, 1)))
  loc_1894871: Set var_90 = Nothing
  loc_1894879: Set var_94 = Nothing
  loc_189487E: IStAd
  loc_1894882: Exit Sub
End Sub

Public Sub RetBack(mParamForm) '10D4070
  'Data Table: 577ED8
  loc_10D3D63: On Error Goto loc_10D406A
  loc_10D3D6C: var_8C = global_52
  loc_10D3D77: If (var_8C = "SalesRegister") Then
  loc_10D3D87:   Set var_90 = mParamForm 
  loc_10D3D8E:   Call SalesRegHall(var_90, 0, 0)
  loc_10D3D99:   Set var_88 = var_90
  loc_10D3DA2: Else
  loc_10D3DAA:   If (var_8C = "PartyOutStanding") Then
  loc_10D3DBA:     Set var_90 = var_88 
  loc_10D3DC1:     Call OutStanding(var_90, 0, 0)
  loc_10D3DCC:     Set var_88 = var_90
  loc_10D3DD5:   Else
  loc_10D3DDD:     If (var_8C = "PartyWiseOutStanding") Then
  loc_10D3DED:       Set var_90 = var_88 
  loc_10D3DF4:       Call PartyOutStanding(var_90, 0, 0)
  loc_10D3DFF:       Set var_88 = var_90
  loc_10D3E08:     Else
  loc_10D3E10:       If (var_8C = "CashierCollection") Then
  loc_10D3E20:         Set var_90 = var_88 
  loc_10D3E27:         Call CashierCollection(var_90, 0, 0)
  loc_10D3E32:         Set var_88 = var_90
  loc_10D3E3B:       Else
  loc_10D3E43:         If (var_8C = "CashierCollectionMIS") Then
  loc_10D3E53:           Set var_90 = var_88 
  loc_10D3E5A:           Call CashierCollectionMIS(var_90, 0, 0)
  loc_10D3E65:           Set var_88 = var_90
  loc_10D3E6E:         Else
  loc_10D3E76:           If (var_8C = "BookingDetail") Then
  loc_10D3E86:             Set var_90 = var_88 
  loc_10D3E8D:             Call BookingDetail(var_90, 0, 0)
  loc_10D3E98:             Set var_88 = var_90
  loc_10D3EA1:           Else
  loc_10D3EA9:             If (var_8C = "SettleRepHall") Then
  loc_10D3EB9:               Set var_90 = var_88 
  loc_10D3EC0:               Call SettleReport(var_90, 0, 0)
  loc_10D3ECB:               Set var_88 = var_90
  loc_10D3ED4:             Else
  loc_10D3EDC:               If (var_8C = "TaxReportHall") Then
  loc_10D3EEC:                 Set var_90 = var_88 
  loc_10D3EF3:                 Call TaxReportHall(var_90, 0, 0)
  loc_10D3EFE:                 Set var_88 = var_90
  loc_10D3F07:               Else
  loc_10D3F0F:                 If (var_8C = "TaxwiseDetailReportHall") Then
  loc_10D3F1F:                   Set var_90 = var_88 
  loc_10D3F26:                   Call TaxDetailsBanq(var_90, 0, 0)
  loc_10D3F31:                   Set var_88 = var_90
  loc_10D3F3A:                 Else
  loc_10D3F42:                   If (var_8C = "TaxSummaryHall") Then
  loc_10D3F52:                     Set var_90 = var_88 
  loc_10D3F59:                     Call TaxSummaryHall(var_90, 0, 0)
  loc_10D3F64:                     Set var_88 = var_90
  loc_10D3F6D:                   Else
  loc_10D3F75:                     If (var_8C = "DailyFuncSheet") Then
  loc_10D3F85:                       Set var_90 = var_88 
  loc_10D3F8C:                       Call DailyFuncSheet(var_90, 0, 0)
  loc_10D3F97:                       Set var_88 = var_90
  loc_10D3FA0:                     Else
  loc_10D3FA8:                       If (var_8C = "CoverAnalysis") Then
  loc_10D3FB8:                         Set var_90 = var_88 
  loc_10D3FBF:                         Call CoverAnalysis(var_90, 0, 0)
  loc_10D3FCA:                         Set var_88 = var_90
  loc_10D3FD3:                       Else
  loc_10D3FDB:                         If (var_8C = "ItemWiseSaleHall") Then
  loc_10D3FEB:                           Set var_90 = var_88 
  loc_10D3FF2:                           Call ItemWiseSaleHall(var_90, 0, 0)
  loc_10D3FFD:                           Set var_88 = var_90
  loc_10D4006:                         Else
  loc_10D400E:                           If (var_8C = "CompanyWiseSaleHall") Then
  loc_10D401E:                             Set var_90 = var_88 
  loc_10D4025:                             Call CompanyWiseSaleHall(var_90, 0, 0)
  loc_10D4030:                             Set var_88 = var_90
  loc_10D4039:                           Else
  loc_10D4041:                             If (var_8C = "FunctionWiseItemDetail") Then
  loc_10D4051:                               Set var_90 = var_88 
  loc_10D4058:                               Call FunctionWiseItemDetail(var_90, 0, 0)
  loc_10D4063:                               Set var_88 = var_90
  loc_10D4069:                             End If
  loc_10D4069:                           End If
  loc_10D4069:                         End If
  loc_10D4069:                       End If
  loc_10D4069:                     End If
  loc_10D4069:                   End If
  loc_10D4069:                 End If
  loc_10D4069:               End If
  loc_10D4069:             End If
  loc_10D4069:           End If
  loc_10D4069:         End If
  loc_10D4069:       End If
  loc_10D4069:     End If
  loc_10D4069:   End If
  loc_10D4069: End If
  loc_10D4069: Exit Sub
  loc_10D406A: ' Referenced from: 10D3D63
  loc_10D406A: Proc_6_60_E62BC4()
  loc_10D406F: Exit Sub
End Sub

Public Sub TaxDetailsBanq(formName, FRow, Fcol) '1594F20
  'Data Table: 577ED8
  Dim var_1C4 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_244 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_278 As String
  Dim var_164 As Variant
  Dim var_28C As Variant
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_D4 As Double
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_CC As Double
  Dim var_2A4 As Recordset15
  Dim var_2B0 As Recordset15
  Dim var_2B4 As Recordset15
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_88 As Recordset15
  Dim var_2C4 As MSHFlexGrid
  loc_1593DB0: var_1C4 = " Hallsale2.DELFLAG='N' AND Hallsale2.VDate Between "
  loc_1593DCA: VarLateMemCallLdRfVar
  loc_1593DD5: Proc_6_7_F25D88(var_1B4, Me.FGrid, 1)
  loc_1593DE6: var_1F4 = 0 & var_1B4 & " And " 
  loc_1593DFF: VarLateMemCallLdRfVar
  loc_1593E0A: Proc_6_7_F25D88(var_264, Me.FGrid, 1)
  loc_1593E2F: var_154 = 1
  loc_1593E58: If (Me.Check1.Value = 0) Then
  loc_1593E71:   var_154 = ") "
  loc_1593E7B:   var_90 = CStr(CVar(CStr(1 & var_264) & " And Hallsale2.TaxCode In (") & Me.GridString1 & var_154)
  loc_1593E89: End If
  loc_1593E8F: Call 0.Method_arg_54 ("Taxwise Details ", var_154)
  loc_1593E97: var_154 = 0
  loc_1593ED4: var_1B4 = Me.FGrid
  loc_1593EEE: Set var_28C = 1(1 & CStr(var_1B4.TextMatrix))
  loc_1593EF4: var_1B4.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1593F14: var_154 = 1
  loc_1593F3D: If (Me.Check1.Value = 0) Then
  loc_1593F43:   var_194 = Me.FormulaString1
  loc_1593F4A:   var_154 = "For Tax : "
  loc_1593F77:   Set var_28C = Me.Text2
  loc_1593F7D:   Me.Text2.Text = CStr(var_154 & Left(var_194, &H73) & vbNullString)
  loc_1593F96: Else
  loc_1593F9D:   Set var_28C = Me.Text2
  loc_1593FA3:   var_28C.Text = "For Tax :   All"
  loc_1593FAB: End If
  loc_1593FB8: Call Proc_249_107_FDF080(New, var_28C, var_194, var_154)
  loc_1593FC0: Set var_88 = var_28C
  loc_1593FD7: var_278 = "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt,Hallsale2.restcode,max(Depart.Name) as RestName,max(Vtype) as Vtype  from (Hallsale2 left join revmast on revmast.code=Hallsale2.Taxcode) left join depart on depart.code=Hallsale2.RestCode where " & var_90
  loc_1593FE7: Me.Connection15.Execute var_278 & " group by Hallsale2.restcode,revmast.code,TaxPer order by Hallsale2.restcode,max(revmast.Name),TaxPer", var_194, -1
  loc_1593FF2: Set var_8C = var_28C
  loc_1594005: var_104 = CDbl(0)
  loc_159400B: var_10C = CDbl(0)
  loc_1594011: var_114 = CDbl(0)
  loc_1594017: var_11C = CDbl(0)
  loc_159401D: var_124 = CDbl(0)
  loc_1594023: var_12C = CDbl(0)
  loc_1594029: var_D4 = CDbl(0)
  loc_159402F: var_DC = CDbl(0)
  loc_1594035: var_E4 = CDbl(0)
  loc_159404C: If (var_8C.RecordCount > 0) Then
  loc_1594052:   var_8C.MoveFirst
  loc_1594057:   ' Referenced from: 15948EF
  loc_1594066:   If Not(var_8C.EOF) Then
  loc_159406C:     var_A4 = CDbl(0)
  loc_1594072:     var_AC = CDbl(0)
  loc_1594078:     var_B4 = CDbl(0)
  loc_159407E:     var_BC = CDbl(0)
  loc_1594084:     var_C4 = CDbl(0)
  loc_159408A:     var_CC = CDbl(0)
  loc_15940C9:     If (var_8C.Fields.Item("vType").Value = "IDC") Then
  loc_15940CF:       var_9C = "Indoor Catering"
  loc_15940D5:     Else
  loc_15940FD:       var_9C = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RestName")), var_CC, var_C4, var_BC, var_B4, var_AC)
  loc_1594106:     End If
  loc_159410C:     var_154 = "vType"
  loc_1594166:     var_164 = "IDC"
  loc_159417A:     var_254 = IIf((var_8C.Fields.Item(var_154).Value = var_164), "Indoor Catering", CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RestName")), var_A4, var_E4, var_DC)))
  loc_1594183:     var_9C = CStr(var_254)
  loc_15941A1:     Set var_2A4 = var_88 
  loc_15941B0:     var_2A4.AddNew var_154, var_164
  loc_15941DA:     var_2A4.Fields.Item("MLine").Value = vbNullString
  loc_1594235:     var_244 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RestName")), var_D4)) 'String
  loc_1594250:     var_1D4 = (var_8C.Fields.Item("vType").Value = "IDC") 'Variant
  loc_1594282:     var_2A4.Fields.Item("DepartName").Value = IIf(var_1D4, "Indoor Catering", var_244)
  loc_15942C8:     var_2A4.Fields.Item("BillAmt").Value = vbNullString
  loc_15942F9:     var_2A4.Fields.Item("Mark").Value = "*"
  loc_1594308:     var_154 = "RestCode"
  loc_159432C:     var_164 = "Departcode"
  loc_1594348:     var_2A4.Fields.Item(var_164).Value = CVar(var_8C.Fields.Item(var_154))
  loc_1594364:     var_2A4.Update var_154, var_164
  loc_159436B:     Set var_2A4 = Nothing 
  loc_159436F:     ' Referenced from: 159475F
  loc_1594372:     var_164 = CVar(var_9C) 'String
  loc_159437C:     var_154 = "RestName"
  loc_15943AD:     If Not(CBool(var_164 <> var_8C.Fields.Item(var_154).Value)) Then
  loc_15943B3:       Set var_2B0 = var_88 
  loc_15943C2:       var_2B0.AddNew var_154, var_164
  loc_15943EC:       var_2B0.Fields.Item("MLine").Value = vbNullString
  loc_159441D:       var_2B0.Fields.Item("DepartName").Value = vbNullString
  loc_1594451:       var_1A4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxName")), var_12C)) 'String
  loc_1594474:       var_2B0.Fields.Item("TaxName").Value = var_1A4
  loc_15944AF:       Proc_6_47_EF59D0(var_1A4, CVar(var_8C.Fields.Item("TaxPer")))
  loc_15944D7:       var_2B0.Fields.Item("TaxPer").Value = var_1A4
  loc_1594512:       Proc_6_47_EF59D0(var_1A4, CVar(var_8C.Fields.Item("TaxableAmt")))
  loc_159453A:       var_2B0.Fields.Item("GoodsAmt").Value = var_1A4
  loc_1594575:       Proc_6_47_EF59D0(var_1A4, CVar(var_8C.Fields.Item("TaxAmt")))
  loc_159459D:       var_2B0.Fields.Item("TaxAmt").Value = var_1A4
  loc_15945D8:       Proc_6_39_E7C810(var_1A4, CVar(var_8C.Fields.Item("TaxableAmt")))
  loc_1594606:       Proc_6_39_E7C810(var_1D4, CVar(var_8C.Fields.Item("TaxAmt")))
  loc_159460E:       var_1F4 = (var_1A4 + var_1D4)
  loc_1594615:       Proc_6_47_EF59D0(var_244, "Indoor Catering")
  loc_159463D:       var_2B0.Fields.Item("BillAmt").Value = var_244
  loc_1594681:       var_2B0.Fields.Item("Mark").Value = vbNullString
  loc_1594690:       var_154 = "RestCode"
  loc_15946B4:       var_164 = "Departcode"
  loc_15946D0:       var_2B0.Fields.Item(var_164).Value = CVar(var_8C.Fields.Item(var_154))
  loc_15946EC:       var_2B0.Update var_154, var_164
  loc_15946F4:       var_164 = CVar(var_BC) 'Double
  loc_15946FB:       var_154 = "TaxAmt"
  loc_159471E:       Proc_6_39_E7C810(var_1A4, CVar(var_8C.Fields.Item(var_154)))
  loc_1594726:       var_1B4 = (var_164 + var_1A4)
  loc_159472B:       var_BC = CSng(CVar(var_8C.Fields.Item("TaxAmt")))
  loc_159473C:       Set var_2B0 = Nothing 
  loc_1594743:       var_8C.MoveNext
  loc_1594759:       If (var_8C.EOF = &HFF) Then
  loc_159475C:         GoTo loc_1594762
  loc_159475F:       End If
  loc_159475F:       GoTo loc_159436F
  loc_1594762:       ' Referenced from: 159475C
  loc_1594762:     End If
  loc_1594765:     Set var_2B4 = var_88 
  loc_1594774:     var_2B4.AddNew var_154, var_164
  loc_159479E:     var_2B4.Fields.Item("mLine").Value = "GF"
  loc_15947AA:     var_164 = "OUTLET TOTAL-> "
  loc_15947CF:     var_2B4.Fields.Item("DepartName").Value = "GF"
  loc_1594837:     var_2B4.Fields.Item("TaxAmt").Value = CVar(CStr(Format(CVar(Val(CStr(var_BC))), "0.00")))
  loc_1594878:     var_2B4.Fields.Item("Mark").Value = "*"
  loc_1594884:     var_164 = vbNullString
  loc_159488D:     var_154 = "Departcode"
  loc_15948A9:     var_2B4.Fields.Item(var_154).Value = var_164
  loc_15948C0:     var_2B4.Update var_154, var_164
  loc_15948C7:     Set var_2B4 = Nothing 
  loc_15948CE:     var_EC = CDbl(0)
  loc_15948D4:     var_F4 = CDbl(0)
  loc_15948DA:     var_FC = CDbl(0)
  loc_15948E0:     var_BC = CDbl(0)
  loc_15948E6:     var_C4 = CDbl(0)
  loc_15948EC:     var_CC = CDbl(0)
  loc_15948EF:     GoTo loc_1594057
  loc_15948F2:   End If
  loc_15948F5:   Set var_2C0 = var_88 
  loc_15948FB:   Set var_2C0 = Nothing 
  loc_15948FF: End If
  loc_1594927: Me.FGrid1.Rows = 2
  loc_1594943: If (var_88.RecordCount > 0) Then
  loc_159494C:   CVarUnk
  loc_1594951:   VerifyVarObj
  loc_1594957:   Set var_28C = Me.FGrid1
  loc_159495D:   LateIdStAd
  loc_159498D:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_88, Me.FGrid1.Text, var_CC, var_C4)
  loc_1594998: End If
  loc_159499C: Set var_2C4 = Me.FGrid1
  loc_15949AB: var_2C4.Cols = 9
  loc_15949B9: var_2C4.Tag = "TaxDetailsBanq"
  loc_15949BE: var_154 = 0
  loc_15949C7: var_174 = 0
  loc_15949D0: var_1C4 = "mLine"
  loc_15949D9: LateIdCallSt
  loc_15949E1: var_154 = 0
  loc_15949EA: var_174 = 0
  loc_15949F6: LateIdCallSt
  loc_15949FE: var_154 = 0
  loc_1594A07: var_174 = 1
  loc_1594A10: var_1C4 = "Rest Name"
  loc_1594A19: LateIdCallSt
  loc_1594A21: var_154 = 1
  loc_1594A2A: var_174 = &H5DC
  loc_1594A36: LateIdCallSt
  loc_1594A3E: var_154 = 1
  loc_1594A4D: var_174 = CVar(CInt(1)) 'Integer
  loc_1594A54: LateIdCallSt
  loc_1594A5C: var_154 = 1
  loc_1594A6B: var_174 = CVar(CInt(1)) 'Integer
  loc_1594A72: LateIdCallSt
  loc_1594A7A: var_154 = 0
  loc_1594A83: var_174 = 2
  loc_1594A8C: var_1C4 = "Tax Name"
  loc_1594A95: LateIdCallSt
  loc_1594A9D: var_154 = 2
  loc_1594AA6: var_174 = &H9C4
  loc_1594AB2: LateIdCallSt
  loc_1594ABA: var_154 = 2
  loc_1594AC9: var_174 = CVar(CInt(1)) 'Integer
  loc_1594AD0: LateIdCallSt
  loc_1594AD8: var_154 = 2
  loc_1594AE7: var_174 = CVar(CInt(1)) 'Integer
  loc_1594AEE: LateIdCallSt
  loc_1594AF6: var_154 = 0
  loc_1594AFF: var_174 = 3
  loc_1594B08: var_1C4 = " % "
  loc_1594B11: LateIdCallSt
  loc_1594B19: var_154 = 3
  loc_1594B22: var_174 = &H258
  loc_1594B2E: LateIdCallSt
  loc_1594B36: var_154 = 3
  loc_1594B45: var_174 = CVar(CInt(1)) 'Integer
  loc_1594B4C: LateIdCallSt
  loc_1594B54: var_154 = 3
  loc_1594B63: var_174 = CVar(CInt(1)) 'Integer
  loc_1594B6A: LateIdCallSt
  loc_1594B72: var_154 = 0
  loc_1594B7B: var_174 = 4
  loc_1594B84: var_1C4 = "Goods Amount"
  loc_1594B8D: LateIdCallSt
  loc_1594B95: var_154 = 4
  loc_1594B9E: var_174 = &H7D0
  loc_1594BAA: LateIdCallSt
  loc_1594BB2: var_154 = 4
  loc_1594BC1: var_174 = CVar(CInt(7)) 'Integer
  loc_1594BC8: LateIdCallSt
  loc_1594BD0: var_154 = 4
  loc_1594BDF: var_174 = CVar(CInt(7)) 'Integer
  loc_1594BE6: LateIdCallSt
  loc_1594BEE: var_154 = 0
  loc_1594BF7: var_174 = 5
  loc_1594C00: var_1C4 = "Tax Amount"
  loc_1594C09: LateIdCallSt
  loc_1594C11: var_154 = 5
  loc_1594C1A: var_174 = &H514
  loc_1594C26: LateIdCallSt
  loc_1594C2E: var_154 = 5
  loc_1594C3D: var_174 = CVar(CInt(7)) 'Integer
  loc_1594C44: LateIdCallSt
  loc_1594C4C: var_154 = 5
  loc_1594C5B: var_174 = CVar(CInt(7)) 'Integer
  loc_1594C62: LateIdCallSt
  loc_1594C6A: var_154 = 0
  loc_1594C73: var_174 = 6
  loc_1594C7C: var_1C4 = "Total"
  loc_1594C85: LateIdCallSt
  loc_1594C8D: var_154 = 6
  loc_1594C96: var_174 = &H708
  loc_1594CA2: LateIdCallSt
  loc_1594CAA: var_154 = 6
  loc_1594CB9: var_174 = CVar(CInt(7)) 'Integer
  loc_1594CC0: LateIdCallSt
  loc_1594CC8: var_154 = 6
  loc_1594CD7: var_174 = CVar(CInt(7)) 'Integer
  loc_1594CDE: LateIdCallSt
  loc_1594CE6: var_154 = 0
  loc_1594CEF: var_174 = 7
  loc_1594CF8: var_1C4 = "DepartCode"
  loc_1594D01: LateIdCallSt
  loc_1594D09: var_154 = 7
  loc_1594D12: var_174 = 0
  loc_1594D1E: LateIdCallSt
  loc_1594D26: var_154 = 7
  loc_1594D35: var_174 = CVar(CInt(7)) 'Integer
  loc_1594D3C: LateIdCallSt
  loc_1594D44: var_154 = 7
  loc_1594D53: var_174 = CVar(CInt(7)) 'Integer
  loc_1594D5A: LateIdCallSt
  loc_1594D62: var_154 = 0
  loc_1594D6B: var_174 = 8
  loc_1594D74: var_1C4 = "MARK"
  loc_1594D7D: LateIdCallSt
  loc_1594D85: var_154 = 8
  loc_1594D8E: var_174 = 0
  loc_1594D9A: LateIdCallSt
  loc_1594DA4: Set var_2C4 = Nothing 
  loc_1594DBC: If (var_8C.RecordCount <= 0) Then
  loc_1594DC4:   global_152 = 0
  loc_1594DC7:   Exit Sub
  loc_1594DC8: End If
  loc_1594DCC: Set var_28C = Me.FGrid1
  loc_1594DFC: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1594DFF:   var_154 = vbNullString
  loc_1594E09:   Set var_28C = Me.FGrid1
  loc_1594E1A: End If
  loc_1594E51: var_154 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1594E71: Me.FGrid1.Row = CVar(CLng(IIf(var_154, FRow, 1)))
  loc_1594EBF: var_154 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1594EDF: Me.FGrid1.Col = CVar(CLng(IIf(var_154, Fcol, 1)))
  loc_1594EFB: Set var_88 = Nothing
  loc_1594F03: Set var_8C = Nothing
  loc_1594F08: IStAd
  loc_1594F11: Set var_94 = Nothing
  loc_1594F19: Set var_98 = Nothing
  loc_1594F1C: Exit Sub
End Sub

Public Sub BookingDetail(formName, FRow, Fcol) '15830A0
  'Data Table: 577ED8
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_1FC As Variant
  Dim var_20C As Byte
  Dim var_11C As Variant
  Dim var_90 As Recordset15
  Dim var_2B0 As Variant
  Dim var_A0 As Double
  Dim var_A2 As Integer
  Dim var_2C0 As Recordset15
  Dim var_C8 As Variant
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_2DC As MSHFlexGrid
  loc_1581FBB: If (global_208 = "ODC") Then
  loc_1581FC1:   var_A8 = "Outdoor"
  loc_1581FC7: Else
  loc_1581FCA:   var_A8 = "Indoor"
  loc_1581FCD: End If
  loc_1581FCD: var_B8 = 2
  loc_1581FD4: var_D8 = 1
  loc_1581FFE: If (CStr(Me.FGrid.TextMatrix) = "ALL") Then
  loc_1582027:   VarLateMemCallLdRfVar
  loc_1582032:   Proc_6_7_F25D88(var_11C, Me.FGrid, 1, 0)
  loc_158205C:   VarLateMemCallLdRfVar
  loc_1582067:   Proc_6_7_F25D88(var_1CC, Me.FGrid, 1, 1)
  loc_1582078:   var_1FC = CVar(" WHERE B.CatType='" & var_A8 & "' AND BD.FuncDate Between ") & var_11C & " And " & var_1CC & " AND B.Code NOT IN(SELECT Distinct InquiryCode FROM HallBook)" 
  loc_158207D:   var_94 = CStr(var_1FC)
  loc_158209F: Else
  loc_15820C5:   VarLateMemCallLdRfVar
  loc_15820D0:   Proc_6_7_F25D88(var_11C, Me.FGrid, 1, 0)
  loc_15820FA:   VarLateMemCallLdRfVar
  loc_1582105:   Proc_6_7_F25D88(var_1CC, Me.FGrid, 1, 1)
  loc_1582116:   var_1FC = CVar(" WHERE B.CatType='" & var_A8 & "' AND BD.FuncDate Between ") & var_11C & " And " & var_1CC & " AND B.Status='" 
  loc_158211A:   var_20C = 2
  loc_158214A:   var_94 = CStr(1 & CVar(CStr(Me.FGrid.TextMatrix)) & "' AND B.Code NOT IN(SELECT Distinct InquiryCode FROM HallBook)")
  loc_1582173: End If
  loc_1582179: Call 0.Method_arg_54 ("Booking Inquiry Detail", var_20C, var_1FC)
  loc_1582181: var_B8 = 0
  loc_15821BE: var_11C = Me.FGrid
  loc_15821D8: Set var_2B0 = 1(1 & CStr(var_11C.TextMatrix))
  loc_15821DE: var_11C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1582201: var_B8 = 2
  loc_1582211: var_F8 = Me.FGrid
  loc_158222B: Set var_2B0 = var_B8(1 & CStr(var_F8.TextMatrix))
  loc_1582231: var_F8.TextBox.Text = "Status : "
  loc_1582254: Call Proc_249_108_10FC634(New, var_2B0, var_B8)
  loc_158225C: Set var_8C = var_2B0
  loc_1582273: var_10C = "SELECT B.Code, BD.FuncDate, BD.ToDate, BD.FuncTime, BD.ToTime, F.Name,BD.VenueCode,V.Name VenueName, B.PartyName, B.PhoneR, B.MobileNo, B.ConPerson, B.BookedBy, B.HandledBy, B.Status, B.U_Name,B.Remark FROM (BookingInquiry B INNER JOIN BookingDetail BD ON B.Code=BD.Code) LEFT JOIN FunctionType F ON B.FuncType=F.Code Left Join VenueMast V On BD.VenueCode=V.Code " & var_94
  loc_1582283: Me.Connection15.Execute var_10C & " Order By BD.FuncDate, BD.FuncTime", var_F8, -1
  loc_158228E: Set var_90 = var_2B0
  loc_15822A1: var_88 = vbNullString
  loc_15822B8: If (var_90.RecordCount > 0) Then
  loc_15822BE:   var_90.MoveFirst
  loc_15822C9:   var_B8 = "FuncDate"
  loc_15822EF:   var_A0 = CDate(var_90.Fields.Item(var_B8).Value)
  loc_15822FC:   ' Referenced from: 15829F7
  loc_158230B:   If Not(var_90.EOF) Then
  loc_1582314:     var_A2 = (var_A2 + 1)
  loc_158231A:     Set var_2C0 = var_8C 
  loc_1582329:     var_2C0.AddNew var_B8, var_C8
  loc_1582353:     var_2C0.Fields.Item("mLine").Value = vbNullString
  loc_158238E:     var_2C0.Fields.Item("SrNo").Value = CVar(CStr(var_A2) & ".")
  loc_15823E3:     var_2C0.Fields.Item("Code").Value = CVar(var_90.Fields.Item("Code"))
  loc_1582458:     var_12C = Format(CVar(var_90.Fields.Item("FuncDate")), "DD/MM/YY") & " To " 
  loc_15824A7:     var_2C0.Fields.Item("FuncDate").Value = 1 & Format(CVar(var_90.Fields.Item("ToDate")), "DD/MM/YY")
  loc_1582529:     var_D8 = " - "
  loc_158252E:     var_12C = Format(CVar(var_90.Fields.Item("FuncTime")), "HH:MM") & " To " 
  loc_158257D:     var_2C0.Fields.Item("FuncTime").Value = 1 & Format(CVar(var_90.Fields.Item("ToTime")), "HH:MM")
  loc_15825EB:     var_2C0.Fields.Item("VenueName").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("VenueName")), 1, var_12C, 1, 1, 1))
  loc_1582643:     var_2C0.Fields.Item("FuncType").Value = CVar(var_90.Fields.Item("Name"))
  loc_1582697:     var_2C0.Fields.Item("PartyName").Value = CVar(var_90.Fields.Item("PartyName"))
  loc_15826F7:     var_2C0.Fields.Item("PhoneR").Value = CVar(CStr(var_90.Fields.Item("PhoneR").Value))
  loc_158275D:     var_2C0.Fields.Item("MobileNo").Value = CVar(CStr(var_90.Fields.Item("MobileNo").Value))
  loc_15827BF:     var_2C0.Fields.Item("ConPerson").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ConPerson")), var_12C, 1, 1))
  loc_158281F:     var_2C0.Fields.Item("BookedBY").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("BookedBY")), var_A2))
  loc_158287F:     var_2C0.Fields.Item("HandledBy").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("HandledBy")), var_A0))
  loc_15828DF:     var_2C0.Fields.Item("Status").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Status"))))
  loc_1582937:     var_2C0.Fields.Item("U_Name").Value = CVar(var_90.Fields.Item("U_Name"))
  loc_1582993:     var_2C0.Fields.Item("Remark").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Remark"))))
  loc_15829A8:     var_C8 = "*"
  loc_15829B1:     var_B8 = "Mark"
  loc_15829CD:     var_2C0.Fields.Item(var_B8).Value = var_C8
  loc_15829E4:     var_2C0.Update var_B8, var_C8
  loc_15829EB:     Set var_2C0 = Nothing 
  loc_15829F2:     var_90.MoveNext
  loc_15829F7:     GoTo loc_15822FC
  loc_15829FA:   End If
  loc_15829FA: End If
  loc_1582A04: arg_2C = Me.FGrid1.Text
  loc_1582A22: Me.FGrid1.Rows = 2
  loc_1582A3E: If (var_8C.RecordCount > 0) Then
  loc_1582A47:   CVarUnk
  loc_1582A4C:   VerifyVarObj
  loc_1582A52:   Set var_2B0 = Me.FGrid1
  loc_1582A58:   LateIdStAd
  loc_1582A88:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1582A93: End If
  loc_1582A97: Set var_2DC = Me.FGrid1
  loc_1582AA3: var_2DC.Tag = "BookingDetail"
  loc_1582AB4: var_2DC.Cols = &H11
  loc_1582AB9: var_B8 = 0
  loc_1582AC2: var_D8 = 0
  loc_1582ACB: var_14C = "mLine"
  loc_1582AD4: LateIdCallSt
  loc_1582ADC: var_B8 = 0
  loc_1582AE5: var_D8 = 0
  loc_1582AF1: LateIdCallSt
  loc_1582AF9: var_B8 = 0
  loc_1582B02: var_D8 = 1
  loc_1582B0B: var_14C = "SNo."
  loc_1582B14: LateIdCallSt
  loc_1582B1C: var_B8 = 1
  loc_1582B2B: var_D8 = CVar(CInt(7)) 'Integer
  loc_1582B32: LateIdCallSt
  loc_1582B3A: var_B8 = 1
  loc_1582B49: var_D8 = CVar(CInt(7)) 'Integer
  loc_1582B50: LateIdCallSt
  loc_1582B58: var_B8 = 1
  loc_1582B61: var_D8 = &H226
  loc_1582B6D: LateIdCallSt
  loc_1582B75: var_B8 = 0
  loc_1582B7E: var_D8 = 2
  loc_1582B87: var_14C = "Code"
  loc_1582B90: LateIdCallSt
  loc_1582B98: var_B8 = 2
  loc_1582BA1: var_D8 = 0
  loc_1582BAD: LateIdCallSt
  loc_1582BB5: var_B8 = 0
  loc_1582BBE: var_D8 = 3
  loc_1582BC7: var_14C = "Date"
  loc_1582BD0: LateIdCallSt
  loc_1582BD8: var_B8 = 3
  loc_1582BE1: var_D8 = &H898
  loc_1582BED: LateIdCallSt
  loc_1582BF5: var_B8 = 0
  loc_1582BFE: var_D8 = 4
  loc_1582C07: var_14C = "Time"
  loc_1582C10: LateIdCallSt
  loc_1582C18: var_B8 = 4
  loc_1582C21: var_D8 = &H5DC
  loc_1582C2D: LateIdCallSt
  loc_1582C35: var_B8 = 0
  loc_1582C3E: var_D8 = 5
  loc_1582C47: var_14C = "Venue"
  loc_1582C50: LateIdCallSt
  loc_1582C58: var_B8 = 5
  loc_1582C61: var_D8 = &H7D0
  loc_1582C6D: LateIdCallSt
  loc_1582C75: var_B8 = 0
  loc_1582C7E: var_D8 = 6
  loc_1582C87: var_14C = "Function Type"
  loc_1582C90: LateIdCallSt
  loc_1582C98: var_B8 = 6
  loc_1582CA1: var_D8 = &H7D0
  loc_1582CAD: LateIdCallSt
  loc_1582CB5: var_B8 = 0
  loc_1582CBE: var_D8 = 7
  loc_1582CC7: var_14C = "Party Name"
  loc_1582CD0: LateIdCallSt
  loc_1582CD8: var_B8 = 7
  loc_1582CE1: var_D8 = &HBB8
  loc_1582CED: LateIdCallSt
  loc_1582CF5: var_B8 = 0
  loc_1582CFE: var_D8 = 8
  loc_1582D07: var_14C = "Phone No."
  loc_1582D10: LateIdCallSt
  loc_1582D18: var_B8 = 8
  loc_1582D21: var_D8 = &H5DC
  loc_1582D2D: LateIdCallSt
  loc_1582D35: var_B8 = 0
  loc_1582D3E: var_D8 = 9
  loc_1582D47: var_14C = "Mobile No."
  loc_1582D50: LateIdCallSt
  loc_1582D58: var_B8 = 9
  loc_1582D61: var_D8 = &H5DC
  loc_1582D6D: LateIdCallSt
  loc_1582D75: var_B8 = 0
  loc_1582D7E: var_D8 = &HA
  loc_1582D87: var_14C = "Contect Person"
  loc_1582D90: LateIdCallSt
  loc_1582D98: var_B8 = &HA
  loc_1582DA1: var_D8 = &H9C4
  loc_1582DAD: LateIdCallSt
  loc_1582DB5: var_B8 = 0
  loc_1582DBE: var_D8 = &HB
  loc_1582DC7: var_14C = "Booked By"
  loc_1582DD0: LateIdCallSt
  loc_1582DD8: var_B8 = &HB
  loc_1582DE1: var_D8 = &H7D0
  loc_1582DED: LateIdCallSt
  loc_1582DF5: var_B8 = 0
  loc_1582DFE: var_D8 = &HC
  loc_1582E07: var_14C = "Handled By"
  loc_1582E10: LateIdCallSt
  loc_1582E18: var_B8 = &HC
  loc_1582E21: var_D8 = &H7D0
  loc_1582E2D: LateIdCallSt
  loc_1582E35: var_B8 = 0
  loc_1582E3E: var_D8 = &HD
  loc_1582E47: var_14C = "Status"
  loc_1582E50: LateIdCallSt
  loc_1582E58: var_B8 = &HD
  loc_1582E61: var_D8 = &H4B0
  loc_1582E6D: LateIdCallSt
  loc_1582E75: var_B8 = 0
  loc_1582E7E: var_D8 = &HE
  loc_1582E87: var_14C = "User"
  loc_1582E90: LateIdCallSt
  loc_1582E98: var_B8 = &HE
  loc_1582EA1: var_D8 = &H708
  loc_1582EAD: LateIdCallSt
  loc_1582EB5: var_B8 = 0
  loc_1582EBE: var_D8 = &HF
  loc_1582EC7: var_14C = "Remark"
  loc_1582ED0: LateIdCallSt
  loc_1582ED8: var_B8 = &HF
  loc_1582EE1: var_D8 = &H157C
  loc_1582EED: LateIdCallSt
  loc_1582EF5: var_B8 = 0
  loc_1582EFE: var_D8 = &H10
  loc_1582F07: var_14C = "MARK"
  loc_1582F10: LateIdCallSt
  loc_1582F18: var_B8 = &H10
  loc_1582F21: var_D8 = 0
  loc_1582F2D: LateIdCallSt
  loc_1582F37: Set var_2DC = Nothing 
  loc_1582F4F: If (var_90.RecordCount <= 0) Then
  loc_1582F57:   global_152 = 0
  loc_1582F5A:   Exit Sub
  loc_1582F5B: End If
  loc_1582F5F: Set var_2B0 = Me.FGrid1
  loc_1582F8F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1582F92:   var_B8 = vbNullString
  loc_1582F9C:   Set var_2B0 = Me.FGrid1
  loc_1582FAD: End If
  loc_1582FE4: var_B8 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1583004: Me.FGrid1.Row = CVar(CLng(IIf(var_B8, FRow, 1)))
  loc_1583052: var_B8 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1583072: Me.FGrid1.Col = CVar(CLng(IIf(var_B8, Fcol, 1)))
  loc_158308E: Set var_8C = Nothing
  loc_1583096: Set var_90 = Nothing
  loc_158309B: IStAd
  loc_158309F: Exit Sub
End Sub

Public Sub SalesRegHall(formName, FRow, Fcol) '175B508
  'Data Table: 577ED8
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_E4 As Variant
  Dim var_1D4 As String
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_254 As Variant
  Dim var_104 As Variant
  Dim var_298 As Variant
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_144 As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_110 As Recordset15
  Dim var_1C0 As Double
  Dim var_A4 As Variant
  Dim unk_577EDB As Connection15
  Dim var_1CA As Integer
  Dim var_2AC As Recordset15
  Dim var_2A8 As Fields15
  Dim var_1D0 As Recordset15
  Dim var_1C8 As Double
  Dim var_2C0 As Recordset15
  Dim arg_2C As Variant
  Dim var_10C As Recordset15
  Dim var_2CC As MSHFlexGrid
  loc_17597B0: var_94 = 2
  loc_17597B7: var_B4 = 1
  loc_17597DC: If (Me.FGrid.TextMatrix = "Yes") Then
  loc_17597E8:   Call SalesRegHallItemWise(formName, FRow, Fcol)
  loc_17597ED:   Exit Sub
  loc_17597EE: End If
  loc_1759809: var_B4 = 1
  loc_1759817: VarLateMemCallLdRfVar
  loc_1759822: Proc_6_7_F25D88(var_104, Me.FGrid, var_B4, 0)
  loc_175982A: var_1F4 = CVar("WHERE H.RestCode='" & global_208 & "' AND H.VDate Between ") & var_104 
  loc_1759847: var_254 = Me.FGrid
  loc_175984C: VarLateMemCallLdRfVar
  loc_1759857: Proc_6_7_F25D88(var_274, var_254, 1, 1)
  loc_1759864: var_114 = CStr(var_1F4 & " And " & var_274)
  loc_1759887: Call 0.Method_arg_54 ("Sales Register Report", var_B4)
  loc_175988F: var_94 = 0
  loc_175989F: var_D4 = Me.FGrid
  loc_17598CC: var_104 = Me.FGrid
  loc_17598E6: Set var_298 = 1(1 & CStr(var_104.TextMatrix))
  loc_17598EC: var_104.TextBox.Text = 1 & CStr(var_D4.TextMatrix) & " To : "
  loc_1759914: If (MemVar_1F921A4 = "ODC") Then
  loc_1759924:   Me.Text2.Text = "OutDoor Catering"
  loc_175992F: Else
  loc_1759936:   Set var_298 = Me.Text2
  loc_175993C:   var_298.Text = "Indoor Catering"
  loc_1759944: End If
  loc_1759951: Call Proc_249_109_118509C(New, var_298, var_94)
  loc_1759959: Set var_10C = var_298
  loc_1759970: var_1D4 = "SELECT H.DocId, H.VNo, H.VDate, H.Party, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.BookDocId From HallSale1 H " & var_114
  loc_1759980: Me.Connection15.Execute var_1D4 & " Order By H.VNo, H.VDate", var_D4, -1
  loc_175998B: Set var_110 = var_298
  loc_175999E: var_11C = CDbl(0)
  loc_17599A4: var_124 = CDbl(0)
  loc_17599AA: var_12C = CDbl(0)
  loc_17599B0: var_134 = CDbl(0)
  loc_17599B6: var_13C = CDbl(0)
  loc_17599BC: var_144 = CDbl(0)
  loc_17599C2: var_14C = CDbl(0)
  loc_17599C8: var_154 = CDbl(0)
  loc_17599CE: var_15C = CDbl(0)
  loc_17599D4: var_164 = CDbl(0)
  loc_17599DA: var_108 = vbNullString
  loc_17599F1: If (var_110.RecordCount > 0) Then
  loc_17599F7:   var_110.MoveFirst
  loc_1759A28:   var_1C0 = CDate(var_110.Fields.Item("VDate").Value)
  loc_1759A35:   ' Referenced from: 175A7C3
  loc_1759A44:   If Not(var_110.EOF) Then
  loc_1759A5B:     var_1D4 = "SELECT PH.Vno As Adv_No,PH.Vdate As Adv_Date,Case When PH.Vtype='AD' Then PH.AmtCr Else -PH.AmtDr End As Advance,PH.PayType As Adv_Type FROM " & "PaychargeH PH WHERE PH.VType In ('AD','AR') And PH.RestCOde='"
  loc_1759A75:     var_94 = "BOOKDOCID"
  loc_1759A9D:     var_A4 = "' Order by PH.VDate,PH.VNo,PH.Sno"
  loc_1759AA2:     var_1E4 = CVar(var_1D4 & global_208 & "' And PH.ContraDocId='") & var_110.Fields.Item(var_94).Value & var_A4 
  loc_1759AB0:     unk_577EDB.Execute CStr(var_1E4), var_1F4, -1
  loc_1759ABB:     Set var_1D0 = var_2A8
  loc_1759AE3:     var_1CA = (var_1CA + 1)
  loc_1759AE9:     Set var_2AC = var_10C 
  loc_1759AF8:     var_2AC.AddNew var_94, var_A4
  loc_1759B22:     var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_1759B5D:     var_2AC.Fields.Item("SrNo").Value = CVar(CStr(var_1CA) & ".")
  loc_1759BB2:     var_2AC.Fields.Item("DocID").Value = CVar(var_110.Fields.Item("DocID"))
  loc_1759C06:     var_2AC.Fields.Item("BillNo").Value = CVar(var_110.Fields.Item("VNo"))
  loc_1759C42:     var_F4 = "DD/MM/YY"
  loc_1759C7A:     var_2AC.Fields.Item("Billdate").Value = Format(CVar(var_110.Fields.Item("VDate")), var_F4)
  loc_1759CD4:     var_2AC.Fields.Item("PartyName").Value = CVar(var_110.Fields.Item("Party"))
  loc_1759D18:     var_2A8 = var_2AC.Fields
  loc_1759D28:     var_2A8.Item("NoofPax").Value = CVar(var_110.Fields.Item("NoofPax"))
  loc_1759D5F:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("RatePerPax")), 1, 1, var_1CA, var_2A8, var_1C0)
  loc_1759D87:     var_2AC.Fields.Item("RatePerPax").Value = var_F4
  loc_1759DC2:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("TotalPerCover")), var_164, var_15C)
  loc_1759DEA:     var_2AC.Fields.Item("TotalPerCover").Value = var_F4
  loc_1759E25:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("DiscAmt")), var_154)
  loc_1759E4D:     var_2AC.Fields.Item("DiscAmt").Value = var_F4
  loc_1759E88:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("Tax")), var_14C)
  loc_1759EB0:     var_2AC.Fields.Item("Tax").Value = var_F4
  loc_1759EEB:     Proc_6_39_E7C810(var_F4, CVar(var_110.Fields.Item("Taxable")))
  loc_1759F19:     Proc_6_39_E7C810(var_1E4, CVar(var_110.Fields.Item("DiscAmt")), var_F4)
  loc_1759F21:     var_1F4 = (var_144 - var_1E4)
  loc_1759F2F:     Proc_6_47_EF59D0(var_254, var_1F4)
  loc_1759F57:     var_2AC.Fields.Item("Taxable").Value = var_254
  loc_1759F9C:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("nonTaxable")))
  loc_1759FC4:     var_2AC.Fields.Item("nonTaxable").Value = var_F4
  loc_1759FFF:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("Servicecharge")))
  loc_175A027:     var_2AC.Fields.Item("SrvChrg").Value = var_F4
  loc_175A062:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("RoundOff")))
  loc_175A08A:     var_2AC.Fields.Item("RoundOff").Value = var_F4
  loc_175A0C5:     Proc_6_47_EF59D0(var_F4, CVar(var_110.Fields.Item("Amount")))
  loc_175A0ED:     var_2AC.Fields.Item("Amount").Value = var_F4
  loc_175A125:     If ((var_1D0.BOF = 0) And (var_1D0.EOF = 0)) Then
  loc_175A14E:       Proc_6_47_EF59D0(var_F4, CVar(var_1D0.Fields.Item("Advance")))
  loc_175A176:       var_2AC.Fields.Item("Advance").Value = var_F4
  loc_175A1D6:       var_2AC.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_1D0.Fields.Item("Adv_type"))))
  loc_175A236:       var_2AC.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_1D0.Fields.Item("Adv_No"))))
  loc_175A276:       var_F4 = "dd/MMM/yy"
  loc_175A2AE:       var_2AC.Fields.Item("AdvDate").Value = Format(CVar(var_1D0.Fields.Item("Adv_Date")), var_F4)
  loc_175A2F2:       Proc_6_39_E7C810(var_F4, CVar(var_1D0.Fields.Item("Advance")), CVar(var_1C8))
  loc_175A2FA:       var_104 = (1 + var_F4)
  loc_175A2FF:       var_1C8 = CSng(Format(CVar(var_1D0.Fields.Item("Adv_Date")), var_F4))
  loc_175A311:       var_1D0.MoveNext
  loc_175A316:     End If
  loc_175A316:     var_A4 = "*"
  loc_175A31F:     var_94 = "Mark"
  loc_175A33B:     var_2AC.Fields.Item(var_94).Value = var_A4
  loc_175A352:     var_2AC.Update var_94, var_A4
  loc_175A357:     ' Referenced from: 175A5FC
  loc_175A366:     If Not(var_1D0.EOF) Then
  loc_175A374:       var_2AC.AddNew var_94, var_A4
  loc_175A39E:       var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_175A3ED:       var_2AC.Fields.Item("BillNo").Value = CVar(var_110.Fields.Item("VNo"))
  loc_175A424:       Proc_6_47_EF59D0(var_F4, CVar(var_1D0.Fields.Item("Advance")), var_1C8)
  loc_175A44C:       var_2AC.Fields.Item("Advance").Value = var_F4
  loc_175A4AC:       var_2AC.Fields.Item("AdvType").Value = CVar(Proc_6_38_E68A98(CVar(var_1D0.Fields.Item("Adv_type")), 1))
  loc_175A50C:       var_2AC.Fields.Item("AdvNo").Value = CVar(Proc_6_38_E68A98(CVar(var_1D0.Fields.Item("Adv_No"))))
  loc_175A524:       var_94 = "Adv_Date"
  loc_175A547:       var_A4 = "dd/MMM/yy"
  loc_175A54C:       var_F4 = var_A4
  loc_175A584:       var_2AC.Fields.Item("AdvDate").Value = Format(CVar(var_1D0.Fields.Item(var_94)), var_F4)
  loc_175A5A6:       var_2AC.Update var_94, var_A4
  loc_175A5D8:       Proc_6_39_E7C810(var_F4, CVar(var_1D0.Fields.Item("Advance")), CVar(var_1C8))
  loc_175A5E0:       var_104 = (1 + var_F4)
  loc_175A5E5:       var_1C8 = CSng(Format(CVar(var_1D0.Fields.Item("Advance")), var_F4))
  loc_175A5F7:       var_1D0.MoveNext
  loc_175A5FC:       GoTo loc_175A357
  loc_175A5FF:     End If
  loc_175A601:     Set var_2AC = Nothing 
  loc_175A632:     Proc_6_39_E7C810(var_F4, CVar(var_110.Fields.Item("TotalPerCover")), CVar(var_11C))
  loc_175A63A:     var_104 = (var_1C8 + var_F4)
  loc_175A63F:     var_11C = CSng(Format(CVar(var_1D0.Fields.Item("TotalPerCover")), var_F4))
  loc_175A67B:     Proc_6_39_E7C810(var_F4, CVar(var_110.Fields.Item("DiscAmt")), CVar(var_14C))
  loc_175A683:     var_104 = (var_11C + var_F4)
  loc_175A688:     var_14C = CSng(Format(CVar(var_1D0.Fields.Item("DiscAmt")), var_F4))
  loc_175A6C4:     Proc_6_39_E7C810(var_F4, CVar(var_110.Fields.Item("Tax")), CVar(var_124))
  loc_175A6CC:     var_104 = (var_14C + var_F4)
  loc_175A6D1:     var_124 = CSng(Format(CVar(var_1D0.Fields.Item("Tax")), var_F4))
  loc_175A70D:     Proc_6_39_E7C810(var_F4, CVar(var_110.Fields.Item("RoundOff")), CVar(var_144))
  loc_175A715:     var_104 = (var_124 + var_F4)
  loc_175A71A:     var_144 = CSng(Format(CVar(var_1D0.Fields.Item("RoundOff")), var_F4))
  loc_175A756:     Proc_6_39_E7C810(var_F4, CVar(var_110.Fields.Item("Servicecharge")), CVar(var_154))
  loc_175A75E:     var_104 = (var_144 + var_F4)
  loc_175A763:     var_154 = CSng(Format(CVar(var_1D0.Fields.Item("Servicecharge")), var_F4))
  loc_175A775:     var_A4 = CVar(var_13C) 'Double
  loc_175A77C:     var_94 = "Amount"
  loc_175A798:     var_D4 = CVar(var_110.Fields.Item(var_94)) 'Address
  loc_175A79F:     Proc_6_39_E7C810(var_F4, var_D4, var_A4)
  loc_175A7A7:     var_104 = (var_154 + var_F4)
  loc_175A7AC:     var_13C = CSng(Format(CVar(var_1D0.Fields.Item(var_94)), var_F4))
  loc_175A7BE:     var_110.MoveNext
  loc_175A7C3:     GoTo loc_1759A35
  loc_175A7C6:   End If
  loc_175A7C6: End If
  loc_175A7C9: Set var_2C0 = var_10C 
  loc_175A7D8: var_2C0.AddNew var_94, var_A4
  loc_175A802: var_2C0.Fields.Item("mLine").Value = "GF"
  loc_175A80E: var_A4 = "Total-->"
  loc_175A833: var_2C0.Fields.Item("PartyName").Value = "GF"
  loc_175A84A: Proc_6_47_EF59D0(var_D4, var_11C, var_13C)
  loc_175A872: var_2C0.Fields.Item("TotalPerCover").Value = var_D4
  loc_175A88C: Proc_6_47_EF59D0(var_D4, var_14C)
  loc_175A8B4: var_2C0.Fields.Item("DiscAmt").Value = var_D4
  loc_175A8CE: Proc_6_47_EF59D0(var_D4, var_124)
  loc_175A8F6: var_2C0.Fields.Item("Tax").Value = var_D4
  loc_175A910: Proc_6_47_EF59D0(var_D4, var_154)
  loc_175A938: var_2C0.Fields.Item("SrvChrg").Value = var_D4
  loc_175A952: Proc_6_47_EF59D0(var_D4, var_144)
  loc_175A97A: var_2C0.Fields.Item("RoundOff").Value = var_D4
  loc_175A994: Proc_6_47_EF59D0(var_D4, var_13C)
  loc_175A9BC: var_2C0.Fields.Item("Amount").Value = var_D4
  loc_175A9D6: Proc_6_47_EF59D0(var_D4, var_1C8)
  loc_175A9FE: var_2C0.Fields.Item("Advance").Value = var_D4
  loc_175AA0D: var_A4 = vbNullString
  loc_175AA16: var_94 = "Mark"
  loc_175AA32: var_2C0.Fields.Item(var_94).Value = var_A4
  loc_175AA49: var_2C0.Update var_94, var_A4
  loc_175AA50: Set var_2C0 = Nothing 
  loc_175AA5E: arg_2C = Me.FGrid1.Text
  loc_175AA7C: Me.FGrid1.Rows = 2
  loc_175AA98: If (var_10C.RecordCount > 0) Then
  loc_175AAA1:   CVarUnk
  loc_175AAA6:   VerifyVarObj
  loc_175AAAC:   Set var_298 = Me.FGrid1
  loc_175AAB2:   LateIdStAd
  loc_175AAE2:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_175AAED: End If
  loc_175AAF1: Set var_2CC = Me.FGrid1
  loc_175AAFD: var_2CC.Tag = "SalesRegister"
  loc_175AB0E: var_2CC.Cols = &H15
  loc_175AB13: var_94 = 0
  loc_175AB1C: var_B4 = 0
  loc_175AB25: var_E4 = "mLine"
  loc_175AB2E: LateIdCallSt
  loc_175AB36: var_94 = 0
  loc_175AB3F: var_B4 = 0
  loc_175AB4B: LateIdCallSt
  loc_175AB53: var_94 = 0
  loc_175AB5C: var_B4 = 1
  loc_175AB65: var_E4 = "SNo."
  loc_175AB6E: LateIdCallSt
  loc_175AB76: var_94 = 1
  loc_175AB7F: var_B4 = &H1F4
  loc_175AB8B: LateIdCallSt
  loc_175AB93: var_94 = 0
  loc_175AB9C: var_B4 = 2
  loc_175ABA5: var_E4 = "Doc Id"
  loc_175ABAE: LateIdCallSt
  loc_175ABB6: var_94 = 2
  loc_175ABBF: var_B4 = 0
  loc_175ABCB: LateIdCallSt
  loc_175ABD3: var_94 = 0
  loc_175ABDC: var_B4 = 3
  loc_175ABE5: var_E4 = "Bill No"
  loc_175ABEE: LateIdCallSt
  loc_175ABF6: var_94 = 3
  loc_175ABFF: var_B4 = &H578
  loc_175AC0B: LateIdCallSt
  loc_175AC13: var_94 = 0
  loc_175AC1C: var_B4 = 4
  loc_175AC25: var_E4 = "Bill Date"
  loc_175AC2E: LateIdCallSt
  loc_175AC36: var_94 = 4
  loc_175AC3F: var_B4 = &H708
  loc_175AC4B: LateIdCallSt
  loc_175AC53: var_94 = 0
  loc_175AC5C: var_B4 = 5
  loc_175AC65: var_E4 = "Party Name"
  loc_175AC6E: LateIdCallSt
  loc_175AC76: var_94 = 5
  loc_175AC7F: var_B4 = &HBB8
  loc_175AC8B: LateIdCallSt
  loc_175AC93: var_94 = 0
  loc_175AC9C: var_B4 = 6
  loc_175ACA5: var_E4 = "No. Of Pax"
  loc_175ACAE: LateIdCallSt
  loc_175ACB6: var_94 = 6
  loc_175ACC5: var_B4 = CVar(CInt(7)) 'Integer
  loc_175ACCC: LateIdCallSt
  loc_175ACD4: var_94 = 6
  loc_175ACE3: var_B4 = CVar(CInt(7)) 'Integer
  loc_175ACEA: LateIdCallSt
  loc_175ACF2: var_94 = 6
  loc_175ACFB: var_B4 = &H640
  loc_175AD07: LateIdCallSt
  loc_175AD0F: var_94 = 0
  loc_175AD18: var_B4 = 7
  loc_175AD21: var_E4 = "Rate Per Pax"
  loc_175AD2A: LateIdCallSt
  loc_175AD32: var_94 = 7
  loc_175AD41: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AD48: LateIdCallSt
  loc_175AD50: var_94 = 7
  loc_175AD5F: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AD66: LateIdCallSt
  loc_175AD6E: var_94 = 7
  loc_175AD77: var_B4 = 0
  loc_175AD83: LateIdCallSt
  loc_175AD8B: var_94 = 0
  loc_175AD94: var_B4 = 8
  loc_175AD9D: var_E4 = "Amount"
  loc_175ADA6: LateIdCallSt
  loc_175ADAE: var_94 = 8
  loc_175ADBD: var_B4 = CVar(CInt(7)) 'Integer
  loc_175ADC4: LateIdCallSt
  loc_175ADCC: var_94 = 8
  loc_175ADDB: var_B4 = CVar(CInt(7)) 'Integer
  loc_175ADE2: LateIdCallSt
  loc_175ADEA: var_94 = 8
  loc_175ADF3: var_B4 = &H4B0
  loc_175ADFF: LateIdCallSt
  loc_175AE07: var_94 = 0
  loc_175AE10: var_B4 = 9
  loc_175AE19: var_E4 = "Discount"
  loc_175AE22: LateIdCallSt
  loc_175AE2A: var_94 = 9
  loc_175AE39: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AE40: LateIdCallSt
  loc_175AE48: var_94 = 9
  loc_175AE57: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AE5E: LateIdCallSt
  loc_175AE66: var_94 = 9
  loc_175AE6F: var_B4 = &H44C
  loc_175AE7B: LateIdCallSt
  loc_175AE83: var_94 = 0
  loc_175AE8C: var_B4 = &HA
  loc_175AE95: var_E4 = "Taxable"
  loc_175AE9E: LateIdCallSt
  loc_175AEA6: var_94 = &HA
  loc_175AEB5: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AEBC: LateIdCallSt
  loc_175AEC4: var_94 = &HA
  loc_175AED3: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AEDA: LateIdCallSt
  loc_175AEE2: var_94 = &HA
  loc_175AEEB: var_B4 = &H578
  loc_175AEF7: LateIdCallSt
  loc_175AEFF: var_94 = 0
  loc_175AF08: var_B4 = &HB
  loc_175AF11: var_E4 = "NonTaxable"
  loc_175AF1A: LateIdCallSt
  loc_175AF22: var_94 = &HB
  loc_175AF31: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AF38: LateIdCallSt
  loc_175AF40: var_94 = &HB
  loc_175AF4F: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AF56: LateIdCallSt
  loc_175AF5E: var_94 = &HB
  loc_175AF67: var_B4 = &H578
  loc_175AF73: LateIdCallSt
  loc_175AF7B: var_94 = 0
  loc_175AF84: var_B4 = &HC
  loc_175AF8D: var_E4 = "Tax"
  loc_175AF96: LateIdCallSt
  loc_175AF9E: var_94 = &HC
  loc_175AFAD: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AFB4: LateIdCallSt
  loc_175AFBC: var_94 = &HC
  loc_175AFCB: var_B4 = CVar(CInt(7)) 'Integer
  loc_175AFD2: LateIdCallSt
  loc_175AFDA: var_94 = &HC
  loc_175AFE3: var_B4 = &H578
  loc_175AFEF: LateIdCallSt
  loc_175AFF7: var_94 = 0
  loc_175B000: var_B4 = &HD
  loc_175B009: var_E4 = "SRV. Charge"
  loc_175B012: LateIdCallSt
  loc_175B01A: var_94 = &HD
  loc_175B029: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B030: LateIdCallSt
  loc_175B038: var_94 = &HD
  loc_175B047: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B04E: LateIdCallSt
  loc_175B056: var_94 = &HD
  loc_175B05F: var_B4 = &H578
  loc_175B06B: LateIdCallSt
  loc_175B073: var_94 = 0
  loc_175B07C: var_B4 = &HE
  loc_175B085: var_E4 = "Round Off"
  loc_175B08E: LateIdCallSt
  loc_175B096: var_94 = &HE
  loc_175B0A5: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B0AC: LateIdCallSt
  loc_175B0B4: var_94 = &HE
  loc_175B0C3: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B0CA: LateIdCallSt
  loc_175B0D2: var_94 = &HE
  loc_175B0DB: var_B4 = &H578
  loc_175B0E7: LateIdCallSt
  loc_175B0EF: var_94 = 0
  loc_175B0F8: var_B4 = &HF
  loc_175B101: var_E4 = "Net Amount"
  loc_175B10A: LateIdCallSt
  loc_175B112: var_94 = &HF
  loc_175B121: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B128: LateIdCallSt
  loc_175B130: var_94 = &HF
  loc_175B13F: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B146: LateIdCallSt
  loc_175B14E: var_94 = &HF
  loc_175B157: var_B4 = &H960
  loc_175B163: LateIdCallSt
  loc_175B16B: var_94 = 0
  loc_175B174: var_B4 = &H10
  loc_175B17D: var_E4 = "Advance"
  loc_175B186: LateIdCallSt
  loc_175B18E: var_94 = &H10
  loc_175B19D: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B1A4: LateIdCallSt
  loc_175B1AC: var_94 = &H10
  loc_175B1BB: var_B4 = CVar(CInt(7)) 'Integer
  loc_175B1C2: LateIdCallSt
  loc_175B1CA: var_94 = &H10
  loc_175B1D3: var_B4 = &H4B0
  loc_175B1DF: LateIdCallSt
  loc_175B1E7: var_94 = 0
  loc_175B1F0: var_B4 = &H11
  loc_175B1F9: var_E4 = "Type"
  loc_175B202: LateIdCallSt
  loc_175B20A: var_94 = &H11
  loc_175B219: var_B4 = CVar(CInt(1)) 'Integer
  loc_175B220: LateIdCallSt
  loc_175B228: var_94 = &H11
  loc_175B237: var_B4 = CVar(CInt(1)) 'Integer
  loc_175B23E: LateIdCallSt
  loc_175B246: var_94 = &H11
  loc_175B24F: var_B4 = &H514
  loc_175B25B: LateIdCallSt
  loc_175B263: var_94 = 0
  loc_175B26C: var_B4 = &H12
  loc_175B275: var_E4 = "Rect.No."
  loc_175B27E: LateIdCallSt
  loc_175B286: var_94 = &H12
  loc_175B295: var_B4 = CVar(CInt(1)) 'Integer
  loc_175B29C: LateIdCallSt
  loc_175B2A4: var_94 = &H12
  loc_175B2B3: var_B4 = CVar(CInt(1)) 'Integer
  loc_175B2BA: LateIdCallSt
  loc_175B2C2: var_94 = &H12
  loc_175B2CB: var_B4 = &H44C
  loc_175B2D7: LateIdCallSt
  loc_175B2DF: var_94 = 0
  loc_175B2E8: var_B4 = &H13
  loc_175B2F1: var_E4 = "Rect.Date"
  loc_175B2FA: LateIdCallSt
  loc_175B302: var_94 = &H13
  loc_175B311: var_B4 = CVar(CInt(1)) 'Integer
  loc_175B318: LateIdCallSt
  loc_175B320: var_94 = &H13
  loc_175B32F: var_B4 = CVar(CInt(1)) 'Integer
  loc_175B336: LateIdCallSt
  loc_175B33E: var_94 = &H13
  loc_175B347: var_B4 = &H4B0
  loc_175B353: LateIdCallSt
  loc_175B35B: var_94 = 0
  loc_175B364: var_B4 = &H14
  loc_175B36D: var_E4 = "MARK"
  loc_175B376: LateIdCallSt
  loc_175B37E: var_94 = &H14
  loc_175B387: var_B4 = 0
  loc_175B393: LateIdCallSt
  loc_175B39D: Set var_2CC = Nothing 
  loc_175B3B5: If (var_110.RecordCount <= 0) Then
  loc_175B3BD:   global_152 = 0
  loc_175B3C0:   Exit Sub
  loc_175B3C1: End If
  loc_175B3C5: Set var_298 = Me.FGrid1
  loc_175B3F5: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_175B3F8:   var_94 = vbNullString
  loc_175B402:   Set var_298 = Me.FGrid1
  loc_175B413: End If
  loc_175B44A: var_94 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_175B46A: Me.FGrid1.Row = CVar(CLng(IIf(var_94, FRow, 1)))
  loc_175B4B8: var_94 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_175B4D8: Me.FGrid1.Col = CVar(CLng(IIf(var_94, Fcol, 1)))
  loc_175B4F4: Set var_10C = Nothing
  loc_175B4FC: Set var_110 = Nothing
  loc_175B501: IStAd
  loc_175B505: Exit Sub
End Sub

Public Sub SalesRegHallItemWise(formName, FRow, Fcol) '1AB6488
  'Data Table: 577ED8
  Dim var_130 As String
  Dim var_1B0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_230 As Variant
  Dim var_260 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_274 As Variant
  Dim unk_577EDB As Connection15
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_90 As Recordset15
  Dim var_D4 As Double
  Dim var_E2 As Integer
  Dim var_284 As Recordset15
  Dim var_150 As Variant
  Dim var_288 As Fields15
  Dim var_D8 As Recordset15
  Dim var_240 As Variant
  Dim var_250 As Variant
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_29C As Recordset15
  Dim var_298 As Fields15
  Dim var_2A4 As Fields15
  Dim var_94 As Recordset15
  Dim var_2AC As Recordset15
  Dim var_2F0 As Recordset15
  Dim arg_2C As Variant
  Dim var_8C As Recordset15
  Dim var_2FC As MSHFlexGrid
  loc_1AB2659: var_1B0 = CVar("WHERE H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_1AB2671: VarLateMemCallLdRfVar
  loc_1AB267C: Proc_6_7_F25D88(var_1A0, Me.FGrid, 1)
  loc_1AB26A6: VarLateMemCallLdRfVar
  loc_1AB26B1: Proc_6_7_F25D88(var_250, Me.FGrid, 1)
  loc_1AB26B9: var_260 = 1 & var_250 
  loc_1AB26BE: var_98 = CStr(var_260)
  loc_1AB26E1: Call 0.Method_arg_54 ("Sales Register Report", 0 & var_1A0 & " And ")
  loc_1AB26E9: var_140 = 0
  loc_1AB26F9: var_180 = Me.FGrid
  loc_1AB2726: var_1A0 = Me.FGrid
  loc_1AB2740: Set var_274 = 1(1 & CStr(var_1A0.TextMatrix))
  loc_1AB2746: var_1A0.TextBox.Text = 1 & CStr(var_180.TextMatrix) & " To : "
  loc_1AB276E: If (MemVar_1F921A4 = "ODC") Then
  loc_1AB277E:   Me.Text2.Text = "OutDoor Catering"
  loc_1AB2789: Else
  loc_1AB2790:   Set var_274 = Me.Text2
  loc_1AB2796:   var_274.Text = "Indoor Catering"
  loc_1AB279E: End If
  loc_1AB27AB: Call Proc_249_111_11B4370(New, var_274, var_140)
  loc_1AB27B3: Set var_8C = var_274
  loc_1AB27CA: var_130 = "SELECT H.DocId, H.VNo, H.Narration, H.VDate, H.Party, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.RestCode From HallSale1 H " & var_98
  loc_1AB27DA: Me.Connection15.Execute var_130 & " Order By H.VNo, H.VDate", var_180, -1
  loc_1AB27E5: Set var_90 = var_274
  loc_1AB2809: var_130 = "SELECT DISTINCT  SundryMast.Name, SundryMast.code FROM (SunTranH AS H INNER JOIN RevMast ON H.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code " & var_98
  loc_1AB2819: unk_577EDB.Execute var_130 & " AND H.DELFLAG<>'D' Order by SundryMast.Name", var_180, -1
  loc_1AB2824: Set var_D8 = var_274
  loc_1AB2837: var_A0 = CDbl(0)
  loc_1AB283D: var_A8 = CDbl(0)
  loc_1AB2843: var_B0 = CDbl(0)
  loc_1AB2849: var_B8 = CDbl(0)
  loc_1AB284F: var_C0 = CDbl(0)
  loc_1AB2855: var_C8 = CDbl(0)
  loc_1AB285B: var_EC = CDbl(0)
  loc_1AB2861: var_F4 = CDbl(0)
  loc_1AB2867: var_FC = CDbl(0)
  loc_1AB286D: var_104 = CDbl(0)
  loc_1AB2873: var_10C = CDbl(0)
  loc_1AB2879: var_114 = CDbl(0)
  loc_1AB287F: var_11C = CDbl(0)
  loc_1AB2885: var_124 = CDbl(0)
  loc_1AB288B: var_12C = CDbl(0)
  loc_1AB2891: var_88 = vbNullString
  loc_1AB28A8: If (var_90.RecordCount > 0) Then
  loc_1AB28AE:   var_90.MoveFirst
  loc_1AB28B9:   var_140 = "VDate"
  loc_1AB28DF:   var_D4 = CDate(var_90.Fields.Item(var_140).Value)
  loc_1AB28EC:   ' Referenced from: 1AB51F2
  loc_1AB28FB:   If Not(var_90.EOF) Then
  loc_1AB2904:     var_E2 = (var_E2 + 1)
  loc_1AB290A:     Set var_284 = var_8C 
  loc_1AB2919:     var_284.AddNew var_140, var_150
  loc_1AB2943:     var_284.Fields.Item("mLine").Value = "GF"
  loc_1AB297E:     var_284.Fields.Item("SrNo").Value = CVar(CStr(var_E2) & ".")
  loc_1AB29D3:     var_284.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AB2A27:     var_284.Fields.Item("Billdate").Value = CVar(var_90.Fields.Item("VNo"))
  loc_1AB2A7B:     var_284.Fields.Item("Item").Value = CVar(var_90.Fields.Item("Party"))
  loc_1AB2AB1:     var_284.Fields.Item("qty").Value = vbNullString
  loc_1AB2AE2:     var_284.Fields.Item("Rate").Value = vbNullString
  loc_1AB2B13:     var_284.Fields.Item("nonTaxable").Value = vbNullString
  loc_1AB2B44:     var_284.Fields.Item("Taxable").Value = vbNullString
  loc_1AB2B64:     If (var_D8.RecordCount > 0) Then
  loc_1AB2B6A:       var_D8.MoveFirst
  loc_1AB2B6F:       ' Referenced from: 1AB3902
  loc_1AB2B6F:     End If
  loc_1AB2B80:     If (var_D8.EOF = 0) Then
  loc_1AB2BBF:       var_190 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB2C2D:       var_240 = var_190 & "') and Docid='" & var_90.Fields.Item("DocID").Value & "' And RestCode='" & var_90.Fields.Item("RestCode").Value 
  loc_1AB2C44:       unk_577EDB.Execute CStr(var_240 & "'"), var_260, -1
  loc_1AB2C4F:       Set var_DC = var_298
  loc_1AB2CB9:       var_190 = "Select sum(Amount) as TaxAmt from SunTran where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB2CE8:       var_1B0 = var_90.Fields.Item("DocID").Value
  loc_1AB2CF9:       var_1E0 = var_190 & "') and Docid='" & var_1B0 & "' And RestCode='" 
  loc_1AB2D3E:       unk_577EDB.Execute CStr(var_1E0 & var_90.Fields.Item("RestCode").Value & "'"), var_260, -1
  loc_1AB2D49:       Set var_E0 = var_298
  loc_1AB2D8B:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AB2DE2:         var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB2DE9:         Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_298, var_298, var_E2)
  loc_1AB2E11:         var_284.Fields.Item("Tax1").Value = var_1B0
  loc_1AB2E8B:         var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB2E92:         Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_EC), var_D4)
  loc_1AB2E9A:         var_1C0 = (var_12C + var_1B0)
  loc_1AB2E9F:         var_EC = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB2EBD:       Else
  loc_1AB2ED1:         If (var_D8.AbsolutePosition = 2) Then
  loc_1AB2F28:           var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB2F2F:           Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_EC)
  loc_1AB2F57:           var_284.Fields.Item("Tax2").Value = var_1B0
  loc_1AB2FD1:           var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB2FD8:           Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_F4))
  loc_1AB2FE0:           var_1C0 = (var_124 + var_1B0)
  loc_1AB2FE5:           var_F4 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB3003:         Else
  loc_1AB3017:           If (var_D8.AbsolutePosition = 3) Then
  loc_1AB306E:             var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB3075:             Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", var_F4)
  loc_1AB309D:             var_284.Fields.Item("Tax3").Value = var_1B0
  loc_1AB3117:             var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB311E:             Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_FC))
  loc_1AB3126:             var_1C0 = (var_11C + var_1B0)
  loc_1AB312B:             var_FC = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB3149:           Else
  loc_1AB315D:             If (var_D8.AbsolutePosition = 4) Then
  loc_1AB31B4:               var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB31BB:               Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB31E3:               var_284.Fields.Item("Tax4").Value = var_1B0
  loc_1AB325D:               var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB3264:               Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_104))
  loc_1AB326C:               var_1C0 = (var_FC + var_1B0)
  loc_1AB3271:               var_104 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB328F:             Else
  loc_1AB32A3:               If (var_D8.AbsolutePosition = 5) Then
  loc_1AB32FA:                 var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB3301:                 Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB3329:                 var_284.Fields.Item("Tax5").Value = var_1B0
  loc_1AB33A3:                 var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB33AA:                 Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_10C))
  loc_1AB33B2:                 var_1C0 = (var_104 + var_1B0)
  loc_1AB33B7:                 var_10C = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB33D5:               Else
  loc_1AB33E9:                 If (var_D8.AbsolutePosition = 6) Then
  loc_1AB3440:                   var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB3447:                   Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB346F:                   var_284.Fields.Item("Tax6").Value = var_1B0
  loc_1AB34E9:                   var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB34F0:                   Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_114))
  loc_1AB34F8:                   var_1C0 = (var_10C + var_1B0)
  loc_1AB34FD:                   var_114 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB351B:                 Else
  loc_1AB352F:                   If (var_D8.AbsolutePosition = 7) Then
  loc_1AB3586:                     var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB358D:                     Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB35B5:                     var_284.Fields.Item("Tax7").Value = var_1B0
  loc_1AB362F:                     var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB3636:                     Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_11C))
  loc_1AB363E:                     var_1C0 = (var_114 + var_1B0)
  loc_1AB3643:                     var_11C = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB3661:                   Else
  loc_1AB3675:                     If (var_D8.AbsolutePosition = 8) Then
  loc_1AB36CC:                       var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB36D3:                       Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB36FB:                       var_284.Fields.Item("Tax8").Value = var_1B0
  loc_1AB3775:                       var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB377C:                       Proc_6_39_E7C810(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='", CVar(var_124))
  loc_1AB3784:                       var_1C0 = (var_11C + var_1B0)
  loc_1AB3789:                       var_124 = CSng(var_DC.Fields.Item("TaxAmt").Value & "') and Docid='" & var_1B0)
  loc_1AB37A7:                     Else
  loc_1AB37BB:                       If (var_D8.AbsolutePosition = 9) Then
  loc_1AB3812:                         var_1A0 = (var_DC.Fields.Item("TaxAmt").Value + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB3819:                         Proc_6_47_EF59D0(var_1B0, var_DC.Fields.Item("TaxAmt").Value & "') and Docid='")
  loc_1AB3841:                         var_284.Fields.Item("Tax9").Value = var_1B0
  loc_1AB3889:                         var_190 = var_DC.Fields.Item("TaxAmt").Value
  loc_1AB38BB:                         var_1A0 = (var_190 + var_E0.Fields.Item("TaxAmt").Value)
  loc_1AB38C2:                         Proc_6_39_E7C810(var_1B0, var_190 & "') and Docid='", CVar(var_12C))
  loc_1AB38CA:                         var_1C0 = (var_124 + var_1B0)
  loc_1AB38CF:                         var_12C = CSng(var_190 & "') and Docid='" & var_1B0)
  loc_1AB38EA:                       End If
  loc_1AB38EA:                     End If
  loc_1AB38EA:                   End If
  loc_1AB38EA:                 End If
  loc_1AB38EA:               End If
  loc_1AB38EA:             End If
  loc_1AB38EA:           End If
  loc_1AB38EA:         End If
  loc_1AB38EA:       End If
  loc_1AB38EF:       Set var_DC = Nothing
  loc_1AB38F7:       Set var_E0 = Nothing
  loc_1AB38FD:       var_D8.MoveNext
  loc_1AB3902:       GoTo loc_1AB2B6F
  loc_1AB3905:     End If
  loc_1AB392B:     Proc_6_47_EF59D0(var_190, CVar(var_90.Fields.Item("Servicecharge")))
  loc_1AB3953:     var_284.Fields.Item("SrvChrg").Value = var_190
  loc_1AB398E:     Proc_6_47_EF59D0(var_190, CVar(var_90.Fields.Item("DiscAmt")))
  loc_1AB39B6:     var_284.Fields.Item("DiscAmt").Value = var_190
  loc_1AB39F1:     Proc_6_47_EF59D0(var_190, CVar(var_90.Fields.Item("RoundOff")))
  loc_1AB3A19:     var_284.Fields.Item("RoundOff").Value = var_190
  loc_1AB3A54:     Proc_6_47_EF59D0(var_190, CVar(var_90.Fields.Item("Amount")))
  loc_1AB3A7C:     var_284.Fields.Item("Amount").Value = var_190
  loc_1AB3A91:     var_150 = vbNullString
  loc_1AB3A9A:     var_140 = "Mark"
  loc_1AB3AB6:     var_284.Fields.Item(var_140).Value = var_150
  loc_1AB3ACD:     var_284.Update var_140, var_150
  loc_1AB3AD4:     Set var_284 = Nothing 
  loc_1AB3ADB:     Set var_29C = var_8C 
  loc_1AB3AEA:     var_29C.AddNew var_140, var_150
  loc_1AB3B14:     var_29C.Fields.Item("mLine").Value = vbNullString
  loc_1AB3B45:     var_29C.Fields.Item("SrNo").Value = vbNullString
  loc_1AB3B94:     var_29C.Fields.Item("DocID").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1AB3C08:     var_29C.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), "DD/MM/YYYY")
  loc_1AB3C6C:     var_190 = var_90.Fields.Item("NoofPax").Value
  loc_1AB3C97:     Proc_6_48_EF4270(var_1E0, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AB3CAB:     var_298 = var_90.Fields
  loc_1AB3CD8:     var_1B0 = "PAXs " & var_190 & " @ " 
  loc_1AB3CDF:     var_230 = var_1B0 & var_1E0 
  loc_1AB3CF5:     var_260 = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("Narration")), 1, 1) = vbNullString), var_230, CVar(Proc_6_38_E68A98(CVar(var_298.Item("Narration")), var_12C)))
  loc_1AB3D0D:     var_2A4 = var_29C.Fields
  loc_1AB3D1D:     var_2A4.Item("Item").Value = var_260
  loc_1AB3D96:     var_29C.Fields.Item("qty").Value = CVar(var_90.Fields.Item("NoofPax"))
  loc_1AB3DCD:     Proc_6_47_EF59D0(var_190, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AB3DF5:     var_29C.Fields.Item("Rate").Value = var_190
  loc_1AB3E2F:     var_29C.Fields.Item("nonTaxable").Value = vbNullString
  loc_1AB3E61:     Proc_6_39_E7C810(var_190, CVar(var_90.Fields.Item("NoofPax")))
  loc_1AB3E8F:     Proc_6_39_E7C810(var_1B0, CVar(var_90.Fields.Item("RatePerPax")))
  loc_1AB3EA5:     Proc_6_47_EF59D0(var_230, (var_190 * var_1B0))
  loc_1AB3ECD:     var_29C.Fields.Item("Taxable").Value = var_230
  loc_1AB3F00:     If (var_D8.RecordCount > 0) Then
  loc_1AB3F06:       var_D8.MoveFirst
  loc_1AB3F0B:       ' Referenced from: 1AB448B
  loc_1AB3F0B:     End If
  loc_1AB3F1C:     If (var_D8.EOF = 0) Then
  loc_1AB3F5B:       var_190 = "Select sum(Amount) as TaxAmt from SunTranH where RevCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB3F8A:       var_1B0 = var_90.Fields.Item("DocID").Value
  loc_1AB3FE0:       unk_577EDB.Execute CStr(var_190 & "') and Docid='" & var_1B0 & "' And RestCode='" & var_90.Fields.Item("RestCode").Value & "'"), var_260, -1
  loc_1AB3FEB:       Set var_DC = var_298
  loc_1AB402D:       If (var_D8.AbsolutePosition = 1) Then
  loc_1AB4056:         Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB407E:         var_29C.Fields.Item("Tax1").Value = var_190
  loc_1AB4096:       Else
  loc_1AB40AA:         If (var_D8.AbsolutePosition = 2) Then
  loc_1AB40D3:           Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB40FB:           var_29C.Fields.Item("Tax2").Value = var_190
  loc_1AB4113:         Else
  loc_1AB4127:           If (var_D8.AbsolutePosition = 3) Then
  loc_1AB4150:             Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4178:             var_29C.Fields.Item("Tax3").Value = var_190
  loc_1AB4190:           Else
  loc_1AB41A4:             If (var_D8.AbsolutePosition = 4) Then
  loc_1AB41CD:               Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB41F5:               var_29C.Fields.Item("Tax4").Value = var_190
  loc_1AB420D:             Else
  loc_1AB4221:               If (var_D8.AbsolutePosition = 5) Then
  loc_1AB424A:                 Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4272:                 var_29C.Fields.Item("Tax5").Value = var_190
  loc_1AB428A:               Else
  loc_1AB429E:                 If (var_D8.AbsolutePosition = 6) Then
  loc_1AB42C7:                   Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB42EF:                   var_29C.Fields.Item("Tax6").Value = var_190
  loc_1AB4307:                 Else
  loc_1AB431B:                   If (var_D8.AbsolutePosition = 7) Then
  loc_1AB4344:                     Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB436C:                     var_29C.Fields.Item("Tax7").Value = var_190
  loc_1AB4384:                   Else
  loc_1AB4398:                     If (var_D8.AbsolutePosition = 8) Then
  loc_1AB43C1:                       Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB43E9:                       var_29C.Fields.Item("Tax8").Value = var_190
  loc_1AB4401:                     Else
  loc_1AB4415:                       If (var_D8.AbsolutePosition = 9) Then
  loc_1AB443E:                         Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4456:                         var_288 = var_29C.Fields
  loc_1AB4466:                         var_288.Item("Tax9").Value = var_190
  loc_1AB447B:                       End If
  loc_1AB447B:                     End If
  loc_1AB447B:                   End If
  loc_1AB447B:                 End If
  loc_1AB447B:               End If
  loc_1AB447B:             End If
  loc_1AB447B:           End If
  loc_1AB447B:         End If
  loc_1AB447B:       End If
  loc_1AB4480:       Set var_DC = Nothing
  loc_1AB4486:       var_D8.MoveNext
  loc_1AB448B:       GoTo loc_1AB3F0B
  loc_1AB448E:     End If
  loc_1AB44B3:     var_29C.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AB44E4:     var_29C.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AB4515:     var_29C.Fields.Item("RoundOff").Value = vbNullString
  loc_1AB4546:     var_29C.Fields.Item("Amount").Value = vbNullString
  loc_1AB4552:     var_150 = "*"
  loc_1AB455B:     var_140 = "Mark"
  loc_1AB4577:     var_29C.Fields.Item(var_140).Value = var_150
  loc_1AB458E:     var_29C.Update var_140, var_150
  loc_1AB4595:     Set var_29C = Nothing 
  loc_1AB45A6:     var_150 = "SELECT HStk.DocId,HStk.Sno, HStk.VNo, HStk.VDate, HStk.Item, I.Name, HStk.QtyIss, HStk.Rate, NonTaxable=Case when HStk.TaxAmt=0 then HStk.Amount else '' end, Taxable= case when HStk.TaxAmt>0 then HStk.Amount else '' end, HStk.RestCode From HallStock HStk left join Itemmast I on HStk.Item=I.Code where HStk.DocId='"
  loc_1AB45B1:     var_140 = "DocID"
  loc_1AB45EC:     unk_577EDB.Execute CStr(var_150 & var_90.Fields.Item(var_140).Value & "' Order By I.Name"), var_1B0, -1
  loc_1AB45F7:     Set var_94 = var_288
  loc_1AB4611:     ' Referenced from: 1AB5031
  loc_1AB4620:     If Not(var_94.EOF) Then
  loc_1AB4626:       Set var_2AC = var_8C 
  loc_1AB4635:       var_2AC.AddNew var_140, var_150
  loc_1AB465F:       var_2AC.Fields.Item("mLine").Value = vbNullString
  loc_1AB4690:       var_2AC.Fields.Item("SrNo").Value = vbNullString
  loc_1AB46DF:       var_2AC.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1AB471B:       var_190 = "DD/MM/YYYY"
  loc_1AB4753:       var_2AC.Fields.Item("Billdate").Value = Format(CVar(var_90.Fields.Item("VDate")), var_190)
  loc_1AB47AD:       var_2AC.Fields.Item("Item").Value = CVar(var_94.Fields.Item("Name"))
  loc_1AB4801:       var_2AC.Fields.Item("qty").Value = CVar(var_94.Fields.Item("QtyIss"))
  loc_1AB4838:       Proc_6_47_EF59D0(var_190, CVar(var_94.Fields.Item("Rate")), 1, 1)
  loc_1AB4850:       var_288 = var_2AC.Fields
  loc_1AB4860:       var_288.Item("Rate").Value = var_190
  loc_1AB489B:       Proc_6_47_EF59D0(var_190, CVar(var_94.Fields.Item("nonTaxable")), var_288)
  loc_1AB48C3:       var_2AC.Fields.Item("nonTaxable").Value = var_190
  loc_1AB48FE:       Proc_6_47_EF59D0(var_190, CVar(var_94.Fields.Item("Taxable")))
  loc_1AB4926:       var_2AC.Fields.Item("Taxable").Value = var_190
  loc_1AB494F:       If (var_D8.RecordCount > 0) Then
  loc_1AB4955:         var_D8.MoveFirst
  loc_1AB495A:         ' Referenced from: 1AB4F1B
  loc_1AB495A:       End If
  loc_1AB496B:       If (var_D8.EOF = 0) Then
  loc_1AB49AA:         var_190 = "Select sum(TaxAmt) as TaxAmt from HallSale2 where TaxCode IN (SELECT Code from Revmast where Sundry='" & var_D8.Fields.Item("Code").Value 
  loc_1AB4A21:         var_250 = var_190 & "') and Docid='" & var_94.Fields.Item("DocID").Value & "' And Sno=" & var_94.Fields.Item("SNo").Value & " And RestCode='" 
  loc_1AB4A37:         var_298 = var_94.Fields
  loc_1AB4A66:         unk_577EDB.Execute CStr(var_250 & var_298.Item("RestCode").Value & "'"), var_2EC, -1
  loc_1AB4A71:         Set var_DC = var_2A4
  loc_1AB4ABD:         If (var_D8.AbsolutePosition = 1) Then
  loc_1AB4AE6:           Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")), var_2A4)
  loc_1AB4B0E:           var_2AC.Fields.Item("Tax1").Value = var_190
  loc_1AB4B26:         Else
  loc_1AB4B3A:           If (var_D8.AbsolutePosition = 2) Then
  loc_1AB4B63:             Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4B8B:             var_2AC.Fields.Item("Tax2").Value = var_190
  loc_1AB4BA3:           Else
  loc_1AB4BB7:             If (var_D8.AbsolutePosition = 3) Then
  loc_1AB4BE0:               Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4C08:               var_2AC.Fields.Item("Tax3").Value = var_190
  loc_1AB4C20:             Else
  loc_1AB4C34:               If (var_D8.AbsolutePosition = 4) Then
  loc_1AB4C5D:                 Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4C85:                 var_2AC.Fields.Item("Tax4").Value = var_190
  loc_1AB4C9D:               Else
  loc_1AB4CB1:                 If (var_D8.AbsolutePosition = 5) Then
  loc_1AB4CDA:                   Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4D02:                   var_2AC.Fields.Item("Tax5").Value = var_190
  loc_1AB4D1A:                 Else
  loc_1AB4D2E:                   If (var_D8.AbsolutePosition = 6) Then
  loc_1AB4D57:                     Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4D7F:                     var_2AC.Fields.Item("Tax6").Value = var_190
  loc_1AB4D97:                   Else
  loc_1AB4DAB:                     If (var_D8.AbsolutePosition = 7) Then
  loc_1AB4DD4:                       Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4DFC:                       var_2AC.Fields.Item("Tax7").Value = var_190
  loc_1AB4E14:                     Else
  loc_1AB4E28:                       If (var_D8.AbsolutePosition = 8) Then
  loc_1AB4E51:                         Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4E79:                         var_2AC.Fields.Item("Tax8").Value = var_190
  loc_1AB4E91:                       Else
  loc_1AB4EA5:                         If (var_D8.AbsolutePosition = 9) Then
  loc_1AB4ECE:                           Proc_6_47_EF59D0(var_190, CVar(var_DC.Fields.Item("TaxAmt")))
  loc_1AB4EF6:                           var_2AC.Fields.Item("Tax9").Value = var_190
  loc_1AB4F0B:                         End If
  loc_1AB4F0B:                       End If
  loc_1AB4F0B:                     End If
  loc_1AB4F0B:                   End If
  loc_1AB4F0B:                 End If
  loc_1AB4F0B:               End If
  loc_1AB4F0B:             End If
  loc_1AB4F0B:           End If
  loc_1AB4F0B:         End If
  loc_1AB4F10:         Set var_DC = Nothing
  loc_1AB4F16:         var_D8.MoveNext
  loc_1AB4F1B:         GoTo loc_1AB495A
  loc_1AB4F1E:       End If
  loc_1AB4F43:       var_2AC.Fields.Item("SrvChrg").Value = vbNullString
  loc_1AB4F74:       var_2AC.Fields.Item("DiscAmt").Value = vbNullString
  loc_1AB4FA5:       var_2AC.Fields.Item("RoundOff").Value = vbNullString
  loc_1AB4FD6:       var_2AC.Fields.Item("Amount").Value = vbNullString
  loc_1AB4FE2:       var_150 = "*"
  loc_1AB4FEB:       var_140 = "Mark"
  loc_1AB5007:       var_2AC.Fields.Item(var_140).Value = var_150
  loc_1AB501E:       var_2AC.Update var_140, var_150
  loc_1AB5025:       Set var_2AC = Nothing 
  loc_1AB502C:       var_94.MoveNext
  loc_1AB5031:       GoTo loc_1AB4611
  loc_1AB5034:     End If
  loc_1AB5061:     Proc_6_39_E7C810(var_190, CVar(var_90.Fields.Item("nonTaxable")), CVar(var_A8))
  loc_1AB5069:     var_1A0 = (var_298 + var_190)
  loc_1AB506E:     var_A8 = CSng(var_190 & "') and Docid='")
  loc_1AB50AA:     Proc_6_39_E7C810(var_190, CVar(var_90.Fields.Item("Taxable")), CVar(var_A0))
  loc_1AB50B2:     var_1A0 = (var_A8 + var_190)
  loc_1AB50B7:     var_A0 = CSng(var_190 & "') and Docid='")
  loc_1AB50F3:     Proc_6_39_E7C810(var_190, CVar(var_90.Fields.Item("DiscAmt")), CVar(var_C0))
  loc_1AB50FB:     var_1A0 = (var_A0 + var_190)
  loc_1AB5100:     var_C0 = CSng(var_190 & "') and Docid='")
  loc_1AB513C:     Proc_6_39_E7C810(var_190, CVar(var_90.Fields.Item("RoundOff")), CVar(var_B8))
  loc_1AB5144:     var_1A0 = (var_C0 + var_190)
  loc_1AB5149:     var_B8 = CSng(var_190 & "') and Docid='")
  loc_1AB5185:     Proc_6_39_E7C810(var_190, CVar(var_90.Fields.Item("Servicecharge")), CVar(var_C8))
  loc_1AB518D:     var_1A0 = (var_B8 + var_190)
  loc_1AB5192:     var_C8 = CSng(var_190 & "') and Docid='")
  loc_1AB51A4:     var_150 = CVar(var_B0) 'Double
  loc_1AB51AB:     var_140 = "Amount"
  loc_1AB51C7:     var_180 = CVar(var_90.Fields.Item(var_140)) 'Address
  loc_1AB51CE:     Proc_6_39_E7C810(var_190, var_180, var_150)
  loc_1AB51D6:     var_1A0 = (var_C8 + var_190)
  loc_1AB51DB:     var_B0 = CSng(var_190 & "') and Docid='")
  loc_1AB51ED:     var_90.MoveNext
  loc_1AB51F2:     GoTo loc_1AB28EC
  loc_1AB51F5:   End If
  loc_1AB51F5: End If
  loc_1AB51F8: Set var_2F0 = var_8C 
  loc_1AB5207: var_2F0.AddNew var_140, var_150
  loc_1AB5231: var_2F0.Fields.Item("mLine").Value = "GF"
  loc_1AB523D: var_150 = "Total-->"
  loc_1AB5262: var_2F0.Fields.Item("Item").Value = "GF"
  loc_1AB5279: Proc_6_47_EF59D0(var_180, var_A8)
  loc_1AB52A1: var_2F0.Fields.Item("nonTaxable").Value = var_180
  loc_1AB52BB: Proc_6_47_EF59D0(var_180, var_A0)
  loc_1AB52E3: var_2F0.Fields.Item("Taxable").Value = var_180
  loc_1AB52FD: Proc_6_47_EF59D0(var_180, var_EC)
  loc_1AB5325: var_2F0.Fields.Item("Tax1").Value = var_180
  loc_1AB533F: Proc_6_47_EF59D0(var_180, var_F4)
  loc_1AB5367: var_2F0.Fields.Item("Tax2").Value = var_180
  loc_1AB5381: Proc_6_47_EF59D0(var_180, var_FC)
  loc_1AB53A9: var_2F0.Fields.Item("Tax3").Value = var_180
  loc_1AB53C3: Proc_6_47_EF59D0(var_180, var_104)
  loc_1AB53EB: var_2F0.Fields.Item("Tax4").Value = var_180
  loc_1AB5405: Proc_6_47_EF59D0(var_180, var_10C)
  loc_1AB542D: var_2F0.Fields.Item("Tax5").Value = var_180
  loc_1AB5447: Proc_6_47_EF59D0(var_180, var_114)
  loc_1AB546F: var_2F0.Fields.Item("Tax6").Value = var_180
  loc_1AB5489: Proc_6_47_EF59D0(var_180, var_11C)
  loc_1AB54B1: var_2F0.Fields.Item("Tax7").Value = var_180
  loc_1AB54CB: Proc_6_47_EF59D0(var_180, var_124)
  loc_1AB54F3: var_2F0.Fields.Item("Tax8").Value = var_180
  loc_1AB550D: Proc_6_47_EF59D0(var_180, var_12C)
  loc_1AB5535: var_2F0.Fields.Item("Tax9").Value = var_180
  loc_1AB554F: Proc_6_47_EF59D0(var_180, var_C8)
  loc_1AB5577: var_2F0.Fields.Item("SrvChrg").Value = var_180
  loc_1AB5591: Proc_6_47_EF59D0(var_180, var_C0)
  loc_1AB55B9: var_2F0.Fields.Item("DiscAmt").Value = var_180
  loc_1AB55D3: Proc_6_47_EF59D0(var_180, var_B8)
  loc_1AB55FB: var_2F0.Fields.Item("RoundOff").Value = var_180
  loc_1AB5615: Proc_6_47_EF59D0(var_180, var_B0)
  loc_1AB563D: var_2F0.Fields.Item("Amount").Value = var_180
  loc_1AB564C: var_150 = vbNullString
  loc_1AB5655: var_140 = "Mark"
  loc_1AB5671: var_2F0.Fields.Item(var_140).Value = var_150
  loc_1AB5688: var_2F0.Update var_140, var_150
  loc_1AB568F: Set var_2F0 = Nothing 
  loc_1AB569D: arg_2C = Me.FGrid1.Text
  loc_1AB56BB: Me.FGrid1.Rows = 2
  loc_1AB56D7: If (var_8C.RecordCount > 0) Then
  loc_1AB56E0:   CVarUnk
  loc_1AB56E5:   VerifyVarObj
  loc_1AB56EB:   Set var_274 = Me.FGrid1
  loc_1AB56F1:   LateIdStAd
  loc_1AB5721:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1AB572C: End If
  loc_1AB5730: Set var_2FC = Me.FGrid1
  loc_1AB573C: var_2FC.Tag = "SalesRegisterItemWise"
  loc_1AB574D: var_2FC.Cols = &H17
  loc_1AB5752: var_140 = 0
  loc_1AB575B: var_160 = 0
  loc_1AB5764: var_1D0 = "mLine"
  loc_1AB576D: LateIdCallSt
  loc_1AB5775: var_140 = 0
  loc_1AB577E: var_160 = 0
  loc_1AB578A: LateIdCallSt
  loc_1AB5792: var_140 = 0
  loc_1AB579B: var_160 = 1
  loc_1AB57A4: var_1D0 = "SNo."
  loc_1AB57AD: LateIdCallSt
  loc_1AB57B5: var_140 = 1
  loc_1AB57BE: var_160 = &H1F4
  loc_1AB57CA: LateIdCallSt
  loc_1AB57D2: var_140 = 0
  loc_1AB57DB: var_160 = 2
  loc_1AB57E4: var_1D0 = "Doc Id"
  loc_1AB57ED: LateIdCallSt
  loc_1AB57F5: var_140 = 2
  loc_1AB57FE: var_160 = 0
  loc_1AB580A: LateIdCallSt
  loc_1AB5812: var_140 = 0
  loc_1AB581B: var_160 = 3
  loc_1AB5824: var_1D0 = "Bill Date"
  loc_1AB582D: LateIdCallSt
  loc_1AB5835: var_140 = 3
  loc_1AB583E: var_160 = &H4B0
  loc_1AB584A: LateIdCallSt
  loc_1AB5852: var_140 = 0
  loc_1AB585B: var_160 = 4
  loc_1AB5864: var_1D0 = "Item Name"
  loc_1AB586D: LateIdCallSt
  loc_1AB5875: var_140 = 4
  loc_1AB587E: var_160 = &HC80
  loc_1AB588A: LateIdCallSt
  loc_1AB5892: var_140 = 0
  loc_1AB589B: var_160 = 5
  loc_1AB58A4: var_1D0 = "Qty"
  loc_1AB58AD: LateIdCallSt
  loc_1AB58B5: var_140 = 5
  loc_1AB58C4: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB58CB: LateIdCallSt
  loc_1AB58D3: var_140 = 5
  loc_1AB58E2: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB58E9: LateIdCallSt
  loc_1AB58F1: var_140 = 5
  loc_1AB58FA: var_160 = &H320
  loc_1AB5906: LateIdCallSt
  loc_1AB590E: var_140 = 0
  loc_1AB5917: var_160 = 6
  loc_1AB5920: var_1D0 = "Rate"
  loc_1AB5929: LateIdCallSt
  loc_1AB5931: var_140 = 6
  loc_1AB5940: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB5947: LateIdCallSt
  loc_1AB594F: var_140 = 6
  loc_1AB595E: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB5965: LateIdCallSt
  loc_1AB596D: var_140 = 6
  loc_1AB5976: var_160 = &H4B0
  loc_1AB5982: LateIdCallSt
  loc_1AB598A: var_140 = 0
  loc_1AB5993: var_160 = 7
  loc_1AB599C: var_1D0 = "Non-Taxable"
  loc_1AB59A5: LateIdCallSt
  loc_1AB59AD: var_140 = 7
  loc_1AB59BC: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB59C3: LateIdCallSt
  loc_1AB59CB: var_140 = 7
  loc_1AB59DA: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB59E1: LateIdCallSt
  loc_1AB59E9: var_140 = 7
  loc_1AB59F2: var_160 = &H640
  loc_1AB59FE: LateIdCallSt
  loc_1AB5A06: var_140 = 0
  loc_1AB5A0F: var_160 = 8
  loc_1AB5A18: var_1D0 = "Taxable"
  loc_1AB5A21: LateIdCallSt
  loc_1AB5A29: var_140 = 8
  loc_1AB5A38: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB5A3F: LateIdCallSt
  loc_1AB5A47: var_140 = 8
  loc_1AB5A56: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB5A5D: LateIdCallSt
  loc_1AB5A65: var_140 = 8
  loc_1AB5A6E: var_160 = &H640
  loc_1AB5A7A: LateIdCallSt
  loc_1AB5A89: For var_302 = 9 To &H11: var_2FE = var_302 'Integer
  loc_1AB5A8F:   var_140 = 0
  loc_1AB5A9C:   var_160 = CVar(CLng(var_2FE)) 'Long
  loc_1AB5AA1:   var_1D0 = vbNullString
  loc_1AB5AAA:   LateIdCallSt
  loc_1AB5AB6:   var_140 = CVar(CLng(var_2FE)) 'Long
  loc_1AB5ABB:   var_160 = 0
  loc_1AB5AC7:   LateIdCallSt
  loc_1AB5AD3:   var_140 = CVar(CLng(var_2FE)) 'Long
  loc_1AB5ADE:   var_160 = CVar(CInt(7)) 'Integer
  loc_1AB5AE5:   LateIdCallSt
  loc_1AB5AF1:   var_140 = CVar(CLng(var_2FE)) 'Long
  loc_1AB5AFC:   var_160 = CVar(CInt(7)) 'Integer
  loc_1AB5B03:   LateIdCallSt
  loc_1AB5B0E: Next var_302 'Integer
  loc_1AB5B27: If (var_D8.RecordCount > 0) Then
  loc_1AB5B2D:   var_D8.MoveFirst
  loc_1AB5B32:   ' Referenced from: 1AB60D0
  loc_1AB5B32: End If
  loc_1AB5B43: If (var_D8.EOF = 0) Then
  loc_1AB5B5A:   If (var_D8.AbsolutePosition = 1) Then
  loc_1AB5B5D:     var_150 = 0
  loc_1AB5BA6:     var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item("Name")), 9))))) 'String
  loc_1AB5BAD:     LateIdCallSt
  loc_1AB5BC3:     var_140 = 9
  loc_1AB5BCC:     var_160 = &H6A4
  loc_1AB5BD8:     LateIdCallSt
  loc_1AB5BE3:   Else
  loc_1AB5BF7:     If (var_D8.AbsolutePosition = 2) Then
  loc_1AB5C43:       var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item("Name")), &HA, 0, var_2FC, var_160))))) 'String
  loc_1AB5C4A:       LateIdCallSt
  loc_1AB5C60:       var_140 = &HA
  loc_1AB5C69:       var_160 = &H6A4
  loc_1AB5C75:       LateIdCallSt
  loc_1AB5C80:     Else
  loc_1AB5C94:       If (var_D8.AbsolutePosition = 3) Then
  loc_1AB5CAC:         var_140 = "Name"
  loc_1AB5CE0:         var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &HB, 0, var_2FC, var_160, var_140))))) 'String
  loc_1AB5CE7:         LateIdCallSt
  loc_1AB5CFD:         var_140 = &HB
  loc_1AB5D06:         var_160 = &H6A4
  loc_1AB5D12:         LateIdCallSt
  loc_1AB5D1D:       Else
  loc_1AB5D31:         If (var_D8.AbsolutePosition = 4) Then
  loc_1AB5D49:           var_140 = "Name"
  loc_1AB5D7D:           var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &HC, 0, var_2FC, var_160, var_140, var_2FC))))) 'String
  loc_1AB5D84:           LateIdCallSt
  loc_1AB5D9A:           var_140 = &HC
  loc_1AB5DA3:           var_160 = &H6A4
  loc_1AB5DAF:           LateIdCallSt
  loc_1AB5DBA:         Else
  loc_1AB5DCE:           If (var_D8.AbsolutePosition = 5) Then
  loc_1AB5DE6:             var_140 = "Name"
  loc_1AB5E1A:             var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &HD, 0, var_2FC, var_160, var_140, var_2FC))))) 'String
  loc_1AB5E21:             LateIdCallSt
  loc_1AB5E37:             var_140 = &HD
  loc_1AB5E40:             var_160 = &H6A4
  loc_1AB5E4C:             LateIdCallSt
  loc_1AB5E57:           Else
  loc_1AB5E6B:             If (var_D8.AbsolutePosition = 6) Then
  loc_1AB5E83:               var_140 = "Name"
  loc_1AB5EB7:               var_1B0 = CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &HE, 0, var_2FC, var_160, var_140, var_2FC))))) 'String
  loc_1AB5EBE:               LateIdCallSt
  loc_1AB5ED4:               var_140 = &HE
  loc_1AB5EDD:               var_160 = &H6A4
  loc_1AB5EE9:               LateIdCallSt
  loc_1AB5EF4:             Else
  loc_1AB5F08:               If (var_D8.AbsolutePosition = 7) Then
  loc_1AB5F20:                 var_140 = "Name"
  loc_1AB5F45:                 var_190 = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &HF, 0, var_2FC, var_160, var_140, var_2FC)) 'String
  loc_1AB5F54:                 var_1B0 = CVar(CStr(Trim(var_190))) 'String
  loc_1AB5F5B:                 LateIdCallSt
  loc_1AB5F71:                 var_140 = &HF
  loc_1AB5F7A:                 var_160 = &H6A4
  loc_1AB5F86:                 LateIdCallSt
  loc_1AB5F91:               Else
  loc_1AB5FA5:                 If (var_D8.AbsolutePosition = 8) Then
  loc_1AB5FBD:                   var_140 = "Name"
  loc_1AB5FE2:                   var_190 = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &H10, 0, var_2FC, var_160, var_140, var_2FC)) 'String
  loc_1AB5FF1:                   var_1B0 = CVar(CStr(Trim(var_190))) 'String
  loc_1AB5FF8:                   LateIdCallSt
  loc_1AB600E:                   var_140 = &H10
  loc_1AB6017:                   var_160 = &H6A4
  loc_1AB6023:                   LateIdCallSt
  loc_1AB602E:                 Else
  loc_1AB6042:                   If (var_D8.AbsolutePosition = 9) Then
  loc_1AB605A:                     var_140 = "Name"
  loc_1AB607F:                     var_190 = CVar(Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_140)), &H11, 0, var_2FC, var_160, var_140, var_2FC)) 'String
  loc_1AB608E:                     var_1B0 = CVar(CStr(Trim(var_190))) 'String
  loc_1AB6095:                     LateIdCallSt
  loc_1AB60AB:                     var_140 = &H11
  loc_1AB60B4:                     var_160 = &H6A4
  loc_1AB60C0:                     LateIdCallSt
  loc_1AB60C8:                   End If
  loc_1AB60C8:                 End If
  loc_1AB60C8:               End If
  loc_1AB60C8:             End If
  loc_1AB60C8:           End If
  loc_1AB60C8:         End If
  loc_1AB60C8:       End If
  loc_1AB60C8:     End If
  loc_1AB60C8:   End If
  loc_1AB60CB:   var_D8.MoveNext
  loc_1AB60D0:   GoTo loc_1AB5B32
  loc_1AB60D3: End If
  loc_1AB60D3: var_140 = 0
  loc_1AB60DC: var_160 = &H12
  loc_1AB60E5: var_1D0 = "SRV. Charge"
  loc_1AB60EE: LateIdCallSt
  loc_1AB60F6: var_140 = &H12
  loc_1AB6105: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB610C: LateIdCallSt
  loc_1AB6114: var_140 = &H12
  loc_1AB6123: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB612A: LateIdCallSt
  loc_1AB6132: var_140 = &H12
  loc_1AB613B: var_160 = &H6A4
  loc_1AB6147: LateIdCallSt
  loc_1AB614F: var_140 = 0
  loc_1AB6158: var_160 = &H13
  loc_1AB6161: var_1D0 = "Discount"
  loc_1AB616A: LateIdCallSt
  loc_1AB6172: var_140 = &H13
  loc_1AB6181: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB6188: LateIdCallSt
  loc_1AB6190: var_140 = &H13
  loc_1AB619F: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB61A6: LateIdCallSt
  loc_1AB61AE: var_140 = &H13
  loc_1AB61B7: var_160 = &H578
  loc_1AB61C3: LateIdCallSt
  loc_1AB61CB: var_140 = 0
  loc_1AB61D4: var_160 = &H14
  loc_1AB61DD: var_1D0 = "ROff."
  loc_1AB61E6: LateIdCallSt
  loc_1AB61EE: var_140 = &H14
  loc_1AB61FD: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB6204: LateIdCallSt
  loc_1AB620C: var_140 = &H14
  loc_1AB621B: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB6222: LateIdCallSt
  loc_1AB622A: var_140 = &H14
  loc_1AB6233: var_160 = &H320
  loc_1AB623F: LateIdCallSt
  loc_1AB6247: var_140 = 0
  loc_1AB6250: var_160 = &H15
  loc_1AB6259: var_1D0 = "Net Amount"
  loc_1AB6262: LateIdCallSt
  loc_1AB626A: var_140 = &H15
  loc_1AB6279: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB6280: LateIdCallSt
  loc_1AB6288: var_140 = &H15
  loc_1AB6297: var_160 = CVar(CInt(7)) 'Integer
  loc_1AB629E: LateIdCallSt
  loc_1AB62A6: var_140 = &H15
  loc_1AB62AF: var_160 = &H640
  loc_1AB62BB: LateIdCallSt
  loc_1AB62C3: var_140 = 0
  loc_1AB62CC: var_160 = &H16
  loc_1AB62D5: var_1D0 = "MARK"
  loc_1AB62DE: LateIdCallSt
  loc_1AB62E6: var_140 = &H16
  loc_1AB62EF: var_160 = 0
  loc_1AB62FB: LateIdCallSt
  loc_1AB6305: Set var_2FC = Nothing 
  loc_1AB631D: If (var_90.RecordCount <= 0) Then
  loc_1AB6325:   global_152 = 0
  loc_1AB6328:   Exit Sub
  loc_1AB6329: End If
  loc_1AB632D: Set var_274 = Me.FGrid1
  loc_1AB635D: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1AB6360:   var_140 = vbNullString
  loc_1AB636A:   Set var_274 = Me.FGrid1
  loc_1AB637B: End If
  loc_1AB63B2: var_140 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1AB63D2: Me.FGrid1.Row = CVar(CLng(IIf(var_140, FRow, 1)))
  loc_1AB6420: var_140 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1AB6440: Me.FGrid1.Col = CVar(CLng(IIf(var_140, Fcol, 1)))
  loc_1AB645C: Set var_8C = Nothing
  loc_1AB6464: Set var_90 = Nothing
  loc_1AB646C: Set var_DC = Nothing
  loc_1AB6474: Set var_E0 = Nothing
  loc_1AB647C: Set var_D8 = Nothing
  loc_1AB6481: IStAd
  loc_1AB6485: Exit Sub
End Sub

Public Sub OutStanding(formName, FRow, Fcol) '163C724
  'Data Table: 577ED8
  Dim var_120 As String
  Dim var_1A0 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_220 As Variant
  Dim var_180 As Variant
  Dim var_254 As String
  Dim var_258 As String
  Dim var_190 As Variant
  Dim var_268 As String
  Dim var_270 As String
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_94 As Recordset15
  Dim var_11A As Integer
  Dim var_27C As Recordset15
  Dim var_140 As Variant
  Dim var_264 As Variant
  Dim var_284 As Fields15
  Dim unk_577EDB As Connection15
  Dim var_118 As Recordset15
  Dim var_90 As Recordset15
  Dim var_29C As Recordset15
  Dim var_2A8 As MSHFlexGrid
  loc_163B1B9: var_1A0 = CVar(" H.RestCode='" & global_208 & "' AND H.VDate Between ") 'String
  loc_163B1D1: VarLateMemCallLdRfVar
  loc_163B1DC: Proc_6_7_F25D88(var_190, Me.FGrid, 1)
  loc_163B206: VarLateMemCallLdRfVar
  loc_163B211: Proc_6_7_F25D88(var_240, Me.FGrid, 1)
  loc_163B241: Call 0.Method_arg_54 ("OutStanding Report", 0 & var_190 & " And ")
  loc_163B249: var_130 = 0
  loc_163B259: var_170 = Me.FGrid
  loc_163B286: var_190 = Me.FGrid
  loc_163B2A0: Set var_264 = 1(1 & CStr(var_190.TextMatrix))
  loc_163B2A6: var_190.TextBox.Text = 1 & CStr(var_170.TextMatrix) & " To : "
  loc_163B2D3: Call Proc_249_112_1090FA8(New, var_264, var_130)
  loc_163B2DB: Set var_90 = var_264
  loc_163B2F2: var_120 = "SELECT DISTINCT H.DocID, H.VDate AS BookDate, V.FromDate AS FuncStartDate, V.ToDate AS FuncEndDate, V.FromTime AS FuncStartTime, V.ToTime AS FuncEndTime, H.VTime AS FuncTime, F.Name AS FuncName, H.Party AS PartyName, S.VNo AS BillNo, SH.VDate AS BillDate,(SH.Amount+S.Amount) AS Amount,  H.BookDocID " & "FROM (((((HallSale1 AS H LEFT JOIN PayChargeH AS P ON H.DocId = P.DocId) LEFT JOIN SunTran AS S ON H.DocId = S.DocId) LEFT JOIN SunTranH AS SH ON H.DocId = SH.DocId) LEFT JOIN HallBook AS HB ON H.BookDocID=HB.DocID) LEFT JOIN FunctionType AS F ON HB.Func_Name=F.Code) LEFT JOIN VenueOCC V ON HB.DocId=V.FPDocId "
  loc_163B315: var_268 = CStr(var_170.TextMatrix) & "WHERE S.SunCode='" & MemVar_1F92078 & "NET' AND (SH.SunCode='" & MemVar_1F92078 & "NET' OR S.SunCode Is Null OR SH.SunCode Is Null) AND "
  loc_163B323: var_270 = var_268 & CStr(1 & var_240) & " AND (SH.Amount+S.Amount)-(IsNull(P.AmtCr,0)+IsNull(H.Advance,0))>0"
  loc_163B32C: Me.Connection15.Execute var_270, var_170, -1
  loc_163B337: Set var_94 = var_264
  loc_163B356: var_A0 = CDbl(0)
  loc_163B35C: var_A8 = CDbl(0)
  loc_163B362: var_B0 = CDbl(0)
  loc_163B368: var_B8 = CDbl(0)
  loc_163B36E: var_88 = vbNullString
  loc_163B385: If (var_94.RecordCount > 0) Then
  loc_163B38B:   var_94.MoveFirst
  loc_163B390:   ' Referenced from: 163BD9E
  loc_163B39F:   If Not(var_94.EOF) Then
  loc_163B3A8:     var_11A = (var_11A + 1)
  loc_163B3AE:     Set var_27C = var_90 
  loc_163B3BD:     var_27C.AddNew var_130, var_140
  loc_163B3E7:     var_27C.Fields.Item("mLine").Value = vbNullString
  loc_163B422:     var_27C.Fields.Item("SrNo").Value = CVar(CStr(var_11A) & ".")
  loc_163B477:     var_27C.Fields.Item("DocID").Value = CVar(var_94.Fields.Item("DocID"))
  loc_163B4EC:     var_1A0 = Format(CVar(var_94.Fields.Item("FuncStartDate")), "DD/MM/YY") & " To " 
  loc_163B4FF:     var_1D0 = "DD/MM/YY"
  loc_163B53B:     var_27C.Fields.Item("FuncDate").Value = 1 & Format(CVar(var_94.Fields.Item("FuncEndDate")), var_1D0)
  loc_163B58D:     var_258 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("FuncStartTime")), 1, var_1A0, 1, 1, var_11A) & " - "
  loc_163B5B8:     var_254 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("FuncEndTime")), CStr(CVar(var_94.Fields.Item("FuncStartTime")).TextMatrix) & "WHERE S.SunCode='" & MemVar_1F92078, var_B8, var_B0)
  loc_163B5DF:     var_27C.Fields.Item("FuncTime").Value = CVar(var_A8 & var_254)
  loc_163B644:     var_27C.Fields.Item("FuncName").Value = CVar(var_94.Fields.Item("FuncName"))
  loc_163B698:     var_27C.Fields.Item("PartyName").Value = CVar(var_94.Fields.Item("PartyName"))
  loc_163B6EC:     var_27C.Fields.Item("BillNo").Value = CVar(var_94.Fields.Item("BillNo"))
  loc_163B728:     var_180 = "DD/MM/YY"
  loc_163B760:     var_27C.Fields.Item("Billdate").Value = Format(CVar(var_94.Fields.Item("Billdate")), var_180)
  loc_163B79D:     Proc_6_47_EF59D0(var_180, CVar(var_94.Fields.Item("Amount")), 1, 1)
  loc_163B7B5:     var_284 = var_27C.Fields
  loc_163B7C5:     var_284.Item("Amount").Value = var_180
  loc_163B807:     Proc_6_39_E7C810(var_180, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_163B80F:     var_190 = (var_A0 + var_180)
  loc_163B814:     var_B8 = CSng(Format(CVar(var_94.Fields.Item("Billdate")), var_180))
  loc_163B85F:     var_180 = "Select sum(Amtcr) as Advance from PayChargeH where vtype='AD' and ContraDocid='" & var_94.Fields.Item("BOOKDOCID").Value 
  loc_163B876:     unk_577EDB.Execute CStr(var_180 & "'"), var_1A0, -1
  loc_163B881:     Set var_118 = var_284
  loc_163B8AF:     If (var_118.RecordCount > 0) Then
  loc_163B8D8:       Proc_6_47_EF59D0(var_180, CVar(var_118.Fields.Item("Advance")), var_284)
  loc_163B8F0:       var_284 = var_27C.Fields
  loc_163B900:       var_284.Item("Advance").Value = var_180
  loc_163B942:       Proc_6_39_E7C810(var_180, CVar(var_118.Fields.Item("Advance")), CVar(var_A0))
  loc_163B94A:       var_190 = (var_B8 + var_180)
  loc_163B94F:       var_A0 = CSng(var_180 & "'")
  loc_163B95E:     End If
  loc_163B99A:     var_180 = "Select Sum(AmtCr) as TotRect from PayChargeH where Docid='" & var_94.Fields.Item("DocID").Value 
  loc_163B9B1:     unk_577EDB.Execute CStr(var_180 & "'"), var_1A0, -1
  loc_163B9BC:     Set var_118 = var_284
  loc_163B9EA:     If (var_118.RecordCount > 0) Then
  loc_163BA13:       Proc_6_47_EF59D0(var_180, CVar(var_118.Fields.Item("TotRect")), var_284)
  loc_163BA3B:       var_27C.Fields.Item("TotalRect").Value = var_180
  loc_163BA7D:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item("TotalRect")), CVar(var_B0))
  loc_163BA85:       var_190 = (var_A0 + var_180)
  loc_163BA8A:       var_B0 = CSng(var_180 & "'")
  loc_163BAE6:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item("Advance")), var_B0)
  loc_163BB11:       Proc_6_39_E7C810(var_1D0, CVar(var_27C.Fields.Item("TotalRect")))
  loc_163BB31:       var_1A0 = (var_94.Fields.Item("Amount").Value - var_180)
  loc_163BB38:       var_220 = (var_1A0 - var_1D0)
  loc_163BB6E:       var_27C.Fields.Item("Balance").Value = Format(Format(CVar(var_94.Fields.Item("FuncEndDate")), var_1D0), "0.00")
  loc_163BBC2:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item("Balance")), CVar(var_A8), 1)
  loc_163BBCA:       var_190 = (1 + var_180)
  loc_163BBCF:       var_A8 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163BBDE:     End If
  loc_163BBDE:     var_140 = "*"
  loc_163BBE7:     var_130 = "Mark"
  loc_163BC03:     var_27C.Fields.Item(var_130).Value = var_140
  loc_163BC1A:     var_27C.Update var_130, var_140
  loc_163BC64:     If (CDbl(Val(CStr(var_90.Fields.Item("Balance").Value))) = CDbl(0)) Then
  loc_163BC94:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item("Amount")), CVar(var_B8))
  loc_163BC9C:       var_190 = (var_A8 - var_180)
  loc_163BCA1:       var_B8 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163BCDB:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item("Advance")), CVar(var_A0))
  loc_163BCE3:       var_190 = (var_B8 - var_180)
  loc_163BCE8:       var_A0 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163BD22:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item("TotalRect")), CVar(var_B0))
  loc_163BD2A:       var_190 = (var_A0 - var_180)
  loc_163BD2F:       var_B0 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163BD3F:       var_140 = CVar(var_A8) 'Double
  loc_163BD46:       var_130 = "Balance"
  loc_163BD69:       Proc_6_39_E7C810(var_180, CVar(var_27C.Fields.Item(var_130)), var_140)
  loc_163BD71:       var_190 = (var_B0 - var_180)
  loc_163BD76:       var_A8 = CSng(var_94.Fields.Item("Amount").Value)
  loc_163BD8B:       var_90.Delete
  loc_163BD90:     End If
  loc_163BD92:     Set var_27C = Nothing 
  loc_163BD99:     var_94.MoveNext
  loc_163BD9E:     GoTo loc_163B390
  loc_163BDA1:   End If
  loc_163BDA1: End If
  loc_163BDA4: Set var_29C = var_90 
  loc_163BDB3: var_29C.AddNew var_130, var_140
  loc_163BDDD: var_29C.Fields.Item("mLine").Value = "GF"
  loc_163BE0E: var_29C.Fields.Item("SrNo").Value = vbNullString
  loc_163BE1A: var_140 = " Total--> "
  loc_163BE3F: var_29C.Fields.Item("FuncDate").Value = vbNullString
  loc_163BE98: var_29C.Fields.Item("Amount").Value = CVar(CStr(Format(var_B8, "0.00")))
  loc_163BEBE: var_170 = "0.00"
  loc_163BEFC: var_29C.Fields.Item("Advance").Value = CVar(CStr(Format(var_A0, var_170)))
  loc_163BF1E: Proc_6_47_EF59D0(var_170, var_B0, 1, 1, 1)
  loc_163BF46: var_29C.Fields.Item("TotalRect").Value = var_170
  loc_163BFA2: var_29C.Fields.Item("Balance").Value = CVar(CStr(Format(var_A8, "0.00")))
  loc_163BFB9: var_140 = "*"
  loc_163BFC2: var_130 = "Mark"
  loc_163BFDE: var_29C.Fields.Item(var_130).Value = var_140
  loc_163BFF5: var_29C.Update var_130, var_140
  loc_163BFFC: Set var_29C = Nothing 
  loc_163C028: Me.FGrid1.Rows = 2
  loc_163C044: If (var_90.RecordCount > 0) Then
  loc_163C04D:   CVarUnk
  loc_163C052:   VerifyVarObj
  loc_163C058:   Set var_264 = Me.FGrid1
  loc_163C05E:   LateIdStAd
  loc_163C08E:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_90, Me.FGrid1.Text, 1)
  loc_163C099: End If
  loc_163C09D: Set var_2A8 = Me.FGrid1
  loc_163C0A9: var_2A8.Tag = "OutStanding"
  loc_163C0BA: var_2A8.Cols = &HE
  loc_163C0BF: var_130 = 0
  loc_163C0C8: var_150 = 0
  loc_163C0D1: var_1C0 = "mLine"
  loc_163C0DA: LateIdCallSt
  loc_163C0E2: var_130 = 0
  loc_163C0EB: var_150 = 0
  loc_163C0F7: LateIdCallSt
  loc_163C0FF: var_130 = 0
  loc_163C108: var_150 = 1
  loc_163C111: var_1C0 = "SNo."
  loc_163C11A: LateIdCallSt
  loc_163C122: var_130 = 1
  loc_163C131: var_150 = CVar(CInt(7)) 'Integer
  loc_163C138: LateIdCallSt
  loc_163C140: var_130 = 1
  loc_163C14F: var_150 = CVar(CInt(7)) 'Integer
  loc_163C156: LateIdCallSt
  loc_163C15E: var_130 = 1
  loc_163C167: var_150 = &H226
  loc_163C173: LateIdCallSt
  loc_163C17B: var_130 = 0
  loc_163C184: var_150 = 2
  loc_163C18D: var_1C0 = "Doc Id"
  loc_163C196: LateIdCallSt
  loc_163C19E: var_130 = 2
  loc_163C1A7: var_150 = 0
  loc_163C1B3: LateIdCallSt
  loc_163C1BB: var_130 = 0
  loc_163C1C4: var_150 = 3
  loc_163C1CD: var_1C0 = "Function Date"
  loc_163C1D6: LateIdCallSt
  loc_163C1DE: var_130 = 3
  loc_163C1E7: var_150 = &H898
  loc_163C1F3: LateIdCallSt
  loc_163C1FB: var_130 = 0
  loc_163C204: var_150 = 4
  loc_163C20D: var_1C0 = "Function Time"
  loc_163C216: LateIdCallSt
  loc_163C21E: var_130 = 4
  loc_163C227: var_150 = &H6A4
  loc_163C233: LateIdCallSt
  loc_163C23B: var_130 = 0
  loc_163C244: var_150 = 5
  loc_163C24D: var_1C0 = "Function Type"
  loc_163C256: LateIdCallSt
  loc_163C25E: var_130 = 5
  loc_163C267: var_150 = &HBB8
  loc_163C273: LateIdCallSt
  loc_163C27B: var_130 = 0
  loc_163C284: var_150 = 6
  loc_163C28D: var_1C0 = "Party Name"
  loc_163C296: LateIdCallSt
  loc_163C29E: var_130 = 6
  loc_163C2A7: var_150 = &HBB8
  loc_163C2B3: LateIdCallSt
  loc_163C2BB: var_130 = 0
  loc_163C2C4: var_150 = 7
  loc_163C2CD: var_1C0 = "Bill No."
  loc_163C2D6: LateIdCallSt
  loc_163C2DE: var_130 = 7
  loc_163C2ED: var_150 = CVar(CInt(7)) 'Integer
  loc_163C2F4: LateIdCallSt
  loc_163C2FC: var_130 = 7
  loc_163C30B: var_150 = CVar(CInt(7)) 'Integer
  loc_163C312: LateIdCallSt
  loc_163C31A: var_130 = 7
  loc_163C323: var_150 = &H4B0
  loc_163C32F: LateIdCallSt
  loc_163C337: var_130 = 0
  loc_163C340: var_150 = 8
  loc_163C349: var_1C0 = "Bill Date"
  loc_163C352: LateIdCallSt
  loc_163C35A: var_130 = 8
  loc_163C363: var_150 = &H578
  loc_163C36F: LateIdCallSt
  loc_163C377: var_130 = 0
  loc_163C380: var_150 = 9
  loc_163C389: var_1C0 = "Bill Amount"
  loc_163C392: LateIdCallSt
  loc_163C39A: var_130 = 9
  loc_163C3A9: var_150 = CVar(CInt(7)) 'Integer
  loc_163C3B0: LateIdCallSt
  loc_163C3B8: var_130 = 9
  loc_163C3C7: var_150 = CVar(CInt(7)) 'Integer
  loc_163C3CE: LateIdCallSt
  loc_163C3D6: var_130 = 9
  loc_163C3DF: var_150 = &H578
  loc_163C3EB: LateIdCallSt
  loc_163C3F3: var_130 = 0
  loc_163C3FC: var_150 = &HA
  loc_163C405: var_1C0 = "Advance"
  loc_163C40E: LateIdCallSt
  loc_163C416: var_130 = &HA
  loc_163C425: var_150 = CVar(CInt(7)) 'Integer
  loc_163C42C: LateIdCallSt
  loc_163C434: var_130 = &HA
  loc_163C443: var_150 = CVar(CInt(7)) 'Integer
  loc_163C44A: LateIdCallSt
  loc_163C452: var_130 = &HA
  loc_163C45B: var_150 = &H578
  loc_163C467: LateIdCallSt
  loc_163C46F: var_130 = 0
  loc_163C478: var_150 = &HB
  loc_163C481: var_1C0 = "Total Rect"
  loc_163C48A: LateIdCallSt
  loc_163C492: var_130 = &HB
  loc_163C4A1: var_150 = CVar(CInt(7)) 'Integer
  loc_163C4A8: LateIdCallSt
  loc_163C4B0: var_130 = &HB
  loc_163C4BF: var_150 = CVar(CInt(7)) 'Integer
  loc_163C4C6: LateIdCallSt
  loc_163C4CE: var_130 = &HB
  loc_163C4D7: var_150 = &H578
  loc_163C4E3: LateIdCallSt
  loc_163C4EB: var_130 = 0
  loc_163C4F4: var_150 = &HC
  loc_163C4FD: var_1C0 = "Balance"
  loc_163C506: LateIdCallSt
  loc_163C50E: var_130 = &HC
  loc_163C51D: var_150 = CVar(CInt(7)) 'Integer
  loc_163C524: LateIdCallSt
  loc_163C52C: var_130 = &HC
  loc_163C53B: var_150 = CVar(CInt(7)) 'Integer
  loc_163C542: LateIdCallSt
  loc_163C54A: var_130 = &HC
  loc_163C553: var_150 = &H578
  loc_163C55F: LateIdCallSt
  loc_163C567: var_130 = 0
  loc_163C570: var_150 = &HD
  loc_163C579: var_1C0 = "MARK"
  loc_163C582: LateIdCallSt
  loc_163C58A: var_130 = &HD
  loc_163C593: var_150 = 0
  loc_163C59F: LateIdCallSt
  loc_163C5A9: Set var_2A8 = Nothing 
  loc_163C5C1: If (var_94.RecordCount <= 0) Then
  loc_163C5C9:   global_152 = 0
  loc_163C5CC:   Exit Sub
  loc_163C5CD: End If
  loc_163C5D1: Set var_264 = Me.FGrid1
  loc_163C601: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_163C604:   var_130 = vbNullString
  loc_163C60E:   Set var_264 = Me.FGrid1
  loc_163C61F: End If
  loc_163C656: var_130 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_163C676: Me.FGrid1.Row = CVar(CLng(IIf(var_130, FRow, 1)))
  loc_163C6C4: var_130 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_163C6E4: Me.FGrid1.Col = CVar(CLng(IIf(var_130, Fcol, 1)))
  loc_163C700: Set var_90 = Nothing
  loc_163C708: Set var_8C = Nothing
  loc_163C710: Set var_94 = Nothing
  loc_163C718: Set var_118 = Nothing
  loc_163C71D: IStAd
  loc_163C721: Exit Sub
End Sub

Public Sub Proc_249_88_1565B78
  'Data Table: 577ED8
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_EC As CheckBox
  loc_1564AC0: On Error Goto loc_1565B6F
  loc_1564AC8: global_152 = &HFF
  loc_1564AD8: Me.LblProcess.Caption = "Please Wait..."
  loc_1564AEA: Me.LblProcess.Refresh
  loc_1564AF8: var_8C = global_52
  loc_1564B03: If (var_8C = "SalesRegister") Then
  loc_1564B09:   var_9C = CVar(CLng(0)) 'Long
  loc_1564B0E:   var_BC = 0
  loc_1564B3F:   Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix))
  loc_1564B53:   If (var_E6 = 0) Then
  loc_1564B5B:     global_152 = 0
  loc_1564B5E:     Exit Sub
  loc_1564B5F:   End If
  loc_1564B62:   var_9C = CVar(CLng(1)) 'Long
  loc_1564B98:   Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1564BAC:   If (var_E6 = 0) Then
  loc_1564BB4:     global_152 = 0
  loc_1564BB7:     Exit Sub
  loc_1564BB8:   End If
  loc_1564BBB: Else
  loc_1564BC3:   If (var_8C = "PartyOutStanding") Then
  loc_1564BFF:     Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)))
  loc_1564C13:     If (var_E6 = 0) Then
  loc_1564C1B:       global_152 = 0
  loc_1564C1E:       Exit Sub
  loc_1564C1F:     End If
  loc_1564C58:     Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1564C6C:     If (var_E6 = 0) Then
  loc_1564C74:       global_152 = 0
  loc_1564C77:       Exit Sub
  loc_1564C78:     End If
  loc_1564C7B:   Else
  loc_1564C83:     If (var_8C = "PartyWiseOutStanding") Then
  loc_1564CBF:       Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_1564CD3:       If (var_E6 = 0) Then
  loc_1564CDB:         global_152 = 0
  loc_1564CDE:         Exit Sub
  loc_1564CDF:       End If
  loc_1564D18:       Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1564D2C:       If (var_E6 = 0) Then
  loc_1564D34:         global_152 = 0
  loc_1564D37:         Exit Sub
  loc_1564D38:       End If
  loc_1564D44:       Set var_88 = Me.Check1
  loc_1564D4A:       Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152)
  loc_1564D52:       var_9C = var_EC.Value
  loc_1564D68:       If (CLng(var_DE) = 0) Then
  loc_1564D86:         Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_1564D91:         global_56 = var_E4
  loc_1564DA1:         If (global_152 = 0) Then
  loc_1564DA4:           Exit Sub
  loc_1564DA5:         End If
  loc_1564DA5:       End If
  loc_1564DA8:     Else
  loc_1564DB0:       If (var_8C = "CashierCollection") Then
  loc_1564DB6:         var_9C = CVar(CLng(0)) 'Long
  loc_1564DEC:         Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1564E00:         If (var_E6 = 0) Then
  loc_1564E08:           global_152 = 0
  loc_1564E0B:           Exit Sub
  loc_1564E0C:         End If
  loc_1564E45:         Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1564E59:         If (var_E6 = 0) Then
  loc_1564E61:           global_152 = 0
  loc_1564E64:           Exit Sub
  loc_1564E65:         End If
  loc_1564E71:         Set var_88 = Me.Check1
  loc_1564E77:         Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152)
  loc_1564E7F:         var_9C = var_EC.Value
  loc_1564E95:         If (CLng(var_DE) = 0) Then
  loc_1564EB3:           Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_1564EBE:           global_56 = var_E4
  loc_1564ECE:           If (global_152 = 0) Then
  loc_1564ED1:             Exit Sub
  loc_1564ED2:           End If
  loc_1564ED2:         End If
  loc_1564ED5:       Else
  loc_1564EDD:         If (var_8C = "CashierCollectionMIS") Then
  loc_1564EE3:           var_9C = CVar(CLng(0)) 'Long
  loc_1564F19:           Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1564F2D:           If (var_E6 = 0) Then
  loc_1564F35:             global_152 = 0
  loc_1564F38:             Exit Sub
  loc_1564F39:           End If
  loc_1564F72:           Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1564F86:           If (var_E6 = 0) Then
  loc_1564F8E:             global_152 = 0
  loc_1564F91:             Exit Sub
  loc_1564F92:           End If
  loc_1564F95:         Else
  loc_1564F9D:           If (var_8C = "BookingDetail") Then
  loc_1564FD9:             Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_1564FED:             If (var_E6 = 0) Then
  loc_1564FF5:               global_152 = 0
  loc_1564FF8:               Exit Sub
  loc_1564FF9:             End If
  loc_1565032:             Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_1565046:             If (var_E6 = 0) Then
  loc_156504E:               global_152 = 0
  loc_1565051:               Exit Sub
  loc_1565052:             End If
  loc_156508B:             Call Proc_249_96_1060FD8(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)), global_152)
  loc_156509F:             If (var_E6 = 0) Then
  loc_15650A7:               global_152 = 0
  loc_15650AA:               Exit Sub
  loc_15650AB:             End If
  loc_15650AE:           Else
  loc_15650B6:             If (var_8C = "SettleRepHall") Then
  loc_15650F2:               Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_1565106:               If (var_E6 = 0) Then
  loc_156510E:                 global_152 = 0
  loc_1565111:                 Exit Sub
  loc_1565112:               End If
  loc_156514B:               Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_156515F:               If (var_E6 = 0) Then
  loc_1565167:                 global_152 = 0
  loc_156516A:                 Exit Sub
  loc_156516B:               End If
  loc_1565177:               Set var_88 = Me.Check1
  loc_156517D:               Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152)
  loc_1565185:               var_9C = var_EC.Value
  loc_156519B:               If (CLng(var_DE) = 0) Then
  loc_15651B9:                 Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_15651C4:                 global_56 = var_E4
  loc_15651D4:                 If (global_152 = 0) Then
  loc_15651D7:                   Exit Sub
  loc_15651D8:                 End If
  loc_15651D8:               End If
  loc_15651DB:             Else
  loc_15651E3:               If (var_8C = "TaxReportHall") Then
  loc_15651E9:                 var_9C = CVar(CLng(0)) 'Long
  loc_156521F:                 Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1565233:                 If (var_E6 = 0) Then
  loc_156523B:                   global_152 = 0
  loc_156523E:                   Exit Sub
  loc_156523F:                 End If
  loc_1565278:                 Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_156528C:                 If (var_E6 = 0) Then
  loc_1565294:                   global_152 = 0
  loc_1565297:                   Exit Sub
  loc_1565298:                 End If
  loc_15652A4:                 Set var_88 = Me.Check1
  loc_15652AA:                 Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152)
  loc_15652B2:                 var_9C = var_EC.Value
  loc_15652C8:                 If (CLng(var_DE) = 0) Then
  loc_15652E6:                   Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_15652F1:                   global_56 = var_E4
  loc_1565301:                   If (global_152 = 0) Then
  loc_1565304:                     Exit Sub
  loc_1565305:                   End If
  loc_1565305:                 End If
  loc_1565308:               Else
  loc_1565310:                 If (var_8C = "TaxwiseDetailReportHall") Then
  loc_1565316:                   var_9C = CVar(CLng(0)) 'Long
  loc_156534C:                   Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1565360:                   If (var_E6 = 0) Then
  loc_1565368:                     global_152 = 0
  loc_156536B:                     Exit Sub
  loc_156536C:                   End If
  loc_15653A5:                   Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_15653B9:                   If (var_E6 = 0) Then
  loc_15653C1:                     global_152 = 0
  loc_15653C4:                     Exit Sub
  loc_15653C5:                   End If
  loc_15653D1:                   Set var_88 = Me.Check1
  loc_15653D7:                   Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152)
  loc_15653DF:                   var_9C = var_EC.Value
  loc_15653F5:                   If (CLng(var_DE) = 0) Then
  loc_1565413:                     Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_156541E:                     global_56 = var_E4
  loc_156542E:                     If (global_152 = 0) Then
  loc_1565431:                       Exit Sub
  loc_1565432:                     End If
  loc_1565432:                   End If
  loc_1565435:                 Else
  loc_156543D:                   If (var_8C = "TaxSummaryHall") Then
  loc_1565443:                     var_9C = CVar(CLng(0)) 'Long
  loc_1565479:                     Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_156548D:                     If (var_E6 = 0) Then
  loc_1565495:                       global_152 = 0
  loc_1565498:                       Exit Sub
  loc_1565499:                     End If
  loc_15654D2:                     Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_15654E6:                     If (var_E6 = 0) Then
  loc_15654EE:                       global_152 = 0
  loc_15654F1:                       Exit Sub
  loc_15654F2:                     End If
  loc_15654F5:                   Else
  loc_15654FD:                     If (var_8C = "DailyFuncSheet") Then
  loc_1565503:                       var_9C = CVar(CLng(0)) 'Long
  loc_1565508:                       var_BC = 1
  loc_156553B:                       If (IsDate(CVar(CStr(Me.FGrid.TextMatrix)))) = 0) Then
  loc_1565543:                         global_152 = 0
  loc_1565546:                         Exit Sub
  loc_1565547:                       End If
  loc_156554A:                       var_9C = CVar(CLng(1)) 'Long
  loc_156554F:                       var_BC = 1
  loc_1565582:                       If (IsDate(CVar(CStr(Me.FGrid.TextMatrix)))) = 0) Then
  loc_156558A:                         global_152 = 0
  loc_156558D:                         Exit Sub
  loc_156558E:                       End If
  loc_15655C7:                       Call Proc_249_96_1060FD8(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)), global_152, 0)
  loc_15655DB:                       If (var_E6 = 0) Then
  loc_15655E3:                         global_152 = 0
  loc_15655E6:                         Exit Sub
  loc_15655E7:                       End If
  loc_1565620:                       Call Proc_249_96_1060FD8(CInt(3), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(3)), global_152, CVar(CLng(3)))
  loc_1565634:                       If (var_E6 = 0) Then
  loc_156563C:                         global_152 = 0
  loc_156563F:                         Exit Sub
  loc_1565640:                       End If
  loc_1565648:                       var_BC = 0
  loc_1565679:                       Call Proc_249_96_1060FD8(CInt(4), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), var_BC, CVar(CLng(4)), global_152)
  loc_156568D:                       If (var_E6 = 0) Then
  loc_1565695:                         global_152 = 0
  loc_1565698:                         Exit Sub
  loc_1565699:                       End If
  loc_15656A5:                       Set var_88 = Me.Check1
  loc_15656AB:                       Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152, var_BC)
  loc_15656B3:                       var_9C = var_EC.Value
  loc_15656C9:                       If (CLng(var_DE) = 0) Then
  loc_15656E7:                         Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_15656F2:                         global_56 = var_E4
  loc_1565702:                         If (global_152 = 0) Then
  loc_1565705:                           Exit Sub
  loc_1565706:                         End If
  loc_1565706:                       End If
  loc_1565712:                       Set var_88 = Me.Check1
  loc_1565718:                       Call 0.Method_Proc_249_88_1565B780 (2, var_EC, var_DE, global_152)
  loc_1565736:                       If (CLng(var_DE) = 0) Then
  loc_1565754:                         Call Proc_249_92_12A27D8(global_176, 2, CByte(1))
  loc_156575F:                         global_60 = var_E4
  loc_156576F:                         If (var_EC.Value = 0) Then
  loc_1565772:                           Exit Sub
  loc_1565773:                         End If
  loc_1565773:                       End If
  loc_1565776:                     Else
  loc_156577E:                       If (var_8C = "CoverAnalysis") Then
  loc_1565784:                         var_9C = CVar(CLng(0)) 'Long
  loc_15657BA:                         Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_15657CE:                         If (var_E6 = 0) Then
  loc_15657D6:                           global_152 = 0
  loc_15657D9:                           Exit Sub
  loc_15657DA:                         End If
  loc_1565813:                         Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1565827:                         If (var_E6 = 0) Then
  loc_156582F:                           global_152 = 0
  loc_1565832:                           Exit Sub
  loc_1565833:                         End If
  loc_1565836:                       Else
  loc_156583E:                         If (var_8C = "ItemWiseSaleHall") Then
  loc_156587A:                           Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)))
  loc_156588E:                           If (var_E6 = 0) Then
  loc_1565896:                             global_152 = 0
  loc_1565899:                             Exit Sub
  loc_156589A:                           End If
  loc_15658D3:                           Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_15658E7:                           If (var_E6 = 0) Then
  loc_15658EF:                             global_152 = 0
  loc_15658F2:                             Exit Sub
  loc_15658F3:                           End If
  loc_15658F6:                         Else
  loc_15658FE:                           If (var_8C = "CompanyWiseSaleHall") Then
  loc_156593A:                             Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(0)), global_152)
  loc_156594E:                             If (var_E6 = 0) Then
  loc_1565956:                               global_152 = 0
  loc_1565959:                               Exit Sub
  loc_156595A:                             End If
  loc_1565993:                             Call Proc_249_96_1060FD8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)), global_152)
  loc_15659A7:                             If (var_E6 = 0) Then
  loc_15659AF:                               global_152 = 0
  loc_15659B2:                               Exit Sub
  loc_15659B3:                             End If
  loc_15659BF:                             Set var_88 = Me.Check1
  loc_15659C5:                             Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, global_152)
  loc_15659E3:                             If (CLng(var_DE) = 0) Then
  loc_1565A01:                               Call Proc_249_92_12A27D8(global_172, 1, CByte(1), var_E4)
  loc_1565A0C:                               global_56 = var_E4
  loc_1565A1C:                               If (var_EC.Value = 0) Then
  loc_1565A1F:                                 Exit Sub
  loc_1565A20:                               End If
  loc_1565A20:                             End If
  loc_1565A23:                           Else
  loc_1565A2B:                             If (var_8C = "FunctionWiseItemDetail") Then
  loc_1565A31:                               var_9C = CVar(CLng(0)) 'Long
  loc_1565A67:                               Call Proc_249_96_1060FD8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1565A7B:                               If (var_E6 = 0) Then
  loc_1565A83:                                 global_152 = 0
  loc_1565A86:                                 Exit Sub
  loc_1565A87:                               End If
  loc_1565A93:                               Set var_88 = Me.Check1
  loc_1565A99:                               Call 0.Method_Proc_249_88_1565B780 (1, var_EC, var_DE, global_152, var_9C)
  loc_1565AA1:                               var_9C = var_EC.Value
  loc_1565AB7:                               If (CLng(var_DE) = 0) Then
  loc_1565AD0:                                 var_9C = global_172
  loc_1565AD5:                                 Call Proc_249_92_12A27D8(var_9C, 1, CByte(1), var_E4)
  loc_1565AE0:                                 global_56 = var_E4
  loc_1565AF0:                                 If (global_152 = 0) Then
  loc_1565AF3:                                   Exit Sub
  loc_1565AF4:                                 End If
  loc_1565AF4:                               End If
  loc_1565AF4:                             End If
  loc_1565AF4:                           End If
  loc_1565AF4:                         End If
  loc_1565AF4:                       End If
  loc_1565AF4:                     End If
  loc_1565AF4:                   End If
  loc_1565AF4:                 End If
  loc_1565AF4:               End If
  loc_1565AF4:             End If
  loc_1565AF4:           End If
  loc_1565AF4:         End If
  loc_1565AF4:       End If
  loc_1565AF4:     End If
  loc_1565AF4:   End If
  loc_1565AF4: End If
  loc_1565B01: Me.LblProcess.Caption = "Please Wait..............."
  loc_1565B13: Me.LblProcess.Refresh
  loc_1565B24: Call RetBack(Me)
  loc_1565B3A: Me.PictParameter.Width = CDbl(0)
  loc_1565B4F: Me.LblProcess.Caption = "Please Wait....................."
  loc_1565B61: Me.LblProcess.Refresh
  loc_1565B69: Call Form_Resize()
  loc_1565B6E: Exit Sub
  loc_1565B6F: ' Referenced from: 1564AC0
  loc_1565B6F: Proc_6_60_E62BC4(var_E4, var_9C)
  loc_1565B74: Exit Sub
End Sub

Public Sub Proc_249_89_1363080
  'Data Table: 577ED8
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_BC As String
  Dim var_148 As MSHFlexGrid
  Dim var_86 As Integer
  loc_136287B: var_B0 = CLng(Me.FGrid.Row)
  loc_136288B: If (var_B0 = CLng(2)) Then
  loc_1362894:   var_B4 = global_52
  loc_136289F:   If Not (var_B4 = "BookingDetail") Then
  loc_13628AA:     If (var_B4 = "DailyFuncSheet") Then
  loc_13628AD:     End If
  loc_13628B9:     Set var_9C = Me.TxtGrid
  loc_13628BF:     Call 0.Method_Proc_249_89_13630800 (0, var_B8)
  loc_13628DE:     If (var_B8.Text <> vbNullString) Then
  loc_13628F4:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136290C:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1362929:       Set var_B8 = Me.ListView.SelectedItem
  loc_136292F:       var_BC = var_B8.Text
  loc_1362937:       var_134 = CVar(var_BC) 'String
  loc_136293F:       Set var_148 = Me.FGrid
  loc_1362945:       LateIdCallSt
  loc_1362965:     End If
  loc_1362968:   Else
  loc_1362970:     If (var_B4 = "SalesRegister") Then
  loc_136297F:       Set var_9C = Me.TxtGrid
  loc_1362985:       Call 0.Method_Proc_249_89_13630800 (0, var_B8, var_BC, var_148)
  loc_136298D:       var_134 = var_B8.Text
  loc_13629A4:       If (var_BC <> vbNullString) Then
  loc_13629BA:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13629D2:         var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13629EF:         Set var_B8 = Me.ListView.SelectedItem
  loc_13629F5:         var_BC = var_B8.Text
  loc_13629FD:         var_134 = CVar(var_BC) 'String
  loc_1362A05:         Set var_148 = Me.FGrid
  loc_1362A0B:         LateIdCallSt
  loc_1362A2B:       End If
  loc_1362A2B:     End If
  loc_1362A2B:   End If
  loc_1362A2E: Else
  loc_1362A35:   If Not (var_B0 = CLng(5)) Then
  loc_1362A3F:     If Not (var_B0 = CLng(6)) Then
  loc_1362A49:       If Not (var_B0 = CLng(7)) Then
  loc_1362A53:         If Not (var_B0 = CLng(8)) Then
  loc_1362A5D:           If (var_B0 = CLng(9)) Then
  loc_1362A60:           End If
  loc_1362A60:         End If
  loc_1362A60:       End If
  loc_1362A60:     End If
  loc_1362A63:   Else
  loc_1362A6A:     If (var_B0 = CLng(3)) Then
  loc_1362A7E:       If (global_52 = "DailyFuncSheet") Then
  loc_1362A8D:         Set var_9C = Me.TxtGrid
  loc_1362A93:         Call 0.Method_Proc_249_89_13630800 (0, var_B8, var_BC, var_148, var_134)
  loc_1362A9B:         var_114 = var_B8.Text
  loc_1362AB2:         If (var_BC <> vbNullString) Then
  loc_1362AC8:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1362AE0:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1362B0B:           var_134 = CVar(Me.ListView.SelectedItem.Text) 'String
  loc_1362B13:           Set var_148 = Me.FGrid
  loc_1362B19:           LateIdCallSt
  loc_1362B39:         End If
  loc_1362B4C:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1362B55:         Set var_B8 = Me.FGrid
  loc_1362B64:         var_114 = CVar(CLng(var_B8.Col)) 'Long
  loc_1362B9B:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1362B9E:           var_F4 = True
  loc_1362BAB:           Set var_9C = Me.GridSel
  loc_1362BB1:           Call 0.Method_Proc_249_89_13630800 (1, var_B8, var_F4, var_114, var_F4, var_148, var_134)
  loc_1362BB9:           var_B8.Visible = var_114
  loc_1362BD0:           Set var_9C = Me.Check1
  loc_1362BD6:           Call 0.Method_Proc_249_89_13630800 (1, var_B8, &HFF, var_F4)
  loc_1362BDE:           var_B8.Visible = var_F4
  loc_1362BED:         Else
  loc_1362BED:           var_F4 = False
  loc_1362BFB:           Set var_9C = Me.GridSel
  loc_1362C01:           Call 0.Method_Proc_249_89_13630800 (1, var_B8, var_F4)
  loc_1362C09:           var_B8.Visible = var_114
  loc_1362C20:           Set var_9C = Me.Check1
  loc_1362C26:           Call 0.Method_Proc_249_89_13630800 (1, var_B8, 0)
  loc_1362C2E:           var_B8.Visible = var_F4
  loc_1362C3A:         End If
  loc_1362C3A:       End If
  loc_1362C3D:     Else
  loc_1362C44:       If (var_B0 = CLng(4)) Then
  loc_1362C58:         If (global_52 = "DailyFuncSheet") Then
  loc_1362C67:           Set var_9C = Me.TxtGrid
  loc_1362C6D:           Call 0.Method_Proc_249_89_13630800 (0, var_B8)
  loc_1362C8C:           If (var_B8.Text <> vbNullString) Then
  loc_1362CA2:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1362CBA:             var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1362CE5:             var_134 = CVar(Me.ListView.SelectedItem.Text) 'String
  loc_1362CED:             Set var_148 = Me.FGrid
  loc_1362CF3:             LateIdCallSt
  loc_1362D13:           End If
  loc_1362D26:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1362D2F:           Set var_B8 = Me.FGrid
  loc_1362D3E:           var_114 = CVar(CLng(var_B8.Col)) 'Long
  loc_1362D58:           var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1362D75:           If (var_BC = "Yes") Then
  loc_1362D85:             Set var_9C = Me.GridSel
  loc_1362D8B:             Call 0.Method_Proc_249_89_13630800 (2, var_B8, True, var_114, True)
  loc_1362D93:             var_B8.Visible = var_148
  loc_1362DAA:             Set var_9C = Me.Check1
  loc_1362DB0:             Call 0.Method_Proc_249_89_13630800 (2, var_B8, &HFF, var_134)
  loc_1362DB8:             var_B8.Visible = var_114
  loc_1362DC7:           Else
  loc_1362DC7:             var_F4 = False
  loc_1362DD5:             Set var_9C = Me.GridSel
  loc_1362DDB:             Call 0.Method_Proc_249_89_13630800 (2, var_B8, var_F4)
  loc_1362DE3:             var_B8.Visible = var_F4
  loc_1362DFA:             Set var_9C = Me.Check1
  loc_1362E00:             Call 0.Method_Proc_249_89_13630800 (2, var_B8)
  loc_1362E08:             var_B8.Visible = False
  loc_1362E14:           End If
  loc_1362E14:         End If
  loc_1362E17:       Else
  loc_1362E1E:         If Not (var_B0 = CLng(0)) Then
  loc_1362E28:           If (var_B0 = CLng(1)) Then
  loc_1362E2B:           End If
  loc_1362E2F:           Set var_D4 = Me.FGrid
  loc_1362E64:           Set var_9C = Me.TxtGrid
  loc_1362E6A:           Call 0.Method_Proc_249_89_13630800 (0, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_1362E8B:           LateIdCallSt
  loc_1362EBA:           If (global_52 = "FunctionWiseItemDetail") Then
  loc_1362EC9:             Call 0.Method_arg_1C0 (var_BC, "SELECT '' As _,S.PartyName+' ('+Cast(S.Vno As Varchar)+')' AS PartyName,S.DocId as Code FROM (((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) WHERE S.RestCOde='", Me.FGrid)
  loc_1362EE0:             Set var_9C = Me.MemMas
  loc_1362EF8:             Set var_B8 = Me.MemMas
  loc_1362F10:             Set var_C0 = Me.MemMas
  loc_1362F27:             Proc_6_7_F25D88(var_16C, CVar(CStr(MemMas.DispID_41)), CVar(CLng(MemMas.DispID_B)))
  loc_1362F6B:             Call Proc_249_94_12114C8(1, CStr(CVar(CLng(MemMas.DispID_A)) & var_16C & " Order by S.PartyName"))
  loc_1362F7A:             var_AC = Me.MemMas.Height
  loc_1362F8A:             Set var_B8 = Me.Picture3
  loc_1362F9B:             Call 0.Method_Me8 (var_1A4, var_AC)
  loc_1362FB2:             var_F4 = CVar((((var_1A4 - CDbl(var_AC)) - MDIForm1.Picture3.Height) - CDbl(1200))) 'Single
  loc_1362FC0:             Set var_C0 = Me.GridSel
  loc_1362FC6:             Call 0.Method_Proc_249_89_13630800 (1, var_D4, CVar(CLng(MemMas.DispID_A)))
  loc_1362FCE:             var_D4.Height = CVar(CVar(Proc_6_33_1512840(var_B8, CVar(CLng(var_D4.Row)))) & var_BC & "' And Vo.FromDate=")
  loc_1362FEC:             Set var_9C = Me.Check1
  loc_1362FF2:             Call 0.Method_Proc_249_89_13630800 (1, var_B8)
  loc_1362FFA:             var_B8.Visible = False
  loc_1363015:             Set var_9C = Me.Check1
  loc_136301B:             Call 0.Method_Proc_249_89_13630800 (1, var_B8)
  loc_1363023:             var_B8.Value = CInt(0)
  loc_136302F:           End If
  loc_136302F:         End If
  loc_136302F:       End If
  loc_136302F:     End If
  loc_136302F:   End If
  loc_136302F: End If
  loc_1363031: var_86 = &HFF
  loc_136303A: If (arg_10 = 0) Then
  loc_1363041:   Set var_9C = Me.FGrid
  loc_136305D:   Set var_9C = Me.TxtGrid
  loc_1363063:   Call 0.Method_Proc_249_89_13630800 (0, var_B8, 0)
  loc_136306B:   var_B8.Visible = FGrid.DispID_8001
  loc_1363077: End If
  loc_1363077: Proc_249_89_1363080 = var_86
End Sub

Public Sub Proc_249_90_15ABF24
  'Data Table: 577ED8
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_E8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_114 As PictureBox
  Dim var_118 As MSHFlexGrid
  loc_15AACDF: Me.Pic.Top = CDbl(8300)
  loc_15AACF9: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_15AAD13: Me.FGrid.Top = CVar(CDbl(&H64))
  loc_15AAD2E: Me.FGrid.Rows = 6
  loc_15AAD49: Me.FGrid.Cols = 3
  loc_15AAD64: Me.FGrid.FixedCols = 1
  loc_15AAD6C: var_9C = 0
  loc_15AAD75: var_BC = &H898
  loc_15AAD82: Set var_8C = Me.FGrid
  loc_15AAD88: LateIdCallSt
  loc_15AAD93: var_9C = 1
  loc_15AAD9C: var_BC = &H7B7
  loc_15AADA9: Set var_8C = Me.FGrid
  loc_15AADAF: LateIdCallSt
  loc_15AADBA: var_9C = 2
  loc_15AADC3: var_BC = 0
  loc_15AADD0: Set var_8C = Me.FGrid
  loc_15AADD6: LateIdCallSt
  loc_15AADE1: var_9C = 1
  loc_15AADF0: var_BC = CVar(CInt(1)) 'Integer
  loc_15AADF8: Set var_8C = Me.FGrid
  loc_15AADFE: LateIdCallSt
  loc_15AAE2E: For var_E0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E0 'Integer
  loc_15AAE38:   var_9C = CVar(CLng(var_86)) 'Long
  loc_15AAE3D:   var_BC = 0
  loc_15AAE4A:   Set var_8C = Me.FGrid
  loc_15AAE50:   LateIdCallSt
  loc_15AAE5E: Next var_E0 'Integer
  loc_15AAE63: Call Proc_249_95_16519DC()
  loc_15AAE6F: For var_E4 = 1 To 4: var_86 = var_E4 'Integer
  loc_15AAE7F:   Set var_8C = Me.GridSel
  loc_15AAE85:   Call 0.Method_Proc_249_90_15ABF240 (var_86, var_E8)
  loc_15AAEA3:   If (CBool(var_E8.Visible) = &HFF) Then
  loc_15AAEAC:     var_88 = (var_88 + 1)
  loc_15AAEAF:   End If
  loc_15AAEB2: Next var_E4 'Integer
  loc_15AAED2: var_9C = CVar(CDbl(((((global_124 - global_126) + 1) * CInt(220)) + 500))) 'Single
  loc_15AAEE1: Me.FGrid.Height = var_9C
  loc_15AAEEF: var_F8 = global_128 'Variant
  loc_15AAEFE: If (var_F8 = 0) Then
  loc_15AAF14:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_15AAF38:   Set var_E8 = Me.PictParameter
  loc_15AAF3E:   var_E8.Width = (CDbl(Me.FGrid.Width) + CDbl(&H7D))
  loc_15AAF50: Else
  loc_15AAF5B:   If (var_F8 = 1) Then
  loc_15AAF6F:     Set var_8C = Me.GridSel
  loc_15AAF75:     Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AAF7D:     var_E8.Left = CVar(CDbl(&H4B))
  loc_15AAF8D:     Set var_E8 = Me.FGrid
  loc_15AAFBA:     var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_E8.Height)) + CDbl(600))) 'Single
  loc_15AAFC8:     Set var_10C = Me.GridSel
  loc_15AAFCE:     Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AAFD6:     var_110.Top = CVar(CDbl(&H4B))
  loc_15AAFF6:     Set var_8C = Me.GridSel
  loc_15AAFFC:     Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB01B:     Set var_10C = Me.Check1
  loc_15AB021:     Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB029:     var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB045:     Set var_8C = Me.GridSel
  loc_15AB04B:     Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB06A:     Set var_10C = Me.Check1
  loc_15AB070:     Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB078:     var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AB094:     Set var_10C = Me.GridSel
  loc_15AB09A:     Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB0A2:     var_108 = var_110.Width
  loc_15AB0B4:     Set var_8C = Me.GridSel
  loc_15AB0BA:     Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB0E0:     Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H4B))
  loc_15AB0FC:   Else
  loc_15AB107:     If (var_F8 = 2) Then
  loc_15AB11B:       Set var_8C = Me.GridSel
  loc_15AB121:       Call 0.Method_Proc_249_90_15ABF240 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15AB129:       var_E8.Left = var_108
  loc_15AB139:       Set var_E8 = Me.FGrid
  loc_15AB13F:       var_108 = var_E8.Height
  loc_15AB166:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AB174:       Set var_10C = Me.GridSel
  loc_15AB17A:       Call 0.Method_Proc_249_90_15ABF240 (1, var_110, CVar(CDbl(&H4B)))
  loc_15AB182:       var_110.Top = var_108
  loc_15AB1A2:       Set var_8C = Me.GridSel
  loc_15AB1A8:       Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB1C7:       Set var_10C = Me.Check1
  loc_15AB1CD:       Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB1D5:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB1F1:       Set var_8C = Me.GridSel
  loc_15AB1F7:       Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB216:       Set var_10C = Me.Check1
  loc_15AB21C:       Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB224:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AB240:       Set var_10C = Me.GridSel
  loc_15AB246:       Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB24E:       var_108 = var_110.Width
  loc_15AB260:       Set var_8C = Me.GridSel
  loc_15AB266:       Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB281:       var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15AB28F:       Set var_114 = Me.GridSel
  loc_15AB295:       Call 0.Method_Proc_249_90_15ABF240 (2, var_118, CVar(CDbl(&H4B)))
  loc_15AB29D:       var_118.Left = var_108
  loc_15AB2BC:       Set var_E8 = Me.FGrid
  loc_15AB2C2:       var_108 = var_E8.Height
  loc_15AB2E9:       var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AB2F7:       Set var_10C = Me.GridSel
  loc_15AB2FD:       Call 0.Method_Proc_249_90_15ABF240 (2, var_110, CVar(CDbl(&H4B)))
  loc_15AB305:       var_110.Top = var_108
  loc_15AB325:       Set var_8C = Me.GridSel
  loc_15AB32B:       Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15AB34A:       Set var_10C = Me.Check1
  loc_15AB350:       Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15AB358:       var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB374:       Set var_8C = Me.GridSel
  loc_15AB37A:       Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15AB399:       Set var_10C = Me.Check1
  loc_15AB39F:       Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15AB3A7:       var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AB3C3:       Set var_10C = Me.GridSel
  loc_15AB3C9:       Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15AB3D1:       var_108 = var_110.Width
  loc_15AB3E3:       Set var_8C = Me.GridSel
  loc_15AB3E9:       Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15AB40F:       Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H32))
  loc_15AB42B:     Else
  loc_15AB436:       If (var_F8 = 3) Then
  loc_15AB44A:         Set var_8C = Me.GridSel
  loc_15AB450:         Call 0.Method_Proc_249_90_15ABF240 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15AB458:         var_E8.Left = var_108
  loc_15AB468:         Set var_E8 = Me.FGrid
  loc_15AB46E:         var_108 = var_E8.Height
  loc_15AB495:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AB4A3:         Set var_10C = Me.GridSel
  loc_15AB4A9:         Call 0.Method_Proc_249_90_15ABF240 (1, var_110, CVar(CDbl(&H4B)))
  loc_15AB4B1:         var_110.Top = var_108
  loc_15AB4D1:         Set var_8C = Me.GridSel
  loc_15AB4D7:         Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB4F6:         Set var_10C = Me.Check1
  loc_15AB4FC:         Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB504:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB520:         Set var_8C = Me.GridSel
  loc_15AB526:         Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB545:         Set var_10C = Me.Check1
  loc_15AB54B:         Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB553:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AB56F:         Set var_8C = Me.GridSel
  loc_15AB575:         Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB594:         Set var_10C = Me.GridSel
  loc_15AB59A:         Call 0.Method_Proc_249_90_15ABF240 (3, var_110)
  loc_15AB5A2:         var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15AB5BE:         Set var_10C = Me.GridSel
  loc_15AB5C4:         Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB5CC:         var_108 = var_110.Height
  loc_15AB5DE:         Set var_8C = Me.GridSel
  loc_15AB5E4:         Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB5FF:         var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15AB60D:         Set var_114 = Me.GridSel
  loc_15AB613:         Call 0.Method_Proc_249_90_15ABF240 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15AB61B:         var_118.Top = var_108
  loc_15AB63F:         Set var_8C = Me.GridSel
  loc_15AB645:         Call 0.Method_Proc_249_90_15ABF240 (3, var_E8)
  loc_15AB664:         Set var_10C = Me.Check1
  loc_15AB66A:         Call 0.Method_Proc_249_90_15ABF240 (3, var_110)
  loc_15AB672:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB68E:         Set var_8C = Me.GridSel
  loc_15AB694:         Call 0.Method_Proc_249_90_15ABF240 (3, var_E8)
  loc_15AB6B3:         Set var_10C = Me.Check1
  loc_15AB6B9:         Call 0.Method_Proc_249_90_15ABF240 (3, var_110)
  loc_15AB6C1:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AB6DD:         Set var_10C = Me.GridSel
  loc_15AB6E3:         Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB6EB:         var_108 = var_110.Width
  loc_15AB6FD:         Set var_8C = Me.GridSel
  loc_15AB703:         Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB71E:         var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15AB72C:         Set var_114 = Me.GridSel
  loc_15AB732:         Call 0.Method_Proc_249_90_15ABF240 (2, var_118, CVar(CDbl(var_E8.Left)))
  loc_15AB73A:         var_118.Left = var_108
  loc_15AB759:         Set var_E8 = Me.FGrid
  loc_15AB75F:         var_108 = var_E8.Height
  loc_15AB786:         var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AB794:         Set var_10C = Me.GridSel
  loc_15AB79A:         Call 0.Method_Proc_249_90_15ABF240 (2, var_110, CVar(CDbl(var_E8.Left)))
  loc_15AB7A2:         var_110.Top = var_108
  loc_15AB7C2:         Set var_8C = Me.GridSel
  loc_15AB7C8:         Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15AB7E7:         Set var_10C = Me.Check1
  loc_15AB7ED:         Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15AB7F5:         var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB811:         Set var_8C = Me.GridSel
  loc_15AB817:         Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15AB836:         Set var_10C = Me.Check1
  loc_15AB83C:         Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15AB844:         var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15AB860:         Set var_10C = Me.GridSel
  loc_15AB866:         Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15AB86E:         var_108 = var_110.Width
  loc_15AB880:         Set var_8C = Me.GridSel
  loc_15AB886:         Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15AB8AC:         Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H32))
  loc_15AB8C8:       Else
  loc_15AB8D3:         If (var_F8 = 4) Then
  loc_15AB8E7:           Set var_8C = Me.GridSel
  loc_15AB8ED:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8, CVar(CDbl(&H4B)))
  loc_15AB8F5:           var_E8.Left = var_108
  loc_15AB905:           Set var_E8 = Me.FGrid
  loc_15AB90B:           var_108 = var_E8.Height
  loc_15AB932:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15AB940:           Set var_10C = Me.GridSel
  loc_15AB946:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110, CVar(CDbl(&H4B)))
  loc_15AB94E:           var_110.Top = var_108
  loc_15AB96E:           Set var_8C = Me.GridSel
  loc_15AB974:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB993:           Set var_10C = Me.Check1
  loc_15AB999:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB9A1:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15AB9BD:           Set var_8C = Me.GridSel
  loc_15AB9C3:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15AB9E2:           Set var_10C = Me.Check1
  loc_15AB9E8:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15AB9F0:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ABA0C:           Set var_10C = Me.GridSel
  loc_15ABA12:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15ABA1A:           var_108 = var_110.Width
  loc_15ABA2C:           Set var_8C = Me.GridSel
  loc_15ABA32:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15ABA4D:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&H19))) 'Single
  loc_15ABA5B:           Set var_114 = Me.GridSel
  loc_15ABA61:           Call 0.Method_Proc_249_90_15ABF240 (2, var_118, CVar(CDbl(&H4B)))
  loc_15ABA69:           var_118.Left = var_108
  loc_15ABA88:           Set var_E8 = Me.FGrid
  loc_15ABA8E:           var_108 = var_E8.Height
  loc_15ABAB5:           var_9C = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_108)) + CDbl(600))) 'Single
  loc_15ABAC3:           Set var_10C = Me.GridSel
  loc_15ABAC9:           Call 0.Method_Proc_249_90_15ABF240 (2, var_110, CVar(CDbl(&H4B)))
  loc_15ABAD1:           var_110.Top = var_108
  loc_15ABAF1:           Set var_8C = Me.GridSel
  loc_15ABAF7:           Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15ABB16:           Set var_10C = Me.Check1
  loc_15ABB1C:           Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15ABB24:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15ABB40:           Set var_8C = Me.GridSel
  loc_15ABB46:           Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15ABB65:           Set var_10C = Me.Check1
  loc_15ABB6B:           Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15ABB73:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ABB8F:           Set var_8C = Me.GridSel
  loc_15ABB95:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15ABBB4:           Set var_10C = Me.GridSel
  loc_15ABBBA:           Call 0.Method_Proc_249_90_15ABF240 (3, var_110)
  loc_15ABBC2:           var_110.Left = CVar(CDbl(var_E8.Left))
  loc_15ABBDE:           Set var_10C = Me.GridSel
  loc_15ABBE4:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15ABBEC:           var_108 = var_110.Height
  loc_15ABBFE:           Set var_8C = Me.GridSel
  loc_15ABC04:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15ABC1F:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15ABC2D:           Set var_114 = Me.GridSel
  loc_15ABC33:           Call 0.Method_Proc_249_90_15ABF240 (3, var_118, CVar(CDbl(var_E8.Left)))
  loc_15ABC3B:           var_118.Top = var_108
  loc_15ABC5F:           Set var_8C = Me.GridSel
  loc_15ABC65:           Call 0.Method_Proc_249_90_15ABF240 (3, var_E8)
  loc_15ABC84:           Set var_10C = Me.Check1
  loc_15ABC8A:           Call 0.Method_Proc_249_90_15ABF240 (3, var_110)
  loc_15ABC92:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15ABCAE:           Set var_8C = Me.GridSel
  loc_15ABCB4:           Call 0.Method_Proc_249_90_15ABF240 (3, var_E8)
  loc_15ABCD3:           Set var_10C = Me.Check1
  loc_15ABCD9:           Call 0.Method_Proc_249_90_15ABF240 (3, var_110)
  loc_15ABCE1:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ABCFD:           Set var_10C = Me.GridSel
  loc_15ABD03:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15ABD0B:           var_108 = var_110.Width
  loc_15ABD1D:           Set var_8C = Me.GridSel
  loc_15ABD23:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15ABD3E:           var_9C = CVar(((CDbl(var_E8.Left) + CDbl(var_108)) + CDbl(&HA))) 'Single
  loc_15ABD4C:           Set var_114 = Me.GridSel
  loc_15ABD52:           Call 0.Method_Proc_249_90_15ABF240 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15ABD5A:           var_118.Left = var_108
  loc_15ABD7E:           Set var_10C = Me.GridSel
  loc_15ABD84:           Call 0.Method_Proc_249_90_15ABF240 (1, var_110)
  loc_15ABD8C:           var_108 = var_110.Height
  loc_15ABD9E:           Set var_8C = Me.GridSel
  loc_15ABDA4:           Call 0.Method_Proc_249_90_15ABF240 (1, var_E8)
  loc_15ABDBF:           var_9C = CVar(((CDbl(var_E8.Top) + CDbl(var_108)) + CDbl(&H64))) 'Single
  loc_15ABDCD:           Set var_114 = Me.GridSel
  loc_15ABDD3:           Call 0.Method_Proc_249_90_15ABF240 (4, var_118, CVar(CDbl(var_E8.Left)))
  loc_15ABDDB:           var_118.Top = var_108
  loc_15ABDFF:           Set var_8C = Me.GridSel
  loc_15ABE05:           Call 0.Method_Proc_249_90_15ABF240 (4, var_E8)
  loc_15ABE24:           Set var_10C = Me.Check1
  loc_15ABE2A:           Call 0.Method_Proc_249_90_15ABF240 (4, var_110)
  loc_15ABE32:           var_110.Top = (CDbl(var_E8.Top) + CDbl(&H14))
  loc_15ABE4E:           Set var_8C = Me.GridSel
  loc_15ABE54:           Call 0.Method_Proc_249_90_15ABF240 (4, var_E8)
  loc_15ABE73:           Set var_10C = Me.Check1
  loc_15ABE79:           Call 0.Method_Proc_249_90_15ABF240 (4, var_110)
  loc_15ABE81:           var_110.Left = (CDbl(var_E8.Left) + CDbl(&H28))
  loc_15ABE9D:           Set var_10C = Me.GridSel
  loc_15ABEA3:           Call 0.Method_Proc_249_90_15ABF240 (2, var_110)
  loc_15ABEBD:           Set var_8C = Me.GridSel
  loc_15ABEC3:           Call 0.Method_Proc_249_90_15ABF240 (2, var_E8)
  loc_15ABEE9:           Me.PictParameter.Width = ((CDbl(var_E8.Left) + CDbl(var_110.Width)) + CDbl(&H32))
  loc_15ABF02:         End If
  loc_15ABF02:       End If
  loc_15ABF02:     End If
  loc_15ABF02:   End If
  loc_15ABF02: End If
  loc_15ABF1B: global_144 = CLng(Me.PictParameter.Width)
  loc_15ABF21: Exit Sub
End Sub

Public Sub Proc_249_91_E4B07C
  'Data Table: 577ED8
  loc_E4B063: If (Me.FrmList.Visible = &HFF) Then
  loc_E4B072:   Me.FrmList.Visible = False
  loc_E4B07A: End If
  loc_E4B07A: Exit Sub
End Sub

Public Sub Proc_249_92_12A27D8(arg_C, arg_10, arg_14) '12A27D8
  'Data Table: 577ED8
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_24C As Variant
  Dim var_256 As Integer
  loc_12A21FA: On Error Goto loc_12A27C2
  loc_12A2200: var_8C = vbNullString
  loc_12A220B: CRefVarAry
  loc_12A2213: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_12A2234:   If (arg_C(var_8E) = 0) Then
  loc_12A2237:     GoTo loc_12A2613
  loc_12A223A:   End If
  loc_12A224B:   var_90 = CInt(arg_C(var_8E))
  loc_12A2255:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A226D:   Set var_DC = Me.GridSel
  loc_12A2273:   Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, 0)
  loc_12A229B:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_12A22A7:     If (CInt(arg_14) = 0) Then
  loc_12A22AE:       var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A22C6:       Set var_DC = Me.GridSel
  loc_12A22CC:       Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, 2, var_A8)
  loc_12A2311:       Set var_118 = Me.GridSel
  loc_12A2317:       Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_11C, 2, CVar(CLng(var_90)), ",")
  loc_12A2338:       var_1AC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A2356:       var_1EC = (var_A8 + IIf((var_8C = vbNullString), Trim(CVar(CStr(var_E0.TextMatrix)))), var_1AC))
  loc_12A235B:       var_8C = CStr(var_1EC)
  loc_12A2383:     Else
  loc_12A238C:       If (CInt(arg_14) = 1) Then
  loc_12A23AB:         Set var_DC = Me.GridSel
  loc_12A23B1:         Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, 2)
  loc_12A23FB:         Set var_118 = Me.GridSel
  loc_12A2401:         Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_11C, 2, CVar(CLng(var_90)), CVar("," & "'"))
  loc_12A2422:         var_1FC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A242B:         var_20C = (var_1FC + "'")
  loc_12A2437:         var_16C = ("'" + Trim(CVar(CStr(var_E0.TextMatrix)))))
  loc_12A2440:         var_17C = (var_11C.TextMatrix) + "'")
  loc_12A245B:         var_24C = (CVar(CLng(var_90)) + IIf((var_8C = vbNullString), CVar(CStr(var_11C.TextMatrix))), var_20C))
  loc_12A2460:         var_8C = CStr(var_24C)
  loc_12A248D:       End If
  loc_12A248D:     End If
  loc_12A24AC:     Set var_DC = Me.GridSel
  loc_12A24B2:     Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12A24E4:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12A2503:       Set var_DC = Me.GridSel
  loc_12A2509:       Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, 1)
  loc_12A2522:       var_114 = Trim(CVar(CStr(var_E0.TextMatrix))))
  loc_12A254E:       Set var_118 = Me.GridSel
  loc_12A2554:       Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_11C, 1, CVar(CLng(var_90)), ",")
  loc_12A255C:       var_16C = var_11C.TextMatrix)
  loc_12A2567:       var_17C = CVar(CStr(var_16C)) 'String
  loc_12A2575:       var_1AC = (CVar(var_94) + Trim(var_17C))
  loc_12A2593:       var_1EC = (CVar(CLng(var_90)) + IIf((var_94 = vbNullString), var_114, CVar(CStr(var_11C.TextMatrix)))))
  loc_12A2598:       var_94 = CStr(CVar("," & "'"))
  loc_12A25BD:     End If
  loc_12A25C1:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A25DF:     Set var_DC = Me.GridSel
  loc_12A25E5:     Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, vbNullString, 0)
  loc_12A25ED:     LateIdCallSt
  loc_12A25FF:   Else
  loc_12A2606:     var_B8 = 0
  loc_12A260F:     VarIndexSt
  loc_12A2613:   End If
  loc_12A2613:   ' Referenced from: 12A2237
  loc_12A2616: Next var_98 'Integer
  loc_12A2623: CRefVarAry
  loc_12A262B: For var_254 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_254 'Integer
  loc_12A2663:   If CBool(arg_C(var_8E) <> 0) Then
  loc_12A266A:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_12A2688:     Set var_DC = Me.GridSel
  loc_12A268E:     Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, "ü", 0)
  loc_12A2696:     LateIdCallSt
  loc_12A26A5:   End If
  loc_12A26A8: Next var_254 'Integer
  loc_12A26B5: If (var_8C = vbNullString) Then
  loc_12A26B8:   var_A8 = 0
  loc_12A26C1:   var_F0 = 1
  loc_12A26D4:   Set var_DC = Me.GridSel
  loc_12A26DA:   Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0)
  loc_12A26E2:   var_C8 = var_E0.TextMatrix)
  loc_12A270A:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_114, var_16C, var_17C)
  loc_12A2730:   Set var_DC = Me.GridSel
  loc_12A2736:   Call 0.Method_Proc_249_92_12A27D80 (arg_10, var_E0, var_C8)
  loc_12A2755:   Proc_249_92_12A27D8 = 0
  loc_12A275B: End If
  loc_12A275E: var_88 = var_8C
  loc_12A2764: var_256 = arg_10
  loc_12A276D: If (var_256 = 1) Then
  loc_12A2776:   global_72 = var_94
  loc_12A277D: Else
  loc_12A2783:   If (var_256 = 2) Then
  loc_12A278C:     global_76 = var_94
  loc_12A2793:   Else
  loc_12A2799:     If (var_256 = 3) Then
  loc_12A27A2:       global_80 = var_94
  loc_12A27A9:     Else
  loc_12A27AF:       If (var_256 = 4) Then
  loc_12A27B8:         global_84 = var_94
  loc_12A27BC:       End If
  loc_12A27BC:     End If
  loc_12A27BC:   End If
  loc_12A27BC: End If
  loc_12A27BC: Proc_249_92_12A27D8 = var_256
  loc_12A27C2: ' Referenced from: 12A21FA
  loc_12A27CA: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_12A27CF: Proc_249_92_12A27D8 = var_F0
End Sub

Public Sub Proc_249_93_F02A6C
  'Data Table: 577ED8
  Dim var_CC As Variant
  loc_F029B1: If (CLng(Me.FGrid.Row) = CLng(global_124)) Then
  loc_F029C2:   Proc_303_0_FB9B68("	")
  loc_F029CA:   Exit Sub
  loc_F029CB: End If
  loc_F02A0A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F02A17:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F02A3E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F02A48:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F02A57:     Me.FGrid.Row = var_CC
  loc_F02A5F:     Exit For
  loc_F02A62:   End If
  loc_F02A65: Next var_BC 'Integer
  loc_F02A6A: ' Referenced from: F02A5F
  loc_F02A6A: Exit Sub
End Sub

Public Sub Proc_249_94_12114C8(arg_C, arg_10) '12114C8
  'Data Table: 577ED8
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1210FEB: var_86 = arg_C
  loc_1210FF4: If (var_86 = 1) Then
  loc_1211013:   Me.Recordset15.CursorLocation = 3
  loc_121103C:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_121104A:   CVarUnk
  loc_121104F:   VerifyVarObj
  loc_121105B:   Set var_8C = Me.GridSel
  loc_1211061:   Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, New)
  loc_1211069:   LateIdStAd
  loc_121108B:   ReDim Preserve global_172(0 To 0)
  loc_12110A2:   global_172(0) = 0
  loc_12110A3: End If
  loc_12110A9: If (var_86 = 2) Then
  loc_12110C8:   Me.Recordset15.CursorLocation = 3
  loc_12110F1:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_12110FF:   CVarUnk
  loc_1211104:   VerifyVarObj
  loc_1211110:   Set var_8C = Me.GridSel
  loc_1211116:   Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, New, 1, -1)
  loc_121111E:   LateIdStAd
  loc_1211140:   ReDim Preserve global_176(0 To 0)
  loc_1211157:   global_176(0) = 0
  loc_1211158: End If
  loc_121115E: If (var_86 = 3) Then
  loc_121117D:   Me.Recordset15.CursorLocation = 3
  loc_12111A6:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_12111B4:   CVarUnk
  loc_12111B9:   VerifyVarObj
  loc_12111C5:   Set var_8C = Me.GridSel
  loc_12111CB:   Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, New, 1, -1)
  loc_12111D3:   LateIdStAd
  loc_12111F5:   ReDim Preserve global_180(0 To 0)
  loc_121120C:   global_180(0) = 0
  loc_121120D: End If
  loc_1211213: If (var_86 = 4) Then
  loc_1211232:   Me.Recordset15.CursorLocation = 3
  loc_121125B:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1211269:   CVarUnk
  loc_121126E:   VerifyVarObj
  loc_121127A:   Set var_8C = Me.GridSel
  loc_1211280:   Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1211288:   LateIdStAd
  loc_12112AA:   ReDim Preserve global_184(0 To 0)
  loc_12112C1:   global_184(0) = 0
  loc_12112C2: End If
  loc_12112D0: Set var_8C = Me.GridSel
  loc_12112D6: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, True, var_B0, var_B0)
  loc_12112DE: var_B0.Visible = var_B0
  loc_12112F9: Set var_8C = Me.GridSel
  loc_12112FF: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, False)
  loc_1211307: var_B0.Enabled = 1
  loc_121131F: Set var_8C = Me.Check1
  loc_1211325: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, &HFF)
  loc_121132D: var_B0.Visible = True
  loc_121134C: Set var_8C = Me.GridSel
  loc_1211352: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0)
  loc_121135A: var_B0.Width = CVar(CDbl(4500))
  loc_1211366: var_9C = 0
  loc_1211382: Set var_8C = Me.GridSel
  loc_1211388: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, &H258)
  loc_1211390: LateIdCallSt
  loc_12113BB: Set var_8C = Me.GridSel
  loc_12113C1: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, 0, 2)
  loc_12113C9: LateIdCallSt
  loc_12113F4: Set var_8C = Me.GridSel
  loc_12113FA: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, &HE10, 1)
  loc_1211402: LateIdCallSt
  loc_1211420: Set var_8C = Me.Check1
  loc_1211426: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, CDbl(550), var_B0)
  loc_121142E: var_B0.Width = var_B0
  loc_121143A: var_9C = 0
  loc_121144D: Set var_8C = Me.GridSel
  loc_1211453: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, var_9C)
  loc_1211479: Set var_E4 = Me.Check1
  loc_121147F: Call 0.Method_Proc_249_94_12114C80 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1211487: var_E8.Height = var_B0
  loc_12114AA: Set var_8C = Me.Check1
  loc_12114B0: Call 0.Method_Proc_249_94_12114C80 (var_86, var_B0, CInt(1))
  loc_12114B8: var_B0.Value = var_9C
  loc_12114C4: Exit Sub
End Sub

Public Sub Proc_249_95_16519DC
  'Data Table: 577ED8
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_EC As String
  Dim var_10C As Variant
  Dim var_110 As MSHFlexGrid
  Dim var_11C As String
  Dim var_124 As String
  Dim var_120 As String
  Dim var_150 As Variant
  loc_16503B6: var_98 = global_52
  loc_16503C1: If (var_98 = "SalesRegister") Then
  loc_16503C8:   Set var_9C = Me.FGrid
  loc_16503CE:   var_AC = CVar(CLng(0)) 'Long
  loc_16503D3:   var_CC = 0
  loc_16503DC:   var_EC = "From Date"
  loc_16503E5:   LateIdCallSt
  loc_16503F0:   var_AC = CVar(CLng(0)) 'Long
  loc_16503F5:   var_CC = &H10E
  loc_1650401:   LateIdCallSt
  loc_165040C:   var_AC = CVar(CLng(1)) 'Long
  loc_1650411:   var_CC = 0
  loc_165041A:   var_EC = "To Date"
  loc_1650423:   LateIdCallSt
  loc_165042E:   var_AC = CVar(CLng(1)) 'Long
  loc_1650433:   var_CC = &H10E
  loc_165043F:   LateIdCallSt
  loc_165044A:   var_AC = CVar(CLng(2)) 'Long
  loc_165044F:   var_CC = 0
  loc_1650458:   var_EC = "Item Wise"
  loc_1650461:   LateIdCallSt
  loc_165046C:   var_AC = CVar(CLng(2)) 'Long
  loc_1650471:   var_CC = &H10E
  loc_165047D:   LateIdCallSt
  loc_1650488:   var_AC = CVar(CLng(0)) 'Long
  loc_165048D:   var_CC = 1
  loc_165049B:   var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16504A2:   LateIdCallSt
  loc_16504B0:   var_AC = CVar(CLng(1)) 'Long
  loc_16504B5:   var_CC = 1
  loc_16504C3:   var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16504CA:   LateIdCallSt
  loc_16504D8:   var_AC = CVar(CLng(2)) 'Long
  loc_16504DD:   var_CC = 1
  loc_16504E6:   var_EC = "Yes"
  loc_16504EF:   LateIdCallSt
  loc_16504F9:   Set var_9C = Nothing 
  loc_165051D:   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_165052C:   global_124 = CInt(2)
  loc_1650537:   global_128 = 0
  loc_165053E: Else
  loc_1650546:   If (var_98 = "PartyOutStanding") Then
  loc_165054D:     Set var_114 = Me.FGrid
  loc_1650553:     var_AC = CVar(CLng(0)) 'Long
  loc_1650558:     var_CC = 0
  loc_1650561:     var_EC = "From Date"
  loc_165056A:     LateIdCallSt
  loc_1650575:     var_AC = CVar(CLng(0)) 'Long
  loc_165057A:     var_CC = &H10E
  loc_1650586:     LateIdCallSt
  loc_1650591:     var_AC = CVar(CLng(1)) 'Long
  loc_1650596:     var_CC = 0
  loc_165059F:     var_EC = "To Date"
  loc_16505A8:     LateIdCallSt
  loc_16505B3:     var_AC = CVar(CLng(1)) 'Long
  loc_16505B8:     var_CC = &H10E
  loc_16505C4:     LateIdCallSt
  loc_16505CF:     var_AC = CVar(CLng(0)) 'Long
  loc_16505D4:     var_CC = 1
  loc_16505E2:     var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16505E9:     LateIdCallSt
  loc_16505F7:     var_AC = CVar(CLng(1)) 'Long
  loc_16505FC:     var_CC = 1
  loc_165060A:     var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650611:     LateIdCallSt
  loc_165061E:     Set var_114 = Nothing 
  loc_1650642:     Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1650651:     global_124 = CInt(1)
  loc_165065C:     global_128 = 0
  loc_1650663:   Else
  loc_165066B:     If (var_98 = "PartyWiseOutStanding") Then
  loc_1650672:       Set var_118 = Me.FGrid
  loc_1650678:       var_AC = CVar(CLng(0)) 'Long
  loc_165067D:       var_CC = 0
  loc_1650686:       var_EC = "For Date"
  loc_165068F:       LateIdCallSt
  loc_165069A:       var_AC = CVar(CLng(0)) 'Long
  loc_165069F:       var_CC = &H10E
  loc_16506AB:       LateIdCallSt
  loc_16506B6:       var_AC = CVar(CLng(0)) 'Long
  loc_16506BB:       var_CC = 1
  loc_16506C9:       var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16506D0:       LateIdCallSt
  loc_16506DE:       var_AC = CVar(CLng(1)) 'Long
  loc_16506E3:       var_CC = 0
  loc_16506EC:       var_EC = "To Date"
  loc_16506F5:       LateIdCallSt
  loc_1650700:       var_AC = CVar(CLng(1)) 'Long
  loc_1650705:       var_CC = &H10E
  loc_1650711:       LateIdCallSt
  loc_165071C:       var_AC = CVar(CLng(1)) 'Long
  loc_1650736:       LateIdCallSt
  loc_165074E:       global_126 = CInt(0)
  loc_1650767:       Me.FGrid.Row = CVar(CLng(global_126))
  loc_1650779:       var_AC = 1
  loc_1650796:       var_124 = "Select Distinct '' As O, Party as PartyName, Party as Code From Hallsale1 WHERE Logsite_Code='" & global_88 & "' and RestCode='"
  loc_16507A2:       Call 0.Method_arg_1C0 (var_120, var_124, var_AC, CInt(1), global_126, Nothing, CVar(CStr(MemVar_1F920EC)), 1)
  loc_16507C8:       Call Proc_249_94_12114C8(1, var_AC & var_120 & "' Order By Party")
  loc_16507D0:     Else
  loc_16507D8:       If (var_98 = "CashierCollection") Then
  loc_16507DF:         Set var_130 = Me.FGrid
  loc_16507E5:         var_AC = CVar(CLng(0)) 'Long
  loc_16507EA:         var_CC = 0
  loc_16507F3:         var_EC = "For Date"
  loc_16507FC:         LateIdCallSt
  loc_1650807:         var_AC = CVar(CLng(0)) 'Long
  loc_165080C:         var_CC = &H10E
  loc_1650818:         LateIdCallSt
  loc_1650823:         var_AC = CVar(CLng(0)) 'Long
  loc_1650828:         var_CC = 1
  loc_1650836:         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_165083D:         LateIdCallSt
  loc_165084B:         var_AC = CVar(CLng(1)) 'Long
  loc_1650850:         var_CC = 0
  loc_1650859:         var_EC = "To Date"
  loc_1650862:         LateIdCallSt
  loc_165086D:         var_AC = CVar(CLng(1)) 'Long
  loc_1650872:         var_CC = &H10E
  loc_165087E:         LateIdCallSt
  loc_1650889:         var_AC = CVar(CLng(1)) 'Long
  loc_165088E:         var_CC = 1
  loc_165089C:         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16508A3:         LateIdCallSt
  loc_16508B0:         Set var_130 = Nothing 
  loc_16508D4:         Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16508E3:         global_124 = CInt(1)
  loc_16508EE:         global_128 = 1
  loc_1650903:         var_120 = "Select Distinct '' As O,U_Name As Name,U_Name As Code From PayChargeH Where Logsite_Code='" & global_88 & "' and RIGHT(Site_Code,1)='"
  loc_1650925:         Call Proc_249_94_12114C8(1, var_120 & MemVar_1F92078 & "' Order By U_Name")
  loc_165092D:       Else
  loc_1650935:         If (var_98 = "CashierCollectionMIS") Then
  loc_165093C:           Set var_134 = Me.FGrid
  loc_1650942:           var_AC = CVar(CLng(0)) 'Long
  loc_1650947:           var_CC = 0
  loc_1650950:           var_EC = "For Date"
  loc_1650959:           LateIdCallSt
  loc_1650964:           var_AC = CVar(CLng(0)) 'Long
  loc_1650969:           var_CC = &H10E
  loc_1650975:           LateIdCallSt
  loc_1650980:           var_AC = CVar(CLng(0)) 'Long
  loc_1650985:           var_CC = 1
  loc_1650993:           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_165099A:           LateIdCallSt
  loc_16509A8:           var_AC = CVar(CLng(1)) 'Long
  loc_16509AD:           var_CC = 0
  loc_16509B6:           var_EC = "To Date"
  loc_16509BF:           LateIdCallSt
  loc_16509CA:           var_AC = CVar(CLng(1)) 'Long
  loc_16509CF:           var_CC = &H10E
  loc_16509DB:           LateIdCallSt
  loc_16509E6:           var_AC = CVar(CLng(1)) 'Long
  loc_16509EB:           var_CC = 1
  loc_16509F9:           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650A00:           LateIdCallSt
  loc_1650A0D:           Set var_134 = Nothing 
  loc_1650A31:           Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1650A40:           global_124 = CInt(1)
  loc_1650A4B:           global_128 = 0
  loc_1650A52:         Else
  loc_1650A5A:           If (var_98 = "BookingDetail") Then
  loc_1650A61:             Set var_138 = Me.FGrid
  loc_1650A67:             var_AC = CVar(CLng(0)) 'Long
  loc_1650A6C:             var_CC = 0
  loc_1650A75:             var_EC = "From Date"
  loc_1650A7E:             LateIdCallSt
  loc_1650A89:             var_AC = CVar(CLng(0)) 'Long
  loc_1650A8E:             var_CC = &H10E
  loc_1650A9A:             LateIdCallSt
  loc_1650AA5:             var_AC = CVar(CLng(1)) 'Long
  loc_1650AAA:             var_CC = 0
  loc_1650AB3:             var_EC = "To Date"
  loc_1650ABC:             LateIdCallSt
  loc_1650AC7:             var_AC = CVar(CLng(1)) 'Long
  loc_1650ACC:             var_CC = &H10E
  loc_1650AD8:             LateIdCallSt
  loc_1650AE3:             var_AC = CVar(CLng(2)) 'Long
  loc_1650AE8:             var_CC = 0
  loc_1650AF1:             var_EC = "Status"
  loc_1650AFA:             LateIdCallSt
  loc_1650B05:             var_AC = CVar(CLng(2)) 'Long
  loc_1650B0A:             var_CC = &H10E
  loc_1650B16:             LateIdCallSt
  loc_1650B21:             var_AC = CVar(CLng(0)) 'Long
  loc_1650B26:             var_CC = 1
  loc_1650B34:             var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650B3B:             LateIdCallSt
  loc_1650B49:             var_AC = CVar(CLng(1)) 'Long
  loc_1650B4E:             var_CC = 1
  loc_1650B5C:             var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650B63:             LateIdCallSt
  loc_1650B71:             var_AC = CVar(CLng(2)) 'Long
  loc_1650B76:             var_CC = 1
  loc_1650B7F:             var_EC = "Active"
  loc_1650B88:             LateIdCallSt
  loc_1650B92:             Set var_138 = Nothing 
  loc_1650BB6:             Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1650BC5:             global_124 = CInt(2)
  loc_1650BD0:             global_128 = 0
  loc_1650BD7:           Else
  loc_1650BDF:             If (var_98 = "SettleRepHall") Then
  loc_1650BE6:               Set var_13C = Me.FGrid
  loc_1650BEC:               var_AC = CVar(CLng(0)) 'Long
  loc_1650BF1:               var_CC = 0
  loc_1650BFA:               var_EC = "For Date"
  loc_1650C03:               LateIdCallSt
  loc_1650C0E:               var_AC = CVar(CLng(0)) 'Long
  loc_1650C13:               var_CC = &H10E
  loc_1650C1F:               LateIdCallSt
  loc_1650C2A:               var_AC = CVar(CLng(0)) 'Long
  loc_1650C2F:               var_CC = 1
  loc_1650C3D:               var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650C44:               LateIdCallSt
  loc_1650C52:               var_AC = CVar(CLng(1)) 'Long
  loc_1650C57:               var_CC = 0
  loc_1650C60:               var_EC = "To Date"
  loc_1650C69:               LateIdCallSt
  loc_1650C74:               var_AC = CVar(CLng(1)) 'Long
  loc_1650C79:               var_CC = &H10E
  loc_1650C85:               LateIdCallSt
  loc_1650C90:               var_AC = CVar(CLng(1)) 'Long
  loc_1650C95:               var_CC = 1
  loc_1650CA3:               var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650CAA:               LateIdCallSt
  loc_1650CB7:               Set var_13C = Nothing 
  loc_1650CDB:               Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1650CEA:               global_124 = CInt(1)
  loc_1650CF5:               global_128 = 1
  loc_1650D0A:               var_120 = "Select Distinct '' As O,U_Name As Name,U_Name As Code From Sale1 Where Logsite_Code='" & global_88 & "' and RIGHT(Site_Code,1)='"
  loc_1650D2C:               Call Proc_249_94_12114C8(1, var_120 & MemVar_1F92070 & "' Order By U_Name")
  loc_1650D34:             Else
  loc_1650D3C:               If (var_98 = "TaxReportHall") Then
  loc_1650D43:                 Set var_140 = Me.FGrid
  loc_1650D49:                 var_AC = CVar(CLng(0)) 'Long
  loc_1650D4E:                 var_CC = 0
  loc_1650D57:                 var_EC = "From Date"
  loc_1650D60:                 LateIdCallSt
  loc_1650D6B:                 var_AC = CVar(CLng(0)) 'Long
  loc_1650D70:                 var_CC = &H10E
  loc_1650D7C:                 LateIdCallSt
  loc_1650D87:                 var_AC = CVar(CLng(0)) 'Long
  loc_1650D8C:                 var_CC = 1
  loc_1650D9A:                 var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650DA1:                 LateIdCallSt
  loc_1650DAF:                 var_AC = CVar(CLng(1)) 'Long
  loc_1650DB4:                 var_CC = 0
  loc_1650DBD:                 var_EC = "To Date"
  loc_1650DC6:                 LateIdCallSt
  loc_1650DD1:                 var_AC = CVar(CLng(1)) 'Long
  loc_1650DD6:                 var_CC = &H10E
  loc_1650DE2:                 LateIdCallSt
  loc_1650DED:                 var_AC = CVar(CLng(1)) 'Long
  loc_1650DF2:                 var_CC = 1
  loc_1650E00:                 var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650E07:                 LateIdCallSt
  loc_1650E14:                 Set var_140 = Nothing 
  loc_1650E38:                 Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1650E47:                 global_124 = CInt(1)
  loc_1650E52:                 global_128 = 1
  loc_1650E5D:                 var_88 = "Select Distinct '' As O,Q.Name As TaxName,Q.code From (SELECT RevMast.Name,RevMast.code,RevMast.Sundry,P.TaxPer FROM (HallSale2 P INNER JOIN RevMast ON P.TaxCode = RevMast.Code) where RevMast.FieldType='T' And P.DELFLAG<>'D'" & "Union All SELECT RevMast.Name,RevMast.Code,RevMast.Sundry,P.SValue TaxPer FROM (SunTranH P INNER JOIN RevMast ON P.RevCode = RevMast.Code) INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code where RevMast.FieldType='T' And P.DELFLAG<>'D')Q Order by Q.Name"
  loc_1650E68:                 Call Proc_249_94_12114C8(1, var_88)
  loc_1650E70:               Else
  loc_1650E78:                 If (var_98 = "TaxwiseDetailReportHall") Then
  loc_1650E7F:                   Set var_144 = Me.FGrid
  loc_1650E85:                   var_AC = CVar(CLng(0)) 'Long
  loc_1650E8A:                   var_CC = 0
  loc_1650E93:                   var_EC = "From Date"
  loc_1650E9C:                   LateIdCallSt
  loc_1650EA7:                   var_AC = CVar(CLng(0)) 'Long
  loc_1650EAC:                   var_CC = &H10E
  loc_1650EB8:                   LateIdCallSt
  loc_1650EC3:                   var_AC = CVar(CLng(0)) 'Long
  loc_1650EC8:                   var_CC = 1
  loc_1650ED6:                   var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650EDD:                   LateIdCallSt
  loc_1650EEB:                   var_AC = CVar(CLng(1)) 'Long
  loc_1650EF0:                   var_CC = 0
  loc_1650EF9:                   var_EC = "To Date"
  loc_1650F02:                   LateIdCallSt
  loc_1650F0D:                   var_AC = CVar(CLng(1)) 'Long
  loc_1650F12:                   var_CC = &H10E
  loc_1650F1E:                   LateIdCallSt
  loc_1650F29:                   var_AC = CVar(CLng(1)) 'Long
  loc_1650F2E:                   var_CC = 1
  loc_1650F3C:                   var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1650F43:                   LateIdCallSt
  loc_1650F50:                   Set var_144 = Nothing 
  loc_1650F74:                   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1650F83:                   global_124 = CInt(1)
  loc_1650F8E:                   global_128 = 1
  loc_1650F95:                   var_88 = "Select Distinct '' As O,RevMast.Name As TaxName,RevMast.Code As Code FROM (SunTransaction Inner join revmast on SunTransaction.revCode=Revmast.Code) Inner join SundryMast on Revmast.Sundry=SundryMast.Code Order By RevMast.Name Desc"
  loc_1650FA0:                   Call Proc_249_94_12114C8(1, var_88)
  loc_1650FA8:                 Else
  loc_1650FB0:                   If (var_98 = "TaxSummaryHall") Then
  loc_1650FB7:                     Set var_148 = Me.FGrid
  loc_1650FBD:                     var_AC = CVar(CLng(0)) 'Long
  loc_1650FC2:                     var_CC = 0
  loc_1650FCB:                     var_EC = "From Date"
  loc_1650FD4:                     LateIdCallSt
  loc_1650FDF:                     var_AC = CVar(CLng(0)) 'Long
  loc_1650FE4:                     var_CC = &H10E
  loc_1650FF0:                     LateIdCallSt
  loc_1650FFB:                     var_AC = CVar(CLng(0)) 'Long
  loc_1651000:                     var_CC = 1
  loc_165100E:                     var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1651015:                     LateIdCallSt
  loc_1651023:                     var_AC = CVar(CLng(1)) 'Long
  loc_1651028:                     var_CC = 0
  loc_1651031:                     var_EC = "To Date"
  loc_165103A:                     LateIdCallSt
  loc_1651045:                     var_AC = CVar(CLng(1)) 'Long
  loc_165104A:                     var_CC = &H10E
  loc_1651056:                     LateIdCallSt
  loc_1651061:                     var_AC = CVar(CLng(1)) 'Long
  loc_1651066:                     var_CC = 1
  loc_1651074:                     var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_165107B:                     LateIdCallSt
  loc_1651088:                     Set var_148 = Nothing 
  loc_16510AC:                     Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16510BB:                     global_124 = CInt(1)
  loc_16510C6:                     global_128 = 0
  loc_16510CD:                   Else
  loc_16510D5:                     If (var_98 = "DailyFuncSheet") Then
  loc_16510DC:                       Set var_14C = Me.FGrid
  loc_16510E2:                       var_AC = CVar(CLng(0)) 'Long
  loc_16510E7:                       var_CC = 0
  loc_16510F0:                       var_EC = "From Date"
  loc_16510F9:                       LateIdCallSt
  loc_1651104:                       var_AC = CVar(CLng(0)) 'Long
  loc_1651109:                       var_CC = &H10E
  loc_1651115:                       LateIdCallSt
  loc_1651120:                       var_AC = CVar(CLng(0)) 'Long
  loc_1651125:                       var_CC = 1
  loc_1651133:                       var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_165113A:                       LateIdCallSt
  loc_1651148:                       var_AC = CVar(CLng(1)) 'Long
  loc_165114D:                       var_CC = 0
  loc_1651156:                       var_EC = "To Date"
  loc_165115F:                       LateIdCallSt
  loc_165116A:                       var_AC = CVar(CLng(1)) 'Long
  loc_165116F:                       var_CC = &H10E
  loc_165117B:                       LateIdCallSt
  loc_1651186:                       var_AC = CVar(CLng(1)) 'Long
  loc_165118B:                       var_CC = 1
  loc_1651199:                       var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16511A0:                       LateIdCallSt
  loc_16511AE:                       var_AC = CVar(CLng(2)) 'Long
  loc_16511B3:                       var_CC = 0
  loc_16511BC:                       var_EC = "Detail"
  loc_16511C5:                       LateIdCallSt
  loc_16511D0:                       var_AC = CVar(CLng(2)) 'Long
  loc_16511D5:                       var_CC = &H10E
  loc_16511E1:                       LateIdCallSt
  loc_16511EC:                       var_AC = CVar(CLng(2)) 'Long
  loc_16511F1:                       var_CC = 1
  loc_16511FA:                       var_EC = "Function"
  loc_1651203:                       LateIdCallSt
  loc_165120E:                       var_AC = CVar(CLng(3)) 'Long
  loc_1651213:                       var_CC = 0
  loc_165121C:                       var_EC = "Company (Only)"
  loc_1651225:                       LateIdCallSt
  loc_1651230:                       var_AC = CVar(CLng(3)) 'Long
  loc_1651235:                       var_CC = &H10E
  loc_1651241:                       LateIdCallSt
  loc_165124C:                       var_AC = CVar(CLng(3)) 'Long
  loc_1651251:                       var_CC = 1
  loc_165125A:                       var_EC = "No"
  loc_1651263:                       LateIdCallSt
  loc_165126E:                       var_AC = CVar(CLng(4)) 'Long
  loc_1651273:                       var_CC = 0
  loc_165127C:                       var_EC = "Venue Selection"
  loc_1651285:                       LateIdCallSt
  loc_1651290:                       var_AC = CVar(CLng(4)) 'Long
  loc_1651295:                       var_CC = &H10E
  loc_16512A1:                       LateIdCallSt
  loc_16512AC:                       var_AC = CVar(CLng(4)) 'Long
  loc_16512BA:                       var_EC = "No"
  loc_16512C3:                       LateIdCallSt
  loc_16512CD:                       Set var_14C = Nothing 
  loc_16512D8:                       global_126 = CInt(0)
  loc_16512F1:                       Me.FGrid.Row = CVar(CLng(global_126))
  loc_1651303:                       var_AC = 2
  loc_1651319:                       var_11C = "Select Distinct '' As O, S.Name as Company, CompanyCode as Code From HallBook left Join SubGroup S On S.SubCode=HallBook.CompanyCode WHERE ISNULL(HallBook.CompanyCode,'')<>'' And HallBook.Logsite_Code='" & global_88
  loc_165132C:                       Call 0.Method_arg_1C0 (var_120, var_11C & "' and HallBook.RestCode='", var_AC, CInt(4), global_126, var_14C, var_EC, 1)
  loc_1651352:                       Call Proc_249_94_12114C8(1, var_AC & var_120 & "' Order By S.Name")
  loc_165135A:                       var_AC = CVar(CLng(3)) 'Long
  loc_165135F:                       var_CC = 1
  loc_165136C:                       Set var_110 = Me.MemMas
  loc_165138E:                       If (CStr(MemMas.DispID_41) = "No") Then
  loc_1651391:                         var_AC = False
  loc_165139F:                         Set var_110 = Me.Mem
  loc_16513A5:                         Call 0.Method_Proc_249_95_16519DC0 (1, var_150, var_AC, var_CC, var_AC, var_14C)
  loc_16513AD:                         var_150.Visible = var_CC
  loc_16513C4:                         Set var_110 = Me.FA
  loc_16513CA:                         Call 0.Method_Proc_249_95_16519DC0 (1, var_150, 0, var_AC)
  loc_16513D2:                         MDIForm1.FA.Visible = var_14C
  loc_16513DE:                       End If
  loc_16513EF:                       var_124 = "Select Distinct '' As O, Name as Venue, Code From VenueMast WHERE Logsite_Code='" & global_88 & "' and DepartCode='"
  loc_16513FB:                       Call 0.Method_arg_1C0 (var_120, var_124)
  loc_1651421:                       Call Proc_249_94_12114C8(2, var_EC & var_120 & "' Order By Name")
  loc_1651429:                       var_AC = CVar(CLng(4)) 'Long
  loc_165143B:                       Set var_110 = Me.MemMas
  loc_165145D:                       If (CStr(MemMas.DispID_41) = "No") Then
  loc_1651460:                         var_AC = False
  loc_165146E:                         Set var_110 = Me.Mem
  loc_1651474:                         Call 0.Method_Proc_249_95_16519DC0 (2, var_150, var_AC)
  loc_165147C:                         var_150.Visible = 1
  loc_1651493:                         Set var_110 = Me.FA
  loc_1651499:                         Call 0.Method_Proc_249_95_16519DC0 (2, var_150, 0)
  loc_16514A1:                         MDIForm1.FA.Visible = var_AC
  loc_16514AD:                       End If
  loc_16514B0:                     Else
  loc_16514B8:                       If (var_98 = "CoverAnalysis") Then
  loc_16514BF:                         Set var_154 = Me.FGrid
  loc_16514C5:                         var_AC = CVar(CLng(0)) 'Long
  loc_16514CA:                         var_CC = 0
  loc_16514D3:                         var_EC = "From Date"
  loc_16514DC:                         LateIdCallSt
  loc_16514E7:                         var_AC = CVar(CLng(0)) 'Long
  loc_16514EC:                         var_CC = &H10E
  loc_16514F8:                         LateIdCallSt
  loc_1651503:                         var_AC = CVar(CLng(0)) 'Long
  loc_1651508:                         var_CC = 1
  loc_1651516:                         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_165151D:                         LateIdCallSt
  loc_165152B:                         var_AC = CVar(CLng(1)) 'Long
  loc_1651530:                         var_CC = 0
  loc_1651539:                         var_EC = "To Date"
  loc_1651542:                         LateIdCallSt
  loc_165154D:                         var_AC = CVar(CLng(1)) 'Long
  loc_1651552:                         var_CC = &H10E
  loc_165155E:                         LateIdCallSt
  loc_1651569:                         var_AC = CVar(CLng(1)) 'Long
  loc_165156E:                         var_CC = 1
  loc_165157C:                         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1651583:                         LateIdCallSt
  loc_1651590:                         Set var_154 = Nothing 
  loc_16515B4:                         Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16515C3:                         global_124 = CInt(1)
  loc_16515CE:                         global_128 = 0
  loc_16515D5:                       Else
  loc_16515DD:                         If (var_98 = "ItemWiseSaleHall") Then
  loc_16515E4:                           Set var_158 = Me.FGrid
  loc_16515EA:                           var_AC = CVar(CLng(0)) 'Long
  loc_16515EF:                           var_CC = 0
  loc_16515F8:                           var_EC = "From Date"
  loc_1651601:                           LateIdCallSt
  loc_165160C:                           var_AC = CVar(CLng(0)) 'Long
  loc_1651611:                           var_CC = &H10E
  loc_165161D:                           LateIdCallSt
  loc_1651628:                           var_AC = CVar(CLng(0)) 'Long
  loc_165162D:                           var_CC = 1
  loc_165163B:                           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1651642:                           LateIdCallSt
  loc_1651650:                           var_AC = CVar(CLng(1)) 'Long
  loc_1651655:                           var_CC = 0
  loc_165165E:                           var_EC = "To Date"
  loc_1651667:                           LateIdCallSt
  loc_1651672:                           var_AC = CVar(CLng(1)) 'Long
  loc_1651677:                           var_CC = &H10E
  loc_1651683:                           LateIdCallSt
  loc_165168E:                           var_AC = CVar(CLng(1)) 'Long
  loc_1651693:                           var_CC = 1
  loc_16516A1:                           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16516A8:                           LateIdCallSt
  loc_16516B5:                           Set var_158 = Nothing 
  loc_16516D9:                           Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_16516E8:                           global_124 = CInt(1)
  loc_16516F3:                           global_128 = 0
  loc_16516FA:                         Else
  loc_1651702:                           If (var_98 = "CompanyWiseSaleHall") Then
  loc_1651709:                             Set var_15C = Me.FGrid
  loc_165170F:                             var_AC = CVar(CLng(0)) 'Long
  loc_1651714:                             var_CC = 0
  loc_165171D:                             var_EC = "For Date"
  loc_1651726:                             LateIdCallSt
  loc_1651731:                             var_AC = CVar(CLng(0)) 'Long
  loc_1651736:                             var_CC = &H10E
  loc_1651742:                             LateIdCallSt
  loc_165174D:                             var_AC = CVar(CLng(0)) 'Long
  loc_1651752:                             var_CC = 1
  loc_1651760:                             var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1651767:                             LateIdCallSt
  loc_1651775:                             var_AC = CVar(CLng(1)) 'Long
  loc_165177A:                             var_CC = 0
  loc_1651783:                             var_EC = "To Date"
  loc_165178C:                             LateIdCallSt
  loc_1651797:                             var_AC = CVar(CLng(1)) 'Long
  loc_165179C:                             var_CC = &H10E
  loc_16517A8:                             LateIdCallSt
  loc_16517B3:                             var_AC = CVar(CLng(1)) 'Long
  loc_16517CD:                             LateIdCallSt
  loc_16517E5:                             global_126 = CInt(0)
  loc_16517FE:                             Me.FGrid.Row = CVar(CLng(global_126))
  loc_1651810:                             var_AC = 1
  loc_1651826:                             var_11C = "Select Distinct '' As O, S.Name as Company, CompanyCode as Code From HallBook left Join SubGroup S On S.SubCode=HallBook.CompanyCode WHERE ISNULL(HallBook.CompanyCode,'')<>'' And HallBook.Logsite_Code='" & global_88
  loc_1651839:                             Call 0.Method_arg_1C0 (var_120, var_11C & "' and HallBook.RestCode='", var_AC, CInt(1), global_126, Nothing, CVar(CStr(MemVar_1F920EC)), 1)
  loc_165185F:                             Call Proc_249_94_12114C8(1, var_AC & var_120 & "' Order By S.Name")
  loc_1651867:                           Else
  loc_165186F:                             If (var_98 = "FunctionWiseItemDetail") Then
  loc_1651876:                               Set var_160 = Me.FGrid
  loc_165187C:                               var_AC = CVar(CLng(0)) 'Long
  loc_1651881:                               var_CC = 0
  loc_1651893:                               LateIdCallSt
  loc_165189E:                               var_AC = CVar(CLng(0)) 'Long
  loc_16518A3:                               var_CC = &H10E
  loc_16518AF:                               LateIdCallSt
  loc_16518BA:                               var_AC = CVar(CLng(0)) 'Long
  loc_16518BF:                               var_CC = 1
  loc_16518CD:                               var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_16518D4:                               LateIdCallSt
  loc_16518E1:                               Set var_160 = Nothing 
  loc_16518EC:                               global_126 = CInt(0)
  loc_1651905:                               Me.FGrid.Row = CVar(CLng(global_126))
  loc_1651917:                               var_AC = 1
  loc_165192F:                               Call 0.Method_arg_1C0 (var_11C, "SELECT '' As _,S.PartyName+' ('+Cast(S.Vno As Varchar)+')' AS PartyName,S.DocId as Code FROM (((HallBook S LEFT JOIN FunctionType ON S.Func_Name = FunctionType.Code) INNER JOIN VenueOCC VO ON S.DocId=VO.FPDocId) INNER JOIN VenueMast VM ON VO.VenuCode=VM.Code) WHERE S.RestCOde='", var_AC, CInt(0), global_126, var_160, var_10C, var_CC)
  loc_1651945:                               var_AC = MemVar_1F920EC
  loc_165194D:                               Proc_6_7_F25D88(var_10C, var_AC, CVar(var_AC & var_11C & "' And Vo.FromDate="), var_160, var_CC)
  loc_1651980:                               Call Proc_249_94_12114C8(1, CStr(var_AC & var_10C & " Order by S.PartyName"))
  loc_1651990:                               Set var_110 = Me.FA
  loc_1651996:                               Call 0.Method_Proc_249_95_16519DC0 (1, var_150, 0)
  loc_165199E:                               MDIForm1.FA.Visible = var_160
  loc_16519B9:                               Set var_110 = Me.Check1
  loc_16519BF:                               Call 0.Method_Proc_249_95_16519DC0 (1, var_150, CInt(0))
  loc_16519C7:                               var_150.Value = "For Date"
  loc_16519D3:                             End If
  loc_16519D3:                           End If
  loc_16519D3:                         End If
  loc_16519D3:                       End If
  loc_16519D3:                     End If
  loc_16519D3:                   End If
  loc_16519D3:                 End If
  loc_16519D3:               End If
  loc_16519D3:             End If
  loc_16519D3:           End If
  loc_16519D3:         End If
  loc_16519D3:       End If
  loc_16519D3:     End If
  loc_16519D3:   End If
  loc_16519D3: End If
  loc_16519D3: Call Proc_249_116_FFA920(var_CC)
  loc_16519D8: Exit Sub
End Sub

Public Sub Proc_249_96_1060FD8(arg_C, arg_10) '1060FD8
  'Data Table: 577ED8
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_1060D60: var_98 = CVar(CLng(arg_C)) 'Long
  loc_1060D65: var_B8 = 1
  loc_1060D94: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1060DB7:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_1060DCB:   Set var_CC = Me.FGrid
  loc_1060DEF:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1060E0A:   Me.FGrid.Col = 1
  loc_1060E14:   var_86 = 0
  loc_1060E1A: Else
  loc_1060E27:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_1060E2E:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_1060E33:     var_B8 = 1
  loc_1060E63:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F920F4) Then
  loc_1060E91:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F920F4), &H40, "Validation Check", var_110, var_120)
  loc_1060EA7:       Set var_CC = Me.FGrid
  loc_1060ECB:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1060EE6:       Me.FGrid.Col = 1
  loc_1060EF0:       var_86 = 0
  loc_1060EF6:     Else
  loc_1060EFA:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_1060EFF:       var_B8 = 1
  loc_1060F2F:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F920FC) Then
  loc_1060F5D:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F920FC), &H40, "Validation Check", var_110, var_120)
  loc_1060F73:         Set var_CC = Me.FGrid
  loc_1060F97:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1060FB2:         Me.FGrid.Col = 1
  loc_1060FBC:         var_86 = 0
  loc_1060FC2:       Else
  loc_1060FC4:         var_86 = &HFF
  loc_1060FC7:       End If
  loc_1060FC7:     End If
  loc_1060FCA:   Else
  loc_1060FCC:     var_86 = &HFF
  loc_1060FCF:   End If
  loc_1060FCF: End If
  loc_1060FCF: Proc_249_96_1060FD8 = var_86
End Sub

Public Sub Proc_249_97_E17478
  'Data Table: 577ED8
  Dim .global_24577 As Integer
  loc_E17464: On Error Goto loc_E17468
  loc_E17467: Exit Sub
  loc_E17468: ' Referenced from: E17464
  loc_E17470: Proc_6_60_E62BC4(0)
  loc_E17475: Exit Sub
  loc_E17476: .global_24577 = 
End Sub

Public Sub Proc_249_98_E21E24
  'Data Table: 577ED8
  loc_E21E16: Me.PictParameter.Width = CDbl(global_144)
  loc_E21E1E: Call Form_Resize()
  loc_E21E23: Exit Sub
End Sub

Public Sub Proc_249_99_11B47F8(arg_C) '11B47F8
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_11B43B1: Set var_8C = arg_C 
  loc_11B43D9: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_11B4405: var_8C.Fields.Append "SNo", &HC8, 5
  loc_11B4431: var_8C.Fields.Append "FPNo", &HC8, &HB
  loc_11B445D: var_8C.Fields.Append "Venue", &HC8, &H32
  loc_11B4489: var_8C.Fields.Append "ForDate", &HC8, &HB
  loc_11B44B5: var_8C.Fields.Append "ForTime", &HC8, 5
  loc_11B44E1: var_8C.Fields.Append "ToDate", &HC8, &HB
  loc_11B450D: var_8C.Fields.Append "ToTime", &HC8, 5
  loc_11B4539: var_8C.Fields.Append "Pax", &HC8, 9
  loc_11B4565: var_8C.Fields.Append "Rate", &HC8, &HA
  loc_11B4591: var_8C.Fields.Append "FuncType", &HC8, &H1E
  loc_11B45BD: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_11B45E9: var_8C.Fields.Append "Amount", &HC8, &HC
  loc_11B4615: var_8C.Fields.Append "Advance", &HC8, &HC
  loc_11B4641: var_8C.Fields.Append "AdvType", &HC8, &H14
  loc_11B466D: var_8C.Fields.Append "AdvNo", &HC8, &HC
  loc_11B4699: var_8C.Fields.Append "AdvDate", &HC8, &HC
  loc_11B46C5: var_8C.Fields.Append "ContactNo", &HC8, &H4B
  loc_11B46F1: var_8C.Fields.Append "BookStatus", &HC8, &HF
  loc_11B471D: var_8C.Fields.Append "Remark", &HC8, &H64
  loc_11B4749: var_8C.Fields.Append "Company", &HC8, &H4B
  loc_11B4775: var_8C.Fields.Append "CompanyCode", &HC8, 8
  loc_11B47A1: var_8C.Fields.Append "Mark", &HC8, 1
  loc_11B47B1: var_8C.CursorType = 3
  loc_11B47BE: var_8C.LockType = 3
  loc_11B47DD: var_8C.Open var_A0, var_B0, -1
  loc_11B47E4: Set var_8C = Nothing 
  loc_11B47EB: Set var_88 = arg_C 
  loc_11B47EF: Proc_249_99_11B47F8 = -1
End Sub

Public Sub Proc_249_100_10B85BC(arg_C) '10B85BC
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_10B82D5: Set var_8C = arg_C 
  loc_10B82FD: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10B8329: var_8C.Fields.Append "FPNo", &HC8, &HB
  loc_10B8355: var_8C.Fields.Append "Venue", &HC8, &H32
  loc_10B8381: var_8C.Fields.Append "ForDate", &HC8, &HB
  loc_10B83AD: var_8C.Fields.Append "ForTime", &HC8, 5
  loc_10B83D9: var_8C.Fields.Append "ToTime", &HC8, 5
  loc_10B8405: var_8C.Fields.Append "Pax", &HC8, 5
  loc_10B8431: var_8C.Fields.Append "Rate", &HC8, &HA
  loc_10B845D: var_8C.Fields.Append "FuncType", &HC8, &H1E
  loc_10B8489: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_10B84B5: var_8C.Fields.Append "ItemName", &HC8, &H32
  loc_10B84E1: var_8C.Fields.Append "ItemGroup", &HC8, &H32
  loc_10B850D: var_8C.Fields.Append "ItemKitchen", &HC8, &H32
  loc_10B8539: var_8C.Fields.Append "Remark", &HC8, &H4B
  loc_10B8565: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10B8575: var_8C.CursorType = 3
  loc_10B8582: var_8C.LockType = 3
  loc_10B85A1: var_8C.Open var_A0, var_B0, -1
  loc_10B85A8: Set var_8C = Nothing 
  loc_10B85AF: Set var_88 = arg_C 
  loc_10B85B3: Proc_249_100_10B85BC = -1
End Sub

Public Sub Proc_249_101_FC2810(arg_C) 'FC2810
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_FC265D: Set var_8C = arg_C 
  loc_FC2685: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FC26B1: var_8C.Fields.Append "SNo", &HC8, 5
  loc_FC26DD: var_8C.Fields.Append "Item", &HC8, &H32
  loc_FC2709: var_8C.Fields.Append "Qty", &HC8, &HE
  loc_FC2735: var_8C.Fields.Append "Unit", &HC8, &HA
  loc_FC2761: var_8C.Fields.Append "Rate", &HC8, &HE
  loc_FC278D: var_8C.Fields.Append "Amount", &HC8, &HF
  loc_FC27B9: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FC27C9: var_8C.CursorType = 3
  loc_FC27D6: var_8C.LockType = 3
  loc_FC27F5: var_8C.Open var_A0, var_B0, -1
  loc_FC27FC: Set var_8C = Nothing 
  loc_FC2803: Set var_88 = arg_C 
  loc_FC2807: Proc_249_101_FC2810 = -1
End Sub

Public Sub Proc_249_102_FA2F4C(arg_C) 'FA2F4C
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_FA2DC5: Set var_8C = arg_C 
  loc_FA2DED: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FA2E19: var_8C.Fields.Append "SNo", &HC8, 5
  loc_FA2E45: var_8C.Fields.Append "FuncDate", &HC8, &HB
  loc_FA2E71: var_8C.Fields.Append "Pax", &HC8, 5
  loc_FA2E9D: var_8C.Fields.Append "Amount", &HC8, &HF
  loc_FA2EC9: var_8C.Fields.Append "Average", &HC8, &HA
  loc_FA2EF5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FA2F05: var_8C.CursorType = 3
  loc_FA2F12: var_8C.LockType = 3
  loc_FA2F31: var_8C.Open var_A0, var_B0, -1
  loc_FA2F38: Set var_8C = Nothing 
  loc_FA2F3F: Set var_88 = arg_C 
  loc_FA2F43: Proc_249_102_FA2F4C = -1
End Sub

Public Sub Proc_249_103_1305CCC(arg_C) '1305CCC
  'Data Table: 577ED8
  Dim var_90 As Recordset15
  loc_1305599: Set var_90 = arg_C 
  loc_13055C1: var_90.Fields.Append "mLine", &HC8, &HA
  loc_13055ED: var_90.Fields.Append "SNo", &HC8, &HA
  loc_1305619: var_90.Fields.Append "BillDate", &HC8, &HA
  loc_1305645: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_1305671: var_90.Fields.Append "Party", &HC8, &H32
  loc_130569D: var_90.Fields.Append "NonTaxable", &HC8, &HC
  loc_13056C9: var_90.Fields.Append "Tax1", &HC8, &HC
  loc_13056F5: var_90.Fields.Append "Tax2", &HC8, &HC
  loc_1305721: var_90.Fields.Append "Tax3", &HC8, &HC
  loc_130574D: var_90.Fields.Append "Tax4", &HC8, &HC
  loc_1305779: var_90.Fields.Append "Tax5", &HC8, &HC
  loc_13057A5: var_90.Fields.Append "Tax6", &HC8, &HC
  loc_13057D1: var_90.Fields.Append "Tax7", &HC8, &HC
  loc_13057FD: var_90.Fields.Append "Tax8", &HC8, &HC
  loc_1305829: var_90.Fields.Append "Tax9", &HC8, &HC
  loc_1305855: var_90.Fields.Append "GoodsAmt", &HC8, &HC
  loc_1305881: var_90.Fields.Append "TaxAmt1", &HC8, &HC
  loc_13058AD: var_90.Fields.Append "TaxAmt2", &HC8, &HC
  loc_13058D9: var_90.Fields.Append "TaxAmt3", &HC8, &HC
  loc_1305905: var_90.Fields.Append "TaxAmt4", &HC8, &HC
  loc_1305931: var_90.Fields.Append "TaxAmt5", &HC8, &HC
  loc_130595D: var_90.Fields.Append "TaxAmt6", &HC8, &HC
  loc_1305989: var_90.Fields.Append "TaxAmt7", &HC8, &HC
  loc_13059B5: var_90.Fields.Append "TaxAmt8", &HC8, &HC
  loc_13059E1: var_90.Fields.Append "TaxAmt9", &HC8, &HC
  loc_1305A0D: var_90.Fields.Append "TaxAmt", &HC8, &HC
  loc_1305A39: var_90.Fields.Append "TaxP1", &HC8, &HA
  loc_1305A65: var_90.Fields.Append "TaxP2", &HC8, &HA
  loc_1305A91: var_90.Fields.Append "TaxP3", &HC8, &HA
  loc_1305ABD: var_90.Fields.Append "TaxP4", &HC8, &HA
  loc_1305AE9: var_90.Fields.Append "TaxP5", &HC8, &HA
  loc_1305B15: var_90.Fields.Append "TaxP6", &HC8, &HA
  loc_1305B41: var_90.Fields.Append "TaxP7", &HC8, &HA
  loc_1305B6D: var_90.Fields.Append "TaxP8", &HC8, &HA
  loc_1305B99: var_90.Fields.Append "TaxP9", &HC8, &HA
  loc_1305BC5: var_90.Fields.Append "SCharge", &HC8, &HC
  loc_1305BF1: var_90.Fields.Append "Disc", &HC8, &HC
  loc_1305C1D: var_90.Fields.Append "Roff", &HC8, &HC
  loc_1305C49: var_90.Fields.Append "BillAmt", &HC8, &HC
  loc_1305C75: var_90.Fields.Append "Mark", &HC8, 1
  loc_1305C85: var_90.CursorType = 3
  loc_1305C92: var_90.LockType = 3
  loc_1305CB1: var_90.Open var_A4, var_B4, -1
  loc_1305CB8: Set var_90 = Nothing 
  loc_1305CBF: Set var_88 = arg_C 
  loc_1305CC3: Proc_249_103_1305CCC = -1
  loc_1305CC9: var_130 = -1
End Sub

Public Sub Proc_249_104_111F1A4(arg_C) '111F1A4
  'Data Table: 577ED8
  Dim var_90 As Recordset15
  loc_111EE39: Set var_90 = arg_C 
  loc_111EE61: var_90.Fields.Append "mLine", &HC8, &HA
  loc_111EE8D: var_90.Fields.Append "SNo", &HC8, &HA
  loc_111EEB9: var_90.Fields.Append "BillDate", &HC8, &HA
  loc_111EEE5: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_111EF11: var_90.Fields.Append "BillAmount", &HC8, &H14
  loc_111EF3D: var_90.Fields.Append "Taxable", &HC8, &H14
  loc_111EF69: var_90.Fields.Append "NonTaxable", &HC8, &H14
  loc_111EF95: var_90.Fields.Append "Tax1", &HC8, &H14
  loc_111EFC1: var_90.Fields.Append "Tax2", &HC8, &H14
  loc_111EFED: var_90.Fields.Append "Tax3", &HC8, &H14
  loc_111F019: var_90.Fields.Append "Tax4", &HC8, &H14
  loc_111F045: var_90.Fields.Append "Tax5", &HC8, &H14
  loc_111F071: var_90.Fields.Append "Tax6", &HC8, &H14
  loc_111F09D: var_90.Fields.Append "Tax7", &HC8, &H14
  loc_111F0C9: var_90.Fields.Append "Tax8", &HC8, &H14
  loc_111F0F5: var_90.Fields.Append "Tax9", &HC8, &H14
  loc_111F121: var_90.Fields.Append "SCharge", &HC8, &HF
  loc_111F14D: var_90.Fields.Append "Mark", &HC8, 1
  loc_111F15D: var_90.CursorType = 3
  loc_111F16A: var_90.LockType = 3
  loc_111F189: var_90.Open var_A4, var_B4, -1
  loc_111F190: Set var_90 = Nothing 
  loc_111F197: Set var_88 = arg_C 
  loc_111F19B: Proc_249_104_111F1A4 = -1
End Sub

Public Sub Proc_249_105_102289C(arg_C) '102289C
  'Data Table: 577ED8
  Dim var_90 As Recordset15
  loc_1022665: Set var_90 = arg_C 
  loc_102268D: var_90.Fields.Append "mLine", &HC8, &HA
  loc_10226B9: var_90.Fields.Append "SNo", &HC8, &HA
  loc_10226E5: var_90.Fields.Append "BillDate", &HC8, &HA
  loc_1022711: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_102273D: var_90.Fields.Append "BillAmount", &HC8, &H14
  loc_1022769: var_90.Fields.Append "Taxable", &HC8, &H14
  loc_1022795: var_90.Fields.Append "NonTaxable", &HC8, &H14
  loc_10227C1: var_90.Fields.Append "TTax", &HC8, &HF
  loc_10227ED: var_90.Fields.Append "DTax", &HC8, &HF
  loc_1022819: var_90.Fields.Append "SCharge", &HC8, &H14
  loc_1022845: var_90.Fields.Append "Mark", &HC8, 1
  loc_1022855: var_90.CursorType = 3
  loc_1022862: var_90.LockType = 3
  loc_1022881: var_90.Open var_A4, var_B4, -1
  loc_1022888: Set var_90 = Nothing 
  loc_102288F: Set var_88 = arg_C 
  loc_1022893: Proc_249_105_102289C = -1
  loc_1022899: FLdR4
End Sub

Public Sub Proc_249_106_1041930(arg_C) '1041930
  'Data Table: 577ED8
  Dim var_90 As Recordset15
  loc_10416CD: Set var_90 = arg_C 
  loc_10416F5: var_90.Fields.Append "mLine", &HC8, &HA
  loc_1041721: var_90.Fields.Append "SNo", &HC8, 5
  loc_104174D: var_90.Fields.Append "SettleDate", &HC8, &HB
  loc_1041779: var_90.Fields.Append "BillNo", &HC8, &H14
  loc_10417A5: var_90.Fields.Append "BillDate", &HC8, &HB
  loc_10417D1: var_90.Fields.Append "PartyName", &HC8, &H32
  loc_10417FD: var_90.Fields.Append "Narration", &HC8, &H64
  loc_1041829: var_90.Fields.Append "Amount", &HC8, &HC
  loc_1041855: var_90.Fields.Append "Mode", &HC8, &H19
  loc_1041881: var_90.Fields.Append "Employee", &HC8, &HA
  loc_10418AD: var_90.Fields.Append "Mark", &HC8, 1
  loc_10418D9: var_90.Fields.Append "Mark1", &HC8, 1
  loc_10418E9: var_90.CursorType = 3
  loc_10418F6: var_90.LockType = 3
  loc_1041915: var_90.Open var_A4, var_B4, -1
  loc_104191C: Set var_90 = Nothing 
  loc_1041923: Set var_88 = arg_C 
  loc_1041927: Proc_249_106_1041930 = -1
End Sub

Public Sub Proc_249_107_FDF080(arg_C) 'FDF080
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_FDEEA1: Set var_8C = arg_C 
  loc_FDEEC9: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FDEEF5: var_8C.Fields.Append "DEPARTNAME", &HC8, &H23
  loc_FDEF21: var_8C.Fields.Append "TaxName", &HC8, &H23
  loc_FDEF4D: var_8C.Fields.Append "TaxPer", &HC8, &H23
  loc_FDEF79: var_8C.Fields.Append "GoodsAmt", &HC8, &HF
  loc_FDEFA5: var_8C.Fields.Append "TaxAmt", &HC8, &HF
  loc_FDEFD1: var_8C.Fields.Append "BillAmt", &HC8, &HC
  loc_FDEFFD: var_8C.Fields.Append "DepartCode", &HC8, 6
  loc_FDF029: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FDF039: var_8C.CursorType = 3
  loc_FDF046: var_8C.LockType = 3
  loc_FDF065: var_8C.Open var_A0, var_B0, -1
  loc_FDF06C: Set var_8C = Nothing 
  loc_FDF073: Set var_88 = arg_C 
  loc_FDF077: Proc_249_107_FDF080 = -1
End Sub

Public Sub Proc_249_108_10FC634(arg_C) '10FC634
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_10FC2F5: Set var_8C = arg_C 
  loc_10FC31D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10FC349: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10FC375: var_8C.Fields.Append "Code", &HC8, 6
  loc_10FC3A1: var_8C.Fields.Append "FuncDate", &HC8, &H14
  loc_10FC3CD: var_8C.Fields.Append "FuncTime", &HC8, &HF
  loc_10FC3F9: var_8C.Fields.Append "VenueName", &HC8, &H32
  loc_10FC425: var_8C.Fields.Append "FuncType", &HC8, &H32
  loc_10FC451: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_10FC47D: var_8C.Fields.Append "PhoneR", &HC8, &HE
  loc_10FC4A9: var_8C.Fields.Append "MobileNo", &HC8, &HE
  loc_10FC4D5: var_8C.Fields.Append "ConPerson", &HC8, &H19
  loc_10FC501: var_8C.Fields.Append "BookedBy", &HC8, &H19
  loc_10FC52D: var_8C.Fields.Append "HandledBy", &HC8, &H19
  loc_10FC559: var_8C.Fields.Append "Status", &HC8, &HA
  loc_10FC585: var_8C.Fields.Append "U_Name", &HC8, &H14
  loc_10FC5B1: var_8C.Fields.Append "Remark", &HC8, &H96
  loc_10FC5DD: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10FC5ED: var_8C.CursorType = 3
  loc_10FC5FA: var_8C.LockType = 3
  loc_10FC619: var_8C.Open var_A0, var_B0, -1
  loc_10FC620: Set var_8C = Nothing 
  loc_10FC627: Set var_88 = arg_C 
  loc_10FC62B: Proc_249_108_10FC634 = -1
  loc_10FC631: LdStkRf
End Sub

Public Sub Proc_249_109_118509C(arg_C) '118509C
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_1184CAD: Set var_8C = arg_C 
  loc_1184CD5: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1184D01: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_1184D2D: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1184D59: var_8C.Fields.Append "BillNo", &HC8, 9
  loc_1184D85: var_8C.Fields.Append "BillDate", &HC8, &H14
  loc_1184DB1: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_1184DDD: var_8C.Fields.Append "NoOfPax", &HC8, &HE
  loc_1184E09: var_8C.Fields.Append "RatePerPax", &HC8, &HE
  loc_1184E35: var_8C.Fields.Append "TotalPerCover", &HC8, &HE
  loc_1184E61: var_8C.Fields.Append "DiscAmt", &HC8, &HA
  loc_1184E8D: var_8C.Fields.Append "Taxable", &HC8, &HE
  loc_1184EB9: var_8C.Fields.Append "NonTaxable", &HC8, &HE
  loc_1184EE5: var_8C.Fields.Append "Tax", &HC8, &HE
  loc_1184F11: var_8C.Fields.Append "SrvChrg", &HC8, &HE
  loc_1184F3D: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_1184F69: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_1184F95: var_8C.Fields.Append "Advance", &HC8, &HC
  loc_1184FC1: var_8C.Fields.Append "AdvType", &HC8, &H14
  loc_1184FED: var_8C.Fields.Append "AdvNo", &HC8, &HC
  loc_1185019: var_8C.Fields.Append "AdvDate", &HC8, &HC
  loc_1185045: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1185055: var_8C.CursorType = 3
  loc_1185062: var_8C.LockType = 3
  loc_1185081: var_8C.Open var_A0, var_B0, -1
  loc_1185088: Set var_8C = Nothing 
  loc_118508F: Set var_88 = arg_C 
  loc_1185093: Proc_249_109_118509C = -1
End Sub

Public Sub Proc_249_110_10FC9B4(arg_C) '10FC9B4
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_10FC675: Set var_8C = arg_C 
  loc_10FC69D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10FC6C9: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10FC6F5: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_10FC721: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_10FC74D: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10FC779: var_8C.Fields.Append "Qty", &HC8, &HE
  loc_10FC7A5: var_8C.Fields.Append "Rate", &HC8, &HE
  loc_10FC7D1: var_8C.Fields.Append "NonTaxable", &HC8, &HE
  loc_10FC7FD: var_8C.Fields.Append "Taxable", &HC8, &HE
  loc_10FC829: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_10FC855: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_10FC881: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_10FC8AD: var_8C.Fields.Append "SrvChrg", &HC8, &HE
  loc_10FC8D9: var_8C.Fields.Append "DiscAmt", &HC8, &HA
  loc_10FC905: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_10FC931: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_10FC95D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10FC96D: var_8C.CursorType = 3
  loc_10FC97A: var_8C.LockType = 3
  loc_10FC999: var_8C.Open var_A0, var_B0, -1
  loc_10FC9A0: Set var_8C = Nothing 
  loc_10FC9A7: Set var_88 = arg_C 
  loc_10FC9AB: Proc_249_110_10FC9B4 = -1
End Sub

Public Sub Proc_249_111_11B4370(arg_C) '11B4370
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_11B3F29: Set var_8C = arg_C 
  loc_11B3F51: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_11B3F7D: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_11B3FA9: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_11B3FD5: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_11B4001: var_8C.Fields.Append "Item", &HC8, &H32
  loc_11B402D: var_8C.Fields.Append "Qty", &HC8, &HE
  loc_11B4059: var_8C.Fields.Append "Rate", &HC8, &HE
  loc_11B4085: var_8C.Fields.Append "NonTaxable", &HC8, &HE
  loc_11B40B1: var_8C.Fields.Append "Taxable", &HC8, &HE
  loc_11B40DD: var_8C.Fields.Append "Tax1", &HC8, &HE
  loc_11B4109: var_8C.Fields.Append "Tax2", &HC8, &HE
  loc_11B4135: var_8C.Fields.Append "Tax3", &HC8, &HE
  loc_11B4161: var_8C.Fields.Append "Tax4", &HC8, &HE
  loc_11B418D: var_8C.Fields.Append "Tax5", &HC8, &HE
  loc_11B41B9: var_8C.Fields.Append "Tax6", &HC8, &HE
  loc_11B41E5: var_8C.Fields.Append "Tax7", &HC8, &HE
  loc_11B4211: var_8C.Fields.Append "Tax8", &HC8, &HE
  loc_11B423D: var_8C.Fields.Append "Tax9", &HC8, &HE
  loc_11B4269: var_8C.Fields.Append "SrvChrg", &HC8, &HE
  loc_11B4295: var_8C.Fields.Append "DiscAmt", &HC8, &HA
  loc_11B42C1: var_8C.Fields.Append "Roundoff", &HC8, &HE
  loc_11B42ED: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_11B4319: var_8C.Fields.Append "Mark", &HC8, 1
  loc_11B4329: var_8C.CursorType = 3
  loc_11B4336: var_8C.LockType = 3
  loc_11B4355: var_8C.Open var_A0, var_B0, -1
  loc_11B435C: Set var_8C = Nothing 
  loc_11B4363: Set var_88 = arg_C 
  loc_11B4367: Proc_249_111_11B4370 = -1
End Sub

Public Sub Proc_249_112_1090FA8(arg_C) '1090FA8
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_1090CED: Set var_8C = arg_C 
  loc_1090D15: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1090D41: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_1090D6D: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1090D99: var_8C.Fields.Append "FuncDate", &HC8, &H14
  loc_1090DC5: var_8C.Fields.Append "FuncTime", &HC8, &HE
  loc_1090DF1: var_8C.Fields.Append "FuncName", &HC8, &H32
  loc_1090E1D: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_1090E49: var_8C.Fields.Append "BillNo", &HC8, &HE
  loc_1090E75: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_1090EA1: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_1090ECD: var_8C.Fields.Append "Advance", &HC8, &HE
  loc_1090EF9: var_8C.Fields.Append "TotalRect", &HC8, &HE
  loc_1090F25: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_1090F51: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1090F61: var_8C.CursorType = 3
  loc_1090F6E: var_8C.LockType = 3
  loc_1090F8D: var_8C.Open var_A0, var_B0, -1
  loc_1090F94: Set var_8C = Nothing 
  loc_1090F9B: Set var_88 = arg_C 
  loc_1090F9F: Proc_249_112_1090FA8 = -1
End Sub

Public Sub Proc_249_113_10413E8(arg_C) '10413E8
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_1041185: Set var_8C = arg_C 
  loc_10411AD: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10411D9: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_1041205: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1041231: var_8C.Fields.Append "FuncDate", &HC8, &H15
  loc_104125D: var_8C.Fields.Append "FuncTime", &HC8, &HE
  loc_1041289: var_8C.Fields.Append "FuncName", &HC8, &H32
  loc_10412B5: var_8C.Fields.Append "BillNo", &HC8, &HE
  loc_10412E1: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_104130D: var_8C.Fields.Append "Amount", &HC8, &HE
  loc_1041339: var_8C.Fields.Append "Advance", &HC8, &HE
  loc_1041365: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_1041391: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10413A1: var_8C.CursorType = 3
  loc_10413AE: var_8C.LockType = 3
  loc_10413CD: var_8C.Open var_A0, var_B0, -1
  loc_10413D4: Set var_8C = Nothing 
  loc_10413DB: Set var_88 = arg_C 
  loc_10413DF: Proc_249_113_10413E8 = -1
End Sub

Public Sub Proc_249_114_1160D38(arg_C) '1160D38
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_1160975: Set var_8C = arg_C 
  loc_116099D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_11609C9: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_11609F5: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1160A21: var_8C.Fields.Append "BillDate", &HC8, &HE
  loc_1160A4D: var_8C.Fields.Append "BillNo", &HC8, &HE
  loc_1160A79: var_8C.Fields.Append "PartyName", &HC8, &H19
  loc_1160AA5: var_8C.Fields.Append "BillAmount", &HC8, &HE
  loc_1160AD1: var_8C.Fields.Append "Narration", &HC8, &H64
  loc_1160AFD: var_8C.Fields.Append "Cash", &HC8, &HE
  loc_1160B29: var_8C.Fields.Append "Cheque", &HC8, &HE
  loc_1160B55: var_8C.Fields.Append "Complementary", &HC8, &HE
  loc_1160B81: var_8C.Fields.Append "Company", &HC8, &HE
  loc_1160BAD: var_8C.Fields.Append "CreditCard", &HC8, &HE
  loc_1160BD9: var_8C.Fields.Append "Hold", &HC8, &HE
  loc_1160C05: var_8C.Fields.Append "Room", &HC8, &HE
  loc_1160C31: var_8C.Fields.Append "Staff", &HC8, &HE
  loc_1160C5D: var_8C.Fields.Append "Void", &HC8, &HE
  loc_1160C89: var_8C.Fields.Append "Other", &HC8, &HE
  loc_1160CB5: var_8C.Fields.Append "Name", &HC8, &H32
  loc_1160CE1: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1160CF1: var_8C.CursorType = 3
  loc_1160CFE: var_8C.LockType = 3
  loc_1160D1D: var_8C.Open var_A0, var_B0, -1
  loc_1160D24: Set var_8C = Nothing 
  loc_1160D2B: Set var_88 = arg_C 
  loc_1160D2F: Proc_249_114_1160D38 = -1
End Sub

Public Sub Proc_249_115_10D96BC(arg_C) '10D96BC
  'Data Table: 577ED8
  Dim var_8C As Recordset15
  loc_10D93A9: Set var_8C = arg_C 
  loc_10D93D1: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10D93FD: var_8C.Fields.Append "SrNo", &HC8, 5
  loc_10D9429: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_10D9455: var_8C.Fields.Append "Name", &HC8, &H32
  loc_10D9481: var_8C.Fields.Append "BillAmount", &HC8, &HE
  loc_10D94AD: var_8C.Fields.Append "Cash", &HC8, &HE
  loc_10D94D9: var_8C.Fields.Append "Cheque", &HC8, &HE
  loc_10D9505: var_8C.Fields.Append "Complementary", &HC8, &HE
  loc_10D9531: var_8C.Fields.Append "Company", &HC8, &HE
  loc_10D955D: var_8C.Fields.Append "CreditCard", &HC8, &HE
  loc_10D9589: var_8C.Fields.Append "Hold", &HC8, &HE
  loc_10D95B5: var_8C.Fields.Append "Room", &HC8, &HE
  loc_10D95E1: var_8C.Fields.Append "Staff", &HC8, &HE
  loc_10D960D: var_8C.Fields.Append "Void", &HC8, &HE
  loc_10D9639: var_8C.Fields.Append "Other", &HC8, &HE
  loc_10D9665: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10D9675: var_8C.CursorType = 3
  loc_10D9682: var_8C.LockType = 3
  loc_10D96A1: var_8C.Open var_A0, var_B0, -1
  loc_10D96A8: Set var_8C = Nothing 
  loc_10D96AF: Set var_88 = arg_C 
  loc_10D96B3: Proc_249_115_10D96BC = -1
End Sub

Public Sub Proc_249_116_FFA920
  'Data Table: 577ED8
  Dim var_AC As MSHFlexGrid
  loc_FFA722: var_94 = global_128 'Variant
  loc_FFA731: If (var_94 = 1) Then
  loc_FFA746:   Set var_A8 = Me.GridSel
  loc_FFA74C:   Call 0.Method_Proc_249_116_FFA9200 (1, var_AC)
  loc_FFA754:   var_AC.Height = CVar(CDbl(5100))
  loc_FFA763: Else
  loc_FFA76E:   If (var_94 = 2) Then
  loc_FFA783:     Set var_A8 = Me.GridSel
  loc_FFA789:     Call 0.Method_Proc_249_116_FFA9200 (1, var_AC)
  loc_FFA791:     var_AC.Height = CVar(CDbl(5100))
  loc_FFA7AF:     Set var_A8 = Me.GridSel
  loc_FFA7B5:     Call 0.Method_Proc_249_116_FFA9200 (2, var_AC)
  loc_FFA7BD:     var_AC.Height = CVar(CDbl(5100))
  loc_FFA7CC:   Else
  loc_FFA7D7:     If (var_94 = 3) Then
  loc_FFA7EC:       Set var_A8 = Me.GridSel
  loc_FFA7F2:       Call 0.Method_Proc_249_116_FFA9200 (1, var_AC)
  loc_FFA7FA:       var_AC.Height = CVar(CDbl(2500))
  loc_FFA818:       Set var_A8 = Me.GridSel
  loc_FFA81E:       Call 0.Method_Proc_249_116_FFA9200 (2, var_AC)
  loc_FFA826:       var_AC.Height = CVar(CDbl(5100))
  loc_FFA844:       Set var_A8 = Me.GridSel
  loc_FFA84A:       Call 0.Method_Proc_249_116_FFA9200 (3, var_AC)
  loc_FFA852:       var_AC.Height = CVar(CDbl(2500))
  loc_FFA861:     Else
  loc_FFA86C:       If (var_94 = 4) Then
  loc_FFA881:         Set var_A8 = Me.GridSel
  loc_FFA887:         Call 0.Method_Proc_249_116_FFA9200 (1, var_AC)
  loc_FFA88F:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA8AD:         Set var_A8 = Me.GridSel
  loc_FFA8B3:         Call 0.Method_Proc_249_116_FFA9200 (2, var_AC)
  loc_FFA8BB:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA8D9:         Set var_A8 = Me.GridSel
  loc_FFA8DF:         Call 0.Method_Proc_249_116_FFA9200 (3, var_AC)
  loc_FFA8E7:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA905:         Set var_A8 = Me.GridSel
  loc_FFA90B:         Call 0.Method_Proc_249_116_FFA9200 (4, var_AC)
  loc_FFA913:         var_AC.Height = CVar(CDbl(2500))
  loc_FFA91F:       End If
  loc_FFA91F:     End If
  loc_FFA91F:   End If
  loc_FFA91F: End If
  loc_FFA91F: Exit Sub
End Sub
