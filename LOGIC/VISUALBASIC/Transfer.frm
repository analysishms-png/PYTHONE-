VERSION 5.00
Begin VB.Form Transfer
  Caption = "Data Transfer"
  BackColor = &HC0FFC0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11460
  ClientHeight = 7650
  LockControls = -1  'True
  Begin CommandButton CmdExit
    Caption = "E&xit"
    BackColor = &HFFC0C0&
    Left = 14895
    Top = 75
    Width = 1095
    Height = 465
    TabIndex = 23
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
    Style = 1
  End
  Begin CommandButton CmdRefreshDatabase
    Caption = "Query to Update NULL"
    Left = 12945
    Top = 2610
    Width = 1440
    Height = 780
    Visible = 0   'False
    TabIndex = 22
    TabStop = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame Frame2
    Caption = "Frame2"
    BackColor = &HFF80FF&
    Left = 420
    Top = 90
    Width = 14355
    Height = 3435
    TabIndex = 15
    BorderStyle = 0 'None
    Begin CommandButton CmdIss
      Caption = "Send "
      BackColor = &HFFC0C0&
      Left = 555
      Top = 1335
      Width = 3780
      Height = 570
      TabIndex = 4
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdRec
      Caption = "Receive"
      BackColor = &HFFC0C0&
      Left = 570
      Top = 1905
      Width = 3780
      Height = 570
      TabIndex = 5
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin TextBox Txt
      Index = 0
      Left = 1410
      Top = 150
      Width = 1290
      Height = 240
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 13
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      Left = 3525
      Top = 150
      Width = 1290
      Height = 240
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 13
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      Left = 1410
      Top = 435
      Width = 3405
      Height = 240
      TabIndex = 2
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Frame FrameComp
      Caption = "Company Selection"
      BackColor = &HFFC0C0&
      Left = 4860
      Top = 135
      Width = 3810
      Height = 3210
      TabIndex = 16
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin MSFlexGrid FGrid
        Left = 30
        Top = 255
        Width = 3735
        Height = 2910
        TabIndex = 3
      End
    End
    Begin CommandButton CmdTemplate
      Caption = "Create Template"
      Left = 12435
      Top = 75
      Width = 1860
      Height = 375
      Visible = 0   'False
      TabIndex = 6
      TabStop = 0   'False
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin DataGrid DGUnit
      Left = 8745
      Top = 720
      Width = 3405
      Height = 1695
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 17
    End
    Begin Label LblTblName
      ForeColor = &HFF&
      Left = 495
      Top = 3015
      Width = 3195
      Height = 330
      TabIndex = 21
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "From Date"
      Index = 0
      ForeColor = &H0&
      Left = 405
      Top = 150
      Width = 990
      Height = 240
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
      Caption = "To Date"
      Index = 1
      ForeColor = &H0&
      Left = 2745
      Top = 150
      Width = 750
      Height = 240
      TabIndex = 19
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
      Caption = "For Unit"
      Index = 2
      ForeColor = &H0&
      Left = 405
      Top = 435
      Width = 735
      Height = 240
      TabIndex = 18
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
  End
  Begin Frame Frame1
    BackColor = &HFFFF00&
    Left = 420
    Top = 3540
    Width = 14355
    Height = 5355
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CheckBox ChkModule
      Caption = "Point Of Sale"
      Index = 2
      ForeColor = &HFF0000&
      Left = 12300
      Top = 780
      Width = 1920
      Height = 345
      TabIndex = 11
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CheckBox ChkModule
      Caption = "Material Mgmt"
      Index = 1
      ForeColor = &HFF0000&
      Left = 12300
      Top = 420
      Width = 1920
      Height = 345
      TabIndex = 10
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CheckBox ChkModule
      Caption = "Back Office"
      Index = 0
      ForeColor = &HFF0000&
      Left = 12300
      Top = 60
      Width = 1920
      Height = 345
      TabIndex = 9
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdTransOnline
      Caption = "ON LINE"
      Left = 12330
      Top = 4830
      Width = 1860
      Height = 465
      TabIndex = 14
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdTransIn
      Caption = "Transfer IN"
      Left = 12330
      Top = 4365
      Width = 1860
      Height = 465
      TabIndex = 13
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdTransOut
      Caption = "Transfer OUT"
      Left = 12330
      Top = 3900
      Width = 1860
      Height = 465
      TabIndex = 12
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin ListView LVTables
      Left = 75
      Top = 60
      Width = 12075
      Height = 5220
      TabIndex = 8
    End
  End
End

Attribute VB_Name = "Transfer"

Private global_76 As Long

Private Sub CmdRefreshDatabase_Click() '12E73D0
  'Data Table: 4CFAEC
  Dim var_CC As CommandButton
  Dim var_100 As Variant
  Dim var_F0 As Variant
  Dim var_11C As String
  Dim var_194 As String
  Dim var_18C As String
  Dim var_1A0 As String
  loc_12E6D68: On Error Resume Next
  loc_12E6D73: Set var_CC = Me.CmdRefreshDatabase
  loc_12E6D79: var_CC.Enabled = False
  loc_12E6D85: Close 1
  loc_12E6D90: Open "C:\reptmp\DBCheckList.TXT" For Output As 1 Len = &HFF
  loc_12E6DAB: Call 0.Method_arg_9C (-1)
  loc_12E6DB5: Set var_E0 = New 
  loc_12E6DC0: Call 0.Method_arg_BC (0)
  loc_12E6DCC: Call 0.Method_arg_E8 (0)
  loc_12E6DD6: var_100 = CVar(MemVar_1F920D4) 'String
  loc_12E6DDD: var_F0 = CVar(MemVar_1F920D8) 'String
  loc_12E6DEB: Call 0.Method_arg_100 (CVar(MemVar_1F92098), var_F0)
  loc_12E6DF4: Set var_E0 = Nothing 
  loc_12E6E11: Call 0.Method_arg_34 (var_CC, CVar(MemVar_1F92108), var_F0)
  loc_12E6E19: Call 0.Method_arg_30 (var_104)
  loc_12E6E2D: Set var_108 = var_104 
  loc_12E6E44: Call 0.Method_arg_3C (var_CC, var_10C, var_9C)
  loc_12E6E4C: Call 0.Method_arg_38 (1)
  loc_12E6E57: For var_114 =  To var_10C: var_100 = var_114 'Long
  loc_12E6E77:   Call 0.Method_arg_3C (var_CC, CVar(var_9C), var_F0)
  loc_12E6E7F:   Call 0.Method_arg_30 (var_104)
  loc_12E6E87:   Call 0.Method_arg_74 (var_116)
  loc_12E6E99:   If (var_116 = 0) Then
  loc_12E6EB6:     Call 0.Method_arg_3C (var_CC, CVar(var_9C), var_F0)
  loc_12E6EBE:     Call 0.Method_arg_30 (var_104)
  loc_12E6EC6:     Call 0.Method_arg_34 (var_11C)
  loc_12E6ECE:     var_98 = var_11C
  loc_12E6EDD:     var_AC = vbNullString
  loc_12E6EF7:     Call 0.Method_arg_3C (var_CC, CVar(var_9C))
  loc_12E6EFF:     Call 0.Method_arg_30 (var_F0)
  loc_12E6F07:     Set var_120 = var_104
  loc_12E6F20:     Call 0.Method_arg_3C (var_CC, var_10C, var_A0)
  loc_12E6F28:     Call 0.Method_arg_38 (1)
  loc_12E6F33:     For var_128 =  To var_10C: var_104 = var_128 'Long
  loc_12E6F4F:       Call 0.Method_arg_3C (var_CC, CVar(var_A0))
  loc_12E6F57:       Call 0.Method_arg_30 (var_104)
  loc_12E6F5F:       Call 0.Method_arg_54 (var_11C)
  loc_12E6F6D:       var_148 = Ucase(CVar(var_11C))
  loc_12E6F75:       var_158 = var_148 'Variant
  loc_12E6F90:       If Not (var_158 = "INT") Then
  loc_12E6F9E:         If Not (var_158 = "LONG") Then
  loc_12E6FAC:           If Not (var_158 = "SMALLINT") Then
  loc_12E6FBA:             If Not (var_158 = "DOUBLE") Then
  loc_12E6FC8:               If Not (var_158 = "FLOAT") Then
  loc_12E6FD6:                 If (var_158 = "NUMERIC") Then
  loc_12E6FD9:                 End If
  loc_12E6FD9:               End If
  loc_12E6FD9:             End If
  loc_12E6FD9:           End If
  loc_12E6FD9:         End If
  loc_12E6FE3:         If (var_AC = vbNullString) Then
  loc_12E6FEF:           var_11C = "Update " & var_98
  loc_12E700D:           Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E7015:           Call 0.Method_arg_30 (var_18C)
  loc_12E701D:           Call 0.Method_arg_34 (var_11C & " Set [")
  loc_12E7026:           var_194 = var_18C
  loc_12E7044:           Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E704C:           Call 0.Method_arg_30 (var_1A0)
  loc_12E7054:           Call 0.Method_arg_34 (var_194 & "]=IsNull([")
  loc_12E7064:           var_AC = var_1A0 & "],0)"
  loc_12E7086:         Else
  loc_12E7091:           var_18C = var_AC & ", ["
  loc_12E70A8:           Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E70B0:           Call 0.Method_arg_30 (var_11C)
  loc_12E70B8:           Call 0.Method_arg_34 (var_18C)
  loc_12E70C8:           var_1A0 = var_11C & "]=IsNull(["
  loc_12E70DF:           Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E70E7:           Call 0.Method_arg_30 (var_194)
  loc_12E70EF:           Call 0.Method_arg_34 (var_1A0)
  loc_12E70FF:           var_AC = var_194 & "],0)"
  loc_12E711C:         End If
  loc_12E7121:       Else
  loc_12E712E:         If Not (var_158 = "VARCHAR") Then
  loc_12E713C:           If Not (var_158 = "CHAR") Then
  loc_12E714A:             If (var_158 = "NVARCHAR") Then
  loc_12E714D:             End If
  loc_12E714D:           End If
  loc_12E7157:           If (var_AC = vbNullString) Then
  loc_12E7163:             var_11C = "Update " & var_98
  loc_12E7181:             Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E7189:             Call 0.Method_arg_30 (var_18C)
  loc_12E7191:             Call 0.Method_arg_34 (var_11C & " Set [")
  loc_12E719A:             var_194 = var_18C
  loc_12E71B8:             Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E71C0:             Call 0.Method_arg_30 (var_1A0)
  loc_12E71C8:             Call 0.Method_arg_34 (var_194 & "]=IsNull([")
  loc_12E71D8:             var_AC = var_1A0 & "],'')"
  loc_12E71FA:           Else
  loc_12E721C:             Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E7224:             Call 0.Method_arg_30 (var_11C)
  loc_12E722C:             Call 0.Method_arg_34 (var_AC & ", [")
  loc_12E7253:             Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E725B:             Call 0.Method_arg_30 (var_194)
  loc_12E7263:             Call 0.Method_arg_34 (var_11C & "]=IsNull([")
  loc_12E7273:             var_AC = var_194 & "],'')"
  loc_12E7290:           End If
  loc_12E7295:         Else
  loc_12E72A2:           If Not (var_158 = "SMALLDATETIME") Then
  loc_12E72B0:             If (var_158 = "DATETIME") Then
  loc_12E72B3:             End If
  loc_12E72B6:           Else
  loc_12E72C3:             If (var_158 = "BIT") Then
  loc_12E72C6:               GoTo loc_12E72D9
  loc_12E72C9:             End If
  loc_12E72D6:             If (var_158 = "IMAGE") Then
  loc_12E72D9:               ' Referenced from:       12E72C6
  loc_12E72D9:             End If
  loc_12E72D9:           End If
  loc_12E72D9:         End If
  loc_12E72D9:       End If
  loc_12E72E0:     Next var_128 'Long
  loc_12E72E9:     Set var_120 = Nothing 
  loc_12E72F4:     Print 1, var_AC
  loc_12E7301:     Print 1, "GO"
  loc_12E7307:   End If
  loc_12E730E: Next var_114 'Long
  loc_12E7317: Set var_108 = Nothing 
  loc_12E7336: MsgBox("C:\reptmp\DBCheckList.TXT Created.", &H40, var_148, var_1B8, var_1C8)
  loc_12E734D: MemVar_1F92208 = Nothing
  loc_12E7358: MemVar_1F92204 = Nothing
  loc_12E7360: Close 1
  loc_12E7370: Me.CmdRefreshDatabase.Enabled = True
  loc_12E737A: Exit Sub
  loc_12E7385: Set var_CC = Err()
  loc_12E738B: Call 0.Method_arg_2C (var_11C)
  loc_12E73A4: MsgBox(CVar(var_11C), &H40, var_148, var_1B8, var_1C8)
  loc_12E73C5: Me.CmdRefreshDatabase.Enabled = True
  loc_12E73CF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD3A34
  'Data Table: 4CFAEC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B4 As String
  loc_FD3886: Set var_88 = Me.Txt
  loc_FD388C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FD389A: Proc_6_74_E226B0(var_8C)
  loc_FD38A6: Call Proc_168_24_E552AC(var_8C)
  loc_FD38AE: var_92 = Index
  loc_FD38B9: If Not (var_92 = CInt(0)) Then
  loc_FD38C4:   If (var_92 = CInt(1)) Then
  loc_FD38C7:   End If
  loc_FD38CF:   var_98 = "{Home}+{End}"
  loc_FD38D5:   Proc_303_0_FB9B68(var_98, 0)
  loc_FD38E0: Else
  loc_FD38E8:   If (var_92 = CInt(2)) Then
  loc_FD3939:     Set var_88 = Me.Txt
  loc_FD393F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_FD3947:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FD395F:     If (var_92 Or (var_98 = vbNullString)) Then
  loc_FD3962:       Exit Sub
  loc_FD3963:     End If
  loc_FD3970:     Set var_88 = Me.Txt
  loc_FD3976:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FD397E:     var_98 = var_8C.Text
  loc_FD3990:     var_B4 = "Name"
  loc_FD39CB:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_FD39D4:       Me.MoveFirst
  loc_FD39F7:       Set var_88 = Me.Txt
  loc_FD39FD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_FD3A05:       0 = var_8C.Text
  loc_FD3A1E:       Me.Find 1 & var_98 & "'", var_B4, 
  loc_FD3A33:     End If
  loc_FD3A33:   End If
  loc_FD3A33: End If
  loc_FD3A33: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F27C4C
  'Data Table: 4CFAEC
  loc_F27B5A: If (CLng(Shift) = &H1B) Then
  loc_F27B5D:   Call Proc_168_24_E552AC()
  loc_F27B62:   Exit Sub
  loc_F27B63: End If
  loc_F27B71: If (KeyCode = CInt(2)) Then
  loc_F27B8C:   Set var_9C = Nothing
  loc_F27B97:   Set var_98 = Nothing
  loc_F27BC5:   Proc_6_69_134A198(Me.DGUnit, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_F27BD9: End If
  loc_F27BF5: If (CBool(Me.DGUnit.Visible) = 0) Then
  loc_F27C0D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F27C16:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F27C1B:   End If
  loc_F27C23:   If (KeyCode <> CInt(0)) Then
  loc_F27C3B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F27C44:       Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F27C49:     End If
  loc_F27C49:   End If
  loc_F27C49: End If
  loc_F27C49: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E8EDB0
  'Data Table: 4CFAEC
  loc_E8ED3F: Proc_6_58_E054C0(arg_10)
  loc_E8ED52: If (KeyAscii = CInt(2)) Then
  loc_E8ED71:   If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_E8ED83:     var_A0 = "Name"
  loc_E8ED9E:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10)
  loc_E8EDAD:   End If
  loc_E8EDAD: End If
  loc_E8EDAD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B894
  'Data Table: 4CFAEC
  loc_E4B872: Set var_88 = Me.Txt
  loc_E4B878: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B886: Proc_6_73_E22704(var_8C)
  loc_E4B892: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10F48FC
  'Data Table: 4CFAEC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_EC As TextBox
  Dim var_E8 As CommandButton
  loc_10F45E7: var_86 = Cancel
  loc_10F45F2: If Not (var_86 = CInt(0)) Then
  loc_10F45FD:   If (var_86 = CInt(1)) Then
  loc_10F4600:   End If
  loc_10F460D:   Set var_8C = Me.Txt
  loc_10F4613:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F464B:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10F4660:     Set var_8C = Me.Txt
  loc_10F4666:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F466E:     var_90.Text = CStr(MemVar_1F920EC)
  loc_10F4680:   Else
  loc_10F468A:     Set var_8C = Me.Txt
  loc_10F4690:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F46A3:     var_94 = Proc_6_33_1512840(var_90)
  loc_10F46B0:     Set var_EC = Me.Txt
  loc_10F46B6:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_10F46BE:     var_F0.Text = var_94
  loc_10F46D1:   End If
  loc_10F46D4: Else
  loc_10F46DC:   If (var_86 = CInt(2)) Then
  loc_10F472D:     Set var_8C = Me.Txt
  loc_10F4733:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_10F473B:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10F4753:     If (var_86 Or (var_94 = vbNullString)) Then
  loc_10F4763:       Set var_8C = Me.Txt
  loc_10F4769:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F4771:       var_90.Text = vbNullString
  loc_10F478A:       Set var_8C = Me.Txt
  loc_10F4790:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F4798:       var_90.Tag = vbNullString
  loc_10F47A7:     Else
  loc_10F47E2:       Set var_E8 = Me.Txt
  loc_10F47E8:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10F47F0:       var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10F4823:       var_90 = Me.Fields.Item("Code")
  loc_10F4841:       Set var_E8 = Me.Txt
  loc_10F4847:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10F484F:       var_EC.Tag = CStr(var_90.Value)
  loc_10F4876:       Set var_8C = Me.Txt
  loc_10F487C:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_10F489A:       Me.CmdIss.Caption = "Send To " & var_90.Text
  loc_10F48C0:       Set var_8C = Me.Txt
  loc_10F48C6:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_10F48E4:       Me.CmdRec.Caption = "Receive From " & var_90.Text
  loc_10F48F9:     End If
  loc_10F48F9:   End If
  loc_10F48F9: End If
  loc_10F48F9: Exit Sub
  loc_10F48FA:  = arg_74FF
End Sub

