VERSION 5.00
Begin VB.Form FrmClaimEntry
  Caption = "Claim Entry"
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
  ClientWidth = 8370
  ClientHeight = 5760
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame Frame1
    BackColor = &HC0FFFF&
    ForeColor = &HC00000&
    Left = 2910
    Top = 5100
    Width = 6510
    Height = 3810
    TabIndex = 19
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
    Begin TextBox Txt
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1380
      Width = 4230
      Height = 285
      TabIndex = 9
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
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2175
      Top = 135
      Width = 1485
      Height = 285
      TabIndex = 4
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
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 450
      Width = 1485
      Height = 285
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 6
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
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 750
      Width = 4230
      Height = 285
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 255
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
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1695
      Width = 4230
      Height = 285
      TabIndex = 10
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2010
      Width = 4245
      Height = 285
      TabIndex = 11
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
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 1065
      Width = 4230
      Height = 285
      TabIndex = 8
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
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2325
      Width = 4230
      Height = 285
      TabIndex = 12
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
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 5130
      Top = 435
      Width = 1245
      Height = 285
      TabIndex = 6
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
    Begin BtnEnh cmdOK
      Left = 2775
      Top = 2970
      Width = 1215
      Height = 660
      TabIndex = 31
    End
    Begin BtnEnh cmdCancel
      Left = 4485
      Top = 2970
      Width = 1215
      Height = 660
      TabIndex = 32
    End
    Begin Label LblName
      Caption = "Claimed By"
      Index = 11
      ForeColor = &HFF0000&
      Left = 240
      Top = 1365
      Width = 1095
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
    Begin Label LblName
      Caption = "Found Date"
      Index = 10
      ForeColor = &HFF0000&
      Left = 240
      Top = 120
      Width = 1095
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
    Begin Label LblName
      Caption = "Found Time"
      Index = 9
      ForeColor = &HFF0000&
      Left = 240
      Top = 435
      Width = 1140
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
    Begin Label LblName
      Caption = "Item Description"
      Index = 5
      ForeColor = &HFF0000&
      Left = 240
      Top = 750
      Width = 1545
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
    Begin Label LblName
      Caption = "Contact No."
      Index = 2
      ForeColor = &HFF0000&
      Left = 240
      Top = 1695
      Width = 1095
      Height = 240
      TabIndex = 24
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
    Begin Label LblName
      Caption = "Other Detail"
      Index = 7
      ForeColor = &HFF0000&
      Left = 240
      Top = 2010
      Width = 1140
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
    Begin Label LblName
      Caption = "Area"
      Index = 8
      ForeColor = &HFF0000&
      Left = 240
      Top = 1065
      Width = 450
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
    Begin Label LblName
      Caption = "Person in charge"
      Index = 0
      ForeColor = &HFF0000&
      Left = 240
      Top = 2310
      Width = 1620
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
    Begin Label LblName
      Caption = "Delivery Date"
      Index = 3
      ForeColor = &HFF0000&
      Left = 3795
      Top = 435
      Width = 1275
      Height = 240
      TabIndex = 20
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5655
    Top = 1590
    Width = 1600
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 9
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
    Left = 13080
    Top = 1050
    Width = 1875
    Height = 1770
    Visible = 0   'False
    TabIndex = 16
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 135
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5655
    Top = 960
    Width = 1605
    Height = 285
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5655
    Top = 1275
    Width = 1605
    Height = 285
    TabIndex = 1
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 2775
    Top = 2535
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 13
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
  Begin MSHFlexGrid FGrid1
    Left = 2055
    Top = 1950
    Width = 10950
    Height = 2670
    TabIndex = 3
  End
  Begin BtnEnh Exit
    Left = 9435
    Top = 8100
    Width = 1215
    Height = 660
    TabIndex = 30
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 29
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
  Begin Label LblName
    Caption = "Status"
    Index = 6
    ForeColor = &HFF0000&
    Left = 3750
    Top = 1605
    Width = 585
    Height = 240
    TabIndex = 18
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
  Begin Label LblName
    Caption = "From Found Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3750
    Top = 960
    Width = 1650
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
  Begin Label LblName
    Caption = "To Found Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 3735
    Top = 1275
    Width = 1395
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
End

Attribute VB_Name = "FrmClaimEntry"

Private global_56 As Integer
Private global_72 As Variant

Private Sub ListView_UnknownEvent_0 'EB6DEC
  'Data Table: 440A9C
  loc_EB6D5F: Set var_88 = Me.Txt
  loc_EB6D65: Call 0.Method_ListView_UnknownEvent_00 (CInt(0))
  loc_EB6D8E: If (Proc_183_19_E8DAFC(var_8C, "From Date") = 0) Then
  loc_EB6D98:   Call Txt_GotFocus()
  loc_EB6D9D:   Exit Sub
  loc_EB6D9E: End If
  loc_EB6DA9: Set var_88 = Me.Txt
  loc_EB6DAF: Call 0.Method_ListView_UnknownEvent_00 (CInt(1), var_8C)
  loc_EB6DD8: If (Proc_183_19_E8DAFC(var_8C, "To Date") = 0) Then
  loc_EB6DE2:   Call Txt_GotFocus()
  loc_EB6DE7:   Exit Sub
  loc_EB6DE8: End If
  loc_EB6DE8: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F08680
  'Data Table: 440A9C
  Dim var_88 As Variant
  Dim var_A8 As TextBox
  loc_F085AC: On Error Goto loc_F08619
  loc_F085CD: var_A0 = Me.ListView.SelectedItem.Text
  loc_F085E0: Set var_A4 = Me.Txt
  loc_F085E6: Call 0.Method_ListView_UnknownEvent_130 (CInt(2), var_A8)
  loc_F085EE: var_A8.Text = var_A0
  loc_F08610: Me.FrmList.Visible = False
  loc_F08618: Exit Sub
  loc_F08619: ' Referenced from: F085AC
  loc_F08621: Set var_88 = Err()
  loc_F08627: Call 0.Method_arg_1C (var_AC)
  loc_F08638: If (var_AC <> 0) Then
  loc_F08643:   Set var_88 = Err()
  loc_F08649:   Call 0.Method_arg_2C (var_A0)
  loc_F0866A:   MsgBox(CVar(var_A0), &H40, "Validation", var_EC, var_10C)
  loc_F0867D: End If
  loc_F0867D: Exit Sub