Private Sub CmdTemplate_Click() '19584A8
  'Data Table: 4CFAEC
  Dim var_D0 As String
  Dim var_D8 As CommandButton
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_F8 As Variant
  Dim var_134 As String
  Dim var_96 As Integer
  Dim var_164 As String
  Dim var_150 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_A4 As Long
  Dim var_248 As Long
  Dim var_A8 As Long
  Dim var_298 As Long
  loc_1955810: On Error Resume Next
  loc_1955828: Call 0.Method_CmdTemplate_Click4 (MemVar_1F9222C & "\Template.mdb")
  loc_1955836: If (var_D2 = 0) Then
  loc_195583B:   Exit Sub
  loc_195583C:   GoTo loc_195842B
  loc_195583F: End If
  loc_1955849: Set var_D8 = Me.CmdTemplate
  loc_195584F: var_D8.Enabled = False
  loc_1955860: var_D0 = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9222C
  loc_1955871: Call 0.Method_arg_24 (CVar(var_D0 & "\Template.mdb"))
  loc_1955887: Call 0.Method_arg_38 ("A")
  loc_1955890: Close 1
  loc_195589B: Open "C:\reptmp\ASSSTRUCT.TXT" For Output As 1 Len = &HFF
  loc_19558B6: Call 0.Method_arg_9C (-1)
  loc_19558C0: Set var_FC = New 
  loc_19558CB: Call 0.Method_arg_BC (0)
  loc_19558D7: Call 0.Method_arg_E8 (0)
  loc_19558E8: var_10C = CVar(MemVar_1F920D8) 'String
  loc_19558F6: Call 0.Method_arg_100 (CVar(MemVar_1F92098), var_10C)
  loc_19558FF: Set var_FC = Nothing 
  loc_195591C: Call 0.Method_arg_34 (var_D8, CVar(MemVar_1F92108), var_10C)
  loc_1955924: Call 0.Method_arg_30 (var_120, CVar(MemVar_1F920D4))
  loc_195592C: MemVar_1F92204 = var_120
  loc_1955938: var_9C = vbNullString
  loc_1955940: Set var_124 = MemVar_1F92204 
  loc_1955957: Call 0.Method_arg_3C (var_D8, var_128, var_A0)
  loc_195595F: Call 0.Method_arg_38 (1)
  loc_195596A: For var_130 =  To var_128: var_D2 = var_130 'Long
  loc_195598A:   Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1955992:   Call 0.Method_arg_30 (var_120)
  loc_195599A:   Call 0.Method_arg_74 (var_D2)
  loc_19559AC:   If (var_D2 = 0) Then
  loc_19559C9:     Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_19559D1:     Call 0.Method_arg_30 (var_120)
  loc_19559D9:     Call 0.Method_arg_34 (var_D0)
  loc_19559E1:     var_9C = var_D0
  loc_19559F4:     var_D0 = "bl = PubAnalysis.SanFaCreateTable(Cat, """ & var_9C
  loc_1955A00:     Print 1, var_D0 & """)"
  loc_1955A1E:     Set var_D8 = var_88
  loc_1955A2A:     Call 0.Method_arg_1D0 (var_D8, var_9C)
  loc_1955A35:     Set var_88 = var_D8
  loc_1955A58:     Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1955A60:     Call 0.Method_arg_30 (var_120, var_D2)
  loc_1955A68:     Set var_138 = var_120
  loc_1955A81:     Call 0.Method_arg_3C (var_D8, var_128, var_A4)
  loc_1955A89:     Call 0.Method_arg_38 (1)
  loc_1955A94:     For var_140 =  To var_128: var_D2 = var_140 'Long
  loc_1955AB0:       Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1955AB8:       Call 0.Method_arg_30 (var_120)
  loc_1955AC0:       Call 0.Method_arg_54 (var_D0)
  loc_1955AD6:       var_160 = Ucase(CVar(var_D0)) 'Variant
  loc_1955AF1:       If Not (var_160 = "INT") Then
  loc_1955AFF:         If (var_160 = "LONG") Then
  loc_1955B02:         End If
  loc_1955B07:         var_AC = "0"
  loc_1955B17:         var_B0 = vbNullString
  loc_1955B23:         var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1955B50:         Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1955B58:         Call 0.Method_arg_30 (var_D0)
  loc_1955B60:         Call 0.Method_arg_34 (var_D0 & """, " & """")
  loc_1955B8C:         var_D0 = var_D0 & """, " & "adInteger"
  loc_1955BB5:         Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1955BBD:         Call 0.Method_arg_30 (var_D2)
  loc_1955BC5:         Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1955BF2:         Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1955BFA:         Call 0.Method_arg_30 (var_18E)
  loc_1955C02:         Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1955C41:         Print 1, CStr(Not(var_18E) & ")")
  loc_1955C5D:         Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1955C65:         Call 0.Method_arg_30 (var_120)
  loc_1955C6D:         Call 0.Method_arg_34 (var_D0)
  loc_1955C7A:         var_E8 = 0
  loc_1955CA7:         Set var_178 = var_88
  loc_1955CB3:         Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 3, 0)
  loc_1955CBE:         Set var_88 = var_178
  loc_1955CC4:         var_96 = var_1D6
  loc_1955CD9:       Else
  loc_1955CE6:         If (var_160 = "SMALLINT") Then
  loc_1955CEE:           var_AC = "0"
  loc_1955CFE:           var_B0 = vbNullString
  loc_1955D0A:           var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1955D37:           Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1955D3F:           Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1955D47:           Call 0.Method_arg_34 (&HFF)
  loc_1955D73:           var_D0 = var_1D6 & var_D0 & """, " & "adSmallInt"
  loc_1955D9C:           Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1955DA4:           Call 0.Method_arg_30 (var_D2)
  loc_1955DAC:           Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1955DD9:           Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1955DE1:           Call 0.Method_arg_30 (var_18E)
  loc_1955DE9:           Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1955E28:           Print 1, CStr(Not(var_18E) & ")")
  loc_1955E44:           Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1955E4C:           Call 0.Method_arg_30 (var_120)
  loc_1955E54:           Call 0.Method_arg_34 (var_D0)
  loc_1955E61:           var_E8 = 0
  loc_1955E8E:           Set var_178 = var_88
  loc_1955E9A:           Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 2, 0)
  loc_1955EA5:           Set var_88 = var_178
  loc_1955EAB:           var_96 = var_1D6
  loc_1955EC0:         Else
  loc_1955ECD:           If Not (var_160 = "DOUBLE") Then
  loc_1955EDB:             If (var_160 = "FLOAT") Then
  loc_1955EDE:             End If
  loc_1955EE3:             var_AC = "0"
  loc_1955EF3:             var_B0 = vbNullString
  loc_1955EFF:             var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1955F2C:             Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1955F34:             Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1955F3C:             Call 0.Method_arg_34 (&HFF)
  loc_1955F68:             var_D0 = var_1D6 & var_D0 & """, " & "adDouble"
  loc_1955F91:             Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1955F99:             Call 0.Method_arg_30 (var_D2)
  loc_1955FA1:             Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1955FCE:             Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1955FD6:             Call 0.Method_arg_30 (var_18E)
  loc_1955FDE:             Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_195601D:             Print 1, CStr(Not(var_18E) & ")")
  loc_1956039:             Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1956041:             Call 0.Method_arg_30 (var_120)
  loc_1956049:             Call 0.Method_arg_34 (var_D0)
  loc_1956056:             var_E8 = 0
  loc_1956083:             Set var_178 = var_88
  loc_195608F:             Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 5, 0)
  loc_195609A:             Set var_88 = var_178
  loc_19560A0:             var_96 = var_1D6
  loc_19560B5:           Else
  loc_19560C2:             If (var_160 = "NUMERIC") Then
  loc_19560CA:               var_AC = "0"
  loc_19560DA:               var_B0 = vbNullString
  loc_19560E6:               var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1956113:               Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_195611B:               Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1956123:               Call 0.Method_arg_34 (&HFF)
  loc_195614F:               var_D0 = var_1D6 & var_D0 & """, " & "adSingle"
  loc_1956178:               Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1956180:               Call 0.Method_arg_30 (var_D2)
  loc_1956188:               Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_19561B5:               Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_19561BD:               Call 0.Method_arg_30 (var_18E)
  loc_19561C5:               Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1956204:               Print 1, CStr(Not(var_18E) & ")")
  loc_1956220:               Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1956228:               Call 0.Method_arg_30 (var_120)
  loc_1956230:               Call 0.Method_arg_34 (var_D0)
  loc_195623D:               var_E8 = 0
  loc_195626A:               Set var_178 = var_88
  loc_1956276:               Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 4, 0)
  loc_1956281:               Set var_88 = var_178
  loc_1956287:               var_96 = var_1D6
  loc_195629C:             Else
  loc_19562A9:               If Not (var_160 = "SMALLDATETIME") Then
  loc_19562B7:                 If (var_160 = "DATETIME") Then
  loc_19562BA:                 End If
  loc_19562C7:                 var_B0 = vbNullString
  loc_19562D3:                 var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1956300:                 Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1956308:                 Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1956310:                 Call 0.Method_arg_34 (&HFF)
  loc_195633C:                 var_D0 = var_1D6 & var_D0 & """, " & "adDate"
  loc_1956365:                 Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_195636D:                 Call 0.Method_arg_30 (var_D2)
  loc_1956375:                 Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1956381:                 var_E8 = var_D2 
  loc_19563A2:                 Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_19563AA:                 Call 0.Method_arg_30 (var_18E)
  loc_19563B2:                 Call 0.Method_arg_78 (var_E8 & ", , ")
  loc_19563F1:                 Print 1, CStr(Not(var_18E) & ")")
  loc_195640D:                 Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1956415:                 Call 0.Method_arg_30 (var_120)
  loc_195641D:                 Call 0.Method_arg_34 (var_D0)
  loc_1956455:                 Set var_178 = var_88
  loc_1956461:                 Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 7, 0)
  loc_195646C:                 Set var_88 = var_178
  loc_1956472:                 var_96 = var_1D6
  loc_1956487:               Else
  loc_1956494:                 If Not (var_160 = "VARCHAR") Then
  loc_19564A2:                   If Not (var_160 = "CHAR") Then
  loc_19564B0:                     If (var_160 = "NVARCHAR") Then
  loc_19564B3:                     End If
  loc_19564B3:                   End If
  loc_19564C8:                   var_B0 = vbNullString
  loc_19564D4:                   var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1956501:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1956509:                   Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1956511:                   Call 0.Method_arg_34 (&HFF)
  loc_195654A:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1956552:                   Call 0.Method_arg_30 (var_120)
  loc_195655A:                   Call 0.Method_arg_60 (var_128)
  loc_1956573:                   Call 0.Method_arg_3C (var_178, CVar(var_A4))
  loc_195657B:                   Call 0.Method_arg_30 (var_18C)
  loc_1956583:                   Call 0.Method_arg_60 (var_1D4)
  loc_195658F:                   var_D0 = var_1D6 & var_D0 & """, " & "adWChar"
  loc_1956609:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1956611:                   Call 0.Method_arg_30 (var_D2)
  loc_1956619:                   Call 0.Method_arg_78 (CVar(CStr(CVar(var_D0 & ", ") & IIf((var_128 < &HFF), CVar(var_1D4), 255) & ", ")))
  loc_1956659:                   Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1956661:                   Call 0.Method_arg_30 (var_18E)
  loc_1956669:                   Call 0.Method_arg_78 (var_D2 & ", " & CVar("""""""") & ", ")
  loc_19566AC:                   Print 1, CStr(Not(var_18E) & ")")
  loc_19566C8:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_19566D0:                   Call 0.Method_arg_30 (var_120)
  loc_19566D8:                   Call 0.Method_arg_34 (var_D0)
  loc_19566F1:                   Call 0.Method_arg_3C (var_178, CVar(var_A4))
  loc_19566F9:                   Call 0.Method_arg_30 (var_18C)
  loc_1956701:                   Call 0.Method_arg_60 (var_128)
  loc_195671A:                   Call 0.Method_arg_3C (var_21C, CVar(var_A4))
  loc_1956722:                   Call 0.Method_arg_30 (var_220)
  loc_195672A:                   Call 0.Method_arg_60 (var_1D4)
  loc_195675D:                   var_1D0 = """"""
  loc_195678B:                   Set var_224 = var_88
  loc_1956797:                   Call 0.Method_arg_1D4 (var_224, var_9C, var_D0, &H82, CLng(IIf((var_128 < &HFF), CVar(var_1D4), 255)))
  loc_19567A2:                   Set var_88 = var_224
  loc_19567A8:                   var_96 = var_1D6
  loc_19567CF:                 Else
  loc_19567DC:                   If (var_160 = "BIT") Then
  loc_19567F4:                     var_B0 = vbNullString
  loc_1956800:                     var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_195682D:                     Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1956835:                     Call 0.Method_arg_30 (var_96, 0, var_1D0)
  loc_195683D:                     Call 0.Method_arg_34 (&HFF)
  loc_1956869:                     var_D0 = var_1D6 & var_D0 & """, " & "adBoolean"
  loc_1956892:                     Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_195689A:                     Call 0.Method_arg_30 (var_D2)
  loc_19568A2:                     Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_19568E2:                     Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_19568EA:                     Call 0.Method_arg_30 (var_18E)
  loc_19568F2:                     Call 0.Method_arg_78 (var_D2 & ", " & CVar("0") & ", ")
  loc_1956935:                     Print 1, CStr(Not(var_18E) & ")")
  loc_1956951:                     Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1956959:                     Call 0.Method_arg_30 (var_120)
  loc_1956961:                     Call 0.Method_arg_34 (var_D0)
  loc_195696E:                     var_E8 = 0
  loc_195699B:                     Set var_178 = var_88
  loc_19569A7:                     Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, &HB, 0)
  loc_19569B2:                     Set var_88 = var_178
  loc_19569B8:                     var_96 = var_1D6
  loc_19569CD:                   Else
  loc_19569DA:                     If (var_160 = "IMAGE") Then
  loc_19569F2:                       var_B0 = vbNullString
  loc_19569FE:                       var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1956A2B:                       Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1956A33:                       Call 0.Method_arg_30 (var_96, &HFF, var_E8)
  loc_1956A3B:                       Call 0.Method_arg_34 (&HFF)
  loc_1956A67:                       var_D0 = var_1D6 & var_D0 & """, " & "adLongVarBinary"
  loc_1956A79:                       var_10C = CVar(var_D0 & ", , ") 'String
  loc_1956A90:                       Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1956A98:                       Call 0.Method_arg_30 (var_D2)
  loc_1956AA0:                       Call 0.Method_arg_78 (var_10C)
  loc_1956AC8:                       var_1D0 = var_D2 & ", " & CVar("0") & ", " 
  loc_1956AE0:                       Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1956AE8:                       Call 0.Method_arg_30 (var_18E)
  loc_1956AF0:                       Call 0.Method_arg_78 (var_1D0)
  loc_1956B33:                       Print 1, CStr(Not(var_18E) & ")")
  loc_1956B4F:                       Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1956B57:                       Call 0.Method_arg_30 (var_120)
  loc_1956B5F:                       Call 0.Method_arg_34 (var_D0)
  loc_1956B6C:                       var_E8 = 0
  loc_1956B99:                       Set var_178 = var_88
  loc_1956BA5:                       Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, &HCD, 0)
  loc_1956BB0:                       Set var_88 = var_178
  loc_1956BB6:                       var_96 = var_1D6
  loc_1956BC8:                     End If
  loc_1956BC8:                   End If
  loc_1956BC8:                 End If
  loc_1956BC8:               End If
  loc_1956BC8:             End If
  loc_1956BC8:           End If
  loc_1956BC8:         End If
  loc_1956BC8:       End If
  loc_1956BCF:     Next var_140 'Long
  loc_1956BD8:     Set var_138 = Nothing 
  loc_1956BE3:     Print 1, vbNullString
  loc_1956BE9:   End If
  loc_1956BF0: Next var_130 'Long
  loc_1956BF9: Set var_124 = Nothing 
  loc_1956C02: Set var_230 = MemVar_1F92204 
  loc_1956C19: Call 0.Method_arg_3C (var_D8, var_128)
  loc_1956C21: Call 0.Method_arg_38 (var_A0)
  loc_1956C2C: For var_238 =  To var_128: 1 = var_238 'Long
  loc_1956C4C:   Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1956C54:   Call 0.Method_arg_30 (var_120)
  loc_1956C5C:   Call 0.Method_arg_74 (var_D2)
  loc_1956C6E:   If (var_D2 = 0) Then
  loc_1956C8B:     Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1956C93:     Call 0.Method_arg_30 (var_120)
  loc_1956C9B:     Call 0.Method_arg_34 (var_D0)
  loc_1956CA3:     var_9C = var_D0
  loc_1956CC4:     Call 0.Method_arg_3C (var_D8, CVar(var_A0))
  loc_1956CCC:     Call 0.Method_arg_30 (var_10C)
  loc_1956CD4:     Set var_23C = var_120
  loc_1956CE1:     var_A4 = 1
  loc_1956CEC:     Call 0.Method_arg_60 (var_D8, var_A4)
  loc_1956CFC:     If Not((var_D8 Is Nothing)) Then
  loc_1956D0A:       Call 0.Method_arg_60 (var_D8, var_D0)
  loc_1956D12:       Call 0.Method_arg_34 (var_120)
  loc_1956D1A:       var_B4 = var_D0
  loc_1956D25:       var_B0 = vbNullString
  loc_1956D31:       var_D0 = "bl = PubAnalysis.SanFaCreateIndex(Cat, """ & var_9C
  loc_1956D61:       ReDim var_CC(0 To 1)
  loc_1956D79:       Call 0.Method_arg_60 (var_D8, var_120)
  loc_1956D81:       Call 0.Method_CmdTemplate_ClickC (var_128)
  loc_1956D89:       Call 0.Method_arg_38 ()
  loc_1956D9E:       If (var_128 = 1) Then
  loc_1956DBA:         Call 0.Method_arg_60 (var_D8, var_120, CVar(var_A4))
  loc_1956DC2:         Call 0.Method_CmdTemplate_ClickC (var_D0)
  loc_1956DCA:         Call 0.Method_arg_30 (var_D0 & """, """ & var_B4 & """, True, True, adIndexNullsDisallow, """)
  loc_1956DDA:         var_B0 = var_D0 & """)"
  loc_1956E01:         Call 0.Method_arg_60 (var_D8, var_120)
  loc_1956E09:         Call 0.Method_CmdTemplate_ClickC (CVar(var_A4))
  loc_1956E11:         Call 0.Method_arg_30 (var_D0)
  loc_1956E1F:         var_CC(var_A4) = var_D0
  loc_1956E2D:       Else
  loc_1956E45:         Call 0.Method_arg_60 (var_D8, var_120, var_128)
  loc_1956E4D:         Call 0.Method_CmdTemplate_ClickC (var_A4)
  loc_1956E55:         Call 0.Method_arg_38 (1)
  loc_1956E6A:         For var_244 =  To (var_128 - 1):    = var_244 'Long
  loc_1956E89:           Call 0.Method_arg_60 (var_D8, var_120, CVar(var_A4))
  loc_1956E91:           Call 0.Method_CmdTemplate_ClickC (var_D0)
  loc_1956E99:           Call 0.Method_arg_30 (var_B0)
  loc_1956EA9:           var_B0 = var_D0 & """, """
  loc_1956EC7:           ReDim Preserve var_CC(0 To var_A4)
  loc_1956EE7:           Call 0.Method_arg_60 (var_D8, var_120)
  loc_1956EEF:           Call 0.Method_CmdTemplate_ClickC (CVar(var_A4))
  loc_1956EF7:           Call 0.Method_arg_30 (var_D0)
  loc_1956F05:           var_CC(var_A4) = var_D0
  loc_1956F15:         Next var_244 'Long
  loc_1956F33:         Call 0.Method_arg_60 (var_D8, var_120, CVar(var_A4))
  loc_1956F3B:         Call 0.Method_CmdTemplate_ClickC (var_D0)
  loc_1956F43:         Call 0.Method_arg_30 (var_B0)
  loc_1956F53:         var_B0 = var_D0 & """)"
  loc_1956F71:         ReDim Preserve var_CC(0 To var_A4)
  loc_1956F91:         Call 0.Method_arg_60 (var_D8, var_120)
  loc_1956F99:         Call 0.Method_CmdTemplate_ClickC (CVar(var_A4))
  loc_1956FA1:         Call 0.Method_arg_30 (var_D0)
  loc_1956FAF:         var_CC(var_A4) = var_D0
  loc_1956FBA:       End If
  loc_1956FC3:       Print 1, var_B0
  loc_1956FD7:       Call 0.Method_arg_60 (var_D8, var_120)
  loc_1956FDF:       Call 0.Method_CmdTemplate_ClickC (var_128)
  loc_1956FE7:       Call 0.Method_arg_38 ()
  loc_1956FEF:       var_248 = var_128
  loc_1957004:       If (var_248 = 1) Then
  loc_1957011:         var_264 = 0
  loc_195701C:         var_260 = 0
  loc_1957027:         var_25C = 0
  loc_1957032:         var_258 = 0
  loc_195703D:         var_254 = 0
  loc_1957048:         var_250 = 0
  loc_1957053:         var_164 = 0
  loc_195705E:         var_134 = 0
  loc_195709C:         Set var_D8 = var_88
  loc_19570A8:         Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), 0)
  loc_19570B3:         Set var_88 = var_D8
  loc_19570BC:         var_96 = var_1D6
  loc_19570DA:       Else
  loc_19570E5:         If (var_248 = 2) Then
  loc_19570F2:           var_260 = 0
  loc_19570FD:           var_25C = 0
  loc_1957108:           var_258 = 0
  loc_1957113:           var_254 = 0
  loc_195711E:           var_250 = 0
  loc_1957129:           var_164 = 0
  loc_1957134:           var_134 = 0
  loc_195713F:           var_D0 = 0
  loc_195717E:           Set var_D8 = var_88
  loc_195718A:           Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1957195:           Set var_88 = var_D8
  loc_19571A1:           var_96 = var_1D6
  loc_19571BD:         Else
  loc_19571C8:           If (var_248 = 3) Then
  loc_19571D5:             var_25C = 0
  loc_19571E0:             var_258 = 0
  loc_19571EB:             var_254 = 0
  loc_19571F6:             var_250 = 0
  loc_1957201:             var_164 = 0
  loc_195720C:             var_134 = 0
  loc_1957217:             var_D0 = 0
  loc_1957262:             Set var_D8 = var_88
  loc_195726E:             Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1957279:             Set var_88 = var_D8
  loc_1957288:             var_96 = var_1D6
  loc_19572A2:           Else
  loc_19572AD:             If (var_248 = 4) Then
  loc_19572BA:               var_258 = 0
  loc_19572C5:               var_254 = 0
  loc_19572D0:               var_250 = 0
  loc_19572DB:               var_164 = 0
  loc_19572E6:               var_134 = 0
  loc_19572F1:               var_D0 = 0
  loc_1957348:               Set var_D8 = var_88
  loc_1957354:               Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_195735F:               Set var_88 = var_D8
  loc_1957371:               var_96 = var_1D6
  loc_1957389:             Else
  loc_1957394:               If (var_248 = 5) Then
  loc_19573A1:                 var_254 = 0
  loc_19573AC:                 var_250 = 0
  loc_19573B7:                 var_164 = 0
  loc_19573C2:                 var_134 = 0
  loc_19573CD:                 var_D0 = 0
  loc_1957430:                 Set var_D8 = var_88
  loc_195743C:                 Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1957447:                 Set var_88 = var_D8
  loc_195745C:                 var_96 = var_1D6
  loc_1957472:               Else
  loc_195747D:                 If (var_248 = 6) Then
  loc_195748A:                   var_250 = 0
  loc_1957495:                   var_164 = 0
  loc_19574A0:                   var_134 = 0
  loc_19574AB:                   var_D0 = 0
  loc_195751A:                   Set var_D8 = var_88
  loc_1957526:                   Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1957531:                   Set var_88 = var_D8
  loc_1957549:                   var_96 = var_1D6
  loc_195755D:                 Else
  loc_1957568:                   If (var_248 = 7) Then
  loc_1957575:                     var_164 = 0
  loc_1957580:                     var_134 = 0
  loc_195758B:                     var_D0 = 0
  loc_1957606:                     Set var_D8 = var_88
  loc_1957612:                     Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_195761D:                     Set var_88 = var_D8
  loc_1957638:                     var_96 = var_1D6
  loc_195764A:                   Else
  loc_1957655:                     If (var_248 = 8) Then
  loc_1957662:                       var_134 = 0
  loc_195766D:                       var_D0 = 0
  loc_19576F4:                       Set var_D8 = var_88
  loc_1957700:                       Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_195770B:                       Set var_88 = var_D8
  loc_1957729:                       var_96 = var_1D6
  loc_1957739:                     Else
  loc_1957744:                       If (var_248 = 9) Then
  loc_1957751:                         var_D0 = 0
  loc_19577E4:                         Set var_D8 = var_88
  loc_19577F0:                         Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_19577FB:                         Set var_88 = var_D8
  loc_195781C:                         var_96 = var_1D6
  loc_1957825:                       End If
  loc_1957825:                     End If
  loc_1957825:                   End If
  loc_1957825:                 End If
  loc_1957825:               End If
  loc_1957825:             End If
  loc_1957825:           End If
  loc_1957825:         End If
  loc_1957825:       End If
  loc_1957827:     End If
  loc_195783C:     Call 0.Method_arg_64 (var_D8, var_128, var_A4, 1, var_96, var_CC(3))
  loc_1957844:     Call 0.Method_arg_38 (var_CC(4), var_CC(5), var_CC(6))
  loc_195784F:     For var_28C = var_CC(8) To var_128: var_CC(7) = var_28C 'Long
  loc_195785A:       var_B0 = vbNullString
  loc_1957862:       var_B4 = vbNullString
  loc_1957880:       Call 0.Method_arg_64 (var_D8, CVar(var_A4), var_120, var_D0)
  loc_1957888:       Call 0.Method_arg_30 (1, var_CC(8))
  loc_1957890:       Call 0.Method_arg_34 (var_CC(9))
  loc_19578C1:       Call 0.Method_arg_64 (var_178, CVar(var_A4), var_18C)
  loc_19578C9:       Call 0.Method_arg_30 (var_134, 1)
  loc_19578D1:       Call 0.Method_arg_34 ((InStr(, var_D0, "PK", 0) = 0))
  loc_19578FC:       If ( And (InStr(, var_134, "Sys", 0) = 0)) Then
  loc_1957915:         Call 0.Method_arg_64 (var_D8, CVar(var_A4))
  loc_195791D:         Call 0.Method_arg_30 (var_120)
  loc_1957925:         Call 0.Method_arg_34 (var_D0)
  loc_195792D:         var_B4 = var_D0
  loc_1957970:         ReDim var_CC(0 To 1)
  loc_1957981:         var_A8 = 1
  loc_195799A:         Call 0.Method_arg_64 (var_D8, CVar(var_A4), var_120)
  loc_19579A2:         Call 0.Method_arg_30 (var_178)
  loc_19579AA:         Call 0.Method_arg_5C (var_A8)
  loc_19579B2:         Set var_B8 = var_178
  loc_19579C4:         Call 0.Method_arg_38 (var_128)
  loc_19579D2:         If (var_128 = 1) Then
  loc_19579E5:           Call 0.Method_arg_30 (CVar(var_A8))
  loc_19579ED:           var_C8 = var_D8 'Address Function
  loc_19579F6:           var_F8 = CVar("bl = PubAnalysis.SanFaCreateIndex(Cat, """ & var_9C & """, """ & var_B4 & """, False, False, adIndexNullsAllow, """) 'String
  loc_1957A10:           var_B0 = CStr(var_F8 & var_C8.Name & """)")
  loc_1957A31:           var_CC(var_A8) = CStr(var_C8.Name)
  loc_1957A3B:         Else
  loc_1957A4D:           Call 0.Method_arg_38 (var_128, var_A8)
  loc_1957A5B:           For var_294 = var_D8 To (var_128 - 1):   1 = var_294 'Long
  loc_1957A71:             Call 0.Method_arg_30 (CVar(var_A8), var_D8)
  loc_1957A79:             var_C8 = var_D8 'Address Function
  loc_1957A9C:             var_B0 = CStr(CVar(var_B0) & var_C8.Name & """, """)
  loc_1957AB5:             ReDim Preserve var_CC(0 To var_A8)
  loc_1957AD4:             var_CC(var_A8) = CStr(var_C8.Name)
  loc_1957AE0:           Next var_294 'Long
  loc_1957AF5:           Call 0.Method_arg_30 (CVar(var_A8))
  loc_1957AFD:           var_C8 = var_D8 'Address Function
  loc_1957B12:           var_150 = CVar(var_B0) & var_C8.Name 
  loc_1957B1B:           var_1B0 = var_150 & """)" 
  loc_1957B20:           var_B0 = CStr(var_1B0)
  loc_1957B39:           ReDim Preserve var_CC(0 To var_A8)
  loc_1957B58:           var_CC(var_A8) = CStr(var_C8.Name)
  loc_1957B5F:         End If
  loc_1957B68:         Print 1, var_B0
  loc_1957B76:         Call 0.Method_arg_38 (var_128)
  loc_1957B7E:         var_298 = var_128
  loc_1957B8C:         If (var_298 = 1) Then
  loc_1957B99:           var_264 = 0
  loc_1957BA4:           var_260 = 0
  loc_1957BAF:           var_25C = 0
  loc_1957BBA:           var_258 = 0
  loc_1957BC5:           var_254 = 0
  loc_1957BD0:           var_250 = 0
  loc_1957BDB:           var_164 = 0
  loc_1957BE6:           var_134 = 0
  loc_1957C24:           Set var_D8 = var_88
  loc_1957C30:           Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), 0)
  loc_1957C3B:           Set var_88 = var_D8
  loc_1957C44:           var_96 = var_1D6
  loc_1957C62:         Else
  loc_1957C6D:           If (var_298 = 2) Then
  loc_1957C7A:             var_260 = 0
  loc_1957C85:             var_25C = 0
  loc_1957C90:             var_258 = 0
  loc_1957C9B:             var_254 = 0
  loc_1957CA6:             var_250 = 0
  loc_1957CB1:             var_164 = 0
  loc_1957CBC:             var_134 = 0
  loc_1957CC7:             var_D0 = 0
  loc_1957D06:             Set var_D8 = var_88
  loc_1957D12:             Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1957D1D:             Set var_88 = var_D8
  loc_1957D29:             var_96 = var_1D6
  loc_1957D45:           Else
  loc_1957D50:             If (var_298 = 3) Then
  loc_1957D5D:               var_25C = 0
  loc_1957D68:               var_258 = 0
  loc_1957D73:               var_254 = 0
  loc_1957D7E:               var_250 = 0
  loc_1957D89:               var_164 = 0
  loc_1957D94:               var_134 = 0
  loc_1957D9F:               var_D0 = 0
  loc_1957DEA:               Set var_D8 = var_88
  loc_1957DF6:               Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1957E01:               Set var_88 = var_D8
  loc_1957E10:               var_96 = var_1D6
  loc_1957E2A:             Else
  loc_1957E35:               If (var_298 = 4) Then
  loc_1957E42:                 var_258 = 0
  loc_1957E4D:                 var_254 = 0
  loc_1957E58:                 var_250 = 0
  loc_1957E63:                 var_164 = 0
  loc_1957E6E:                 var_134 = 0
  loc_1957E79:                 var_D0 = 0
  loc_1957ED0:                 Set var_D8 = var_88
  loc_1957EDC:                 Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1957EE7:                 Set var_88 = var_D8
  loc_1957EF9:                 var_96 = var_1D6
  loc_1957F11:               Else
  loc_1957F1C:                 If (var_298 = 5) Then
  loc_1957F29:                   var_254 = 0
  loc_1957F34:                   var_250 = 0
  loc_1957F3F:                   var_164 = 0
  loc_1957F4A:                   var_134 = 0
  loc_1957F55:                   var_D0 = 0
  loc_1957FB8:                   Set var_D8 = var_88
  loc_1957FC4:                   Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1957FCF:                   Set var_88 = var_D8
  loc_1957FE4:                   var_96 = var_1D6
  loc_1957FFA:                 Else
  loc_1958005:                   If (var_298 = 6) Then
  loc_1958012:                     var_250 = 0
  loc_195801D:                     var_164 = 0
  loc_1958028:                     var_134 = 0
  loc_1958033:                     var_D0 = 0
  loc_19580A2:                     Set var_D8 = var_88
  loc_19580AE:                     Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_19580B9:                     Set var_88 = var_D8
  loc_19580D1:                     var_96 = var_1D6
  loc_19580E5:                   Else
  loc_19580F0:                     If (var_298 = 7) Then
  loc_19580FD:                       var_164 = 0
  loc_1958108:                       var_134 = 0
  loc_1958113:                       var_D0 = 0
  loc_195818E:                       Set var_D8 = var_88
  loc_195819A:                       Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_19581A5:                       Set var_88 = var_D8
  loc_19581C0:                       var_96 = var_1D6
  loc_19581D2:                     Else
  loc_19581DD:                       If (var_298 = 8) Then
  loc_19581EA:                         var_134 = 0
  loc_19581F5:                         var_D0 = 0
  loc_195827C:                         Set var_D8 = var_88
  loc_1958288:                         Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1958293:                         Set var_88 = var_D8
  loc_19582B1:                         var_96 = var_1D6
  loc_19582C1:                       Else
  loc_19582CC:                         If (var_298 = 9) Then
  loc_19582D9:                           var_D0 = 0
  loc_195836C:                           Set var_D8 = var_88
  loc_1958378:                           Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1958383:                           Set var_88 = var_D8
  loc_19583A4:                           var_96 = var_1D6
  loc_19583AD:                         End If
  loc_19583AD:                       End If
  loc_19583AD:                     End If
  loc_19583AD:                   End If
  loc_19583AD:                 End If
  loc_19583AD:               End If
  loc_19583AD:             End If
  loc_19583AD:           End If
  loc_19583AD:         End If
  loc_19583AF:       End If
  loc_19583B6:     Next var_28C 'Long
  loc_19583BF:     Set var_23C = Nothing 
  loc_19583CA:     Print 1, vbNullString
  loc_19583D0:   End If
  loc_19583D7: Next var_238 'Long
  loc_19583E0: Set var_230 = Nothing 
  loc_19583FF: MsgBox("Template.mdb Generated Successfully.", &H40, var_150, var_1B0, var_1D0)
  loc_1958416: MemVar_1F92208 = Nothing
  loc_1958421: MemVar_1F92204 = Nothing
  loc_1958429: Close 1
  loc_195842B: ' Referenced from: 195583C
  loc_1958434: Set var_8C = Nothing
  loc_1958445: Me.CmdTemplate.Enabled = True
  loc_195844F: Exit Sub
  loc_195845A: Set var_D8 = Err()
  loc_1958460: Call 0.Method_arg_2C (var_D0)
  loc_1958479: MsgBox(CVar(var_D0), &H40, var_150, var_1B0, var_1D0)
  loc_195849A: Me.CmdTemplate.Enabled = True
  loc_19584A4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'F63D08
  'Data Table: 4CFAEC
  Dim var_94 As Variant
  Dim var_C8 As Long
  Dim var_174 As Variant
  Dim var_194 As Long
  Dim var_1B4 As Variant
  loc_F63C0B: Me.FGrid.Col = 0
  loc_F63C23: Me.FGrid.CellFontName = "WINGDINGS"
  loc_F63C3D: Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_F63C58: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F63C5D: var_C8 = 0
  loc_F63C8F: var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F63C94: var_194 = 0
  loc_F63CCF: var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F63CD7: Set var_1C8 = Me.FGrid
  loc_F63CDD: LateIdCallSt
  loc_F63D06: Exit Sub