End Sub

Private Sub Exit_UnknownEvent_9 'E180A8
  'Data Table: 440A9C
  loc_E1809D: Me.Global.Unload Me
  loc_E180A5: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 '1240680
  'Data Table: 440A9C
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_8C As TextBox
  Dim var_FC As Variant
  Dim unk_440AA7 As Connection15
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_1A4 As Variant
  Dim var_308 As Variant
  Dim var_94 As String
  Dim var_88 As Frame
  loc_12401CF: Set var_88 = Me.Txt
  loc_12401D5: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(7))
  loc_12401FE: If (Proc_183_19_E8DAFC(var_8C, "Claimed By") = 0) Then
  loc_1240208:   Call Txt_GotFocus()
  loc_124020D:   Exit Sub
  loc_124020E: End If
  loc_1240219: Set var_88 = Me.Txt
  loc_124021F: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(8), var_8C)
  loc_1240248: If (Proc_183_19_E8DAFC(var_8C, "Contact No.") = 0) Then
  loc_1240252:   Call Txt_GotFocus()
  loc_1240257:   Exit Sub
  loc_1240258: End If
  loc_1240263: Set var_88 = Me.Txt
  loc_1240269: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(9), var_8C, CInt(8))
  loc_1240271: var_94 = "Other Details"
  loc_1240292: If (Proc_183_19_E8DAFC(var_8C, var_94) = 0) Then
  loc_124029C:   Call Txt_GotFocus()
  loc_12402A1:   Exit Sub
  loc_12402A2: End If
  loc_12402AC: var_AC = Me.FGrid1.Row
  loc_12402B5: var_BC = CVar(CLng(var_AC)) 'Long
  loc_12402D0: Set var_88 = Me.Txt
  loc_12402D6: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(7), var_8C, var_94, CVar(CLng(7)))
  loc_12402DE: var_BC = var_8C.Text
  loc_12402E6: var_FC = CVar(var_94) 'String
  loc_12402ED: LateIdCallSt
  loc_124032A: Set var_88 = Me.Txt
  loc_1240330: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(8), var_8C, var_94, CVar(CLng(8)), CVar(CLng(Txt.DispID_A)))
  loc_1240338: var_9C = var_8C.Text
  loc_1240340: var_FC = CVar(var_94) 'String
  loc_1240347: LateIdCallSt
  loc_1240384: Set var_88 = Me.Txt
  loc_124038A: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(9), var_8C, var_94, CVar(CLng(9)), CVar(CLng(Txt.DispID_A)), var_9C)
  loc_1240392: var_FC = var_8C.Text
  loc_124039A: var_FC = CVar(var_94) 'String
  loc_12403A1: LateIdCallSt
  loc_12403DE: Set var_88 = Me.Txt
  loc_12403E4: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(&HA), var_8C, var_94, CVar(CLng(&HD)), CVar(CLng(Txt.DispID_A)), var_9C)
  loc_12403EC: var_FC = var_8C.Text
  loc_12403F4: var_FC = CVar(var_94) 'String
  loc_12403FB: LateIdCallSt
  loc_1240438: Set var_88 = Me.Txt
  loc_124043E: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(&HB), var_8C, var_94, CVar(CLng(&HB)), CVar(CLng(Txt.DispID_A)), var_9C)
  loc_1240446: var_FC = var_8C.Text
  loc_124044E: var_FC = CVar(var_94) 'String
  loc_1240455: LateIdCallSt
  loc_1240477: var_BC = CVar(CLng(Txt.DispID_A)) 'Long
  loc_124048D: LateIdCallSt
  loc_12404A1: unk_440AA7.BeginTrans var_120
  loc_12404B1: Proc_6_7_F25D88(var_AC, MemVar_1F920EC, var_9C, "ü", CVar(CLng(&HA)), MemVar_1F920EC)
  loc_12404C1: Set var_88 = Me.Txt
  loc_12404C7: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(7), var_8C, var_9C, var_FC)
  loc_12404E6: Set var_90 = Me.Txt
  loc_12404EC: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(8), var_174, var_FC)
  loc_124050B: Set var_1B8 = Me.Txt
  loc_1240511: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(9), var_1BC, CInt(9))
  loc_1240530: Set var_200 = Me.Txt
  loc_1240536: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(&HA), var_204)
  loc_1240556: var_294 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_124055E: var_2B4 = CVar(CLng(0)) 'Long
  loc_12405B8: var_1A4 = "UPDATE LostFoundDetail SET Status='Delivered', DDate=" & var_AC & ", ClaimedBy='" & Trim(CVar(var_8C)) & "',ContactNo='" & Trim(CVar(var_174)) 
  loc_12405F1: var_308 = var_1A4 & "', OtherDetail='" & Trim(CVar(var_1BC)) & "', DeliveredBy='" & Trim(CVar(var_204)) & "' " & "WHERE Code='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1240608: unk_440AA7.Execute CStr(var_308 & "'"), var_348, -1
  loc_124065E: unk_440AA7.CommitTrans
  loc_1240665: Set var_9C = Nothing 
  loc_1240675: Me.Frame1.Visible = False
  loc_124067D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5B988
  'Data Table: 440A9C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5B95A: Me.FGrid1.Col = CVar(CLng(&HA))
  loc_E5B96D: Set var_A8 = Me.TxtGrid
  loc_E5B973: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E5B97B: var_AC.Visible = False
  loc_E5B987: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '126DDC8
  'Data Table: 440A9C
  Dim var_88 As MSHFlexGrid
  Dim var_148 As Boolean
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_128 As String
  Dim var_160 As TextBox
  Dim var_15C As Frame
  loc_126D838: Set var_88 = Me.FGrid1
  loc_126D84B: var_148 = (CLng(var_88.Col) = CLng(&HA))
  loc_126D8A3: If CBool(CVar(CLng(0)) And (Trim(CVar(CStr(var_88.TextMatrix)))) <> vbNullString)) Then
  loc_126D8B4:   Set var_15C = Me.Txt
  loc_126D8BA:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(7), var_160, vbNullString)
  loc_126D8C2:   var_160.Text = CVar(CLng(var_88.RowSel))
  loc_126D8DC:   Set var_15C = Me.Txt
  loc_126D8E2:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(8), var_160)
  loc_126D8EA:   var_160.Text = vbNullString
  loc_126D904:   Set var_15C = Me.Txt
  loc_126D90A:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(9), var_160)
  loc_126D912:   var_160.Text = vbNullString
  loc_126D92C:   Set var_15C = Me.Txt
  loc_126D932:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HA), var_160)
  loc_126D93A:   var_160.Text = vbNullString
  loc_126D954:   Set var_15C = Me.Txt
  loc_126D95A:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HB), var_160)
  loc_126D962:   var_160.Text = vbNullString
  loc_126D97A:   var_B8 = CVar(CLng(Txt.DispID_C)) 'Long
  loc_126D9B6:   If (Trim(CVar(CStr(Txt.DispID_41))) = vbNullString) Then
  loc_126D9C5:     Me.Frame1.Visible = True
  loc_126D9CD:     var_B8 = 0
  loc_126D9DD:     Me.Frame1.ZOrder var_B8
  loc_126D9F2:     Set var_15C = Me.Txt
  loc_126D9F8:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_160, 0)
  loc_126DA00:     var_160.Enabled = CVar(CLng(&HA))
  loc_126DA19:     Set var_15C = Me.Txt
  loc_126DA1F:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_160, 0)
  loc_126DA27:     var_160.Enabled = var_B8
  loc_126DA40:     Set var_15C = Me.Txt
  loc_126DA46:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_160)
  loc_126DA4E:     var_160.Enabled = False
  loc_126DA67:     Set var_15C = Me.Txt
  loc_126DA6D:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_160)
  loc_126DA75:     var_160.Enabled = False
  loc_126DA8E:     Set var_15C = Me.Txt
  loc_126DA94:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HA), var_160)
  loc_126DA9C:     var_160.Enabled = False
  loc_126DAB5:     Set var_15C = Me.Txt
  loc_126DABB:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HB), var_160)
  loc_126DAC3:     var_160.Enabled = False
  loc_126DADB:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DB04:     Set var_15C = Me.Txt
  loc_126DB0A:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_160, CStr(Txt.DispID_41))
  loc_126DB12:     var_160.Text = CVar(CLng(2))
  loc_126DB5D:     Set var_15C = Me.Txt
  loc_126DB63:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_160, CStr(Txt.DispID_41), CVar(CLng(3)))
  loc_126DB6B:     var_160.Text = CVar(CLng(Txt.DispID_A))
  loc_126DBB6:     Set var_15C = Me.Txt
  loc_126DBBC:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_160, CStr(Txt.DispID_41), CVar(CLng(6)))
  loc_126DBC4:     var_160.Text = CVar(CLng(Txt.DispID_A))
  loc_126DBE6:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DC0F:     Set var_15C = Me.Txt
  loc_126DC15:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_160, CStr(Txt.DispID_41), CVar(CLng(4)))
  loc_126DC1D:     var_160.Text = var_B8
  loc_126DC41:     Set var_15C = Me.Txt
  loc_126DC47:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HA), var_160, MemVar_1F920C8)
  loc_126DC4F:     var_160.Text = var_B8
  loc_126DC6E:     Set var_15C = Me.Txt
  loc_126DC74:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(&HB), var_160)
  loc_126DC7C:     var_160.Text = CStr(MemVar_1F920EC)
  loc_126DC96:     Set var_15C = Me.Txt
  loc_126DC9C:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(7), var_160)
  loc_126DCA4:     var_160.SetFocus
  loc_126DCB3:   Else
  loc_126DCBF:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DCC7:     var_D8 = CVar(CLng(7)) 'Long
  loc_126DCCC:     var_128 = vbNullString
  loc_126DCD5:     LateIdCallSt
  loc_126DCEC:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DCF4:     var_D8 = CVar(CLng(8)) 'Long
  loc_126DCF9:     var_128 = vbNullString
  loc_126DD02:     LateIdCallSt
  loc_126DD19:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DD21:     var_D8 = CVar(CLng(9)) 'Long
  loc_126DD26:     var_128 = vbNullString
  loc_126DD2F:     LateIdCallSt
  loc_126DD46:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DD4E:     var_D8 = CVar(CLng(&HA)) 'Long
  loc_126DD53:     var_128 = vbNullString
  loc_126DD5C:     LateIdCallSt
  loc_126DD73:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DD7B:     var_D8 = CVar(CLng(&HB)) 'Long
  loc_126DD80:     var_128 = vbNullString
  loc_126DD89:     LateIdCallSt
  loc_126DDA0:     var_B8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_126DDA8:     var_D8 = CVar(CLng(&HA)) 'Long
  loc_126DDAD:     var_128 = vbNullString
  loc_126DDB6:     LateIdCallSt
  loc_126DDC1:   End If
  loc_126DDC1: End If
  loc_126DDC3: Set var_88 = Nothing 
  loc_126DDC7: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E0F908
  'Data Table: 440A9C
  loc_E0F8F9: Call Fgrid1_UnknownEvent_C()
  loc_E0F903: global_56 = 0
  loc_E0F906: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'DFF2C4
  'Data Table: 440A9C
  loc_DFF2BC: Call Fgrid1_UnknownEvent_9()
  loc_DFF2C1: Exit Sub
End Sub

Private Sub Form_Load() 'F0554C
  'Data Table: 440A9C
  Dim var_AC As Variant
  Dim unk_440AA7 As Connection15
  Dim var_BC As Variant
  loc_F05474: On Error Goto loc_F05505
  loc_F05485: Me.FGrid1.Visible = True
  loc_F0549B: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_F054AA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F054BC: Set var_AC = Me.FGrid1
  loc_F054C2: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F054E0: unk_440AA7.Execute "SELECT  Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail Order BY Code", var_BC, -1
  loc_F054F1: Set global_52 = var_AC
  loc_F054FF: Call Proc_145_20_11AFB18(var_AC)
  loc_F05504: Exit Sub
  loc_F05505: ' Referenced from: F05474
  loc_F0550D: Set var_AC = Err()
  loc_F05513: Call 0.Method_arg_2C (var_C4)
  loc_F05534: MsgBox(CVar(var_C4), &H40, "Information", var_E4, var_104)
  loc_F05547: Exit Sub
  loc_F05548: Exit Sub
End Sub

Private Sub Form_Resize() 'E726A0
  'Data Table: 440A9C
  loc_E7264A: Call 0.Method_arg_50 (var_88)
  loc_E7265C: Me.LblFormCaption.Caption = var_88
  loc_E72675: Me.LblFormCaption.Left = CDbl(0)
  loc_E72683: Call 0.Method_arg_100 (var_90)
  loc_E72695: Me.LblFormCaption.Width = var_90
  loc_E7269D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52178
  'Data Table: 440A9C
  loc_E5214B: Set global_52 = Nothing
  loc_E5215D: Set global_52 = Nothing
  loc_E5216F: Set global_52 = Nothing
  loc_E52176: Exit Sub