End Sub

Private Sub CmdIss_Click() '11B6798
  'Data Table: 4CFAEC
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_A0 As String
  Dim MemVar_1F9222C As String
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim MemVar_1F9B938 As DBEngine
  Dim Me As Variant
  Dim var_F4 As Long
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_E4 As Variant
  loc_11B638B: Set var_94 = Me.Txt
  loc_11B6391: Call 0.Method_CmdIss_Click0 (CInt(2))
  loc_11B63BA: If (Proc_6_27_EA565C(var_98, "Unit") = 0) Then
  loc_11B63BD:   Exit Sub
  loc_11B63BE: End If
  loc_11B63C1: Call Proc_168_23_F050C0(var_A2)
  loc_11B63CC: If (var_A2 = 0) Then
  loc_11B63CF:   Exit Sub
  loc_11B63D0: End If
  loc_11B63E3: var_D4 = vbNullString
  loc_11B63EE: If (Trim(MemVar_1F9222C) = var_D4) Then
  loc_11B63F4:   MemVar_1F9222C = "C:\Analysis\Transfer"
  loc_11B6404:   Call 0.Method_CmdIss_Click8 ("C:\Analysis", var_A2)
  loc_11B640F:   If (var_A2 = 0) Then
  loc_11B641E:     Call 0.Method_arg_74 ("C:\Analysis", var_94)
  loc_11B6432:     Call 0.Method_CmdIss_Click8 ("C:\Analysis\Transfer", var_A2)
  loc_11B643D:     If (var_A2 = 0) Then
  loc_11B644C:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_94)
  loc_11B6454:     End If
  loc_11B6454:   End If
  loc_11B6454: End If
  loc_11B6460: Call 0.Method_CmdIss_Click8 (MemVar_1F9222C, var_A2)
  loc_11B646B: If (var_A2 = 0) Then
  loc_11B6487:   MsgBox("Transfer Location Not Exits", &H40, var_E4, var_104, var_124)
  loc_11B6497: End If
  loc_11B64BB: MemVar_1F9222C = Replace(MemVar_1F9222C & "\", "\\", "\", 1, -1, 0)
  loc_11B64D0: var_104 = CVar(MemVar_1F9222C & MemVar_1F92174 & "TO") 'String
  loc_11B64DE: Set var_94 = Me.Txt
  loc_11B64E4: Call 0.Method_CmdIss_Click0 (CInt(2), var_98, var_104)
  loc_11B64FB: var_124 = MemVar_1F9222C & Trim(CVar(var_98)) 
  loc_11B64FF: var_B4 = ".mdb"
  loc_11B650F: global_60 = CStr(var_124 & var_B4)
  loc_11B653B: Call 0.Method_arg_6C (global_60, "C:\TEMPZZZZ.MDB")
  loc_11B654E: Call 0.Method_arg_5C (global_60, 0)
  loc_11B656E: MemVar_1F9B938.CompactDatabase "C:\TEMPZZZZ.MDB", global_60, var_B4, var_D4, var_F4
  loc_11B657D: Set global_56 = New 
  loc_11B658F: Me.Connection15.CursorLocation = 3
  loc_11B659F: Me.IsolationLevel = &H10
  loc_11B65AF: Me.CommandTimeout = 0
  loc_11B65EB: MemVar_1F9B938.RegisterDatabase "HotelTrans", "Microsoft Access Driver (*.MDB)", True, "DBQ=" & global_60 & vbCr & "Maxbuffersize=2048" & vbCr & "MaxscanRows=16"
  loc_11B6611: Me.Open "Provider=MSDASQL.1;Persist Security Info=False;Data Source=HotelTrans", vbNullString, vbNullString, -1
  loc_11B661D: global_68 = CByte(0)
  loc_11B662D: For var_148 = CByte(1) To CByte(MemVar_1F92040): var_8A = var_148 'Byte
  loc_11B663D:   var_F4 = 0
  loc_11B665B:   var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_11B667A:   Set var_98 = Me.FGrid
  loc_11B6680:   var_E4 = var_98.TextMatrix)
  loc_11B66AF:   If (2 And (CStr(var_E4) = MemVar_1F92034(CLng(var_8A)))) Then
  loc_11B66C3:     global_68 = CByte((CInt(global_68) + 1))
  loc_11B66D5:     Set var_94 = Me.Txt
  loc_11B66DB:     Call 0.Method_CmdIss_Click0 (CInt(2), var_98, var_A0, global_68, CVar(CLng(var_8A)), (var_A0 = "ü"))
  loc_11B66E3:     var_F4 = var_98.Tag
  loc_11B6713:     Call Proc_168_21_197D860(var_A0, MemVar_1F92030(CLng(var_8A)), MemVar_1F9203C(CLng(var_8A)), MemVar_1F92034(CLng(var_8A)), CVar(CLng(var_8A)))
  loc_11B672B:   End If
  loc_11B672E: Next var_148 'Byte
  loc_11B6741: Me.LblTblName.Caption = vbNullString
  loc_11B6753: Me.LblTblName.Refresh
  loc_11B6774: MsgBox("Transfer Compeleted", 0, var_E4, var_104, var_124)
  loc_11B678A: Me.Close
  loc_11B6794: Set var_90 = Nothing
  loc_11B6797: Exit Sub
End Sub

Private Sub CmdRec_Click() '11DC108
  'Data Table: 4CFAEC
  Dim var_B0 As Variant
  Dim var_9C As String
  Dim MemVar_1F9222C As String
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim Me As Connection15
  Dim var_90 As MSFlexGrid
  Dim var_94 As Variant
  Dim var_E0 As Variant
  Dim var_19C As Double
  loc_11DBCB3: Set var_90 = Me.Txt
  loc_11DBCB9: Call 0.Method_CmdRec_Click0 (CInt(2))
  loc_11DBCE2: If (Proc_6_27_EA565C(var_94, "Unit") = 0) Then
  loc_11DBCE5:   Exit Sub
  loc_11DBCE6: End If
  loc_11DBCE9: Call Proc_168_23_F050C0(var_9E)
  loc_11DBCF4: If (var_9E = 0) Then
  loc_11DBCF7:   Exit Sub
  loc_11DBCF8: End If
  loc_11DBD16: If (Trim(MemVar_1F9222C) = vbNullString) Then
  loc_11DBD1C:   MemVar_1F9222C = "C:\Analysis\Transfer"
  loc_11DBD2C:   Call 0.Method_CmdRec_Click8 ("C:\Analysis", var_9E)
  loc_11DBD37:   If (var_9E = 0) Then
  loc_11DBD46:     Call 0.Method_arg_74 ("C:\Analysis", var_90)
  loc_11DBD5A:     Call 0.Method_CmdRec_Click8 ("C:\Analysis\Transfer", var_9E)
  loc_11DBD65:     If (var_9E = 0) Then
  loc_11DBD74:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_90)
  loc_11DBD7C:     End If
  loc_11DBD7C:   End If
  loc_11DBD7C: End If
  loc_11DBD88: Call 0.Method_CmdRec_Click8 (MemVar_1F9222C, var_9E)
  loc_11DBD93: If (var_9E = 0) Then
  loc_11DBDAF:   MsgBox("Transfer Location Not Exits", &H40, var_E0, var_100, var_120)
  loc_11DBDBF: End If
  loc_11DBDE3: MemVar_1F9222C = Replace(MemVar_1F9222C & "\", "\\", "\", 1, -1, 0)
  loc_11DBDFB: Set var_90 = Me.Txt
  loc_11DBE01: Call 0.Method_CmdRec_Click0 (CInt(2), var_94, CVar(MemVar_1F9222C))
  loc_11DBE62: Set global_56 = New 
  loc_11DBE74: Me.Txt.CursorLocation = 3
  loc_11DBE84: Me.IsolationLevel = &H10
  loc_11DBE94: Me.CommandTimeout = 0
  loc_11DBEAE: var_9C = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & CStr(MemVar_1F9222C & Trim(CVar(var_94)) & "TO" & CVar(MemVar_1F92174) & ".mdb")
  loc_11DBEB7: Me.Open var_9C, vbNullString, vbNullString, -1
  loc_11DBEEB: var_100 = CVar(MemVar_1F9222C & "TranferLog") 'String
  loc_11DBEF1: var_120 = var_100 & Format(MemVar_1F920EC, "DDMMYYYY") 
  loc_11DBF06: Open CStr(var_120 & ".TXT") For Output As 1 Len = &HFF
  loc_11DBF26: For var_144 = CByte(1) To CByte(MemVar_1F92040): var_8A = var_144 'Byte
  loc_11DBF31:   var_B0 = CVar(CLng(var_8A)) 'Long
  loc_11DBF54:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_11DBF73:   Set var_94 = Me.FGrid
  loc_11DBF79:   var_E0 = var_94.TextMatrix)
  loc_11DBFA8:   If (2 And (CStr(var_E0) = MemVar_1F92034(CLng(var_8A)))) Then
  loc_11DBFB9:     Set var_90 = Me.Txt
  loc_11DBFBF:     Call 0.Method_CmdRec_Click0 (CInt(2), var_94, var_9C, CVar(CLng(var_8A)), (var_9C = "ü"), 0)
  loc_11DBFC7:     var_B0 = var_94.Tag
  loc_11DBFF7:     Call Proc_168_21_197D860(var_9C, MemVar_1F92030(CLng(var_8A)), MemVar_1F9203C(CLng(var_8A)), MemVar_1F92034(CLng(var_8A)))
  loc_11DC00F:   End If
  loc_11DC012: Next var_144 'Byte
  loc_11DC031: MsgBox("Transfer Compeleted", 0, var_E0, var_100, var_120)
  loc_11DC078: If (MsgBox("Do You Want To See The Transfer Log", &H44, "Transfer Log", var_100, var_120) = 6) Then
  loc_11DC07D:   Close 1
  loc_11DC094:   var_19C = Shell("notepad.exe", 1)
  loc_11DC0EA:   Proc_303_0_FB9B68(CStr(CVar("O " & MemVar_1F9222C & "TranferLog") & Format(MemVar_1F920EC, "DDMMYYYY") & ".TXT~"), 0, 1)
  loc_11DC103: End If
  loc_11DC105: Close 1
  loc_11DC107: Exit Sub
End Sub