End Sub

Private Sub Form_Activate() 'DFBFD8
  'Data Table: 440A9C
  loc_DFBFD4: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F78F80
  'Data Table: 440A9C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_E0 As TextBox
  loc_F78E56: Set var_88 = Me.Txt
  loc_F78E5C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F78E6A: Proc_6_74_E226B0(var_8C)
  loc_F78E79: var_92 = Index
  loc_F78E84: If (var_92 = CInt(2)) Then
  loc_F78E94:   ReDim var_98(0 To 2)
  loc_F78EAB:   var_98(0) = "Delivered"
  loc_F78EBA:   var_98(1) = "Pending"
  loc_F78EC9:   var_98(2) = "ALL"
  loc_F78EEB:   Set var_E0 = Me.ListView
  loc_F78F06:   Set var_8C = Me.Txt
  loc_F78F20:   Set global_88 = Proc_6_66_EFF8FC(var_E0, var_8C, Index, Array(var_98))
  loc_F78F3E:   Set var_88 = Me.Txt
  loc_F78F44:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_E8, 3)
  loc_F78F4C:   global_72 = var_8C.Text
  loc_F78F5E:   Set var_90 = Me.Txt
  loc_F78F64:   Call 0.Method_Txt_GotFocus0 (Index, var_E0, var_E8)
  loc_F78F6C:   var_E0.Tag = var_92
  loc_F78F7F: End If
  loc_F78F7F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FFA6B4
  'Data Table: 440A9C
  Dim var_8C As Frame
  Dim var_94 As TextBox
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_B8 As TextBox
  loc_FFA4E6: If (CLng(Shift) = &H1B) Then
  loc_FFA4F5:   Me.FrmList.Visible = False
  loc_FFA4FD:   Exit Sub
  loc_FFA4FE: End If
  loc_FFA50C: If (KeyCode = CInt(2)) Then
  loc_FFA531:   Set var_8C = Me.Txt
  loc_FFA537:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_FFA53F:   var_98 = var_94.Left
  loc_FFA551:   Set var_9C = Me.Txt
  loc_FFA557:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_FFA55F:   var_A4 = var_A0.Top
  loc_FFA571:   Set var_A8 = Me.Txt
  loc_FFA577:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_FFA57F:   var_B0 = var_AC.Height
  loc_FFA591:   Set var_B4 = Me.Txt
  loc_FFA597:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_FFA59F:   var_BC = var_B8.Width
  loc_FFA5E7:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_FFA60B: End If
  loc_FFA63C: If (((Me.FrmList.Visible = 0) And (CLng(Shift) = &H26)) Or (CLng(Shift) = &HD)) Then
  loc_FFA645:   Proc_6_75_E527CC(Shift, arg_14, CInt(var_98), CInt((var_A4 + var_B0)))
  loc_FFA64A: End If
  loc_FFA665: If (Me.FrmList.Visible = 0) Then
  loc_FFA67D:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FFA686:     Proc_6_76_E52838(Shift, arg_14, CInt(var_BC))
  loc_FFA68E:   Else
  loc_FFA6A3:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FFA6AC:       Proc_6_75_E527CC(Shift, arg_14)
  loc_FFA6B1:     End If
  loc_FFA6B1:   End If
  loc_FFA6B1: End If
  loc_FFA6B1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E8CDE4
  'Data Table: 440A9C
  Dim var_AC As TextBox
  loc_E8CD8A: If (KeyAscii = CInt(2)) Then
  loc_E8CDBE:   Set var_A8 = Me.Txt
  loc_E8CDC4:   Call 0.Method_Txt_KeyPress0 (CInt(2), var_AC)
  loc_E8CDCC:   var_AC.Text = Me.ListView.SelectedItem.Text
  loc_E8CDE2: End If
  loc_E8CDE2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) '1148C14
  'Data Table: 440A9C
  Dim var_92 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_154 As Variant
  Dim unk_440AA7 As Connection15
  Dim var_178 As TextBox
  Dim var_174 As Variant
  Dim var_A4 As String
  loc_11488BE: Set var_88 = Me.Txt
  loc_11488C4: Call 0.Method_Txt_LostFocus0 (Index)
  loc_11488D2: Proc_6_73_E22704(var_8C)
  loc_11488E1: var_92 = Index
  loc_11488EC: If (var_92 = CInt(0)) Then
  loc_11488FA:   Set var_88 = Me.Txt
  loc_1148900:   Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C)
  loc_1148921:   Set var_98 = Me.Txt
  loc_1148927:   Call 0.Method_Txt_LostFocus0 (CInt(0), var_9C)
  loc_114892F:   var_9C.Text = Proc_6_33_1512840(var_8C, var_92)
  loc_1148945: Else
  loc_114894D:   If (var_92 = CInt(1)) Then
  loc_114895B:     Set var_88 = Me.Txt
  loc_1148961:     Call 0.Method_Txt_LostFocus0 (CInt(1), var_8C)
  loc_1148982:     Set var_98 = Me.Txt
  loc_1148988:     Call 0.Method_Txt_LostFocus0 (CInt(1), var_9C)
  loc_1148990:     var_9C.Text = Proc_6_33_1512840(var_8C)
  loc_11489A6:   Else
  loc_11489AE:     If (var_92 = CInt(2)) Then
  loc_11489BF:       Set var_88 = Me.Txt
  loc_11489C5:       Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C)
  loc_11489E8:       Set var_90 = Me.Txt
  loc_11489EE:       Call 0.Method_Txt_LostFocus0 (CInt(1), var_98, var_A4)
  loc_11489F6:       (var_8C.Text <> vbNullString) = var_98.Text
  loc_1148A16:       If (var_8C And (var_A4 <> vbNullString)) Then
  loc_1148A27:         Set var_88 = Me.Txt
  loc_1148A2D:         Call 0.Method_Txt_LostFocus0 (CInt(2), var_8C)
  loc_1148A4C:         If (var_8C.Text = "ALL") Then
  loc_1148A5C:           var_D4 = "SELECT  Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail WHERE FDate Between "
  loc_1148A6C:           Set var_88 = Me.Txt
  loc_1148A72:           Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C, var_D4)
  loc_1148A81:           Proc_6_7_F25D88(var_C4, CVar(var_8C), var_174)
  loc_1148A89:           var_E4 = -1 & var_C4 
  loc_1148AA1:           Set var_90 = Me.Txt
  loc_1148AA7:           Call 0.Method_Txt_LostFocus0 (CInt(1), var_98)
  loc_1148AB6:           Proc_6_7_F25D88(var_124, CVar(var_98))
  loc_1148ACB:           var_A0 = CStr(var_E4 & " AND " & var_124 & " Order BY Code")
  loc_1148AD5:           unk_440AA7.Execute var_A0, var_9C, 
  loc_1148AE6:           Set global_52 = var_9C
  loc_1148B10:         Else
  loc_1148B1D:           var_D4 = "SELECT  Code AS Scode,FDate,Ftime,FArea,FindBy,Description,UName1,ClaimedBy,ContactNo,OtherDetail,DeliveredBy,DDate,Status FROM LostFoundDetail WHERE FDate Between "
  loc_1148B2D:           Set var_88 = Me.Txt
  loc_1148B33:           Call 0.Method_Txt_LostFocus0 (CInt(0), var_8C, var_D4)
  loc_1148B42:           Proc_6_7_F25D88(var_C4, CVar(var_8C), var_1B8)
  loc_1148B4A:           var_E4 = -1 & var_C4 
  loc_1148B62:           Set var_90 = Me.Txt
  loc_1148B68:           Call 0.Method_Txt_LostFocus0 (CInt(1), var_98)
  loc_1148B77:           Proc_6_7_F25D88(var_124, CVar(var_98))
  loc_1148B88:           var_154 = var_E4 & " AND " & var_124 & " AND Status='" 
  loc_1148B9A:           Set var_9C = Me.Txt
  loc_1148BA0:           Call 0.Method_Txt_LostFocus0 (CInt(2), var_178, var_A0)
  loc_1148BA8:           var_154 = var_178.Text
  loc_1148BCA:           unk_440AA7.Execute CStr(var_1BC & CVar(var_A0) & "' Order BY Code"), , 
  loc_1148BDB:           Set global_52 = var_1BC
  loc_1148C0C:         End If
  loc_1148C0C:         Call Proc_145_19_10BE168()
  loc_1148C11:       End If
  loc_1148C11:     End If
  loc_1148C11:   End If
  loc_1148C11: End If
  loc_1148C11: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'FF29C4
  'Data Table: 440A9C
  Dim var_8C As TextBox
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_88 As Frame
  loc_FF27DA: Set var_88 = Me.Txt
  loc_FF27E0: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(7), var_8C)
  loc_FF27E8: var_8C.Text = vbNullString
  loc_FF2802: Set var_88 = Me.Txt
  loc_FF2808: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(8), var_8C)
  loc_FF2810: var_8C.Text = vbNullString
  loc_FF282A: Set var_88 = Me.Txt
  loc_FF2830: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(9), var_8C)
  loc_FF2838: var_8C.Text = vbNullString
  loc_FF2852: Set var_88 = Me.Txt
  loc_FF2858: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(&HA), var_8C)
  loc_FF2860: var_8C.Text = vbNullString
  loc_FF287A: Set var_88 = Me.Txt
  loc_FF2880: Call 0.Method_cmdCancel_UnknownEvent_90 (CInt(&HB), var_8C)
  loc_FF2888: var_8C.Text = vbNullString
  loc_FF2898: Set var_90 = Me.FGrid1
  loc_FF28A7: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF28AF: var_D0 = CVar(CLng(7)) 'Long
  loc_FF28B4: var_F0 = vbNullString
  loc_FF28BD: LateIdCallSt
  loc_FF28D4: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF28DC: var_D0 = CVar(CLng(8)) 'Long
  loc_FF28E1: var_F0 = vbNullString
  loc_FF28EA: LateIdCallSt
  loc_FF2901: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF2909: var_D0 = CVar(CLng(9)) 'Long
  loc_FF290E: var_F0 = vbNullString
  loc_FF2917: LateIdCallSt
  loc_FF292E: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF2936: var_D0 = CVar(CLng(&HA)) 'Long
  loc_FF293B: var_F0 = vbNullString
  loc_FF2944: LateIdCallSt
  loc_FF295B: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF2963: var_D0 = CVar(CLng(&HB)) 'Long
  loc_FF2968: var_F0 = vbNullString
  loc_FF2971: LateIdCallSt
  loc_FF2988: var_B0 = CVar(CLng(var_90.Row)) 'Long
  loc_FF2990: var_D0 = CVar(CLng(&HA)) 'Long
  loc_FF2995: var_F0 = vbNullString
  loc_FF299E: LateIdCallSt
  loc_FF29AB: Set var_90 = Nothing 
  loc_FF29BB: Me.Frame1.Visible = False
  loc_FF29C3: Exit Sub