Private Sub Form_Load() '1333864
  'Data Table: 4CFAEC
  Dim MemVar_1F9222C As String
  Dim unk_4CFBB3 As Connection15
  Dim var_90 As Recordset15
  Dim var_AC As Variant
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_F0 As Variant
  Dim Me As Recordset15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  Dim var_118 As Variant
  Dim var_188 As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  loc_1333111: If (OpenMode = 2) Then
  loc_1333134:   MemVar_1F9222C = App.Path & "\Transfer"
  loc_1333162:   unk_4CFBB3.Execute "Select DTCPETakeEffectHeadToSite from Enviro where LOGSite_code='" & MemVar_1F92078 & "'", var_BC, -1
  loc_133316D:   Set var_90 = Me.Global.App
  loc_1333191:   If (var_90.RecordCount > 0) Then
  loc_13331A3:     var_94 = var_90.Fields
  loc_133321F:     var_188 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(var_94.Item("DTCPETakeEffectHeadToSite")), var_94))) = vbNullString), "No", Trim(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("DTCPETakeEffectHeadToSite"))))))
  loc_133322E:     global_72 = CStr(var_188)
  loc_1333251:   End If
  loc_133325B:   Set global_52 = New 
  loc_133326D:   Me.CursorLocation = 3
  loc_1333278:   If (MemVar_1F920B8 >= 1) Then
  loc_133329E:     Me.Open "Select Site_Code as Code,Site_Desc as Name From Site Order by Name", CVar(MemVar_1F92044), 3
  loc_13332A6:   Else
  loc_13332CB:     var_BC = CVar("Select Site_Code as Code,Site_Desc as Name From Site Where Site_Code<>'" & MemVar_1F92070 & "' Order by Name") 'String
  loc_13332D5:     Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_13332E0:   End If
  loc_13332E9:   CVarUnk
  loc_13332EE:   VerifyVarObj
  loc_13332F4:   Set var_94 = Me.DGUnit
  loc_13332FA:   LateIdStAd
  loc_133331B:   Me.FGrid.Rows = 1
  loc_1333323:   var_AC = 2
  loc_133332C:   var_114 = 0
  loc_1333339:   Set var_94 = Me.FGrid
  loc_133333F:   LateIdCallSt
  loc_133334A:   var_AC = 3
  loc_1333353:   var_114 = 0
  loc_1333360:   Set var_94 = Me.FGrid
  loc_1333366:   LateIdCallSt
  loc_1333371:   var_AC = 4
  loc_1333380:   var_114 = CVar(CInt(1)) 'Integer
  loc_133338E:   LateIdCallSt
  loc_13333AF:   unk_4CFBB3.Execute "Select Comp_Name,Comp_Code,SName,CYear from company order by STart_dt Desc", var_BC, -1
  loc_13333BA:   Set var_8C = Me.FGrid
  loc_13333C3:   ' Referenced from: 133353B
  loc_13333D2:   If Not(var_8C.EOF) Then
  loc_13333D5:     var_AC = vbNullString
  loc_13333E2:     var_BC = Chr(9)
  loc_13333EA:     var_D0 = var_AC & var_BC 
  loc_1333408:     var_C0 = var_8C.Fields.Item("Comp_Name")
  loc_1333436:     var_114 = "Comp_Code"
  loc_133344A:     var_118 = var_8C.Fields.Item(var_114)
  loc_13334DE:     var_20C = var_D0 & var_C0.Value & Chr(9) & var_118.Value & Chr(9) & var_8C.Fields.Item("SName").Value & Chr(9) & var_8C.Fields.Item("CYear").Value 
  loc_13334E3:     var_21C = CVar(CStr(var_20C)) 'String
  loc_13334EB:     Set var_230 = Me.FGrid
  loc_1333536:     var_8C.MoveNext
  loc_133353B:     GoTo loc_13333C3
  loc_133353E:   End If
  loc_1333544:   If (MemVar_1F920B8 >= 1) Then
  loc_1333553:     Me.CmdTemplate.Visible = True
  loc_133355B:   End If
  loc_1333561:   var_F0 = 0
  loc_1333580:   unk_4CFBB3.Execute "Select HeadOffice From Company", var_BC, -1
  loc_1333588:   var_94 = var_94.Fields
  loc_1333590:   var_F0 = var_C0.Item(var_C0)
  loc_1333598:   var_104 = var_104.Value
  loc_13335AB:   global_64 = Proc_6_38_E68A98(var_D0, var_D0, FGrid.DispID_10000, var_21C, var_94)
  loc_13335CA:   Call 0.Method_arg_74 (CDbl(2000), var_94, var_114)
  loc_13335D7:   Call 0.Method_arg_7C (CDbl(800), var_AC)
  loc_13335E4:   Call 0.Method_Me4 (CDbl(8900))
  loc_13335F7:   Set var_94 = Me.Txt
  loc_13335FD:   Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_133361C:   Me.DGUnit.Left = CVar(var_C0.Left)
  loc_1333638:   Set var_104 = Me.Txt
  loc_133363E:   Call 0.Method_Form_Load0 (CInt(2), var_118)
  loc_1333659:   Set var_94 = Me.Txt
  loc_133365F:   Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_1333677:   var_AC = CVar(((var_C0.Top + var_118.Height) + CDbl(&HF))) 'Single
  loc_1333686:   Me.DGUnit.Top = CVar(var_C0.Left)
  loc_13336A7:   Me.FrameComp.Left = CDbl(4860)
  loc_13336BE:   Me.FrameComp.Top = CDbl(135)
  loc_13336D8:   Me.FGrid.Left = CVar(CDbl(&H1E))
  loc_13336F3:   Me.FGrid.Top = CVar(CDbl(255))
  loc_133370A:   Me.LblTblName.Left = CDbl(495)
  loc_1333721:   Me.LblTblName.Top = CDbl(3015)
  loc_133373C:   Set var_94 = Me.Txt
  loc_1333742:   Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_133374A:   var_C0.Text = CStr(MemVar_1F920F4)
  loc_133376C:   Set var_94 = Me.Txt
  loc_1333772:   Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_133377A:   var_C0.Text = CStr(MemVar_1F920EC)
  loc_1333795:   Me.CmdTransOnline.Visible = False
  loc_13337A0: Else
  loc_13337B1:   If (OpenMode = 1) Then
  loc_13337C0:     Me.Frame2.Visible = False
  loc_13337E7:     Me.Frame1.Top = Me.Frame2.Top
  loc_1333812:     Me.Frame1.Left = Me.Frame2.Left
  loc_133382A:     Me.CmdTransOut.Visible = False
  loc_133383E:     Me.CmdTransIn.Visible = False
  loc_1333852:     Me.Frame1.Visible = True
  loc_133385A:   End If
  loc_133385A: End If
  loc_133385F: Set var_8C = Nothing
  loc_1333862: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27164
  'Data Table: 4CFAEC
  loc_E27147: Set global_52 = Nothing
  loc_E27153: MemVar_1F92208 = Nothing
  loc_E2715C: MemVar_1F92204 = Nothing
  loc_E27160: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E7FFB4
  'Data Table: 4CFAEC
  loc_E7FF95: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "H")) Then
  loc_E7FFA4:   Me.Frame1.Visible = True
  loc_E7FFAC:   Call Proc_168_25_1155934()
  loc_E7FFB1: End If
  loc_E7FFB1: Exit Sub
End Sub

Private Sub ChkModule_Click() '164A68C
  'Data Table: 4CFAEC
  Dim var_8C As ListView
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_B8 As Variant
  Dim var_BC As ListItem
  loc_16491FB: var_A4 = Me.LVTables.ListItems.Count
  loc_164920E: For var_A8 = 1 To CInt(var_A4): var_86 = var_A8 'Integer
  loc_164921C:   var_B8 = var_86
  loc_164923C:   var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_1649244:   var_BC.Checked = var_BC
  loc_164925B:   var_B8 = var_86
  loc_164927B:   var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_1649292:   var_EC = Ucase(CVar(var_BC)) 'Variant
  loc_16492C6:   If Not (var_EC = Ucase("Enviro")) Then
  loc_16492EB:     If Not (var_EC = Ucase("Voucher_Prefix")) Then
  loc_1649310:       If Not (var_EC = Ucase("Voucher_Type")) Then
  loc_1649335:         If Not (var_EC = Ucase("VoucherCat")) Then
  loc_164935A:           If (var_EC = Ucase("messaging")) Then
  loc_164935D:           End If
  loc_164935D:         End If
  loc_164935D:       End If
  loc_164935D:     End If
  loc_1649365:     var_B8 = var_86
  loc_1649385:     var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164938D:     var_BC.Checked = var_BC
  loc_164939E:   End If
  loc_16493A4:   var_B8 = var_86
  loc_16493BE:   Set var_A0 = Me.LVTables.ListItems
  loc_16493C4:   var_B8 = var_A0.ControlDefault
  loc_16493DB:   var_1C0 = Ucase(CVar(var_BC)) 'Variant
  loc_164940F:   If Not (var_1C0 = Ucase("ACGROUP")) Then
  loc_1649434:     If Not (var_1C0 = Ucase("City")) Then
  loc_1649459:       If Not (var_1C0 = Ucase("Country")) Then
  loc_164947E:         If Not (var_1C0 = Ucase("FaEnviro")) Then
  loc_16494A3:           If Not (var_1C0 = Ucase("LeaderRev")) Then
  loc_16494C8:             If Not (var_1C0 = Ucase("Ledger")) Then
  loc_16494ED:               If Not (var_1C0 = Ucase("ledgerAdj")) Then
  loc_1649512:                 If Not (var_1C0 = Ucase("LedgerM")) Then
  loc_1649537:                   If Not (var_1C0 = Ucase("ledgerRef")) Then
  loc_164955C:                     If Not (var_1C0 = Ucase("LedgerTDS")) Then
  loc_1649581:                       If Not (var_1C0 = Ucase("NarrMast")) Then
  loc_16495A6:                         If Not (var_1C0 = Ucase("SubGroup")) Then
  loc_16495CB:                           If Not (var_1C0 = Ucase("SubGroupLog")) Then
  loc_16495F0:                             If Not (var_1C0 = Ucase("SubGroupRate")) Then
  loc_1649615:                               If Not (var_1C0 = Ucase("SubGroupType")) Then
  loc_164963A:                                 If Not (var_1C0 = Ucase("State")) Then
  loc_164965F:                                   If Not (var_1C0 = Ucase("TDSCat")) Then
  loc_1649684:                                     If Not (var_1C0 = Ucase("TDSCerti")) Then
  loc_16496A9:                                       If Not (var_1C0 = Ucase("TDSChal")) Then
  loc_16496CE:                                         If Not (var_1C0 = Ucase("TDSChal1")) Then
  loc_16496F3:                                           If Not (var_1C0 = Ucase("Voucher_Exclude")) Then
  loc_1649718:                                             If (var_1C0 = Ucase("Voucher_Include")) Then
  loc_164971B:                                             End If
  loc_164971B:                                           End If
  loc_164971B:                                         End If
  loc_164971B:                                       End If
  loc_164971B:                                     End If
  loc_164971B:                                   End If
  loc_164971B:                                 End If
  loc_164971B:                               End If
  loc_164971B:                             End If
  loc_164971B:                           End If
  loc_164971B:                         End If
  loc_164971B:                       End If
  loc_164971B:                     End If
  loc_164971B:                   End If
  loc_164971B:                 End If
  loc_164971B:               End If
  loc_164971B:             End If
  loc_164971B:           End If
  loc_164971B:         End If
  loc_164971B:       End If
  loc_164971B:     End If
  loc_1649729:     Set var_8C = Me.ChkModule
  loc_164972F:     Call 0.Method_ChkModule_Click0 (CInt(0), var_A0, var_EE, var_BC)
  loc_1649737:     &HFF = var_A0.Value
  loc_1649749:     If (var_EE = 1) Then
  loc_1649754:       var_B8 = var_86
  loc_1649774:       var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164977C:       var_BC.Checked = var_BC
  loc_164978D:     End If
  loc_164978D:   End If
  loc_1649793:   var_B8 = var_86
  loc_16497AD:   Set var_A0 = Me.LVTables.ListItems
  loc_16497B3:   var_B8 = var_A0.ControlDefault
  loc_16497CA:   var_544 = Ucase(CVar(var_BC)) 'Variant
  loc_16497FE:   If Not (var_544 = Ucase("ACGROUP")) Then
  loc_1649823:     If Not (var_544 = Ucase("City")) Then
  loc_1649848:       If Not (var_544 = Ucase("Country")) Then
  loc_164986D:         If Not (var_544 = Ucase("FaEnviro")) Then
  loc_1649892:           If Not (var_544 = Ucase("Depart")) Then
  loc_16498B7:             If Not (var_544 = Ucase("GodownMast")) Then
  loc_16498DC:               If Not (var_544 = Ucase("GIN")) Then
  loc_1649901:                 If Not (var_544 = Ucase("Indent")) Then
  loc_1649926:                   If Not (var_544 = Ucase("Indent1")) Then
  loc_164994B:                     If Not (var_544 = Ucase("Item")) Then
  loc_1649970:                       If Not (var_544 = Ucase("ItemCatMast")) Then
  loc_1649995:                         If Not (var_544 = Ucase("ItemGrp")) Then
  loc_16499BA:                           If Not (var_544 = Ucase("ItemMast")) Then
  loc_16499DF:                             If Not (var_544 = Ucase("ItemRate")) Then
  loc_1649A04:                               If Not (var_544 = Ucase("KClStk")) Then
  loc_1649A29:                                 If Not (var_544 = Ucase("NarrMast")) Then
  loc_1649A4E:                                   If Not (var_544 = Ucase("POrder")) Then
  loc_1649A73:                                     If Not (var_544 = Ucase("POrder1")) Then
  loc_1649A98:                                       If Not (var_544 = Ucase("Purch1")) Then
  loc_1649ABD:                                         If Not (var_544 = Ucase("Purch2")) Then
  loc_1649AE2:                                           If Not (var_544 = Ucase("RevMast")) Then
  loc_1649B07:                                             If Not (var_544 = Ucase("RoundOffSetting")) Then
  loc_1649B2C:                                               If Not (var_544 = Ucase("Sale2")) Then
  loc_1649B51:                                                 If Not (var_544 = Ucase("ShiftMast")) Then
  loc_1649B76:                                                   If Not (var_544 = Ucase("State")) Then
  loc_1649B9B:                                                     If Not (var_544 = Ucase("Stock")) Then
  loc_1649BC0:                                                       If Not (var_544 = Ucase("SubGroup")) Then
  loc_1649BE5:                                                         If Not (var_544 = Ucase("SubGroupLog")) Then
  loc_1649C0A:                                                           If Not (var_544 = Ucase("SubGroupRate")) Then
  loc_1649C2F:                                                             If Not (var_544 = Ucase("SubGroupType")) Then
  loc_1649C54:                                                               If Not (var_544 = Ucase("SundryMast")) Then
  loc_1649C79:                                                                 If Not (var_544 = Ucase("SundryType")) Then
  loc_1649C9E:                                                                   If Not (var_544 = Ucase("SundryTypeFix")) Then
  loc_1649CC3:                                                                     If Not (var_544 = Ucase("SunTran")) Then
  loc_1649CE8:                                                                       If Not (var_544 = Ucase("TaxStru")) Then
  loc_1649D0D:                                                                         If Not (var_544 = Ucase("UnitMast")) Then
  loc_1649D32:                                                                           If Not (var_544 = Ucase("TranSunDetail")) Then
  loc_1649D57:                                                                             If (var_544 = Ucase("TranTaxDetail")) Then
  loc_1649D5A:                                                                             End If
  loc_1649D5A:                                                                           End If
  loc_1649D5A:                                                                         End If
  loc_1649D5A:                                                                       End If
  loc_1649D5A:                                                                     End If
  loc_1649D5A:                                                                   End If
  loc_1649D5A:                                                                 End If
  loc_1649D5A:                                                               End If
  loc_1649D5A:                                                             End If
  loc_1649D5A:                                                           End If
  loc_1649D5A:                                                         End If
  loc_1649D5A:                                                       End If
  loc_1649D5A:                                                     End If
  loc_1649D5A:                                                   End If
  loc_1649D5A:                                                 End If
  loc_1649D5A:                                               End If
  loc_1649D5A:                                             End If
  loc_1649D5A:                                           End If
  loc_1649D5A:                                         End If
  loc_1649D5A:                                       End If
  loc_1649D5A:                                     End If
  loc_1649D5A:                                   End If
  loc_1649D5A:                                 End If
  loc_1649D5A:                               End If
  loc_1649D5A:                             End If
  loc_1649D5A:                           End If
  loc_1649D5A:                         End If
  loc_1649D5A:                       End If
  loc_1649D5A:                     End If
  loc_1649D5A:                   End If
  loc_1649D5A:                 End If
  loc_1649D5A:               End If
  loc_1649D5A:             End If
  loc_1649D5A:           End If
  loc_1649D5A:         End If
  loc_1649D5A:       End If
  loc_1649D5A:     End If
  loc_1649D68:     Set var_8C = Me.ChkModule
  loc_1649D6E:     Call 0.Method_ChkModule_Click0 (CInt(1), var_A0, var_EE, var_BC)
  loc_1649D76:     &HFF = var_A0.Value
  loc_1649D88:     If (var_EE = 1) Then
  loc_1649D93:       var_B8 = var_86
  loc_1649DB3:       var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_1649DBB:       var_BC.Checked = var_BC
  loc_1649DCC:     End If
  loc_1649DCC:   End If
  loc_1649DD2:   var_B8 = var_86
  loc_1649DDB:   Set var_8C = Me.LVTables
  loc_1649DEC:   Set var_A0 = var_8C.ListItems
  loc_1649DF2:   var_B8 = var_A0.ControlDefault
  loc_1649E09:   var_894 = Ucase(CVar(var_BC)) 'Variant
  loc_1649E1E:   var_B8 = "BOM"
  loc_1649E23:   var_9C = var_B8
  loc_1649E3D:   If Not (var_894 = Ucase(var_9C)) Then
  loc_1649E62:     If Not (var_894 = Ucase("ComboPackHead")) Then
  loc_1649E87:       If Not (var_894 = Ucase("ComboPackDetail")) Then
  loc_1649EAC:         If Not (var_894 = Ucase("Depart")) Then
  loc_1649ED1:           If Not (var_894 = Ucase("Depart1")) Then
  loc_1649EF6:             If Not (var_894 = Ucase("ExpSheet")) Then
  loc_1649F1B:               If Not (var_894 = Ucase("FreeItemDetail")) Then
  loc_1649F40:                 If Not (var_894 = Ucase("freeitemsDetails")) Then
  loc_1649F65:                   If Not (var_894 = Ucase("GodownMast")) Then
  loc_1649F8A:                     If Not (var_894 = Ucase("HappyHours")) Then
  loc_1649FAF:                       If Not (var_894 = Ucase("HappyHoursHead")) Then
  loc_1649FD4:                         If Not (var_894 = Ucase("Item")) Then
  loc_1649FF9:                           If Not (var_894 = Ucase("ItemCatMast")) Then
  loc_164A01E:                             If Not (var_894 = Ucase("ItemGrp")) Then
  loc_164A043:                               If Not (var_894 = Ucase("ItemMast")) Then
  loc_164A068:                                 If Not (var_894 = Ucase("ItemRate")) Then
  loc_164A08D:                                   If Not (var_894 = Ucase("KOT")) Then
  loc_164A0B2:                                     If Not (var_894 = Ucase("KOTLog")) Then
  loc_164A0D7:                                       If Not (var_894 = Ucase("NCTypeMast")) Then
  loc_164A0FC:                                         If Not (var_894 = Ucase("PackingOrder")) Then
  loc_164A121:                                           If Not (var_894 = Ucase("PackingOrderDetail")) Then
  loc_164A146:                                             If Not (var_894 = Ucase("PackingOrderDetail1")) Then
  loc_164A16B:                                               If Not (var_894 = Ucase("PackingOrderDetail2")) Then
  loc_164A190:                                                 If Not (var_894 = Ucase("PayCharge")) Then
  loc_164A1B5:                                                   If Not (var_894 = Ucase("PayChargeLog")) Then
  loc_164A1DA:                                                     If Not (var_894 = Ucase("POS_SBill")) Then
  loc_164A1FF:                                                       If Not (var_894 = Ucase("RevMast")) Then
  loc_164A224:                                                         If Not (var_894 = Ucase("RoomMast")) Then
  loc_164A249:                                                           If Not (var_894 = Ucase("RoundOffSetting")) Then
  loc_164A26E:                                                             If Not (var_894 = Ucase("Sale1")) Then
  loc_164A293:                                                               If Not (var_894 = Ucase("Sale1Log")) Then
  loc_164A2B8:                                                                 If Not (var_894 = Ucase("Sale2")) Then
  loc_164A2DD:                                                                   If Not (var_894 = Ucase("Sale2Log")) Then
  loc_164A302:                                                                     If Not (var_894 = Ucase("SchemeItemDetail")) Then
  loc_164A327:                                                                       If Not (var_894 = Ucase("SchemeMast")) Then
  loc_164A34C:                                                                         If Not (var_894 = Ucase("SchemeOutletDiscount")) Then
  loc_164A371:                                                                           If Not (var_894 = Ucase("SessionMast")) Then
  loc_164A396:                                                                             If Not (var_894 = Ucase("SplitBillDetail")) Then
  loc_164A3BB:                                                                               If Not (var_894 = Ucase("SplitedSunTran")) Then
  loc_164A3E0:                                                                                 If Not (var_894 = Ucase("SplitSale1")) Then
  loc_164A405:                                                                                   If Not (var_894 = Ucase("SplitSale2")) Then
  loc_164A42A:                                                                                     If Not (var_894 = Ucase("SplitStock")) Then
  loc_164A44F:                                                                                       If Not (var_894 = Ucase("SplitSunTran")) Then
  loc_164A474:                                                                                         If Not (var_894 = Ucase("Stock")) Then
  loc_164A499:                                                                                           If Not (var_894 = Ucase("StockLog")) Then
  loc_164A4BE:                                                                                             If Not (var_894 = Ucase("SundryMast")) Then
  loc_164A4E3:                                                                                               If Not (var_894 = Ucase("SundryType")) Then
  loc_164A508:                                                                                                 If Not (var_894 = Ucase("SundryTypeFix")) Then
  loc_164A52D:                                                                                                   If Not (var_894 = Ucase("SunTran")) Then
  loc_164A552:                                                                                                     If Not (var_894 = Ucase("SunTranLog")) Then
  loc_164A577:                                                                                                       If Not (var_894 = Ucase("TaxStru")) Then
  loc_164A59C:                                                                                                         If Not (var_894 = Ucase("Temp_Sbill")) Then
  loc_164A5C1:                                                                                                           If Not (var_894 = Ucase("TOKEN")) Then
  loc_164A5D5:                                                                                                             var_BD0 = Ucase("UnitMast")
  loc_164A5E6:                                                                                                             If Not (var_894 = var_BD0) Then
  loc_164A5FA:                                                                                                               var_C04 = Ucase("Waiter")
  loc_164A60B:                                                                                                               If (var_894 = var_C04) Then
  loc_164A60E:                                                                                                               End If
  loc_164A60E:                                                                                                             End If
  loc_164A60E:                                                                                                           End If
  loc_164A60E:                                                                                                         End If
  loc_164A60E:                                                                                                       End If
  loc_164A60E:                                                                                                     End If
  loc_164A60E:                                                                                                   End If
  loc_164A60E:                                                                                                 End If
  loc_164A60E:                                                                                               End If
  loc_164A60E:                                                                                             End If
  loc_164A60E:                                                                                           End If
  loc_164A60E:                                                                                         End If
  loc_164A60E:                                                                                       End If
  loc_164A60E:                                                                                     End If
  loc_164A60E:                                                                                   End If
  loc_164A60E:                                                                                 End If
  loc_164A60E:                                                                               End If
  loc_164A60E:                                                                             End If
  loc_164A60E:                                                                           End If
  loc_164A60E:                                                                         End If
  loc_164A60E:                                                                       End If
  loc_164A60E:                                                                     End If
  loc_164A60E:                                                                   End If
  loc_164A60E:                                                                 End If
  loc_164A60E:                                                               End If
  loc_164A60E:                                                             End If
  loc_164A60E:                                                           End If
  loc_164A60E:                                                         End If
  loc_164A60E:                                                       End If
  loc_164A60E:                                                     End If
  loc_164A60E:                                                   End If
  loc_164A60E:                                                 End If
  loc_164A60E:                                               End If
  loc_164A60E:                                             End If
  loc_164A60E:                                           End If
  loc_164A60E:                                         End If
  loc_164A60E:                                       End If
  loc_164A60E:                                     End If
  loc_164A60E:                                   End If
  loc_164A60E:                                 End If
  loc_164A60E:                               End If
  loc_164A60E:                             End If
  loc_164A60E:                           End If
  loc_164A60E:                         End If
  loc_164A60E:                       End If
  loc_164A60E:                     End If
  loc_164A60E:                   End If
  loc_164A60E:                 End If
  loc_164A60E:               End If
  loc_164A60E:             End If
  loc_164A60E:           End If
  loc_164A60E:         End If
  loc_164A60E:       End If
  loc_164A60E:     End If
  loc_164A61C:     Set var_8C = Me.ChkModule
  loc_164A622:     Call 0.Method_ChkModule_Click0 (CInt(2), var_A0, var_EE, var_BC)
  loc_164A62A:     &HFF = var_A0.Value
  loc_164A63C:     If (var_EE = 1) Then
  loc_164A647:       var_B8 = var_86
  loc_164A667:       var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164A66F:       var_BC.Checked = var_BC
  loc_164A680:     End If
  loc_164A680:   End If
  loc_164A683: Next var_A8 'Integer
  loc_164A688: Exit Sub
End Sub

Private Sub CmdTransOut_Click() '13F1C50
  'Data Table: 4CFAEC
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim var_C4 As String
  Dim var_114 As Variant
  Dim var_120 As String
  Dim unk_4CFBB3 As Connection15
  Dim var_88 As ListView
  Dim var_90 As ListItem
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_130 As Variant
  Dim var_188 As Variant
  Dim var_1AC As Variant
  Dim var_204 As Variant
  Dim var_94 As String
  Dim var_234 As Variant
  Dim var_28C As Variant
  Dim var_2B0 As Variant
  Dim var_308 As Variant
  Dim var_32C As Variant
  Dim var_384 As Variant
  Dim var_3A8 As Variant
  Dim var_400 As Variant
  Dim var_424 As Variant
  Dim var_47C As Variant
  Dim var_4A0 As Variant
  loc_13F1343: Set var_88 = Me.Txt
  loc_13F1349: Call 0.Method_CmdTransOut_Click0 (CInt(2))
  loc_13F135A: Set var_90 = var_8C
  loc_13F1372: If (Proc_6_27_EA565C(var_90, "For Unit") = 0) Then
  loc_13F1380:   Set var_88 = Me.Txt
  loc_13F1386:   Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F138E:   var_8C.SetFocus
  loc_13F139A:   Exit Sub
  loc_13F139B: End If
  loc_13F13A9: Set var_88 = Me.Txt
  loc_13F13AF: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F13D0: If (Len(var_8C.Tag) <> 2) Then
  loc_13F13EC:   MsgBox("Plz. Define Proper Unit SiteCode In Site Table", &H10, var_D4, var_F4, var_114)
  loc_13F1407:   Set var_88 = Me.Txt
  loc_13F140D:   Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F1415:   var_8C.SetFocus
  loc_13F1421:   Exit Sub
  loc_13F1422: End If
  loc_13F1430: Set var_88 = Me.Txt
  loc_13F1436: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F143E: var_94 = var_8C.Tag
  loc_13F1446: var_11C = var_94
  loc_13F1470: Set var_88 = Me.Txt
  loc_13F1476: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C, var_94, "Delete from Transout where SiteCode='")
  loc_13F147E: var_130 = var_8C.Tag
  loc_13F1494: var_F4 = -1 & Trim(CVar(var_94)) 
  loc_13F14A1: var_120 = CStr(var_F4 & "'")
  loc_13F14AB: unk_4CFBB3.Execute var_120, var_90, var_8C
  loc_13F14FF: For var_138 = 1 To CInt(Me.LVTables.ListItems.Count): var_116 = var_138 'Integer
  loc_13F150E:   var_A4 = var_116
  loc_13F152E:   var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F154D:   If (var_13A = &HFF) Then
  loc_13F1556:     var_A4 = var_116
  loc_13F1576:     var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F157E:     var_D4 = CVar(var_90.Checked) 'Address
  loc_13F1585:     var_F4 = Ucase(var_D4)
  loc_13F158D:     var_C4 = "ACGROUPCURRBAL"
  loc_13F159D:     var_E4 = var_116
  loc_13F15BD:     var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_13F15DE:     var_188 = var_148 Or (Ucase(CVar(var_148)) = "RAWCONSUMPTION")
  loc_13F15E8:     var_1AC = var_116
  loc_13F1608:     var_1AC = Me.LVTables.ListItems.ControlDefault
  loc_13F1653:     If CBool(var_1B4 Or (Ucase(CVar(var_1B4)) = "SUBGROUPCURRBAL")) Then
  loc_13F167D:       var_A4 = var_116
  loc_13F169D:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F16A5:       var_90 = var_90.Default
  loc_13F16BE:       unk_4CFBB3.Execute var_120 & var_120 & "','LogSite_Code','V_DATE','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F16E5:     Else
  loc_13F16EB:       var_A4 = var_116
  loc_13F170B:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F1713:       var_D4 = CVar(var_90) 'Address
  loc_13F173A:       If (Ucase(var_D4) = "EPABX_DATA") Then
  loc_13F1764:         var_A4 = var_116
  loc_13F1784:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F178C:         var_90 = var_90.Default
  loc_13F17A5:         unk_4CFBB3.Execute var_120 & var_120 & "','LogSite_Code','CALL_START_DATE','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F17CC:       Else
  loc_13F17D2:         var_A4 = var_116
  loc_13F17F2:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F1801:         var_F4 = Ucase(CVar(var_90))
  loc_13F1809:         var_C4 = "ATTENDENCE"
  loc_13F1819:         var_E4 = var_116
  loc_13F1839:         var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_13F185A:         var_188 = var_148 Or (Ucase(CVar(var_148)) = "DISPCOLOR")
  loc_13F1864:         var_1AC = var_116
  loc_13F1884:         var_1AC = Me.LVTables.ListItems.ControlDefault
  loc_13F18A5:         var_204 = var_1B4 Or (Ucase(CVar(var_1B4)) = "DATELOCK")
  loc_13F18AF:         var_234 = var_116
  loc_13F18CF:         var_234 = Me.LVTables.ListItems.ControlDefault
  loc_13F18F0:         var_28C = var_23C Or (Ucase(CVar(var_23C)) = "NCTYPEMAST")
  loc_13F18FA:         var_2B0 = var_116
  loc_13F191A:         var_2B0 = Me.LVTables.ListItems.ControlDefault
  loc_13F193B:         var_308 = var_2B8 Or (Ucase(CVar(var_2B8)) = "TEMP_SBILL")
  loc_13F1945:         var_32C = var_116
  loc_13F1965:         var_32C = Me.LVTables.ListItems.ControlDefault
  loc_13F1986:         var_384 = var_334 Or (Ucase(CVar(var_334)) = "TRANLOG")
  loc_13F1990:         var_3A8 = var_116
  loc_13F19B0:         var_3A8 = Me.LVTables.ListItems.ControlDefault
  loc_13F19D1:         var_400 = var_3B0 Or (Ucase(CVar(var_3B0)) = "TRANSIN")
  loc_13F19DB:         var_424 = var_116
  loc_13F19FB:         var_424 = Me.LVTables.ListItems.ControlDefault
  loc_13F1A1C:         var_47C = var_42C Or (Ucase(CVar(var_42C)) = "TRANSOUT")
  loc_13F1A26:         var_4A0 = var_116
  loc_13F1A46:         var_4A0 = Me.LVTables.ListItems.ControlDefault
  loc_13F1ACD:         If CBool(var_4A8 Or (Ucase(CVar(var_4A8)) = "VOUCHERCAT")) Then
  loc_13F1AD0:           GoTo loc_13F1C46
  loc_13F1AD3:         End If
  loc_13F1AD9:         var_A4 = var_116
  loc_13F1AF9:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F1B01:         var_D4 = CVar(var_90) 'Address
  loc_13F1B28:         If (Ucase(var_D4) = "TRANSDEL") Then
  loc_13F1B52:           var_A4 = var_116
  loc_13F1B72:           var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F1B7A:           var_90 = var_90.Default
  loc_13F1B93:           unk_4CFBB3.Execute var_120 & var_120 & "','LogSite_Code','UEntDt','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F1BBA:         Else
  loc_13F1BE1:           var_A4 = var_116
  loc_13F1C01:           var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F1C09:           var_90 = var_90.Default
  loc_13F1C22:           unk_4CFBB3.Execute var_120 & var_120 & "','LogSite_Code','U_EntDt','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F1C46:         End If
  loc_13F1C46:         ' Referenced from:     13F1AD0
  loc_13F1C46:       End If
  loc_13F1C46:     End If
  loc_13F1C46:   End If
  loc_13F1C49: Next var_138 'Integer
  loc_13F1C4E: Exit Sub
End Sub

Private Sub CmdTransOnline_Click() '135D1A4
  'Data Table: 4CFAEC
  Dim unk_4CFBB3 As Connection15
  Dim var_CC As ListView
  Dim var_C8 As Variant
  Dim var_D0 As ListItems
  Dim var_B8 As Variant
  Dim var_D8 As ListItem
  Dim var_118 As String
  Dim var_108 As Variant
  Dim var_E8 As ListView
  Dim var_F8 As Variant
  Dim var_10C As ListItems
  Dim var_110 As ListItem
  Dim var_164 As Variant
  Dim var_134 As Variant
  Dim var_114 As String
  Dim var_C0 As String
  loc_135C9BC: On Error Goto loc_135D14F
  loc_135C9C8: unk_4CFBB3.BeginTrans var_A8
  loc_135C9D1: var_A2 = CByte(1) 'Byte
  loc_135C9EB: unk_4CFBB3.Execute "DELETE FROM Table_SearchField", var_C8, -1
  loc_135CA19: var_A8 = Me.LVTables.ListItems.Count
  loc_135CA2C: For var_D4 = 1 To CInt(var_A8): var_86 = var_D4 'Integer
  loc_135CA3E:   var_B8 = var_86
  loc_135CA4D:   var_C8 = Me.LVTables.ListItems
  loc_135CA5E:   var_B8 = var_C8.ControlDefault
  loc_135CA66:   var_D8 = var_D8.Default
  loc_135CA7D:   var_118 = var_DC & var_DC & "_A') " & " Drop Trigger Tr_"
  loc_135CA89:   var_108 = var_86
  loc_135CAA9:   var_108 = Me.LVTables.ListItems.ControlDefault
  loc_135CAB1:   var_110 = var_110.Default
  loc_135CAFF:   unk_4CFBB3.Execute var_114 & var_114 & "_A ", var_C8, -1
  loc_135CB16:   var_B8 = var_86
  loc_135CB25:   var_C8 = Me.LVTables.ListItems
  loc_135CB36:   var_B8 = var_C8.ControlDefault
  loc_135CB3E:   var_D8 = var_D8.Default
  loc_135CB55:   var_118 = var_DC & var_DC & "_E') " & " Drop Trigger Tr_"
  loc_135CB61:   var_108 = var_86
  loc_135CB81:   var_108 = Me.LVTables.ListItems.ControlDefault
  loc_135CB89:   var_110 = var_110.Default
  loc_135CBD7:   unk_4CFBB3.Execute var_114 & var_114 & "_E", var_C8, -1
  loc_135CBEE:   var_B8 = var_86
  loc_135CBFD:   var_C8 = Me.LVTables.ListItems
  loc_135CC0E:   var_B8 = var_C8.ControlDefault
  loc_135CC16:   var_D8 = var_D8.Default
  loc_135CC2D:   var_118 = var_DC & var_DC & "_D') " & " Drop Trigger Tr_"
  loc_135CC39:   var_108 = var_86
  loc_135CC42:   Set var_E8 = Me.LVTables
  loc_135CC53:   Set var_10C = var_E8.ListItems
  loc_135CC61:   var_110 = var_110.Default
  loc_135CCAF:   unk_4CFBB3.Execute var_114 & var_114 & "_D ", var_C8, -1
  loc_135CCCA:   var_B8 = var_86
  loc_135CCD3:   Set var_CC = Me.LVTables
  loc_135CCEA:   var_B8 = var_CC.ListItems.ControlDefault
  loc_135CCF2:   var_D8 = var_D8.Default
  loc_135CD07:   Call 0.Method_arg_3C (var_E8, CVar(var_DC), var_DC, var_10C.ControlDefault, var_10C, var_CC, var_118)
  loc_135CD0F:   Call 0.Method_arg_30 ("IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_", var_CC, var_118, "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_")
  loc_135CD17:   Set var_A0 = var_10C
  loc_135CD2F:   var_8C = vbNullString
  loc_135CD3B:   Call 0.Method_arg_60 (var_CC, var_CC)
  loc_135CD4A:   If (var_CC Is Nothing) Then
  loc_135CD4D:     GoTo loc_135D0F2
  loc_135CD50:   End If
  loc_135CD59:   var_B8 = var_86
  loc_135CD62:   Set var_CC = Me.LVTables
  loc_135CD73:   Set var_D0 = var_CC.ListItems
  loc_135CD79:   var_B8 = var_D0.ControlDefault
  loc_135CD81:   var_D8 = var_D8.Checked
  loc_135CD98:   If (var_11E = &HFF) Then
  loc_135CDAF:     Call 0.Method_arg_60 (var_CC, var_D0, var_A8, var_88)
  loc_135CDB7:     Call 0.Method_CmdTransOnline_ClickC (1, var_11E)
  loc_135CDBF:     Call 0.Method_arg_38 (var_118)
  loc_135CDCF:     For var_122 =  To CInt(var_A8): "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_" = var_122 'Integer
  loc_135CDDB:       If (var_88 = 1) Then
  loc_135CDF4:         Call 0.Method_arg_60 (var_CC, var_D0)
  loc_135CDFC:         Call 0.Method_CmdTransOnline_ClickC (CVar(var_88))
  loc_135CE04:         Call 0.Method_arg_30 (var_DC)
  loc_135CE0C:         var_90 = var_DC
  loc_135CE16:       End If
  loc_135CE25:       Call 0.Method_arg_60 (var_D8, var_E8)
  loc_135CE2D:       Call 0.Method_CmdTransOnline_ClickC (var_A8)
  loc_135CE35:       Call 0.Method_arg_38 ()
  loc_135CE5A:       Call 0.Method_arg_60 (var_CC, var_D0, CVar(var_88))
  loc_135CE62:       Call 0.Method_CmdTransOnline_ClickC (var_DC)
  loc_135CE6A:       Call 0.Method_arg_30 (var_8C & "Convert(nVarChar,[")
  loc_135CE88:       var_134 = "+"
  loc_135CEAF:       var_8C = CStr(CVar(var_DC & "])") & IIf((CLng(var_88) < var_A8), var_134, vbNullString))
  loc_135CED8:     Next var_122 'Integer
  loc_135CEE0:     var_94 = "Site_Code"
  loc_135CEE6:     var_98 = "LogSite_Code"
  loc_135CEEF:     var_B8 = var_86
  loc_135CEF8:     Set var_CC = Me.LVTables
  loc_135CF0F:     var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_135CF1E:     var_154 = Ucase(CVar(var_D8))
  loc_135CF26:     var_184 = var_154 'Variant
  loc_135CF43:     If Not (var_184 = "FOMBILLDETAILS") Then
  loc_135CF51:       If Not (var_184 = "SUNTRAN") Then
  loc_135CF5F:         If Not (var_184 = "SUNTRANEST") Then
  loc_135CF6D:           If Not (var_184 = "SUNTRANLOG") Then
  loc_135CF7B:             If Not (var_184 = "SUNTRANH") Then
  loc_135CF89:               If Not (var_184 = "SUNTRANHEST") Then
  loc_135CF97:                 If Not (var_184 = "SUNTRANFACILITY") Then
  loc_135CFA5:                   If Not (var_184 = "PACKINGORDERDETAIL2") Then
  loc_135CFB3:                     If Not (var_184 = "SALEMIS") Then
  loc_135CFC1:                       If Not (var_184 = "SPLITEDSUNTRAN") Then
  loc_135CFCF:                         If Not (var_184 = "SUNDRYTYPE") Then
  loc_135CFDD:                           If (var_184 = "ENVIRO") Then
  loc_135CFE0:                           End If
  loc_135CFE0:                         End If
  loc_135CFE0:                       End If
  loc_135CFE0:                     End If
  loc_135CFE0:                   End If
  loc_135CFE0:                 End If
  loc_135CFE0:               End If
  loc_135CFE0:             End If
  loc_135CFE0:           End If
  loc_135CFE0:         End If
  loc_135CFE0:       End If
  loc_135CFE3:       var_94 = "SiteCode"
  loc_135CFE9:     Else
  loc_135CFF4:       If (var_184 = "SITE") Then
  loc_135CFFA:         var_98 = "Site_Code"
  loc_135CFFD:       End If
  loc_135CFFD:     End If
  loc_135D016:     var_B8 = var_86
  loc_135D036:     var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_135D078:     var_164 = CVar(var_DC & var_DC & "','" & var_90 & "','" & var_94 & "','" & var_98 & "',1,1,") 'String
  loc_135D080:     var_F8 = CVar(Proc_6_15_EF2C1C(var_164, "Insert InTo Table_SearchField(TABLE_NAME,SEARCH_FIELD,SiteCode,LogSiteCode,TransactionYn,LineItemYn,UpLoadDate,UniqueField) Values('", var_250)) 'String
  loc_135D086:     Proc_6_7_F25D88(var_154, var_F8, -1)
  loc_135D0B8:     unk_4CFBB3.Execute CStr(var_E8 & var_154 & ",'" & CVar(var_8C) & "')"), var_D8.Default, 
  loc_135D0F2:     ' Referenced from: 135CD4D
  loc_135D0F2:   End If
  loc_135D0F5: Next var_D4 'Integer
  loc_135D0FA: Proc_154_7_13DE5C4()
  loc_135D0FF: Proc_154_8_F64CD4()
  loc_135D10A: unk_4CFBB3.CommitTrans
  loc_135D113: var_A2 = CByte(0) 'Byte
  loc_135D11D: Call 0.Method_arg_50 (var_DC)
  loc_135D12B: var_F8 = CVar(var_DC) 'String
  loc_135D13E: MsgBox("Process Completed Successfully", &H40, var_F8, var_154, var_164)
  loc_135D14E: Exit Sub
  loc_135D14F: ' Referenced from: 135C9BC
  loc_135D158: If (CInt(var_A2) = 1) Then
  loc_135D161:   unk_4CFBB3.RollbackTrans
  loc_135D166: End If
  loc_135D17C: Set var_CC = Err()
  loc_135D182: Call 0.Method_arg_2C (var_DC, 0, var_F8)
  loc_135D18D: MsgBox(CVar(var_DC), var_154, var_164, , )
  loc_135D1A0: Exit Sub
  loc_135D1A1: var_C0 = 