End Sub

Public Sub Proc_145_17_E7C18C(arg_C) 'E7C18C
  'Data Table: 440A9C
  Dim var_98 As TextBox
  loc_E7C13A: Set var_8C = Me.Txt
  loc_E7C140: Call 0.Method_Proc_145_17_E7C18CC (var_8E, var_86)
  loc_E7C150: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C166:   Set var_8C = Me.Txt
  loc_E7C16C:   Call 0.Method_Proc_145_17_E7C18C0 (CInt(var_86), var_98)
  loc_E7C174:   var_98.Enabled = arg_C
  loc_E7C183: Next var_92 'Byte
  loc_E7C189: Exit Sub
  loc_E7C18A: Set arg_2478 = 
End Sub

Public Sub Proc_145_18_EB3210
  'Data Table: 440A9C
  Dim var_98 As TextBox
  loc_EB317A: global_64 = vbNullString
  loc_EB3184: global_68 = vbNullString
  loc_EB3196: Set var_8C = Me.Txt
  loc_EB319C: Call 0.Method_Proc_145_18_EB3210C (var_8E, var_86)
  loc_EB31AC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB31C2:   Set var_8C = Me.Txt
  loc_EB31C8:   Call 0.Method_Proc_145_18_EB32100 (CInt(var_86), var_98)
  loc_EB31D0:   var_98.Text = vbNullString
  loc_EB31EC:   Set var_8C = Me.Txt
  loc_EB31F2:   Call 0.Method_Proc_145_18_EB32100 (CInt(var_86), var_98)
  loc_EB31FA:   var_98.Tag = vbNullString
  loc_EB3209: Next var_92 'Byte
  loc_EB320F: Exit Sub
End Sub

Public Sub Proc_145_19_10BE168
  'Data Table: 440A9C
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Long
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_E8 As Variant
  loc_10BDE90: Set var_88 = Me.FGrid1
  loc_10BDEA1: Set var_8C = Me.Txt
  loc_10BDEA7: Call 0.Method_Proc_145_19_10BE1680 (CInt(2), var_90)
  loc_10BDEC6: If (var_90.Text = "Pending") Then
  loc_10BDECC:   var_A4 = CVar(CLng(5)) 'Long
  loc_10BDED1:   var_C4 = 0
  loc_10BDEDD:   LateIdCallSt
  loc_10BDEE8:   var_A4 = CVar(CLng(7)) 'Long
  loc_10BDEED:   var_C4 = 0
  loc_10BDEF9:   LateIdCallSt
  loc_10BDF04:   var_A4 = CVar(CLng(8)) 'Long
  loc_10BDF09:   var_C4 = 0
  loc_10BDF15:   LateIdCallSt
  loc_10BDF20:   var_A4 = CVar(CLng(9)) 'Long
  loc_10BDF25:   var_C4 = 0
  loc_10BDF31:   LateIdCallSt
  loc_10BDF3C:   var_A4 = CVar(CLng(&HA)) 'Long
  loc_10BDF41:   var_C4 = &H320
  loc_10BDF4D:   LateIdCallSt
  loc_10BDF58: Else
  loc_10BDF5B:   var_A4 = CVar(CLng(5)) 'Long
  loc_10BDF60:   var_C4 = &H708
  loc_10BDF6C:   LateIdCallSt
  loc_10BDF77:   var_A4 = CVar(CLng(7)) 'Long
  loc_10BDF7C:   var_C4 = &H708
  loc_10BDF88:   LateIdCallSt
  loc_10BDF93:   var_A4 = CVar(CLng(8)) 'Long
  loc_10BDF98:   var_C4 = &H3E8
  loc_10BDFA4:   LateIdCallSt
  loc_10BDFAF:   var_A4 = CVar(CLng(9)) 'Long
  loc_10BDFB4:   var_C4 = &H960
  loc_10BDFC0:   LateIdCallSt
  loc_10BDFCB:   var_A4 = CVar(CLng(&HA)) 'Long
  loc_10BDFD0:   var_C4 = 0
  loc_10BDFDC:   LateIdCallSt
  loc_10BDFE4: End If
  loc_10BDFE6: Set var_88 = Nothing 
  loc_10BDFEA: On Error Goto loc_10BE125
  loc_10BDFF3: Proc_183_45_E5C118(global_52, var_88, var_C4, var_A4, var_88, var_C4, var_A4, var_88)
  loc_10BE00F: If (Me.RecordCount <= 0) Then
  loc_10BE025:   Me.FGrid1.Rows = 1
  loc_10BE02D:   var_A4 = vbNullString
  loc_10BE037:   Set var_8C = Me.FGrid1
  loc_10BE05B:   Me.FGrid1.FixedRows = 1
  loc_10BE066: Else
  loc_10BE06C:   var_A4 = "SCode"
  loc_10BE08B:   var_E8 = Me.Fields.Item(var_A4).Value
  loc_10BE094:   var_94 = CStr(var_E8)
  loc_10BE09A:   global_60 = var_94
  loc_10BE0C2:   If (Me.RecordCount > 0) Then
  loc_10BE0C8:     Call Proc_145_21_12AF6BC(var_E8, FGrid1.DispID_10000, var_A4, var_C4, var_A4, var_88)
  loc_10BE0D3:   Else
  loc_10BE0E6:     Me.FGrid1.Rows = 1
  loc_10BE0EE:     var_A4 = vbNullString
  loc_10BE0F8:     Set var_8C = Me.FGrid1
  loc_10BE109:     var_A4 = 1
  loc_10BE11C:     Me.FGrid1.FixedRows = var_A4
  loc_10BE124:   End If
  loc_10BE124: End If
  loc_10BE124: Exit Sub
  loc_10BE125: ' Referenced from: 10BDFEA
  loc_10BE12D: Set var_8C = Err()
  loc_10BE133: Call 0.Method_arg_2C (var_94, FGrid1.DispID_10000, var_A4, var_C4)
  loc_10BE154: MsgBox(CVar(var_94), &H40, "Information", var_108, var_118)
  loc_10BE167: Exit Sub
End Sub