End Sub

Private Sub DGUnit_UnknownEvent_9 'F41E44
  'Data Table: 4CFAEC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41D3B: Me.DGUnit.Visible = False
  loc_F41D5A: If (Me.RecordCount > 0) Then
  loc_F41D99:   Set var_B4 = Me.Txt
  loc_F41D9F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(2), var_B8)
  loc_F41DA7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F41DDA:   var_B0 = Me.Fields.Item("Name")
  loc_F41DF9:   Set var_B4 = Me.Txt
  loc_F41DFF:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(2), var_B8)
  loc_F41E07:   var_B8.Text = CStr(var_B0.Value)
  loc_F41E1D: End If
  loc_F41E28: Set var_A8 = Me.Txt
  loc_F41E2E: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(2))
  loc_F41E36: var_B0.SetFocus
  loc_F41E42: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E17FC4
  'Data Table: 4CFAEC
  loc_E17FB9: Me.Global.Unload Me
  loc_E17FC1: Exit Sub
End Sub

Private Sub CmdTransIn_Click() '15C8908
  'Data Table: 4CFAEC
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim var_C4 As String
  Dim var_114 As Variant
  Dim var_128 As String
  Dim unk_4CFBB3 As Connection15
  Dim var_88 As ListView
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_144 As ListView
  Dim var_138 As Variant
  Dim var_148 As ListItems
  Dim var_18C As Variant
  Dim var_1B0 As Variant
  Dim var_208 As Variant
  Dim var_22C As Variant
  Dim var_284 As Variant
  Dim var_2A8 As Variant
  Dim var_300 As Variant
  Dim var_324 As Variant
  Dim var_37C As Variant
  Dim var_3A0 As Variant
  Dim var_3F8 As Variant
  Dim var_41C As Variant
  Dim var_474 As Variant
  Dim var_498 As Variant
  Dim var_4F0 As Variant
  Dim var_514 As Variant
  Dim var_56C As Variant
  Dim var_590 As Variant
  Dim var_5E8 As Variant
  Dim var_60C As Variant
  Dim var_664 As Variant
  Dim var_688 As Variant
  Dim var_6E0 As Variant
  Dim var_704 As Variant
  Dim var_75C As Variant
  Dim var_780 As Variant
  Dim var_7D8 As Variant
  Dim var_7FC As Variant
  Dim var_854 As Variant
  Dim var_878 As Variant
  Dim var_8D0 As Variant
  Dim var_8F4 As Variant
  Dim var_958 As String
  Dim var_118 As Integer
  Dim var_94 As String
  loc_15C781F: Set var_88 = Me.Txt
  loc_15C7825: Call 0.Method_CmdTransIn_Click0 (CInt(2))
  loc_15C7836: Set var_90 = var_8C
  loc_15C784E: If (Proc_6_27_EA565C(var_90, "For Unit") = 0) Then
  loc_15C785C:   Set var_88 = Me.Txt
  loc_15C7862:   Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C786A:   var_8C.SetFocus
  loc_15C7876:   Exit Sub
  loc_15C7877: End If
  loc_15C7885: Set var_88 = Me.Txt
  loc_15C788B: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C78AC: If (Len(var_8C.Tag) <> 2) Then
  loc_15C78C8:   MsgBox("Plz. Define Proper Unit SiteCode In Site Table", &H10, var_D4, var_F4, var_114)
  loc_15C78E3:   Set var_88 = Me.Txt
  loc_15C78E9:   Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C78F1:   var_8C.SetFocus
  loc_15C78FD:   Exit Sub
  loc_15C78FE: End If
  loc_15C790C: Set var_88 = Me.Txt
  loc_15C7912: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C791A: var_94 = var_8C.Tag
  loc_15C7922: var_11C = var_94
  loc_15C794C: Set var_88 = Me.Txt
  loc_15C7952: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C, var_94, "Delete from TransIn where SiteCode='")
  loc_15C795A: var_138 = var_8C.Tag
  loc_15C7970: var_F4 = -1 & Trim(CVar(var_94)) 
  loc_15C7974: var_C4 = "'"
  loc_15C7987: unk_4CFBB3.Execute CStr(var_F4 & var_C4), var_90, var_8C
  loc_15C79C8: var_13C = Me.LVTables.ListItems.Count
  loc_15C79DB: For var_140 = 1 To CInt(var_13C): var_116 = var_140 'Integer
  loc_15C79F1:   var_A4 = var_116
  loc_15C7A11:   var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C7A19:   var_90 = var_90.Default
  loc_15C7A2E:   Call 0.Method_arg_3C (var_144, CVar(var_94), var_94)
  loc_15C7A36:   Call 0.Method_arg_30 (var_C4, var_148)
  loc_15C7A3E:   Set var_124 = var_148
  loc_15C7A56:   var_120 = vbNullString
  loc_15C7A5F:   var_A4 = var_116
  loc_15C7A68:   Set var_88 = Me.LVTables
  loc_15C7A7F:   var_A4 = var_88.ListItems.ControlDefault
  loc_15C7A8E:   var_F4 = Ucase(CVar(var_90))
  loc_15C7A96:   var_C4 = "ATTENDENCE"
  loc_15C7AA6:   var_E4 = var_116
  loc_15C7AC6:   var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_15C7AE7:   var_18C = var_14C Or (Ucase(CVar(var_14C)) = "DATELOCK")
  loc_15C7AF1:   var_1B0 = var_116
  loc_15C7B11:   var_1B0 = Me.LVTables.ListItems.ControlDefault
  loc_15C7B32:   var_208 = var_1B8 Or (Ucase(CVar(var_1B8)) = "KOTLOG")
  loc_15C7B3C:   var_22C = var_116
  loc_15C7B5C:   var_22C = Me.LVTables.ListItems.ControlDefault
  loc_15C7B7D:   var_284 = var_234 Or (Ucase(CVar(var_234)) = "ENVIRO")
  loc_15C7B87:   var_2A8 = var_116
  loc_15C7BA7:   var_2A8 = Me.LVTables.ListItems.ControlDefault
  loc_15C7BC8:   var_300 = var_2B0 Or (Ucase(CVar(var_2B0)) = "FAENVIRO")
  loc_15C7BD2:   var_324 = var_116
  loc_15C7BF2:   var_324 = Me.LVTables.ListItems.ControlDefault
  loc_15C7C13:   var_37C = var_32C Or (Ucase(CVar(var_32C)) = "NCTYPEMAST")
  loc_15C7C1D:   var_3A0 = var_116
  loc_15C7C3D:   var_3A0 = Me.LVTables.ListItems.ControlDefault
  loc_15C7C5E:   var_3F8 = var_3A8 Or (Ucase(CVar(var_3A8)) = "TEMP_SBILL")
  loc_15C7C68:   var_41C = var_116
  loc_15C7C88:   var_41C = Me.LVTables.ListItems.ControlDefault
  loc_15C7CA9:   var_474 = var_424 Or (Ucase(CVar(var_424)) = "TRANLOG")
  loc_15C7CB3:   var_498 = var_116
  loc_15C7CD3:   var_498 = Me.LVTables.ListItems.ControlDefault
  loc_15C7CF4:   var_4F0 = var_4A0 Or (Ucase(CVar(var_4A0)) = "TRANSIN")
  loc_15C7CFE:   var_514 = var_116
  loc_15C7D1E:   var_514 = Me.LVTables.ListItems.ControlDefault
  loc_15C7D3F:   var_56C = var_51C Or (Ucase(CVar(var_51C)) = "TRANSOUT")
  loc_15C7D49:   var_590 = var_116
  loc_15C7D69:   var_590 = Me.LVTables.ListItems.ControlDefault
  loc_15C7D8A:   var_5E8 = var_598 Or (Ucase(CVar(var_598)) = "VOUCHERCAT")
  loc_15C7D94:   var_60C = var_116
  loc_15C7DB4:   var_60C = Me.LVTables.ListItems.ControlDefault
  loc_15C7DD5:   var_664 = var_614 Or (Ucase(CVar(var_614)) = "COMP_PLANDET")
  loc_15C7DDF:   var_688 = var_116
  loc_15C7DFF:   var_688 = Me.LVTables.ListItems.ControlDefault
  loc_15C7E20:   var_6E0 = var_690 Or (Ucase(CVar(var_690)) = "FOMBILLCHANGEDETAILS")
  loc_15C7E2A:   var_704 = var_116
  loc_15C7E4A:   var_704 = Me.LVTables.ListItems.ControlDefault
  loc_15C7E6B:   var_75C = var_70C Or (Ucase(CVar(var_70C)) = "GROUPCATALOG")
  loc_15C7E75:   var_780 = var_116
  loc_15C7E95:   var_780 = Me.LVTables.ListItems.ControlDefault
  loc_15C7EB6:   var_7D8 = var_788 Or (Ucase(CVar(var_788)) = "GUESTPARAM")
  loc_15C7EC0:   var_7FC = var_116
  loc_15C7EE0:   var_7FC = Me.LVTables.ListItems.ControlDefault
  loc_15C7F01:   var_854 = var_804 Or (Ucase(CVar(var_804)) = "SITE")
  loc_15C7F0B:   var_878 = var_116
  loc_15C7F2B:   var_878 = Me.LVTables.ListItems.ControlDefault
  loc_15C7F4C:   var_8D0 = var_880 Or (Ucase(CVar(var_880)) = "SUBGROUPLOG")
  loc_15C7F56:   var_8F4 = var_116
  loc_15C7F76:   var_8F4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8057:   If CBool(var_8FC Or (Ucase(CVar(var_8FC)) = "GUESTCOMMENTS")) Then
  loc_15C805A:     GoTo loc_15C88FF
  loc_15C805D:   End If
  loc_15C8066:   var_A4 = var_116
  loc_15C806F:   Set var_88 = Me.LVTables
  loc_15C8080:   Set var_8C = var_88.ListItems
  loc_15C8086:   var_A4 = var_8C.ControlDefault
  loc_15C808E:   var_90 = var_90.Checked
  loc_15C80A5:   If (var_94E = &HFF) Then
  loc_15C80BC:     Call 0.Method_arg_60 (var_88, var_8C, var_13C, var_118, 1, var_94E, var_8D0, var_854)
  loc_15C80C4:     Call 0.Method_CmdTransIn_ClickC (var_7D8, var_75C, var_6E0, var_664)
  loc_15C80CC:     Call 0.Method_arg_38 (var_5E8, var_56C)
  loc_15C80DC:     For var_952 =  To CInt(var_13C): var_4F0 = var_952 'Integer
  loc_15C80E8:       If (var_118 = 1) Then
  loc_15C8104:         Call 0.Method_arg_60 (var_88, var_8C, CVar(var_118))
  loc_15C810C:         Call 0.Method_CmdTransIn_ClickC (var_94)
  loc_15C8114:         Call 0.Method_arg_30 ("'")
  loc_15C8124:         var_120 = var_94 & "'"
  loc_15C8138:       Else
  loc_15C813F:         var_128 = var_120 & ",'"
  loc_15C8158:         Call 0.Method_arg_60 (var_88, var_8C, CVar(var_118))
  loc_15C8160:         Call 0.Method_CmdTransIn_ClickC (var_94)
  loc_15C8168:         Call 0.Method_arg_30 (var_128)
  loc_15C8178:         var_120 = var_94 & "'"
  loc_15C818B:       End If
  loc_15C818E:     Next var_952 'Integer
  loc_15C8199:     If (var_118 <= 7) Then
  loc_15C819C:       ' Referenced from: 15C81B8
  loc_15C81A2:       If (var_118 <= 7) Then
  loc_15C81AC:         var_120 = var_120 & ",''"
  loc_15C81B5:         var_118 = (var_118 + 1)
  loc_15C81B8:         GoTo loc_15C819C
  loc_15C81BB:       End If
  loc_15C81BB:     End If
  loc_15C81C1:     var_A4 = var_116
  loc_15C81E1:     var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C81E9:     var_D4 = CVar(var_90) 'Address
  loc_15C81F0:     var_F4 = Ucase(var_D4)
  loc_15C81F8:     var_C4 = "ACGROUPCURRBAL"
  loc_15C8208:     var_E4 = var_116
  loc_15C8228:     var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8249:     var_18C = var_14C Or (Ucase(CVar(var_14C)) = "RAWCONSUMPTION")
  loc_15C8253:     var_1B0 = var_116
  loc_15C8273:     var_1B0 = Me.LVTables.ListItems.ControlDefault
  loc_15C82BE:     If CBool(var_1B8 Or (Ucase(CVar(var_1B8)) = "SUBGROUPCURRBAL")) Then
  loc_15C82DC:       var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','"
  loc_15C82E8:       var_A4 = var_116
  loc_15C8308:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8310:       var_90 = var_90.Default
  loc_15C8337:       unk_4CFBB3.Execute var_128 & var_128 & "','LogSite_Code','V_DATE',''," & var_120 & ")", var_958, var_D4
  loc_15C8362:     Else
  loc_15C8368:       var_A4 = var_116
  loc_15C8388:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8390:       var_D4 = CVar(var_90) 'Address
  loc_15C83B7:       If (Ucase(var_D4) = "EPABX_DATA") Then
  loc_15C83D5:         var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','"
  loc_15C83E1:         var_A4 = var_116
  loc_15C8401:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8409:         var_90 = var_90.Default
  loc_15C8430:         unk_4CFBB3.Execute var_128 & var_128 & "','LogSite_Code','CALL_START_DATE',''," & var_120 & ")", var_958, var_D4
  loc_15C845B:       Else
  loc_15C8461:         var_A4 = var_116
  loc_15C8481:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8489:         var_D4 = CVar(var_90) 'Address
  loc_15C8490:         var_F4 = Ucase(var_D4)
  loc_15C8498:         var_C4 = "ATTENDENCE"
  loc_15C84A8:         var_E4 = var_116
  loc_15C84C8:         var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_15C84E9:         var_18C = var_14C Or (Ucase(CVar(var_14C)) = "DISPCOLOR")
  loc_15C84F3:         var_1B0 = var_116
  loc_15C8513:         var_1B0 = Me.LVTables.ListItems.ControlDefault
  loc_15C8534:         var_208 = var_1B8 Or (Ucase(CVar(var_1B8)) = "DATELOCK")
  loc_15C853E:         var_22C = var_116
  loc_15C855E:         var_22C = Me.LVTables.ListItems.ControlDefault
  loc_15C857F:         var_284 = var_234 Or (Ucase(CVar(var_234)) = "KOTLOG")
  loc_15C8589:         var_2A8 = var_116
  loc_15C85A9:         var_2A8 = Me.LVTables.ListItems.ControlDefault
  loc_15C85CA:         var_300 = var_2B0 Or (Ucase(CVar(var_2B0)) = "ENVIRO")
  loc_15C85D4:         var_324 = var_116
  loc_15C85F4:         var_324 = Me.LVTables.ListItems.ControlDefault
  loc_15C8615:         var_37C = var_32C Or (Ucase(CVar(var_32C)) = "FAENVIRO")
  loc_15C861F:         var_3A0 = var_116
  loc_15C863F:         var_3A0 = Me.LVTables.ListItems.ControlDefault
  loc_15C8660:         var_3F8 = var_3A8 Or (Ucase(CVar(var_3A8)) = "NCTYPEMAST")
  loc_15C866A:         var_41C = var_116
  loc_15C868A:         var_41C = Me.LVTables.ListItems.ControlDefault
  loc_15C86AB:         var_474 = var_424 Or (Ucase(CVar(var_424)) = "TEMP_SBILL")
  loc_15C86B5:         var_498 = var_116
  loc_15C86D5:         var_498 = Me.LVTables.ListItems.ControlDefault
  loc_15C86F6:         var_4F0 = var_4A0 Or (Ucase(CVar(var_4A0)) = "TRANLOG")
  loc_15C8700:         var_514 = var_116
  loc_15C8720:         var_514 = Me.LVTables.ListItems.ControlDefault
  loc_15C8741:         var_56C = var_51C Or (Ucase(CVar(var_51C)) = "TRANSIN")
  loc_15C874B:         var_590 = var_116
  loc_15C876B:         var_590 = Me.LVTables.ListItems.ControlDefault
  loc_15C878C:         var_5E8 = var_598 Or (Ucase(CVar(var_598)) = "TRANSOUT")
  loc_15C8796:         var_60C = var_116
  loc_15C87B6:         var_60C = Me.LVTables.ListItems.ControlDefault
  loc_15C885B:         If CBool(var_614 Or (Ucase(CVar(var_614)) = "VOUCHERCAT")) Then
  loc_15C885E:           GoTo loc_15C88FF
  loc_15C8861:         End If
  loc_15C887C:         var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','"
  loc_15C8888:         var_A4 = var_116
  loc_15C88A8:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C88B0:         var_90 = var_90.Default
  loc_15C88D7:         unk_4CFBB3.Execute var_128 & var_128 & "','LogSite_Code','U_EntDt',''," & var_120 & ")", var_958, var_D4
  loc_15C88FF:         ' Referenced from:     15C885E
  loc_15C88FF:       End If
  loc_15C88FF:     End If
  loc_15C88FF:     ' Referenced from: 15C805A
  loc_15C88FF:   End If
  loc_15C8902: Next var_140 'Integer
  loc_15C8907: Exit Sub
End Sub

Public Property Get OpenMode() 'E04B40
  'Data Table: 4CFAEC
  loc_E04B39: OpenMode = global_76
End Sub

Public Property Let OpenMode(vNewValue) 'E0143C
  'Data Table: 4CFAEC
  loc_E01436: global_76 = vNewValue
  loc_E01439: Exit Sub
End Sub