Public Sub Proc_145_20_11AFB18
  'Data Table: 440A9C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_11AF6CC: Set var_88 = Me.FGrid1
  loc_11AF6DB: var_88.Cols = &HE
  loc_11AF6EC: var_88.Rows = 2
  loc_11AF6F4: var_98 = CVar(CLng(0)) 'Long
  loc_11AF6F9: var_B8 = 0
  loc_11AF705: LateIdCallSt
  loc_11AF70D: var_98 = 0
  loc_11AF719: var_B8 = CVar(CLng(1)) 'Long
  loc_11AF71E: var_D8 = "SNo."
  loc_11AF727: LateIdCallSt
  loc_11AF732: var_98 = CVar(CLng(1)) 'Long
  loc_11AF73D: var_B8 = CVar(CInt(7)) 'Integer
  loc_11AF744: LateIdCallSt
  loc_11AF74F: var_98 = CVar(CLng(1)) 'Long
  loc_11AF754: var_B8 = &H1C2
  loc_11AF760: LateIdCallSt
  loc_11AF768: var_98 = 0
  loc_11AF774: var_B8 = CVar(CLng(2)) 'Long
  loc_11AF779: var_D8 = "Found Date"
  loc_11AF782: LateIdCallSt
  loc_11AF78D: var_98 = CVar(CLng(2)) 'Long
  loc_11AF798: var_B8 = CVar(CInt(1)) 'Integer
  loc_11AF79F: LateIdCallSt
  loc_11AF7AA: var_98 = CVar(CLng(2)) 'Long
  loc_11AF7AF: var_B8 = &H44C
  loc_11AF7BB: LateIdCallSt
  loc_11AF7C3: var_98 = 0
  loc_11AF7CF: var_B8 = CVar(CLng(3)) 'Long
  loc_11AF7D4: var_D8 = "Time"
  loc_11AF7DD: LateIdCallSt
  loc_11AF7E8: var_98 = CVar(CLng(3)) 'Long
  loc_11AF7F3: var_B8 = CVar(CInt(1)) 'Integer
  loc_11AF7FA: LateIdCallSt
  loc_11AF805: var_98 = CVar(CLng(3)) 'Long
  loc_11AF80A: var_B8 = &H2BC
  loc_11AF816: LateIdCallSt
  loc_11AF81E: var_98 = 0
  loc_11AF82A: var_B8 = CVar(CLng(4)) 'Long
  loc_11AF82F: var_D8 = "Area"
  loc_11AF838: LateIdCallSt
  loc_11AF843: var_98 = CVar(CLng(4)) 'Long
  loc_11AF84E: var_B8 = CVar(CInt(1)) 'Integer
  loc_11AF855: LateIdCallSt
  loc_11AF860: var_98 = CVar(CLng(4)) 'Long
  loc_11AF865: var_B8 = &H708
  loc_11AF871: LateIdCallSt
  loc_11AF879: var_98 = 0
  loc_11AF885: var_B8 = CVar(CLng(5)) 'Long
  loc_11AF88A: var_D8 = "Find By"
  loc_11AF893: LateIdCallSt
  loc_11AF89E: var_98 = CVar(CLng(5)) 'Long
  loc_11AF8A9: var_B8 = CVar(CInt(1)) 'Integer
  loc_11AF8B0: LateIdCallSt
  loc_11AF8BB: var_98 = CVar(CLng(5)) 'Long
  loc_11AF8C0: var_B8 = 0
  loc_11AF8CC: LateIdCallSt
  loc_11AF8D4: var_98 = 0
  loc_11AF8E0: var_B8 = CVar(CLng(6)) 'Long
  loc_11AF8E5: var_D8 = "Item Description & Remark"
  loc_11AF8EE: LateIdCallSt
  loc_11AF8F9: var_98 = CVar(CLng(6)) 'Long
  loc_11AF904: var_B8 = CVar(CInt(1)) 'Integer
  loc_11AF90B: LateIdCallSt
  loc_11AF916: var_98 = CVar(CLng(6)) 'Long
  loc_11AF91B: var_B8 = &HF3C
  loc_11AF927: LateIdCallSt
  loc_11AF92F: var_98 = 0
  loc_11AF93B: var_B8 = CVar(CLng(&HC)) 'Long
  loc_11AF940: var_D8 = "User1"
  loc_11AF949: LateIdCallSt
  loc_11AF954: var_98 = CVar(CLng(&HC)) 'Long
  loc_11AF959: var_B8 = 0
  loc_11AF965: LateIdCallSt
  loc_11AF96D: var_98 = 0
  loc_11AF979: var_B8 = CVar(CLng(7)) 'Long
  loc_11AF97E: var_D8 = "Claimed By"
  loc_11AF987: LateIdCallSt
  loc_11AF992: var_98 = CVar(CLng(7)) 'Long
  loc_11AF997: var_B8 = 0
  loc_11AF9A3: LateIdCallSt
  loc_11AF9AB: var_98 = 0
  loc_11AF9B7: var_B8 = CVar(CLng(8)) 'Long
  loc_11AF9BC: var_D8 = "Contact No"
  loc_11AF9C5: LateIdCallSt
  loc_11AF9D0: var_98 = CVar(CLng(8)) 'Long
  loc_11AF9D5: var_B8 = 0
  loc_11AF9E1: LateIdCallSt
  loc_11AF9E9: var_98 = 0
  loc_11AF9F5: var_B8 = CVar(CLng(9)) 'Long
  loc_11AF9FA: var_D8 = "Other Detail"
  loc_11AFA03: LateIdCallSt
  loc_11AFA0E: var_98 = CVar(CLng(9)) 'Long
  loc_11AFA13: var_B8 = 0
  loc_11AFA1F: LateIdCallSt
  loc_11AFA27: var_98 = 0
  loc_11AFA33: var_B8 = CVar(CLng(&HD)) 'Long
  loc_11AFA38: var_D8 = "Delivered By"
  loc_11AFA41: LateIdCallSt
  loc_11AFA4C: var_98 = CVar(CLng(&HD)) 'Long
  loc_11AFA51: var_B8 = 0
  loc_11AFA5D: LateIdCallSt
  loc_11AFA65: var_98 = 0
  loc_11AFA71: var_B8 = CVar(CLng(&HB)) 'Long
  loc_11AFA76: var_D8 = "Delivered Date"
  loc_11AFA7F: LateIdCallSt
  loc_11AFA8A: var_98 = CVar(CLng(&HB)) 'Long
  loc_11AFA8F: var_B8 = 0
  loc_11AFA9B: LateIdCallSt
  loc_11AFAA3: var_98 = 0
  loc_11AFAAF: var_B8 = CVar(CLng(&HA)) 'Long
  loc_11AFAB4: var_D8 = "Mark"
  loc_11AFABD: LateIdCallSt
  loc_11AFAC8: var_98 = CVar(CLng(&HA)) 'Long
  loc_11AFAD3: var_B8 = CVar(CInt(4)) 'Integer
  loc_11AFADA: LateIdCallSt
  loc_11AFAE5: var_98 = CVar(CLng(&HA)) 'Long
  loc_11AFAEA: var_B8 = &H320
  loc_11AFAF6: LateIdCallSt
  loc_11AFB0A: var_88.FixedRows = 1
  loc_11AFB11: Set var_88 = Nothing 
  loc_11AFB15: Exit Sub