Public Sub Proc_168_21_197D860(arg_C, arg_10, arg_14, arg_18) '197D860
  'Data Table: 4CFAEC
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_118 As Variant
  Dim var_108 As Variant
  Dim var_13C As String
  Dim var_138 As String
  Dim var_158 As String
  Dim var_90 As Recordset15
  Dim var_9C As Variant
  Dim Me As Connection15
  Dim var_12C As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_150 As Variant
  Dim var_98 As Recordset15
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_14C As Variant
  Dim var_25C As Variant
  Dim var_1E0 As Fields15
  Dim var_258 As Fields15
  Dim var_2CC As Variant
  Dim var_2D0 As Fields15
  Dim var_314 As Variant
  Dim var_37C As Variant
  Dim var_3E4 As Variant
  Dim var_94 As Variant
  Dim var_4BC As Variant
  Dim var_58C As Variant
  Dim var_65C As Variant
  Dim var_72C As Variant
  Dim var_7FC As Variant
  Dim var_8CC As Variant
  Dim var_99C As Variant
  Dim var_A6C As Variant
  Dim var_EC As Recordset15
  Dim var_D0 As Long
  Dim var_D4 As Long
  Dim var_D8 As Long
  Dim var_DC As Long
  Dim var_E0 As Long
  Dim var_E4 As Long
  Dim var_E8 As Long
  Dim Me As Connection15
  Dim unk_4CFBB3 As Connection15
  loc_197ACC0: On Error Goto loc_197D7F2
  loc_197ACCB: If (arg_14 = "Main") Then
  loc_197ACD1:   var_A0 = " And MainDB='M'"
  loc_197ACD7: Else
  loc_197ACDA:   var_A0 = vbNullString
  loc_197ACDD: End If
  loc_197ACE4: Set var_F0 = Me.CmdIss
  loc_197ACEA: var_F2 = var_F0.Value
  loc_197ACF8: If (var_F2 = &HFF) Then
  loc_197AD0E:   Call 0.Method_arg_9C (-1)
  loc_197AD16:   Set var_F8 = New 
  loc_197AD1F:   Call 0.Method_arg_BC (0)
  loc_197AD29:   Call 0.Method_arg_E8 (0)
  loc_197AD31:   var_128 = CVar(MemVar_1F920D4) 'String
  loc_197AD38:   var_118 = CVar(MemVar_1F920D8) 'String
  loc_197AD46:   Call 0.Method_arg_100 (CVar(MemVar_1F92098), var_118)
  loc_197AD4D:   Set var_F8 = Nothing 
  loc_197AD68:   Call 0.Method_arg_34 (var_F0, CVar(MemVar_1F92108), var_118)
  loc_197AD70:   Call 0.Method_arg_30 (var_12C)
  loc_197AD78:   MemVar_1F92204 = var_12C
  loc_197AD90:   Call 0.Method_arg_3C (var_F0, var_130, var_AA)
  loc_197AD98:   Call 0.Method_arg_38 (1)
  loc_197ADA4:   For var_134 =  To CInt(var_130): var_128 = var_134 'Integer
  loc_197ADC4:     Call 0.Method_arg_3C (var_F0, CVar(var_AA), var_118)
  loc_197ADCC:     Call 0.Method_arg_30 (var_12C)
  loc_197ADD4:     Call 0.Method_arg_74 (var_F2)
  loc_197ADE6:     If (var_F2 = 0) Then
  loc_197AE13:       Call 0.Method_arg_3C (var_F0, CVar(var_AA), var_118, var_12C, var_138)
  loc_197AE1B:       Call 0.Method_arg_30 ("Delete From ", var_14C)
  loc_197AE23:       Call 0.Method_arg_34 (-1)
  loc_197AE35:       Me.Connection15.Execute var_150 & var_138, , 
  loc_197AE4D:     End If
  loc_197AE50:   Next var_134 'Integer
  loc_197AE70:   var_13C = "Select * From TransOut Where SiteCode ='" & arg_C & "'"
  loc_197AE84:   Me.Connection15.Execute var_13C & var_A0 & " Order By TableName", var_14C, -1
  loc_197AE8F:   Set var_90 = var_F0
  loc_197AEA3:   ' Referenced from: 197BCA8
  loc_197AEB2:   If Not(var_90.EOF) Then
  loc_197AEB7:     var_9C = 1
  loc_197AEC3:     Me.BeginTrans var_130
  loc_197AED4:     If (CInt(global_68) = 1) Then
  loc_197AF21:       Me.Execute CStr("Delete From " & var_90.Fields.Item("TableName").Value), var_178, -1
  loc_197AF3B:     End If
  loc_197AF41:     Me.CommitTrans
  loc_197AF7E:     var_138 = CStr(CVar(arg_14 & " : ") & var_90.Fields.Item("TableName").Value)
  loc_197AF8C:     Me.LblTblName.Caption = var_138
  loc_197AFB0:     Me.LblTblName.Refresh
  loc_197AFBC:     Set var_98 = New 
  loc_197B010:     var_98.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(global_56), 1
  loc_197B042:     var_12C = var_90.Fields.Item("Udate")
  loc_197B073:     Call 0.Method_Proc_168_21_197D8600 (CInt(0), var_17C, var_138, " Where " & var_12C.Value & " Between '", 3)
  loc_197B07B:     -1 = var_17C.Text
  loc_197B098:     var_1DC = Me.Txt & CVar(var_138) & " 00:00:00" & "' And '" 
  loc_197B0AA:     Set var_1E0 = Me.Txt
  loc_197B0B0:     Call 0.Method_Proc_168_21_197D8600 (CInt(1), var_1E4, var_13C)
  loc_197B0B8:     var_1DC = var_1E4.Text
  loc_197B113:     Set var_F0 = Me.Txt
  loc_197B119:     Call 0.Method_Proc_168_21_197D8600 (CInt(2), var_12C)
  loc_197B121:     var_138 = var_12C.Tag
  loc_197B138:     If (var_138 <> "HO") Then
  loc_197B165:       var_254 = var_90.Fields.Item("Type").Value 'Variant
  loc_197B17B:       If (var_254 = "0") Then
  loc_197B1D9:         var_17C = var_90.Fields.Item("TableName")
  loc_197B1FE:         var_1F4 = (MemVar_1F92070 = "HO") And (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUP") Or (Ucase(CVar(var_17C)) = "ACGROUP")
  loc_197B218:         If CBool(var_1F4) Then
  loc_197B258:           var_18C = CVar(CStr(var_9C & CVar(var_13C) & " 23:59:59" & "'") & " And ") & var_90.Fields.Item("FieldName").Value & "='HO'" 
  loc_197B25D:           var_A8 = CStr(var_18C)
  loc_197B275:         Else
  loc_197B291:           var_F0 = var_90.Fields
  loc_197B2B2:           var_18C = CVar(var_A8 & " And ") & var_F0.Item("FieldName").Value & "='" 
  loc_197B2C2:           Set var_150 = Me.Txt
  loc_197B2C8:           Call 0.Method_Proc_168_21_197D8600 (2, var_17C, var_138)
  loc_197B2D0:           var_18C = var_17C.Tag
  loc_197B2E9:           var_A8 = CStr(var_F0 & CVar(var_138) & "'")
  loc_197B308:         End If
  loc_197B30B:       Else
  loc_197B316:         If (var_254 = "1") Then
  loc_197B36E:           var_A8 = CStr(CVar(var_A8 & " And Left(") & var_90.Fields.Item("FieldName").Value & ",2) ='" & CVar(MemVar_1F92070) & "'")
  loc_197B38A:         Else
  loc_197B395:           If (var_254 = "2") Then
  loc_197B3D8:             If (Ucase(CVar(var_90.Fields.Item("TableName"))) = "PBILLPASS") Then
  loc_197B446:               var_1BC = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) In('" & var_90.Fields.Item("SiteCode").Value 
  loc_197B454:               var_A8 = CStr(var_1BC & "')")
  loc_197B476:             Else
  loc_197B4B6:               If (Ucase(CVar(var_90.Fields.Item("TableName"))) = "LEDGER") Then
  loc_197B4C1:                 If (MemVar_1F92070 = "U") Then
  loc_197B50B:                   var_19C = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) ='" & CVar(MemVar_1F92070) 
  loc_197B519:                   var_A8 = CStr(var_19C & "' And V_Type Not In('PBG','PBRM') ")
  loc_197B535:                 Else
  loc_197B57C:                   var_19C = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) ='" & CVar(MemVar_1F92070) 
  loc_197B58A:                   var_A8 = CStr(var_19C & "'")
  loc_197B5A3:                 End If
  loc_197B5A6:               Else
  loc_197B5ED:                 var_19C = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) ='" & CVar(MemVar_1F92070) 
  loc_197B5FB:                 var_A8 = CStr(var_19C & "'")
  loc_197B614:               End If
  loc_197B614:             End If
  loc_197B614:           End If
  loc_197B614:         End If
  loc_197B614:       End If
  loc_197B614:     End If
  loc_197B650:     If (var_90.Fields.Item("TableName").Value = "TransDel") Then
  loc_197B698:       var_178 = "Select * From " & var_90.Fields.Item("TableName").Value & " Where " 
  loc_197B6E1:       Set var_1E0 = Me.Txt
  loc_197B6E7:       Call 0.Method_Proc_168_21_197D8600 (CInt(0), var_1E4, var_138, var_178 & var_90.Fields.Item("Udate").Value & " Between '")
  loc_197B6EF:       var_2CC = var_1E4.Text
  loc_197B6FA:       var_1F4 = -1 & CVar(var_138) 
  loc_197B70C:       var_224 = var_1F4 & " 00:00:00" & "' And '" 
  loc_197B71E:       Set var_258 = Me.Txt
  loc_197B724:       Call 0.Method_Proc_168_21_197D8600 (CInt(1), var_25C, var_13C)
  loc_197B72C:       var_224 = var_25C.Text
  loc_197B754:       Me.Connection15.Execute CStr(var_2D0 & CVar(var_13C) & " 23:59:59" & "'"), , 
  loc_197B75F:       Set var_94 = var_2D0
  loc_197B79E:     Else
  loc_197B7E5:       var_150 = var_90.Fields
  loc_197B7FC:       var_19C = Ucase(CVar(var_150.Item("TableName")))
  loc_197B831:       var_1F4 = CVar(var_90.Fields.Item("TableName")) 'Address
  loc_197B838:       var_204 = Ucase(var_1F4)
  loc_197B886:       var_2CC = (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FORM31") Or (var_19C = "SBILLFORM") Or (var_204 = "FAENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "ENVIRO")
  loc_197B8FE:       var_37C = var_2CC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "EMAILENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SMSENVIRO")
  loc_197B970:       If CBool(var_37C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "MEMENVIRO")) Then
  loc_197B9BA:         Me.Connection15.Execute CStr("Select * From " & var_90.Fields.Item("TableName").Value), var_178, -1
  loc_197B9C5:         Set var_94 = var_150
  loc_197B9E0:       Else
  loc_197B9ED:         var_118 = "Select * From "
  loc_197B9F8:         var_108 = "TableName"
  loc_197BA3A:         Me.Connection15.Execute CStr(var_118 & var_90.Fields.Item(var_108).Value & " " & CVar(var_A8)), var_19C, -1
  loc_197BA45:         Set var_94 = var_150
  loc_197BA61:       End If
  loc_197BA61:     End If
  loc_197BA6A:     Me.BeginTrans var_130
  loc_197BA6F:     ' Referenced from: 197BC92
  loc_197BA7E:     If Not(var_94.EOF) Then
  loc_197BA8C:       var_98.AddNew var_108, var_118
  loc_197BAB9:       For var_3E8 = 0 To CInt((var_94.Fields.Count - 1)): var_9A = var_3E8 'Integer
  loc_197BAF7:         If (var_94.Fields.Item(CVar(var_9A)).DefinedSize <> &H7FFFFFFF) Then
  loc_197BB1D:           var_130 = var_94.Fields.Item(CVar(var_9A)).DefinedSize
  loc_197BB5C:           If (var_130 <> var_98.Fields.Item(CVar(var_9A)).DefinedSize) Then
  loc_197BBE5:             var_1DC = CVar(arg_14 & ".") & var_90.Fields.Item("TableName").Value & "." & CVar(var_94.Fields.Item(CVar(var_9A)).Name) & " Field Size Mismatch" 
  loc_197BBE9:             MsgBox(var_1DC, 0, var_1F4, var_204, var_224)
  loc_197BC13:           Else
  loc_197BC13:           End If
  loc_197BC1C:           var_108 = CVar(var_9A) 'Integer
  loc_197BC36:           var_14C = var_94.Fields.Item(var_108).Value
  loc_197BC45:           var_118 = CVar(var_9A) 'Integer
  loc_197BC5F:           var_98.Fields.Item(var_118).Value = var_14C
  loc_197BC75:         Next var_3E8 'Integer
  loc_197BC85:         var_98.Update var_108, var_118
  loc_197BC8D:         var_94.MoveNext
  loc_197BC92:         GoTo loc_197BA6F
  loc_197BC95:       End If
  loc_197BC9B:       Me.CommitTrans
  loc_197BCA3:       var_90.MoveNext
  loc_197BCA8:       GoTo loc_197AEA3
  loc_197BCAB:     End If
  loc_197BCAE:   Else
  loc_197BCB5:     Set var_F0 = Me.CmdRec
  loc_197BCC9:     If (var_F0.Value = &HFF) Then
  loc_197BCFB:       Me.Connection15.Execute "Select * From TransIn Where SiteCode ='" & arg_C & "'" & var_A0 & " Order By TableName", var_14C, -1
  loc_197BD06:       Set var_90 = var_F0
  loc_197BD1A:       ' Referenced from:     197D721
  loc_197BD29:       If Not(var_90.EOF) Then
  loc_197BD2E:         var_9C = 2
  loc_197BD69:         var_138 = CStr(CVar(arg_14 & " :     ") & var_90.Fields.Item("TableName").Value)
  loc_197BD77:         Me.LblTblName.Caption = var_138
  loc_197BD9B:         Me.LblTblName.Refresh
  loc_197BDA9:         Me.Connection15.BeginTrans var_130
  loc_197BE1E:         var_1DC = (Ucase(CVar(var_90.Fields.Item("TableName"))) = "ATTENDENCE") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "DATELOCK")
  loc_197BE41:         var_1F4 = CVar(var_90.Fields.Item("TableName")) 'Address
  loc_197BE48:         var_204 = Ucase(var_1F4)
  loc_197BED2:         var_314 = var_1DC Or (var_204 = "KOTLOG") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "ENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FAENVIRO")
  loc_197BF4A:         var_3E4 = var_314 Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "EMAILENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SMSENVIRO")
  loc_197BFC2:         var_4BC = var_3E4 Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "MEMENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "NCTYPEMAST")
  loc_197C03A:         var_58C = var_4BC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TEMP_SBILL") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANLOG")
  loc_197C0B2:         var_65C = var_58C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSIN") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSOUT")
  loc_197C12A:         var_72C = var_65C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSDEL") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "VOUCHERCAT")
  loc_197C1A2:         var_7FC = var_72C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "COMP_PLANDET") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FOMBILLCHANGEDETAILS")
  loc_197C21A:         var_8CC = var_7FC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "GROUPCATALOG") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "GUESTPARAM")
  loc_197C292:         var_99C = var_8CC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SITE") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUPLOG")
  loc_197C30A:         var_A6C = var_99C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FOMBILLCHANGEDETAILS") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUPTYPE")
  loc_197C3A0:         If CBool(var_A6C) Then
  loc_197C3A3:           GoTo loc_197C3B7
  loc_197C3A6:         End If
  loc_197C3B2:         Call Proc_168_22_16936C8(var_90, arg_10, arg_18)
  loc_197C3B7:         ' Referenced from:     197C3A3
  loc_197C3BB:         Set var_EC = New 
  loc_197C40C:         var_EC.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 3
  loc_197C498:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK1")))) And (var_90.Fields.Item("PK1").Value <> vbNullString)) Then
  loc_197C4C6:           var_B4 = CStr(var_90.Fields.Item("PK1").Value)
  loc_197C4FE:           var_D0 = var_EC.Fields.Item(CVar(var_B4)).Type
  loc_197C508:         End If
  loc_197C581:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK2")))) And (var_90.Fields.Item("PK2").Value <> vbNullString)) Then
  loc_197C5AF:           var_B8 = CStr(var_90.Fields.Item("PK2").Value)
  loc_197C5E7:           var_D4 = var_EC.Fields.Item(CVar(var_B8)).Type
  loc_197C5F1:         End If
  loc_197C66A:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK3")))) And (var_90.Fields.Item("PK3").Value <> vbNullString)) Then
  loc_197C698:           var_BC = CStr(var_90.Fields.Item("PK3").Value)
  loc_197C6D0:           var_D8 = var_EC.Fields.Item(CVar(var_BC)).Type
  loc_197C6DA:         End If
  loc_197C753:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK4")))) And (var_90.Fields.Item("PK4").Value <> vbNullString)) Then
  loc_197C781:           var_C0 = CStr(var_90.Fields.Item("PK4").Value)
  loc_197C7B9:           var_DC = var_EC.Fields.Item(CVar(var_C0)).Type
  loc_197C7C3:         End If
  loc_197C83C:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK5")))) And (var_90.Fields.Item("PK5").Value <> vbNullString)) Then
  loc_197C86A:           var_C4 = CStr(var_90.Fields.Item("PK5").Value)
  loc_197C8A2:           var_E0 = var_EC.Fields.Item(CVar(var_C4)).Type
  loc_197C8AC:         End If
  loc_197C925:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK6")))) And (var_90.Fields.Item("PK6").Value <> vbNullString)) Then
  loc_197C953:           var_C8 = CStr(var_90.Fields.Item("PK6").Value)
  loc_197C98B:           var_E4 = var_EC.Fields.Item(CVar(var_C8)).Type
  loc_197C995:         End If
  loc_197C9DC:         var_17C = var_90.Fields.Item("PK7")
  loc_197CA0E:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK7")))) And (var_17C.Value <> vbNullString)) Then
  loc_197CA3C:           var_CC = CStr(var_90.Fields.Item("PK7").Value)
  loc_197CA6C:           var_130 = var_EC.Fields.Item(CVar(var_CC)).Type
  loc_197CA74:           var_E8 = var_130
  loc_197CA7E:         End If
  loc_197CABE:         If (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSDEL") Then
  loc_197CAC1:           GoTo loc_197D711
  loc_197CAC4:         End If
  loc_197CACC:         If (MemVar_1F92070 = "HO") Then
  loc_197CB27:           New.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(global_56), 3
  loc_197CB3D:         Else
  loc_197CB81:           Set var_150 = Me.Txt
  loc_197CB87:           Call 0.Method_Proc_168_21_197D8600 (2, var_17C, var_138, (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUP"), 1, -1, var_E8)
  loc_197CB8F:           var_E4 = var_17C.Tag
  loc_197CBBB:           If CBool(var_E0 And (var_138 = "HO")) Then
  loc_197CC1F:             New.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value & " Where site_code='HO'", CVar(global_56), 3
  loc_197CC37:           Else
  loc_197CC3B:             Set var_98 = New 
  loc_197CCA3:             var_19C = "Select * From " & var_90.Fields.Item("TableName").Value & " Where Logsite_code='" & CVar(MemVar_1F92070) & "'" 
  loc_197CCAB:             var_98.Open var_19C, CVar(global_56), 3
  loc_197CCC4:           End If
  loc_197CCC4:         End If
  loc_197CCC8:         Set var_94 = New 
  loc_197CD19:         var_94.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 1
  loc_197CD2C:         ' Referenced from:     197D70E
  loc_197CD3B:         If Not(var_98.EOF) Then
  loc_197CD74:           var_13C = Proc_154_4_F329F4(var_D0, CVar(var_98.Fields.Item(CVar(var_B4))), var_B4 & "=", 3, -1, 1, -1)
  loc_197CDD9:           var_138 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("PK2")), Not(IsNull(CVar(var_90.Fields.Item("PK2")))), -1, var_DC)
  loc_197CDF3:           If (var_D8 And (var_B4 & "=" <> vbNullString)) Then
  loc_197CE3A:             var_158 = Proc_154_4_F329F4(var_D4, CVar(var_98.Fields.Item(CVar(var_B8))), 1 & "Select * From TransIn Where SiteCode ='" & arg_C & "'" & " And " & var_B8 & "=")
  loc_197CE3E:             var_B0 = var_D4 & var_158
  loc_197CE52:           End If
  loc_197CEBD:           If (var_D0 And (Proc_6_38_E68A98(CVar(var_90.Fields.Item("PK3")), Not(IsNull(CVar(var_90.Fields.Item("PK3"))))) <> vbNullString)) Then
  loc_197CF08:             var_B0 = var_B0 & " And " & var_BC & "=" & Proc_154_4_F329F4(var_D8, CVar(var_98.Fields.Item(CVar(var_BC))))
  loc_197CF1C:           End If
  loc_197CF87:           If (3 And (Proc_6_38_E68A98(CVar(var_90.Fields.Item("PK4")), Not(IsNull(CVar(var_90.Fields.Item("PK4"))))) <> vbNullString)) Then
  loc_197CFD2:             var_B0 = var_B0 & " And " & var_C0 & "=" & Proc_154_4_F329F4(var_DC, CVar(var_98.Fields.Item(CVar(var_C0))))
  loc_197CFE6:           End If
  loc_197D051:           If (Not(IsNull(CVar(var_90.Fields.Item("PK5")))) And (Proc_6_38_E68A98(CVar(var_90.Fields.Item("PK5"))) <> vbNullString)) Then
  loc_197D09C:             var_B0 = var_B0 & " And " & var_C4 & "=" & Proc_154_4_F329F4(var_E0, CVar(var_98.Fields.Item(CVar(var_C4))))
  loc_197D0B0:           End If
  loc_197D11B:           If (Not(IsNull(CVar(var_90.Fields.Item("PK6")))) And (Proc_6_38_E68A98(CVar(var_90.Fields.Item("PK6"))) <> vbNullString)) Then
  loc_197D166:             var_B0 = var_B0 & " And " & var_C8 & "=" & Proc_154_4_F329F4(var_E4, CVar(var_98.Fields.Item(CVar(var_C8))))
  loc_197D17A:           End If
  loc_197D1E5:           If (Not(IsNull(CVar(var_90.Fields.Item("PK7")))) And (Proc_6_38_E68A98(CVar(var_90.Fields.Item("PK7"))) <> vbNullString)) Then
  loc_197D230:             var_B0 = var_B0 & " And " & var_CC & "=" & Proc_154_4_F329F4(var_E8, CVar(var_98.Fields.Item(CVar(var_CC))))
  loc_197D244:           End If
  loc_197D254:           var_118 = "Select * From "
  loc_197D25F:           var_108 = "TableName"
  loc_197D2A1:           Me.Connection15.Execute CStr(var_118 & var_90.Fields.Item(var_108).Value & " Where " & CVar(var_B0)), var_19C, -1
  loc_197D2A9:           var_150 = var_150.RecordCount
  loc_197D2D0:           If (var_130 = 0) Then
  loc_197D2DE:             var_94.AddNew var_108, var_118
  loc_197D30B:             For var_A70 = 0 To CInt((var_98.Fields.Count - 1)):     var_9A = var_A70 'Integer
  loc_197D34B:               If (var_98.Fields.Item(CVar(var_9A)).Name <> "CompCode") Then
  loc_197D386:                 If (var_94.Fields.Item(CVar(var_9A)).Type <> &H87) Then
  loc_197D3EB:                   If (var_94.Fields.Item(CVar(var_9A)).DefinedSize <> var_98.Fields.Item(CVar(var_9A)).DefinedSize) Then
  loc_197D426:                     If (var_94.Fields.Item(CVar(var_9A)).DefinedSize <> &H7FFFFFFF) Then
  loc_197D43E:                       var_168 = CVar(arg_14 & ".") 'String
  loc_197D4A3:                       var_19C = CVar(var_94.Fields.Item(CVar(var_9A)).Name) 'String
  loc_197D4B3:                       MsgBox(var_168 & var_90.Fields.Item("TableName").Value & "." & var_19C & " Field Size Mismatch", 0, var_1F4, var_204, var_224)
  loc_197D4DA:                       GoTo loc_197D7F2
  loc_197D4DD:                     End If
  loc_197D4DD:                   End If
  loc_197D4DD:                 End If
  loc_197D5A3:                 var_214 = (((var_98.Fields.Item(CVar(var_9A)).Name = "FormNo") Or (var_98.Fields.Item(CVar(var_9A)).Name = "FormAmt")) Or (var_98.Fields.Item(CVar(var_9A)).Name = "FormDate"))
  loc_197D5D0:                 If CBool((var_90.Fields.Item("TableName").Value = "SBill") And var_214) Then
  loc_197D5D3:                   GoTo loc_197D6EE
  loc_197D5D6:                 End If
  loc_197D65D:                 var_13C = var_98.Fields.Item(CVar(var_9A)).Name
  loc_197D66F:                 var_178 = (var_90.Fields.Item("TableName").Value = "PBill") And ((var_98.Fields.Item(CVar(var_9A)).Name = "PassedBy") Or (var_13C = "PassDate"))
  loc_197D692:                 If CBool(var_178) Then
  loc_197D695:                   GoTo loc_197D6EE
  loc_197D698:                 End If
  loc_197D69E:                 var_108 = CVar(var_9A) 'Integer
  loc_197D6B0:                 var_12C = var_98.Fields.Item(var_108)
  loc_197D6C3:                 var_118 = CVar(var_9A) 'Integer
  loc_197D6CD:                 var_150 = var_94.Fields
  loc_197D6DD:                 var_150.Item(var_118).Value = CVar(var_12C)
  loc_197D6EE:                 ' Referenced from:     197D695
  loc_197D6EE:                 ' Referenced from:     197D5D3
  loc_197D6EE:               End If
  loc_197D6F1:             Next var_A70 'Integer
  loc_197D701:             var_94.Update var_108, var_118
  loc_197D706:           End If
  loc_197D709:           var_98.MoveNext
  loc_197D70E:           GoTo loc_197CD2C
  loc_197D711:           ' Referenced from:     197CAC1
  loc_197D711:         End If
  loc_197D714:         Me.CommitTrans
  loc_197D71C:         var_90.MoveNext
  loc_197D721:         GoTo loc_197BD1A
  loc_197D724:       End If
  loc_197D731:       var_108 = "Delete from TransDel where UEntdt="
  loc_197D73F:       Set var_F0 = Me.Txt
  loc_197D745:       Call 0.Method_Proc_168_21_197D8600 (0, var_12C, var_108)
  loc_197D754:       Proc_6_7_F25D88(var_168, CVar(var_12C), var_19C)
  loc_197D75C:       var_178 = -1 & var_168 
  loc_197D765:       var_18C = var_178 & vbNullString 
  loc_197D769:       var_138 = CStr(var_18C)
  loc_197D773:       unk_4CFBB3.Execute var_138, var_150, 
  loc_197D79D:       Call 0.Method_arg_2B0 (var_108)
  loc_197D7A2:     End If
  loc_197D7A2:   End If
  loc_197D7AF:   Me.LblTblName.Caption = vbNullString
  loc_197D7C1:   Me.LblTblName.Refresh
  loc_197D7CE:   Set var_88 = Nothing
  loc_197D7D6:   Set var_8C = Nothing
  loc_197D7DE:   Set var_90 = Nothing
  loc_197D7E6:   Set var_98 = Nothing
  loc_197D7EE:   Set var_94 = Nothing
  loc_197D7F1:   Exit Sub
  loc_197D7F2:   ' Referenced from:   197D4DA
  loc_197D7F2: End If
  loc_197D7F2: ' Referenced from: 197ACC0
  loc_197D7F8: If (var_9C = 1) Then
  loc_197D801:   Me.RollbackTrans
  loc_197D806: End If
  loc_197D80C: If (var_9C = 2) Then
  loc_197D812:   Me.Connection15.RollbackTrans
  loc_197D817: End If
  loc_197D81F: Set var_F0 = Err()
  loc_197D825: Call 0.Method_arg_2C (var_138)
  loc_197D830: Call 0.Method_arg_50 (var_13C)
  loc_197D84C: MsgBox(CVar(var_138), &H40, CVar(var_13C), var_178, var_18C)
  loc_197D85F: Exit Sub
End Sub

Public Sub Proc_168_22_16936C8
  'Data Table: 4CFAEC
  Dim var_D0 As Fields15
  Dim var_E4 As Variant
  Dim var_88 As Recordset15
  Dim var_14C As Variant
  Dim var_128 As Variant
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_BC As Long
  Dim var_C0 As Long
  Dim var_C4 As Long
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_8C As Recordset15
  Dim var_174 As Variant
  Dim var_164 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_324 As Variant
  Dim var_224 As Variant
  Dim var_234 As String
  Dim var_35C As String
  loc_1691F10: Set var_88 = New 
  loc_1691F61: var_88.Open "Select * From " & o.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 3
  loc_1691FED: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK1")))) And (o.Recordset15.Fields.Item("PK1").Value <> vbNullString)) Then
  loc_169201B:   var_98 = CStr(o.Recordset15.Fields.Item("PK1").Value)
  loc_1692053:   var_B4 = var_88.Fields.Item(CVar(var_98)).Type
  loc_169205D: End If
  loc_16920D6: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK2")))) And (o.Recordset15.Fields.Item("PK2").Value <> vbNullString)) Then
  loc_1692104:   var_9C = CStr(o.Recordset15.Fields.Item("PK2").Value)
  loc_169213C:   var_B8 = var_88.Fields.Item(CVar(var_9C)).Type
  loc_1692146: End If
  loc_16921BF: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK3")))) And (o.Recordset15.Fields.Item("PK3").Value <> vbNullString)) Then
  loc_16921ED:   var_A0 = CStr(o.Recordset15.Fields.Item("PK3").Value)
  loc_1692225:   var_BC = var_88.Fields.Item(CVar(var_A0)).Type
  loc_169222F: End If
  loc_16922A8: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK4")))) And (o.Recordset15.Fields.Item("PK4").Value <> vbNullString)) Then
  loc_16922D6:   var_A4 = CStr(o.Recordset15.Fields.Item("PK4").Value)
  loc_169230E:   var_C0 = var_88.Fields.Item(CVar(var_A4)).Type
  loc_1692318: End If
  loc_1692391: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK5")))) And (o.Recordset15.Fields.Item("PK5").Value <> vbNullString)) Then
  loc_16923BF:   var_A8 = CStr(o.Recordset15.Fields.Item("PK5").Value)
  loc_16923F7:   var_C4 = var_88.Fields.Item(CVar(var_A8)).Type
  loc_1692401: End If
  loc_169247A: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK6")))) And (o.Recordset15.Fields.Item("PK6").Value <> vbNullString)) Then
  loc_16924A8:   var_AC = CStr(o.Recordset15.Fields.Item("PK6").Value)
  loc_16924E0:   var_C8 = var_88.Fields.Item(CVar(var_AC)).Type
  loc_16924EA: End If
  loc_1692563: If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK7")))) And (o.Recordset15.Fields.Item("PK7").Value <> vbNullString)) Then
  loc_1692591:   var_B0 = CStr(o.Recordset15.Fields.Item("PK7").Value)
  loc_16925C1:   var_160 = var_88.Fields.Item(CVar(var_B0)).Type
  loc_16925C9:   var_CC = var_160
  loc_16925D3: End If
  loc_1692613: If (Ucase(CVar(o.Recordset15.Fields.Item("TableName"))) = "TRANSDEL") Then
  loc_1692616:   GoTo loc_169310A
  loc_1692619: End If
  loc_169261D: Set var_8C = New 
  loc_169264D: If (Ucase(Trim(MemVar_1F92070)) = "HO") Then
  loc_169266A:   var_E4 = o.Recordset15.Fields.Item("TableName")
  loc_16926AA:   var_8C.Open "Select * From " & var_E4.Value & " ", CVar(global_56), 3
  loc_16926C2: Else
  loc_16926CE:   Set var_D0 = Me.Txt
  loc_16926D4:   Call 0.Method_Proc_168_22_16936C80 (2, var_E4, var_164, 1, -1, var_CC, var_C8)
  loc_16926DC:   var_C4 = var_E4.Tag
  loc_1692740:   If CBool((var_164 = "HO") And (Ucase(CVar(o.Recordset15.Fields.Item("TableName"))) = "SUBGROUP")) Then
  loc_169279D:     var_8C.Open "Select * From " & o.Recordset15.Fields.Item("TableName").Value & " Where Site_Code='HO'", CVar(global_56), 3
  loc_16927B5:   Else
  loc_169281E:     var_174 = "Select * From " & o.Recordset15.Fields.Item("TableName").Value & " Where LogSite_Code='" & Trim(MemVar_1F92070) 
  loc_169282F:     var_8C.Open var_174 & "'", CVar(global_56), 3
  loc_169284A:     ' Referenced from:     1693107
  loc_169284A:   End If
  loc_169284A: End If
  loc_1692859: If Not(var_8C.EOF) Then
  loc_1692892:   var_1AC = Proc_154_4_F329F4(var_B4, CVar(var_8C.Fields.Item(CVar(var_98))), var_98 & "=", 1, -1, 1, -1)
  loc_16928F7:   var_164 = Proc_6_38_E68A98(CVar(o.Recordset15.Fields.Item("PK2")), Not(IsNull(CVar(o.Recordset15.Fields.Item("PK2")))), var_BC, var_B8)
  loc_1692911:   If (var_B4 And (var_164 <> vbNullString)) Then
  loc_169295C:     var_94 = 3 & Proc_154_4_F329F4(var_B8, CVar(var_8C.Fields.Item(CVar(var_9C))), var_C0 & var_1AC & " And " & var_9C & "=")
  loc_1692970:   End If
  loc_16929DB:   If (-1 And (Proc_6_38_E68A98(CVar(o.Recordset15.Fields.Item("PK3")), Not(IsNull(CVar(o.Recordset15.Fields.Item("PK3"))))) <> vbNullString)) Then
  loc_1692A26:     var_94 = var_94 & " And " & var_A0 & "=" & Proc_154_4_F329F4(var_BC, CVar(var_8C.Fields.Item(CVar(var_A0))))
  loc_1692A3A:   End If
  loc_1692AA5:   If (Not(IsNull(CVar(o.Recordset15.Fields.Item("PK4")))) And (Proc_6_38_E68A98(CVar(o.Recordset15.Fields.Item("PK4"))) <> vbNullString)) Then
  loc_1692AF0:     var_94 = var_94 & " And " & var_A4 & "=" & Proc_154_4_F329F4(var_C0, CVar(var_8C.Fields.Item(CVar(var_A4))))
  loc_1692B04:   End If
  loc_1692B6F:   If (Not(IsNull(CVar(o.Recordset15.Fields.Item("PK5")))) And (Proc_6_38_E68A98(CVar(o.Recordset15.Fields.Item("PK5"))) <> vbNullString)) Then
  loc_1692BBA:     var_94 = var_94 & " And " & var_A8 & "=" & Proc_154_4_F329F4(var_C4, CVar(var_8C.Fields.Item(CVar(var_A8))))
  loc_1692BCE:   End If
  loc_1692C39:   If (Not(IsNull(CVar(o.Recordset15.Fields.Item("PK6")))) And (Proc_6_38_E68A98(CVar(o.Recordset15.Fields.Item("PK6"))) <> vbNullString)) Then
  loc_1692C84:     var_94 = var_94 & " And " & var_AC & "=" & Proc_154_4_F329F4(var_C8, CVar(var_8C.Fields.Item(CVar(var_AC))))
  loc_1692C98:   End If
  loc_1692D03:   If (Not(IsNull(CVar(o.Recordset15.Fields.Item("PK7")))) And (Proc_6_38_E68A98(CVar(o.Recordset15.Fields.Item("PK7"))) <> vbNullString)) Then
  loc_1692D4E:     var_94 = var_94 & " And " & var_B0 & "=" & Proc_154_4_F329F4(var_CC, CVar(var_8C.Fields.Item(CVar(var_B0))))
  loc_1692D62:   End If
  loc_1692DBF:   Me.Connection15.Execute CStr("Select * From " & o.Recordset15.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1
  loc_1692DC7:   var_128 = var_128.RecordCount
  loc_1692DEE:   If (var_160 > 0) Then
  loc_1692E36:     If (var_160 And (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE")), (global_72 = "Yes")) <> "A")) Then
  loc_1692F8D:       var_324 = Trim(Mid(CVar(var_8C.Fields.Item(CVar(var_98))), 4, 5)) & "/" & Trim(Right(CVar(var_8C.Fields.Item(CVar(var_98))), 8)) 
  loc_1692FD0:       var_1B0 = Proc_6_45_EAD428(arg_18) & " Table -> "
  loc_1692FE1:       var_174 = CVar(var_94 & " And " & var_B0 & "=" & Proc_6_45_EAD428(CStr(o.Recordset15.Fields.Item("TableName").Value), &HE) & " Unit-> ") 'String
  loc_1692FEB:       var_14C = " Year-> "
  loc_1692FF7:       var_224 = var_174 & Mid(CVar(var_8C.Fields.Item(CVar(var_98))), 2, 2) & CVar(var_94) & Trim(Mid(CVar(var_8C.Fields.Item(CVar(var_98))), 9, 5)) 
  loc_1692FFB:       var_234 = " Type-> "
  loc_169300E:       var_35C = "DocID-> "
  loc_1693020:       Print 1, var_224 & var_234 & CVar(Proc_6_45_EAD428(CStr(var_324), &HF)) & var_35C & var_8C.Fields.Item(CVar(var_98)).Value
  loc_16930E1:       Me.Connection15.Execute CStr("Delete " & o.Recordset15.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1
  loc_16930FF:     End If
  loc_16930FF:   End If
  loc_1693102:   var_8C.MoveNext
  loc_1693107:   GoTo loc_169284A
  loc_169310A:   ' Referenced from: 1692616
  loc_169310A: End If
  loc_169310E: Set var_8C = New 
  loc_169316B: var_8C.Open "Select * From TransDel Where TableName='" & o.Recordset15.Fields.Item("TableName").Value & "'", CVar(global_56), 3
  loc_1693180: ' Referenced from: 16936B3
  loc_169318F: If Not(var_8C.EOF) Then
  loc_16931CB:   var_94 = -1 & Proc_154_4_F329F4(var_B4, CVar(var_8C.Fields.Item("PK1_VALUE")), var_98 & "=", 1)
  loc_1693217:   If CBool(var_8C.Fields.Item("PK2_NAME").Value <> vbNullString) Then
  loc_1693259:     var_128 = o.Recordset15.Fields
  loc_1693293:     If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK2")))) And (var_128.Item("PK2").Value <> vbNullString)) Then
  loc_16932DD:       var_94 = var_128 & Proc_154_4_F329F4(var_B8, CVar(var_8C.Fields.Item("PK2_VALUE")), var_94 & " And " & var_9C & "=")
  loc_16932F1:     End If
  loc_16932F1:   End If
  loc_169332D:   If CBool(var_8C.Fields.Item("PK3_NAME").Value <> vbNullString) Then
  loc_16933A9:     If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK3")))) And (o.Recordset15.Fields.Item("PK3").Value <> vbNullString)) Then
  loc_16933F3:       var_94 = var_94 & " And " & var_A0 & "=" & Proc_154_4_F329F4(var_BC, CVar(var_8C.Fields.Item("PK3_VALUE")))
  loc_1693407:     End If
  loc_1693407:   End If
  loc_1693443:   If CBool(var_8C.Fields.Item("PK4_NAME").Value <> vbNullString) Then
  loc_16934BF:     If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK4")))) And (o.Recordset15.Fields.Item("PK4").Value <> vbNullString)) Then
  loc_1693509:       var_94 = var_94 & " And " & var_A4 & "=" & Proc_154_4_F329F4(var_C0, CVar(var_8C.Fields.Item("PK4_VALUE")))
  loc_169351D:     End If
  loc_169351D:   End If
  loc_1693559:   If CBool(var_8C.Fields.Item("PK5_NAME").Value <> vbNullString) Then
  loc_16935D5:     If CBool(Not(IsNull(CVar(o.Recordset15.Fields.Item("PK5")))) And (o.Recordset15.Fields.Item("PK5").Value <> vbNullString)) Then
  loc_169361F:       var_94 = var_94 & " And " & var_A8 & "=" & Proc_154_4_F329F4(var_C4, CVar(var_8C.Fields.Item("PK5_VALUE")))
  loc_1693633:     End If
  loc_1693633:   End If
  loc_169368D:   Me.Connection15.Execute CStr("Delete " & o.Recordset15.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1
  loc_16936AE:   var_8C.MoveNext
  loc_16936B3:   GoTo loc_1693180
  loc_16936B6: End If
  loc_16936BB: Set var_8C = Nothing
  loc_16936C3: Set var_88 = Nothing
  loc_16936C6: Exit Sub
End Sub

Public Sub Proc_168_23_F050C0
  'Data Table: 4CFAEC
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_E8 As String
  loc_F0500C: For var_A4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A4 'Byte
  loc_F05017:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_F0501C:   var_D4 = 0
  loc_F0503A:   var_E8 = CStr(Me.FGrid.TextMatrix))
  loc_F0504B:   If (var_E8 = "ü") Then
  loc_F05059:     var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_F0505D:   End If
  loc_F05060: Next var_A4 'Byte
  loc_F0506F: If (CInt(var_8A) = 0) Then
  loc_F05078:   Call 0.Method_arg_50 (var_E8)
  loc_F05099:   MsgBox("Please Select At Least One Company", &H40, CVar(var_E8), var_108, var_118)
  loc_F050AE:   Proc_168_23_F050C0 = 0
  loc_F050B4: End If
  loc_F050B9: Proc_168_23_F050C0 = &HFF
End Sub

Public Sub Proc_168_24_E552AC
  'Data Table: 4CFAEC
  loc_E55290: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_E552A2:   Me.DGUnit.Visible = False
  loc_E552AA: End If
  loc_E552AA: Exit Sub
End Sub

Public Sub Proc_168_25_1155934
  'Data Table: 4CFAEC
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_D4 As ListItems
  Dim var_E8 As Variant
  Dim var_C0 As ListView
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_170 As ListItem
  Dim var_88 As Integer
  loc_11555A8: If (MemVar_1F923AC = "S") Then
  loc_11555BE:   Call 0.Method_arg_9C (-1)
  loc_11555C6:   Set var_8C = New 
  loc_11555CF:   Call 0.Method_arg_BC (0)
  loc_11555D9:   Call 0.Method_arg_E8 (0)
  loc_11555E1:   var_BC = CVar(MemVar_1F920D4) 'String
  loc_11555E8:   var_AC = CVar(MemVar_1F920D8) 'String
  loc_11555F6:   Call 0.Method_arg_100 (CVar(MemVar_1F92098), var_AC)
  loc_11555FD:   Set var_8C = Nothing 
  loc_1155605:   Set var_C0 = Me.LVTables
  loc_1155616:   Set var_D4 = Me.LVTables.ListItems
  loc_115561C:   var_D4.Clear
  loc_115562B:   var_9C = True
  loc_1155633:   Set var_C0 = Me.LVTables
  loc_1155641:   var_9C = True
  loc_1155649:   Set var_C0 = Me.LVTables
  loc_1155661:   var_9C = CVar(MemVar_1F92108) 'String
  loc_115566E:   Call 0.Method_arg_34 (var_C0, var_9C, var_AC, var_D4, LVTables.DispID_18)
  loc_1155676:   Call 0.Method_arg_30 (var_9C, LVTables.DispID_1C)
  loc_115567E:   MemVar_1F92204 = var_D4
  loc_1155696:   Call 0.Method_arg_3C (var_C0, var_D8, var_86)
  loc_115569E:   Call 0.Method_arg_38 (1, var_9C)
  loc_11556AA:   For var_DC =  To CInt(var_D8): var_BC = var_DC 'Integer
  loc_11556CA:     Call 0.Method_arg_3C (var_C0, CVar(var_86), var_AC)
  loc_11556D2:     Call 0.Method_arg_30 (var_D4)
  loc_11556DA:     Call 0.Method_arg_74 (var_DE)
  loc_11556EC:     If (var_DE = 0) Then
  loc_1155709:       Call 0.Method_arg_3C (var_C0, CVar(var_86), var_AC)
  loc_1155711:       Call 0.Method_arg_30 (var_D4)
  loc_1155719:       Call 0.Method_arg_34 (var_E4)
  loc_1155737:       Set var_E8 = Me.LVTables
  loc_115574E:       var_E8.ListItems.Add var_F8, var_118, CVar(var_E4), var_148, var_168
  loc_1155789:       Call 0.Method_arg_3C (var_C0, CVar(var_86), var_AC)
  loc_1155791:       Call 0.Method_arg_30 (var_D4, var_E8)
  loc_1155799:       Call 0.Method_arg_60 (var_170)
  loc_11557AE:       If (var_E8 Is Nothing) Then
  loc_1155803:         Me.LVTables.ListItems.Item(CVar(Me.LVTables.ListItems.Count)).Bold = True
  loc_1155844:         var_D8 = Me.LVTables.ListItems.Count
  loc_1155854:         Set var_E8 = Me.LVTables
  loc_1155873:         var_E8.ListItems.Item(CVar(var_D8)).ForeColor = &HFF
  loc_115588E:       End If
  loc_1155892:       Set var_C0 = Me.LVTables
  loc_11558A6:     Else
  loc_11558AC:       var_88 = (var_88 + 1)
  loc_11558AF:     End If
  loc_11558B2:   Next var_DC 'Integer
  loc_11558C8:   Call 0.Method_arg_3C (var_C0, var_D8)
  loc_11558D0:   Call 0.Method_arg_38 (var_86)
  loc_11558E1:   For var_174 =  To CInt((var_D8 - CLng(var_88))): 1 = var_174 'Integer
  loc_11558EF:     var_9C = var_86
  loc_115590F:     var_9C = Me.LVTables.ListItems.ControlDefault
  loc_1155917:     var_E8.Checked = var_E8
  loc_115592B:   Next var_174 'Integer
  loc_1155930: End If
  loc_1155930: Exit Sub
End Sub