End Sub

Public Sub Proc_145_21_12AF6BC
  'Data Table: 440A9C
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_BC As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_B4 As Variant
  Dim var_100 As Variant
  Dim var_120 As String
  loc_12AF099: Me.FGrid1.Rows = 2
  loc_12AF0A5: Set var_BC = Me.FGrid1
  loc_12AF0A8: ' Referenced from: 12AF6AC
  loc_12AF0BA: If Not(Me.EOF) Then
  loc_12AF0CF:   var_A4 = CVar((CLng(var_BC.Rows) - 1)) 'Long
  loc_12AF0D7:   var_BC.Row = 2
  loc_12AF0EB:   var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF0F3:   var_F0 = CVar(CLng(1)) 'Long
  loc_12AF106:   var_110 = CVar(CStr(CLng(var_BC.Row))) 'String
  loc_12AF10D:   LateIdCallSt
  loc_12AF12A:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF132:   var_100 = CVar(CLng(0)) 'Long
  loc_12AF165:   var_110 = CVar(CStr(Me.Fields.Item("SCode").Value)) 'String
  loc_12AF16C:   LateIdCallSt
  loc_12AF190:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF198:   var_100 = CVar(CLng(2)) 'Long
  loc_12AF1CB:   var_110 = CVar(CStr(Me.Fields.Item("Fdate").Value)) 'String
  loc_12AF1D2:   LateIdCallSt
  loc_12AF1F6:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF1FE:   var_100 = CVar(CLng(3)) 'Long
  loc_12AF231:   var_110 = CVar(CStr(Me.Fields.Item("FTime").Value)) 'String
  loc_12AF238:   LateIdCallSt
  loc_12AF25C:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF264:   var_100 = CVar(CLng(4)) 'Long
  loc_12AF297:   var_110 = CVar(CStr(Me.Fields.Item("FArea").Value)) 'String
  loc_12AF29E:   LateIdCallSt
  loc_12AF2C2:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF2CA:   var_100 = CVar(CLng(5)) 'Long
  loc_12AF2FD:   var_110 = CVar(CStr(Me.Fields.Item("FindBy").Value)) 'String
  loc_12AF304:   LateIdCallSt
  loc_12AF328:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF330:   var_100 = CVar(CLng(6)) 'Long
  loc_12AF363:   var_110 = CVar(CStr(Me.Fields.Item("Description").Value)) 'String
  loc_12AF36A:   LateIdCallSt
  loc_12AF38E:   var_B4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF396:   var_100 = CVar(CLng(&HC)) 'Long
  loc_12AF3C9:   var_110 = CVar(CStr(Me.Fields.Item("UName1").Value)) 'String
  loc_12AF3D0:   LateIdCallSt
  loc_12AF42C:   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ClaimedBy")), CVar(CLng(7)), CVar(CLng(var_BC.Row)), var_BC, var_110, CVar(CLng(7)), CVar(CLng(var_BC.Row)))) 'String
  loc_12AF433:   LateIdCallSt
  loc_12AF48B:   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ContactNo")), CVar(CLng(8)), CVar(CLng(var_BC.Row)), var_BC, var_110, var_BC)) 'String
  loc_12AF492:   LateIdCallSt
  loc_12AF4EA:   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("OtherDetail")), CVar(CLng(9)), CVar(CLng(var_BC.Row)), var_BC, var_110)) 'String
  loc_12AF4F1:   LateIdCallSt
  loc_12AF549:   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DeliveredBy")), CVar(CLng(&HD)), CVar(CLng(var_BC.Row)), var_BC, var_110)) 'String
  loc_12AF550:   LateIdCallSt
  loc_12AF5A8:   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DDate")), CVar(CLng(&HB)), CVar(CLng(var_BC.Row)), var_BC, var_110)) 'String
  loc_12AF5AF:   LateIdCallSt
  loc_12AF5CE:   var_BC.Col = CVar(CLng(&HA))
  loc_12AF5DC:   var_BC.CellFontName = "WINGDINGS"
  loc_12AF5EC:   var_BC.CellFontSize = CVar(CDbl(&HE))
  loc_12AF630:   If (Me.Fields.Item("Status").Value = "Delivered") Then
  loc_12AF63F:     var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF647:     var_F0 = CVar(CLng(&HA)) 'Long
  loc_12AF64C:     var_120 = "ü"
  loc_12AF655:     LateIdCallSt
  loc_12AF663:   Else
  loc_12AF66F:     var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_12AF677:     var_F0 = CVar(CLng(&HA)) 'Long
  loc_12AF67C:     var_120 = vbNullString
  loc_12AF685:     LateIdCallSt
  loc_12AF690:   End If
  loc_12AF690:   var_A4 = vbNullString
  loc_12AF6A7:   Me.MoveNext
  loc_12AF6AC:   GoTo loc_12AF0A8
  loc_12AF6AF: End If
  loc_12AF6B1: Set var_BC = Nothing 
  loc_12AF6B5: Proc_145_21_12AF6BC = FGrid1.DispID_10000
End Sub
