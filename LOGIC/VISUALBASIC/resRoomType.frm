VERSION 5.00
Begin VB.Form resRoomType
  Caption = "Room Category Wise Reservation Look Up"
  BackColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "resRoomType.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7185
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
  Begin Frame FrCat
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 0
    Top = 570
    Width = 13620
    Height = 660
    TabIndex = 20
    BorderStyle = 0 'None
    Begin CheckBox ChkCategory
      Caption = "Room Category"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &H80000008&
      Left = 0
      Top = 0
      Width = 2715
      Height = 300
      TabIndex = 21
      Appearance = 0 'Flat
    End
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6735
    Width = 11820
    Height = 450
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Frame FrParameter
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 15
    Top = 1245
    Width = 13620
    Height = 735
    TabIndex = 10
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 1
      ForeColor = &HC00000&
      Left = 3765
      Top = 210
      Width = 1230
      Height = 285
      TabIndex = 1
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
      Index = 0
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1410
      Top = 210
      Width = 1350
      Height = 285
      TabIndex = 0
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
    Begin BtnEnh Cmd
      Index = 1
      Left = 6285
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 13
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 7365
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 14
    End
    Begin BtnEnh Cmd
      Index = 4
      Left = 8445
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 15
    End
    Begin BtnEnh CmdExit
      Left = 9510
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 16
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 5220
      Top = 60
      Width = 1080
      Height = 645
      TabIndex = 17
    End
    Begin Label Label1
      Caption = "Status"
      Index = 0
      ForeColor = &HC00000&
      Left = 3105
      Top = 210
      Width = 585
      Height = 285
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
      Caption = "Start Date"
      Index = 1
      ForeColor = &HC00000&
      Left = 390
      Top = 210
      Width = 945
      Height = 240
      TabIndex = 11
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
  Begin Frame FrmList
    Left = 4020
    Top = 1605
    Width = 1935
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 30
      Top = 45
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 0
    Top = 10380
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&DosPrint"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 2310
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 7
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "P&review"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 0
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      BackColor = &HC0C0C0&
      Left = 1155
      Top = 15
      Width = 1155
      Height = 330
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1125
    Top = 2205
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 3
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
    Left = 0
    Top = 1980
    Width = 11820
    Height = 6270
    TabIndex = 2
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
End

Attribute VB_Name = "resRoomType"

Private global_56 As Integer
Private global_58 As Integer
Private global_60 As Variant
Private global_84 As Integer
Private global_96 As Double
Private global_88 As Integer
Private global_108 As Long

Private Sub CmdExit_UnknownEvent_9 'E16F24
  'Data Table: 4AACF4
  loc_E16F19: Me.Global.Unload Me
  loc_E16F21: Exit Sub
  loc_E16F22: CExtInstUnk
End Sub

Private Sub ChkCategory_Click() 'DFF05C
  'Data Table: 4AACF4
  loc_DFF054: Call Proc_55_33_F9CE60()
  loc_DFF059: Exit Sub
  loc_DFF05A: CExtInstUnk
End Sub

Private Sub Form_Load() 'F06F98
  'Data Table: 4AACF4
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  loc_F06EB0: On Error Goto loc_F06F91
  loc_F06EBA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F06ED2: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F06EE8: Me.FrCat.BackColor = CLng(MemVar_1F921B4)
  loc_F06EFE: Me.FrParameter.BackColor = CLng(MemVar_1F921B4)
  loc_F06F19: Set var_A8 = Me.Txt
  loc_F06F1F: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_F06F27: var_AC.Text = CStr(MemVar_1F920EC)
  loc_F06F4C: Proc_6_23_DFBA28(Me, 0)
  loc_F06F54: Call Proc_55_32_109D5F8(0)
  loc_F06F67: Set var_A8 = Me.Txt
  loc_F06F6D: Call 0.Method_Form_Load0 (CInt(1), var_AC)
  loc_F06F75: var_AC.Text = "All"
  loc_F06F81: Call Proc_55_34_11FBC7C()
  loc_F06F8B: Call Cmd_UnknownEvent_9()
  loc_F06F90: Exit Sub
  loc_F06F91: ' Referenced from: F06EB0
  loc_F06F91: Proc_6_60_E62BC4(0)
  loc_F06F96: Exit Sub
End Sub

Private Sub Form_Resize() 'F81044
  'Data Table: 4AACF4
  Dim var_9C As Variant
  loc_F80EF2: Call 0.Method_arg_100 (var_88)
  loc_F80F04: Me.FrCat.Width = var_88
  loc_F80F12: Call 0.Method_arg_100 (var_88)
  loc_F80F29: Me.FGrid.Width = CVar(var_88)
  loc_F80F49: Call 0.Method_arg_108 (var_88)
  loc_F80F55: var_9C = CVar((var_88 - Me.FrParameter.Height)) 'Single
  loc_F80F64: Me.FGrid.Height = CVar(var_88)
  loc_F80F94: Me.FGrid.Left = CVar(Me.FrParameter.Left)
  loc_F80FBF: var_88 = Me.FrParameter.Top
  loc_F80FCB: var_9C = CVar((var_88 + Me.FrParameter.Height)) 'Single
  loc_F80FDA: Me.FGrid.Top = CVar(Me.FrParameter.Left)
  loc_F80FEE: Call 0.Method_arg_50 (var_BC)
  loc_F81000: Me.LblFormCaption.Caption = var_BC
  loc_F81019: Me.LblFormCaption.Left = CDbl(0)
  loc_F81027: Call 0.Method_arg_100 (var_88)
  loc_F81039: Me.LblFormCaption.Width = var_88
  loc_F81041: Exit Sub
  loc_F81042: If  Then Exit Sub
  loc_F81042: End If
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1117C
  'Data Table: 4AACF4
  loc_E11173: Set global_92 = Nothing
  loc_E1117A: Exit Sub
End Sub

Private Sub Form_Activate() 'E16F70
  'Data Table: 4AACF4
  loc_E16F5C: Set var_88 = Me.FGrid
  loc_E16F6D: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFC00C
  'Data Table: 4AACF4
  loc_DFC008: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29554
  'Data Table: 4AACF4
  loc_E2952C: On Error Goto loc_E2954C
  loc_E29543: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2954B: Exit Sub
  loc_E2954C: ' Referenced from: E2952C
  loc_E2954C: Proc_6_60_E62BC4(Shift)
  loc_E29551: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5CE24
  'Data Table: 4AACF4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim MeFF As Double
  loc_E5CDF3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5CE06: Set var_A8 = Me.TxtGrid
  loc_E5CE0C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5CE14: var_AC.Visible = False
  loc_E5CE20: Exit Sub
  loc_E5CE21: MeFF = 
End Sub

Private Sub FGrid_UnknownEvent_1 'E68440
  'Data Table: 4AACF4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E683FC: Set var_88 = Me.TxtGrid
  loc_E68402: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6841C: If (var_8C.Visible = 0) Then
  loc_E68435:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E6843D: End If
  loc_E6843D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '13D57D0
  'Data Table: 4AACF4
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_90 As Variant
  Dim var_140 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D8 As Variant
  Dim var_D4 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_1E0 As Variant
  Dim var_244 As Variant
  Dim var_130 As String
  Dim var_15C As String
  Dim var_1CC As Variant
  Dim var_284 As Variant
  Dim unk_4AAD09 As Connection15
  Dim var_88 As Recordset15
  Dim var_150 As Variant
  Dim var_11C As Variant
  Dim var_254 As Variant
  Dim var_2AC As Fields15
  Dim var_2A8 As Variant
  loc_13D4E67: Set var_90 = Me.Txt
  loc_13D4E6D: Call 0.Method_FGrid_UnknownEvent_90 (CInt(1))
  loc_13D4E99: Set var_D8 = Me.Txt
  loc_13D4E9F: Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_DC)
  loc_13D4ED8: If CBool((Trim(CVar(var_94)) = "All") Or (Trim(CVar(var_DC)) = vbNullString)) Then
  loc_13D4EEE:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D4EF6:   var_140 = CVar(CLng(2)) 'Long
  loc_13D4EFF:   Set var_94 = Me.FGrid
  loc_13D4F05:   var_B4 = var_94.TextMatrix)
  loc_13D4F4D:   Proc_6_7_F25D88(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2)
  loc_13D4F8E:   Proc_6_7_F25D88(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2)
  loc_13D4FA7:   var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_13D4FCF:   var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D4FED:   unk_4AAD09.Execute CStr(var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' And RO.ChkInDate Is Null"), var_2A8, -1
  loc_13D4FF8:   Set var_88 = var_2AC
  loc_13D503F: Else
  loc_13D504A:   Set var_90 = Me.Txt
  loc_13D5050:   Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_94, var_2AC, var_B4)
  loc_13D5079:   If (Trim(CVar(var_94)) = "Confirm") Then
  loc_13D508F:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D50A0:     Set var_94 = Me.FGrid
  loc_13D50A6:     var_B4 = var_94.TextMatrix)
  loc_13D50EE:     Proc_6_7_F25D88(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, var_B4)
  loc_13D512F:     Proc_6_7_F25D88(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, CVar(CLng(2)))
  loc_13D5148:     var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_13D5170:     var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D5180:     var_284 = var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND (B.ResStatus='Confirm' Or B.ResStatus='') And RO.ChkInDate Is Null" 
  loc_13D518E:     unk_4AAD09.Execute CStr(var_284), var_2A8, -1
  loc_13D5199:     Set var_88 = var_2AC
  loc_13D51E0:   Else
  loc_13D51EB:     Set var_90 = Me.Txt
  loc_13D51F1:     Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_94, var_2AC, var_C4)
  loc_13D521A:     If (Trim(CVar(var_94)) = "Tentative") Then
  loc_13D5230:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D5241:       Set var_94 = Me.FGrid
  loc_13D5247:       var_B4 = var_94.TextMatrix)
  loc_13D528F:       Proc_6_7_F25D88(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, var_B4)
  loc_13D52D0:       Proc_6_7_F25D88(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, CVar(CLng(2)))
  loc_13D52E9:       var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_13D5311:       var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D532F:       unk_4AAD09.Execute CStr(var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Tentative' And RO.ChkInDate Is Null"), var_2A8, -1
  loc_13D533A:       Set var_88 = var_2AC
  loc_13D5381:     Else
  loc_13D538C:       Set var_90 = Me.Txt
  loc_13D5392:       Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_94, var_2AC, var_C4)
  loc_13D53BB:       If (Trim(CVar(var_94)) = "Waiting") Then
  loc_13D53D1:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D53E8:         var_B4 = Me.FGrid.TextMatrix)
  loc_13D5430:         Proc_6_7_F25D88(var_11C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, var_B4)
  loc_13D5471:         Proc_6_7_F25D88(var_254, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(Me.FGrid.Col)), 2, CVar(CLng(2)))
  loc_13D548A:         var_130 = "Select B.ArrDate,B.DepDate,B.GuestName,B.ResStatus From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_13D54B2:         var_1CC = CVar(var_130 & "' AND B.RoomCat='" & CStr(var_B4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_11C & " >= B.ArrDate And " 
  loc_13D54D0:         unk_4AAD09.Execute CStr(var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null"), var_2A8, -1
  loc_13D54DB:         Set var_88 = var_2AC
  loc_13D551F:         ' Referenced from:       13D5683
  loc_13D551F:       End If
  loc_13D551F:     End If
  loc_13D551F:   End If
  loc_13D551F: End If
  loc_13D552E: If Not(var_88.EOF) Then
  loc_13D555C:   var_D8 = var_88.Fields
  loc_13D556C:   var_140 = CVar(var_8C) 'String
  loc_13D558E:   var_D4 = Format(CVar(var_88.Fields.Item("ArrDate")), "dd/MMM/yyyy")
  loc_13D5596:   var_EC = (1 + var_D4)
  loc_13D559F:   var_FC = (Me.FGrid.TextMatrix) + " ")
  loc_13D55BB:   var_11C = CVar(var_D8.Item("DepDate")) 'Address
  loc_13D55CA:   var_1CC = (1 + Format(var_11C, "dd/MMM/yyyy"))
  loc_13D55D3:   var_1E0 = (var_1CC + " ")
  loc_13D5601:   var_244 = (Me.FGrid.Col + var_88.Fields.Item("GuestName").Value)
  loc_13D560A:   var_254 = (CVar(CStr(Me.FGrid.TextMatrix))) + " ")
  loc_13D5638:   var_284 = (var_254 + var_88.Fields.Item("ResStatus").Value)
  loc_13D5641:   var_2A8 = (var_1CC & var_254 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null" + vbCrLf)
  loc_13D5646:   var_8C = CStr(var_2A8)
  loc_13D567E:   var_88.MoveNext
  loc_13D5683:   GoTo loc_13D551F
  loc_13D5686: End If
  loc_13D568E: If (var_8C <> vbNullString) Then
  loc_13D56A4:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13D56BB:   var_B4 = Me.FGrid.TextMatrix)
  loc_13D56EF:   unk_4AAD09.Execute "Select Name From RoomCat Where Code='" & CStr(var_B4) & "'", var_D4, -1
  loc_13D571B:   var_C4 = "Name"
  loc_13D5740:   var_15C = Proc_6_38_E68A98(CVar(var_D8.Fields.Item(var_C4)), var_D8, var_B4, CVar(CLng(2)), var_C4, 1, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13D5743:   var_10C = 2
  loc_13D575F:   var_150 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13D57A5:   MsgBox(var_8C, 0, CVar(var_15C & " on Date: " & CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))), var_11C)
  loc_13D57CD: End If
  loc_13D57CD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103E734
  'Data Table: 4AACF4
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_EC As Long
  loc_103E4E8: Set var_88 = Me.TopCtrl1
  loc_103E4EE: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103E533: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_103E53C:   Call Form_KeyDown(KeyCode, Shift)
  loc_103E541: End If
  loc_103E545: Set var_88 = Me.TopCtrl1
  loc_103E54B: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103E564: If (CStr() = "Browse") Then
  loc_103E567:   Exit Sub
  loc_103E568: End If
  loc_103E5DC: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103E5F5:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103E605:   var_9C = "+{Tab}"
  loc_103E60B:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_103E615:   KeyCode = 0
  loc_103E61B: Else
  loc_103E625:   var_B0 = Me.FGrid.Rows
  loc_103E672:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103E68B:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103E6A1:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_103E6AB:     KeyCode = 0
  loc_103E6AE:   End If
  loc_103E6AE: End If
  loc_103E6B4: global_56 = KeyCode
  loc_103E6DA: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103E6FE: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_103E714:   var_EC = CLng(Me.FGrid.Col)
  loc_103E71D: End If
  loc_103E723: If (KeyCode = &HD) Then
  loc_103E72B:   global_58 = 0
  loc_103E72E: End If
  loc_103E730: KeyCode = 0
  loc_103E733: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10B50
  'Data Table: 4AACF4
  loc_E10B41: Call FGrid_UnknownEvent_C()
  loc_E10B4B: global_58 = 0
  loc_E10B4E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4B148
  'Data Table: 4AACF4
  loc_E4B13E: If (CLng(KeyCode) = &HD) Then
  loc_E4B141:   Call Proc_55_38_118E874(CLng(Me.FGrid.Col))
  loc_E4B146: End If
  loc_E4B146: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E324D4
  'Data Table: 4AACF4
  Dim var_8C As TextBox
  loc_E324B7: Set var_88 = Me.TxtGrid
  loc_E324BD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E324C5: var_8C.Visible = False
  loc_E324D1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1383A20
  'Data Table: 4AACF4
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_E4 As Variant
  Dim var_1A8 As String
  Dim var_200 As String
  Dim var_210 As Variant
  Dim var_214 As String
  Dim unk_4AAD09 As Connection15
  Dim var_88 As Recordset15
  Dim var_23E As Integer
  loc_13831C0: On Error Goto loc_13839F8
  loc_13831CE: Set var_A0 = Me.Txt
  loc_13831D4: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_13831E3: var_C4 = Trim(CVar(var_A4))
  loc_1383200: Set var_E8 = Me.Txt
  loc_1383206: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_EC)
  loc_1383227: var_13C = (var_C4 = "All") Or (Trim(CVar(var_EC)) = vbNullString)
  loc_138323F: If CBool(var_13C) Then
  loc_1383256:   var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_138326B:   Set var_A0 = Me.Txt
  loc_1383271:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between "), var_234)
  loc_1383280:   Proc_6_7_F25D88(var_C4, CVar(var_A4), -1)
  loc_13832A0:   Set var_E8 = Me.Txt
  loc_13832A6:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_13832B5:   Proc_6_7_F25D88(var_13C, CVar(var_EC))
  loc_13832C1:   var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_13832D5:   Set var_164 = Me.Txt
  loc_13832DB:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_13832EA:   Proc_6_7_F25D88(var_188, CVar(var_168))
  loc_138330A:   Set var_1BC = Me.Txt
  loc_1383310:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_138331F:   Proc_6_7_F25D88(var_1E0, CVar(var_1C0))
  loc_1383330:   var_210 = var_238 & var_C4 & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & " And DateAdd(d,29," & var_1E0 & ")) AND B.Cancel='N' And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate" 
  loc_138333E:   unk_4AAD09.Execute CStr(var_210), var_A4, 
  loc_1383349:   Set var_88 = var_238
  loc_138338A: Else
  loc_1383395:   Set var_A0 = Me.Txt
  loc_138339B:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_13833AA:   var_C4 = Trim(CVar(var_A4))
  loc_13833C4:   If (var_C4 = "Confirm") Then
  loc_13833DB:     var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_13833F0:     Set var_A0 = Me.Txt
  loc_13833F6:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between "), var_234)
  loc_1383405:     Proc_6_7_F25D88(var_C4, CVar(var_A4), -1)
  loc_1383425:     Set var_E8 = Me.Txt
  loc_138342B:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_138343A:     Proc_6_7_F25D88(var_13C, CVar(var_EC))
  loc_1383446:     var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_138345A:     Set var_164 = Me.Txt
  loc_1383460:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_138346F:     Proc_6_7_F25D88(var_188, CVar(var_168))
  loc_138348F:     Set var_1BC = Me.Txt
  loc_1383495:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_13834A4:     Proc_6_7_F25D88(var_1E0, CVar(var_1C0))
  loc_13834B0:     var_200 = ")) AND B.Cancel='N' AND (B.ResStatus='Confirm' Or B.ResStatus='') And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate"
  loc_13834B9:     var_214 = CStr(var_238 & var_C4 & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & " And DateAdd(d,29," & var_1E0 & var_200)
  loc_13834C3:     unk_4AAD09.Execute var_214, var_A4, 
  loc_13834CE:     Set var_88 = var_238
  loc_138350F:   Else
  loc_138351A:     Set var_A0 = Me.Txt
  loc_1383520:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_138352F:     var_C4 = Trim(CVar(var_A4))
  loc_1383549:     If (var_C4 = "Tentative") Then
  loc_1383560:       var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_1383575:       Set var_A0 = Me.Txt
  loc_138357B:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between "), var_234)
  loc_138358A:       Proc_6_7_F25D88(var_C4, CVar(var_A4), -1)
  loc_13835AA:       Set var_E8 = Me.Txt
  loc_13835B0:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_13835BF:       Proc_6_7_F25D88(var_13C, CVar(var_EC))
  loc_13835CB:       var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_13835DF:       Set var_164 = Me.Txt
  loc_13835E5:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_13835F4:       Proc_6_7_F25D88(var_188, CVar(var_168))
  loc_1383614:       Set var_1BC = Me.Txt
  loc_138361A:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_1383629:       Proc_6_7_F25D88(var_1E0, CVar(var_1C0))
  loc_138363A:       var_210 = var_238 & var_C4 & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & " And DateAdd(d,29," & var_1E0 & ")) AND B.Cancel='N' AND B.ResStatus='Tentative' And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate" 
  loc_1383648:       unk_4AAD09.Execute CStr(var_210), var_A4, 
  loc_1383653:       Set var_88 = var_238
  loc_1383694:     Else
  loc_138369F:       Set var_A0 = Me.Txt
  loc_13836A5:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_13836B4:       var_C4 = Trim(CVar(var_A4))
  loc_13836CE:       If (var_C4 = "Waiting") Then
  loc_13836E5:         var_140 = "Select B.ArrDate,B.DepDate,RC.Name RoomCategory,B.ResStatus,B.Adult,B.GuestName,B.RoomNo From (((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId) Left Join RoomCat RC on RC.Code=B.RoomCat And RC.Type='RO') Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_13836EC:         var_E4 = CVar(var_140 & "' And (B.RoomType='RO' or B.RoomType is Null) And (B.ArrDate Between ") 'String
  loc_13836FA:         Set var_A0 = Me.Txt
  loc_1383700:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, var_E4, var_234)
  loc_138370F:         Proc_6_7_F25D88(var_C4, CVar(var_A4), -1)
  loc_1383717:         var_FC = var_238 & var_C4 
  loc_138372F:         Set var_E8 = Me.Txt
  loc_1383735:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_EC)
  loc_1383744:         Proc_6_7_F25D88(var_13C, CVar(var_EC))
  loc_1383750:         var_11C = ") Or DateAdd(d,-1,B.DepDate) Between "
  loc_1383764:         Set var_164 = Me.Txt
  loc_138376A:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_168)
  loc_1383779:         Proc_6_7_F25D88(var_188, CVar(var_168))
  loc_1383785:         var_1A8 = " And DateAdd(d,29,"
  loc_1383799:         Set var_1BC = Me.Txt
  loc_138379F:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C0)
  loc_13837AE:         Proc_6_7_F25D88(var_1E0, CVar(var_1C0))
  loc_13837BF:         var_210 = var_FC & " And DateAdd(d,29," & var_13C & vbNullString & var_188 & var_1A8 & var_1E0 & ")) AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null Order By B.ArrDate,B.DepDate" 
  loc_13837CD:         unk_4AAD09.Execute CStr(var_210), var_A4, 
  loc_13837D8:         Set var_88 = var_238
  loc_1383816:       End If
  loc_1383816:     End If
  loc_1383816:   End If
  loc_1383816: End If
  loc_138381C: var_23C = var_88.RecordCount
  loc_138382A: If (var_23C = 0) Then
  loc_1383846:   MsgBox("No Record Present For Printing", 0, var_C4, var_E4, var_FC)
  loc_1383856:   Exit Sub
  loc_1383857: End If
  loc_138386D: Set var_A0 = var_88 
  loc_1383879: var_23E = CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\RoomReservationDetail.ttx")
  loc_1383883: Set var_88 = var_A0
  loc_1383889: var_D4 = CVar(var_23E) 'Integer
  loc_138388C: var_98 = var_D4 'Variant
  loc_13838A8: var_140 = MemVar_1F920B4 & "\RoomReservationDetail.RPT"
  loc_13838B1: Call 0.Method_arg_1C (var_140, var_D4, var_A0)
  loc_13838BC: MemVar_1F921E4 = var_A0
  loc_13838D7: Call 0.Method_arg_90 (var_A0, var_23C, var_9A)
  loc_13838DF: Call 0.Method_arg_24 (1, var_23E)
  loc_13838EB: For var_242 =  To CInt(var_23C): &HFF = var_242 'Integer
  loc_1383904:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_138390C:   Call 0.Method_arg_20 (var_A4)
  loc_1383914:   Call 0.Method_arg_30 (var_140)
  loc_138395A:   If (Ucase(CVar(var_140)) = Ucase("Title")) Then
  loc_1383970:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1383978:     Call 0.Method_arg_20 (var_A4)
  loc_1383980:     Call 0.Method_arg_38 ("'Room Reservation Detail'")
  loc_138398C:   End If
  loc_138398F: Next var_242 'Integer
  loc_13839AD: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_13839B5: Call 0.Method_arg_2C (vbNullString)
  loc_13839C3: Call 0.Method_arg_150 (var_1A8)
  loc_13839CE: Call 0.Method_arg_50 (var_140)
  loc_13839E7: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_13839F4: Set var_88 = Nothing
  loc_13839F7: Exit Sub
  loc_13839F8: ' Referenced from: 13831C0
  loc_13839FE: Call 0.Method_arg_50 (var_140, var_140)
  loc_1383A13: Proc_183_57_104AA84(var_140, "TopCtrl1_ePrn")
  loc_1383A1F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F86848
  'Data Table: 4AACF4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_F0 As TextBox
  loc_F8670E: Set var_88 = Me.Txt
  loc_F86714: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F86722: Proc_6_74_E226B0(var_8C)
  loc_F86731: var_92 = Index
  loc_F8673C: If (var_92 = CInt(1)) Then
  loc_F8674C:   ReDim var_98(0 To 3)
  loc_F86763:   var_98(0) = "All"
  loc_F86772:   var_98(1) = "Confirm"
  loc_F86781:   var_98(2) = "Tentative"
  loc_F86790:   var_98(3) = "Waiting"
  loc_F867B2:   Set var_F0 = Me.ListView
  loc_F867CD:   Set var_8C = Me.Txt
  loc_F867E7:   Set global_76 = Proc_6_66_EFF8FC(var_F0, var_8C, Index, Array(var_98))
  loc_F86805:   Set var_88 = Me.Txt
  loc_F8680B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_F8, 4)
  loc_F86813:   global_60 = var_8C.Text
  loc_F86825:   Set var_90 = Me.Txt
  loc_F8682B:   Call 0.Method_Txt_GotFocus0 (Index, var_F0, var_F8)
  loc_F86833:   var_F0.Tag = var_92
  loc_F86846: End If
  loc_F86846: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC8E14
  'Data Table: 4AACF4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  loc_FC8C8A: If (CLng(Shift) = &H1B) Then
  loc_FC8C8D:   Exit Sub
  loc_FC8C8E: End If
  loc_FC8C91: var_86 = KeyCode
  loc_FC8C9C: If (var_86 = CInt(0)) Then
  loc_FC8CA5:   If (Shift = &HD) Then
  loc_FC8CB0:     Call Txt_Validate(KeyCode)
  loc_FC8CC0:     Set var_8C = Me.Txt
  loc_FC8CC6:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_FC8CCE:     var_90.SetFocus
  loc_FC8CDA:   End If
  loc_FC8CDD: Else
  loc_FC8CE5:   If (var_86 = CInt(1)) Then
  loc_FC8D0A:     Set var_8C = Me.Txt
  loc_FC8D10:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_FC8D18:     0 = var_90.Left
  loc_FC8D2A:     Set var_98 = Me.Txt
  loc_FC8D30:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_FC8D4A:     Set var_A4 = Me.Txt
  loc_FC8D50:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_FC8D6A:     Set var_B0 = Me.Txt
  loc_FC8D70:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_FC8DC0:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_FC8DEA:     If (Shift = &HD) Then
  loc_FC8DF6:       Set var_8C = Me.Cmd
  loc_FC8DFC:       Call 0.Method_Txt_KeyDown0 (0, var_90, CInt(var_94), CInt((var_9C.Top + var_A8.Height)))
  loc_FC8E04:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001(CInt(var_B4.Width))
  loc_FC8E13:     End If
  loc_FC8E13:   End If
  loc_FC8E13: End If
  loc_FC8E13: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E3EDEC
  'Data Table: 4AACF4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E3EDBC: On Error Goto loc_E3EDE3
  loc_E3EDC2: Proc_6_58_E054C0(arg_10)
  loc_E3EDCD: Proc_6_133_E7EF78(var_94)
  loc_E3EDD6: arg_10 = CInt(var_94)
  loc_E3EDDF: var_96 = KeyAscii
  loc_E3EDE2: Exit Sub
  loc_E3EDE3: ' Referenced from: E3EDBC
  loc_E3EDE3: Proc_6_60_E62BC4(var_96, arg_10)
  loc_E3EDE8: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E88C88
  'Data Table: 4AACF4
  loc_E88C2A: If (KeyCode = CInt(1)) Then
  loc_E88C48:   If (Me.FrmList.Visible = &HFF) Then
  loc_E88C77:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E88C87:   End If
  loc_E88C87: End If
  loc_E88C87: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B0DC
  'Data Table: 4AACF4
  loc_E4B0BA: Set var_88 = Me.Txt
  loc_E4B0C0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B0CE: Proc_6_73_E22704(var_8C)
  loc_E4B0DA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1029A94
  'Data Table: 4AACF4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As ListView
  Dim var_EC As TextBox
  loc_102986C: On Error Goto loc_1029A8B
  loc_1029872: var_86 = Cancel
  loc_102987D: If (var_86 = CInt(0)) Then
  loc_102988D:   Set var_8C = Me.Txt
  loc_1029893:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10298CB:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10298E0:     Set var_8C = Me.Txt
  loc_10298E6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10298EE:     var_90.Text = CStr(MemVar_1F920EC)
  loc_1029900:   Else
  loc_102990A:     Set var_8C = Me.Txt
  loc_1029910:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1029930:     Set var_EC = Me.Txt
  loc_1029936:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_102993E:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_1029951:   End If
  loc_102995E:   Set var_8C = Me.Txt
  loc_1029964:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102996C:   var_94 = var_90.Text
  loc_1029984:   If (CDate(var_94) < MemVar_1F920EC) Then
  loc_1029991:     Set var_8C = Me.Txt
  loc_1029997:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102999F:     var_90.SetFocus
  loc_10299AD:     arg_10 = &HFF
  loc_10299B0:     Exit Sub
  loc_10299B1:   End If
  loc_10299B4: Else
  loc_10299BC:   If (var_86 = CInt(1)) Then
  loc_10299CC:     Set var_8C = Me.Txt
  loc_10299D2:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_10299DA:     arg_10 = var_90.Text
  loc_10299F1:     If (var_94 <> vbNullString) Then
  loc_1029A0C:       Set var_90 = Me.ListView.SelectedItem
  loc_1029A24:       Set var_E8 = Me.Txt
  loc_1029A2A:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_1029A32:       var_EC.Text = var_90.Text
  loc_1029A48:     End If
  loc_1029A52:     Set var_8C = Me.Txt
  loc_1029A58:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1029A81:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1029A86:       arg_10 = &HFF
  loc_1029A89:       Exit Sub
  loc_1029A8A:     End If
  loc_1029A8A:   End If
  loc_1029A8A: End If
  loc_1029A8A: Exit Sub
  loc_1029A8B: ' Referenced from: 102986C
  loc_1029A8B: Proc_6_60_E62BC4(arg_10)
  loc_1029A90: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '13FA5A4
  'Data Table: 4AACF4
  Dim unk_4AAD09 As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Fields15
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Variant
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_C0 As TextBox
  Dim var_13C As Variant
  Dim var_20C As Variant
  loc_13F9BC0: On Error Goto loc_13FA59D
  loc_13F9BC8: global_84 = &HFF
  loc_13F9BE1: unk_4AAD09.Execute "Select * From FAEnviro", var_B8, -1
  loc_13F9BEC: Set var_94 = var_BC
  loc_13F9C04: var_BC = var_94.Fields
  loc_13F9C68: var_13C = IIf((Proc_6_38_E68A98(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_13F9C71: MemVar_1F923C0 = CStr(var_13C)
  loc_13F9D05: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13F9D0E: MemVar_1F923C4 = CStr(var_13C)
  loc_13F9DA2: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13F9DE3: var_C0 = var_94.Fields.Item("linefiller")
  loc_13F9DFA: var_D8 = "linefiller"
  loc_13F9E06: var_C8 = var_94.Fields
  loc_13F9E0E: var_DC = var_C8.Item(var_D8)
  loc_13F9E22: var_10C = "-"
  loc_13F9E38: var_FC = (Proc_6_38_E68A98(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13F9E48: MemVar_1F923CC = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E68A98(CVar(var_DC)))))
  loc_13F9E6F: global_104 = " 23 Day Room Type Availability Forecast (Report) "
  loc_13F9E76: var_88 = "Day23RoomType"
  loc_13F9E7F: var_A8 = global_104
  loc_13F9E96: global_80 = CStr(Ucase(var_A8))
  loc_13F9EB2: If ((global_84 = 0) Or (var_88 = vbNullString)) Then
  loc_13F9EB5:   Exit Sub
  loc_13F9EB6: End If
  loc_13F9EB6: Call Day23RoomType()
  loc_13F9EE2: Set var_BC = global_92 
  loc_13F9EE9: CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13F9F1B: var_C4 = "\" & var_88
  loc_13F9F2F: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13F9F3A: MemVar_1F921E4 = var_BC
  loc_13F9F66: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13F9F6E: Call 0.Method_arg_2C (var_FC, MemVar_1F923CC)
  loc_13F9F7C: Call 0.Method_arg_150 (global_84)
  loc_13F9F92: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F9F9A: Call 0.Method_arg_24 (var_8A)
  loc_13F9FA6: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13F9FBF:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F9FC7:   Call 0.Method_arg_20 (var_C0)
  loc_13F9FCF:   Call 0.Method_arg_30 (var_C4)
  loc_13F9FE5:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FA015:   If (var_160 = Ucase("Title")) Then
  loc_13FA03C:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA044:     Call 0.Method_arg_20 (var_C0)
  loc_13FA04C:     Call 0.Method_arg_38 ("'" & global_104 & "'")
  loc_13FA062:   Else
  loc_13FA084:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FA098:       Set var_BC = Me.Txt
  loc_13FA09E:       Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FA0C9:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FA0D1:       Call 0.Method_arg_20 (var_DC)
  loc_13FA0D9:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FA0F5:     Else
  loc_13FA117:       If (var_160 = Ucase("Dater")) Then
  loc_13FA13B:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA143:         Call 0.Method_arg_20 (var_C0)
  loc_13FA14B:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_13FA161:       Else
  loc_13FA183:         If (var_160 = Ucase("Pager")) Then
  loc_13FA18D:           var_C4 = "'" & MemVar_1F923C4
  loc_13FA1A7:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA1AF:           Call 0.Method_arg_20 (var_C0)
  loc_13FA1B7:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FA1CA:         End If
  loc_13FA1CA:       End If
  loc_13FA1CA:     End If
  loc_13FA1CA:   End If
  loc_13FA1CD: Next var_150 'Integer
  loc_13FA1E3: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FA1EB: Call 0.Method_arg_24 (var_8A)
  loc_13FA1F7: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FA204:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FA215:     Set var_BC = Me.Txt
  loc_13FA21B:     Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FA235:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FA242:     global_96 = CDate(Ucase("Pager"))
  loc_13FA262:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FA26A:     Call 0.Method_arg_20 (var_C4, global_96)
  loc_13FA272:     Call 0.Method_arg_30 (1)
  loc_13FA288:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FA2BF:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FA31E:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FA326:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_96, "DDD")) & "'"), 1)
  loc_13FA32E:       Call 0.Method_arg_38 ("'")
  loc_13FA34D:     Else
  loc_13FA376:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FA396:         var_12C = CVar(CStr(Day(global_96))) 'String
  loc_13FA3BE:         var_11C = Space((2 - Len(CStr(Day(global_96)))))
  loc_13FA3C6:         var_13C = (var_12C + Ucase(Format(global_96, "DDD")))
  loc_13FA3FC:         var_1CC = Space((2 - Len(CStr(Month(global_96)))))
  loc_13FA41F:         var_20C = (var_1CC + CVar(CStr(Month(global_96))))
  loc_13FA444:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FA44C:         Call 0.Method_arg_20 (var_C0)
  loc_13FA454:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_96, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FA490:       End If
  loc_13FA490:     End If
  loc_13FA493:   Next var_16A 'Integer
  loc_13FA49B: Next var_166 'Integer
  loc_13FA4A6: If (Index = 1) Then
  loc_13FA4B6:   ReDim Preserve var_90(0 To 1)
  loc_13FA4D1:   Set var_BC = Me.Txt
  loc_13FA4D7:   Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FA4FA:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FA50B: End If
  loc_13FA511: If (Index = 1) Then
  loc_13FA535:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_96, "DDD")), var_12C)
  loc_13FA545:   Call Proc_55_37_16A15BC()
  loc_13FA54D: Else
  loc_13FA552:   Set var_C0 = Nothing
  loc_13FA569:   Set var_BC = MemVar_1F921E4 
  loc_13FA575:   Proc_6_99_1483714(var_BC, Index, global_80)
  loc_13FA580:   MemVar_1F921E4 = var_BC
  loc_13FA58B: End If
  loc_13FA590: global_88 = 0
  loc_13FA598: MemVar_1F921E4 = Nothing
  loc_13FA59C: Exit Sub
  loc_13FA59D: ' Referenced from: 13F9BC0
  loc_13FA59D: Proc_6_60_E62BC4(global_88, &HFF)
  loc_13FA5A2: Exit Sub
End Sub

Public Sub Cmd_UnknownEvent_9(Index As Integer) '11178EC
  'Data Table: 4AACF4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_AC As Variant
  Dim var_E0 As Long
  Dim var_100 As Variant
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_94 As TextBox
  Dim var_BC As Variant
  loc_11175A3: var_86 = Index
  loc_11175AC: If (var_86 = 0) Then
  loc_11175BA:   Set var_8C = Me.Txt
  loc_11175C0:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_11175E9:   If (Proc_6_27_EA565C(var_90, "Start Date") = 0) Then
  loc_11175EC:     Exit Sub
  loc_11175ED:   End If
  loc_11175FB:   Set var_8C = Me.Txt
  loc_1117601:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1117619:   Set var_94 = Me.Txt
  loc_111761F:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_9C)
  loc_111762E:   var_BC = Trim(CVar(var_9C))
  loc_111763E:   var_CC = "RoomType"
  loc_1117652:   Call Proc_55_35_18D9940(CDate(var_90.Text), 1, var_CC)
  loc_1117673: Else
  loc_1117679:   If (var_86 = 1) Then
  loc_111767C:     var_E0 = 1
  loc_1117688:     var_100 = CVar(CLng(3)) 'Long
  loc_11176B3:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_11176B6:       Exit Sub
  loc_11176B7:     End If
  loc_11176C5:     Set var_90 = Me.Txt
  loc_11176CB:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_CC, var_100)
  loc_11176D3:     var_E0 = var_94.Text
  loc_11176D8:     var_E0 = 2
  loc_11176E4:     var_100 = CVar(CLng(3)) 'Long
  loc_111771C:     If (CDate(CStr(Me.FGrid.TextMatrix))) <> CDate(var_CC)) Then
  loc_111773A:       var_AC = Me.FGrid.TextMatrix)
  loc_1117751:       Set var_90 = Me.Txt
  loc_1117757:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94, var_AC, CVar(CLng(3)), 2)
  loc_111778E:       Call Proc_55_35_18D9940(CDate(CStr(var_AC)), &HFF, "RoomType", CStr(Trim(CVar(var_94))))
  loc_11177AC:     End If
  loc_11177AF:   Else
  loc_11177B5:     If (var_86 = 2) Then
  loc_11177B8:       var_E0 = 1
  loc_11177C4:       var_100 = CVar(CLng(&H20)) 'Long
  loc_11177EF:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_11177F2:         Exit Sub
  loc_11177F3:       End If
  loc_11177F3:       var_E0 = 2
  loc_11177FF:       var_100 = CVar(CLng(&H20)) 'Long
  loc_111780E:       var_AC = Me.FGrid.TextMatrix)
  loc_1117825:       Set var_90 = Me.Txt
  loc_111782B:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94, var_AC, var_100, var_E0, var_100)
  loc_1117859:       var_98 = CStr(var_AC)
  loc_1117862:       Call Proc_55_35_18D9940(CDate(var_98), 1, "RoomType", CStr(Trim(CVar(var_94))), var_E0)
  loc_1117883:     Else
  loc_1117889:       If (var_86 = 3) Then
  loc_1117899:         Me.Global.Unload Me
  loc_11178A4:       Else
  loc_11178AA:         If (var_86 = 4) Then
  loc_11178B8:           Call 0.Method_arg_50 (var_98, 1, var_100)
  loc_11178D3:           If (InStr(var_E0, var_98, "23 Day Room Type Availability Forecast", 0) <> 0) Then
  loc_11178DB:             Call BTNPRINT_Click(0)
  loc_11178E3:           Else
  loc_11178E3:             Call TopCtrl1_UnknownEvent_14()
  loc_11178E8:           End If
  loc_11178E8:         End If
  loc_11178E8:       End If
  loc_11178E8:     End If
  loc_11178E8:   End If
  loc_11178E8: End If
  loc_11178E8: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F08308
  'Data Table: 4AACF4
  Dim var_88 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0823E: Set var_88 = Me.TxtGrid
  loc_F08244: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F08252: Proc_6_74_E226B0(var_8C)
  loc_F0826A: If (Index = 0) Then
  loc_F082BF:   Set var_108 = Me.TxtGrid
  loc_F082C5:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)), CVar(CLng(Me.FGrid.Col)))
  loc_F082CD:   var_10C.Tag = CVar(CLng(Me.FGrid.Row))
  loc_F082FE:   var_114 = CLng(Me.FGrid.Col)
  loc_F08307: End If
  loc_F08307: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'EFEA8C
  'Data Table: 4AACF4
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_EFE9C4: If (KeyCode = 0) Then
  loc_EFE9D1:   If (CLng(Shift) = &H1B) Then
  loc_EFE9E1:     Set var_8C = Me.TxtGrid
  loc_EFE9E7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_EFEA01:     Set var_98 = Me.TxtGrid
  loc_EFEA07:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_EFEA0F:     var_9C.Text = var_90.Tag
  loc_EFEA2B:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_EFEA34:     Set var_8C = Me.FGrid
  loc_EFEA51:     Set var_8C = Me.TxtGrid
  loc_EFEA57:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_EFEA5F:     var_90.Visible = FGrid.DispID_8001
  loc_EFEA6B:     Exit Sub
  loc_EFEA6C:   End If
  loc_EFEA7F:   var_B0 = CLng(Me.FGrid.Col)
  loc_EFEA88: End If
  loc_EFEA88: Exit Sub
  loc_EFEA89: BranchFVar 5119
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E52C6C
  'Data Table: 4AACF4
  Dim var_A0 As Long
  loc_E52C3B: Proc_6_58_E054C0(arg_10)
  loc_E52C4C: If (KeyAscii = 0) Then
  loc_E52C62:   var_A0 = CLng(Me.FGrid.Col)
  loc_E52C6B: End If
  loc_E52C6B: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E545FC
  'Data Table: 4AACF4
  Dim var_A0 As Long
  loc_E545C4: On Error Goto loc_E545F3
  loc_E545D3: If (KeyCode = 0) Then
  loc_E545E9:   var_A0 = CLng(Me.FGrid.Col)
  loc_E545F2: End If
  loc_E545F2: Exit Sub
  loc_E545F3: ' Referenced from: E545C4
  loc_E545F3: Proc_6_60_E62BC4(var_A0)
  loc_E545F8: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22368
  'Data Table: 4AACF4
  Dim arg_10 As Integer
  loc_E22350: If (Cancel = 0) Then
  loc_E22359:   Call Proc_55_39_E547BC(Cancel, var_88)
  loc_E22362:   arg_10 = Not(var_88)
  loc_E22365: End If
  loc_E22365: Exit Sub
End Sub

Public Sub Day23RoomType() '12858C0
  'Data Table: 4AACF4
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_90 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_8A As Integer
  Dim var_BC As Variant
  Dim var_EC As Recordset15
  Dim var_AC As Variant
  Dim var_E4 As Variant
  Dim var_12C As Variant
  Dim var_144 As Recordset15
  Dim var_14C As Recordset15
  Dim var_16C As Double
  Dim Me As Variant
  loc_128530C: On Error Goto loc_12858B0
  loc_1285329: Call Proc_55_36_F64B9C(New)
  loc_1285334: Set global_92 = var_90
  loc_1285341: var_D0 = 0
  loc_1285365: var_98 = "Select Sum(NoRooms) As tNoRooms From RoomCat Where Type='RO' And LOGSITE_CODE='" & MemVar_1F92078 & "' AND InclCount='Y' And Code In "
  loc_1285378: Me.Connection15.Execute var_98 & global_112, var_BC, -1
  loc_1285380: var_90 = var_90.Fields
  loc_1285388: var_D0 = var_C0.Item(var_C0)
  loc_1285390: var_D4 = var_D4.Value
  loc_1285399: var_8A = CInt(var_E4)
  loc_12853DA: For var_E8 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E8 'Integer
  loc_12853E6:   If (var_86 = 3) Then
  loc_12853E9:     GoTo loc_1285573
  loc_12853EC:   End If
  loc_12853F2:   Set var_EC = global_92 
  loc_1285401:   var_EC.AddNew var_AC, var_D0
  loc_128542B:   var_EC.Fields.Item("mLine").Value = vbNullString
  loc_1285488:   var_EC.Fields.Item("RoomType").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(1)), CVar(CLng(var_86)), 3))
  loc_12854A6:   For var_130 = 3 To &H19: var_88 = var_130 'Integer
  loc_1285508:     var_EC.Fields.Item(CVar("Day" & CStr(var_88))).Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)), 3))
  loc_1285527:   Next var_130 'Integer
  loc_128552C:   var_D0 = "*"
  loc_1285535:   var_AC = "Mark"
  loc_1285551:   var_EC.Fields.Item(var_AC).Value = var_D0
  loc_1285568:   var_EC.Update var_AC, var_D0
  loc_128556F:   Set var_EC = Nothing 
  loc_1285573:   ' Referenced from: 12853E9
  loc_1285576: Next var_E8 'Integer
  loc_1285581: Set var_144 = global_92 
  loc_12855A0: var_144.Update var_AC, var_D0
  loc_12855B0: r_AC, var_D0 var_AC, var_D0
  loc_12855DA: var_144.Fields.Item("mLine").Value = "GF"
  loc_128560B: var_144.Fields.Item("RoomType").Value = "AVAILABLE"
  loc_128561E: For var_148 = 3 To &H19: var_88 = var_148 'Integer
  loc_1285624:   var_AC = 3
  loc_1285680:   var_144.Fields.Item(CVar("Day" & CStr(var_88))).Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88))))
  loc_128569F: Next var_148 'Integer
  loc_12856A4: var_D0 = vbNullString
  loc_12856AD: var_AC = "Mark"
  loc_12856C9: var_144.Fields.Item(var_AC).Value = var_D0
  loc_12856E0: var_144.Update var_AC, var_D0
  loc_12856E7: Set var_144 = Nothing 
  loc_12856F1: Set var_14C = global_92 
  loc_1285710: var_14C.Update var_AC, var_D0
  loc_1285720: r_AC, var_D0 var_AC, var_D0
  loc_128574A: var_14C.Fields.Item("mLine").Value = "GF"
  loc_128577B: var_14C.Fields.Item("RoomType").Value = "OCCUPIED"
  loc_128578E: For var_150 = 3 To &H19: var_88 = var_150 'Integer
  loc_12857AD:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12857D8:   var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12857E3:   var_12C = CVar((CDbl(var_8A) - var_16C)) 'Double
  loc_1285819:   var_14C.Fields.Item(CVar("Day" & CStr(var_88))).Value = CVar(Proc_6_38_E68A98(CVar("Day" & CStr(var_88)), var_16C, CVar(CLng(var_88))))
  loc_1285840: Next var_150 'Integer
  loc_1285845: var_D0 = vbNullString
  loc_128584E: var_AC = "Mark"
  loc_128586A: var_14C.Fields.Item(var_AC).Value = var_D0
  loc_1285881: var_14C.Update var_AC, var_D0
  loc_1285888: Set var_14C = Nothing 
  loc_12858A3: If (Me.RecordCount <= 0) Then
  loc_12858AB:   global_84 = 0
  loc_12858AE:   Exit Sub
  loc_12858AF: End If
  loc_12858AF: Exit Sub
  loc_12858B0: ' Referenced from: 128530C
  loc_12858B8: Proc_6_60_E62BC4(0)
  loc_12858BD: Exit Sub
End Sub

Public Property Get OpenMode() 'E02C00
  'Data Table: 4AACF4
  loc_E02BF9: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E024E0
  'Data Table: 4AACF4
  loc_E024DA: global_108 = vNewValue
  loc_E024DD: Exit Sub
End Sub

Public Sub Proc_55_32_109D5F8
  'Data Table: 4AACF4
  Dim var_9C As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_88 As Long
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_110 As String
  loc_109D34A: Me.FGrid.Left = CVar(CDbl(0))
  loc_109D365: Me.FGrid.Top = CVar(CDbl(495))
  loc_109D372: var_88 = &H20D
  loc_109D375: var_9C = 1
  loc_109D37E: var_C0 = &H1F4
  loc_109D38B: Set var_B0 = Me.FGrid
  loc_109D391: LateIdCallSt
  loc_109D3AF: var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109D3CD: var_C0 = CVar((CLng(Me.FGrid.CellHeight) + &H1F4)) 'Long
  loc_109D3D6: Set var_F8 = Me.FGrid
  loc_109D3DC: LateIdCallSt
  loc_109D3F8: Set var_FC = Me.FGrid
  loc_109D40F: global_52 = CStr(CLng(var_FC.BackColor))
  loc_109D425: var_FC.Cols = &H21
  loc_109D436: var_FC.FixedCols = 3
  loc_109D43E: var_9C = CVar(CLng(0)) 'Long
  loc_109D443: var_C0 = &HFA
  loc_109D44F: LateIdCallSt
  loc_109D457: var_9C = 0
  loc_109D463: var_C0 = CVar(CLng(0)) 'Long
  loc_109D468: var_110 = "SNo"
  loc_109D471: LateIdCallSt
  loc_109D47C: var_9C = CVar(CLng(0)) 'Long
  loc_109D481: var_C0 = 0
  loc_109D48D: LateIdCallSt
  loc_109D495: var_9C = 0
  loc_109D4A1: var_C0 = CVar(CLng(1)) 'Long
  loc_109D4A6: var_110 = "Room Type"
  loc_109D4AF: LateIdCallSt
  loc_109D4BA: var_9C = CVar(CLng(1)) 'Long
  loc_109D4C5: var_C0 = CVar(CInt(1)) 'Integer
  loc_109D4CC: LateIdCallSt
  loc_109D4D7: var_9C = CVar(CLng(1)) 'Long
  loc_109D4DC: var_C0 = &H76C
  loc_109D4E8: LateIdCallSt
  loc_109D4F0: var_9C = 0
  loc_109D4FC: var_C0 = CVar(CLng(2)) 'Long
  loc_109D501: var_110 = "Room Type Code"
  loc_109D50A: LateIdCallSt
  loc_109D515: var_9C = CVar(CLng(2)) 'Long
  loc_109D520: var_C0 = CVar(CInt(1)) 'Integer
  loc_109D527: LateIdCallSt
  loc_109D532: var_9C = CVar(CLng(2)) 'Long
  loc_109D537: var_C0 = 0
  loc_109D543: LateIdCallSt
  loc_109D552: For var_124 = 3 To &H20: var_8A = var_124 'Byte
  loc_109D558:   var_9C = 0
  loc_109D566:   var_C0 = CVar(CLng(var_8A)) 'Long
  loc_109D578:   var_E0 = CVar("Day" & CStr(var_8A)) 'String
  loc_109D57F:   LateIdCallSt
  loc_109D592:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_109D59D:   var_C0 = CVar(CInt(4)) 'Integer
  loc_109D5A4:   LateIdCallSt
  loc_109D5B1:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_109D5BC:   var_C0 = CVar(CInt(4)) 'Integer
  loc_109D5C3:   LateIdCallSt
  loc_109D5D0:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_109D5DF:   LateIdCallSt
  loc_109D5EA: Next var_124 'Byte
  loc_109D5F2: Set var_FC = Nothing 
  loc_109D5F6: Exit Sub
End Sub

Public Sub Proc_55_33_F9CE60
  'Data Table: 4AACF4
  Dim var_98 As CheckBox
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_F9CD06: Set var_8C = Me.ChkCategory
  loc_F9CD0C: Call 0.Method_Proc_55_33_F9CE60C (var_8E, var_86)
  loc_F9CD1A: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F9CD2D:   Set var_8C = Me.ChkCategory
  loc_F9CD33:   Call 0.Method_Proc_55_33_F9CE600 (var_86, var_98)
  loc_F9CD4D:   If (var_98.Value = 1) Then
  loc_F9CD66:     Set var_8C = Me.ChkCategory
  loc_F9CD6C:     Call 0.Method_Proc_55_33_F9CE600 (var_86, var_98)
  loc_F9CD82:     Proc_6_17_EAA2B0(var_BC, CVar(var_98.Tag))
  loc_F9CD8A:     var_DC = (CVar(vbNullString) + var_BC)
  loc_F9CD93:     var_FC = (var_DC + ",")
  loc_F9CD9E:     global_112 = CStr(var_FC)
  loc_F9CDB7:   End If
  loc_F9CDBA: Next var_92 'Integer
  loc_F9CDCA: If (global_112 <> vbNullString) Then
  loc_F9CDE8:   var_AC = Left(global_112, (Len(global_112) - 1))
  loc_F9CDF7:   global_112 = CStr(CVar(var_98.Tag))
  loc_F9CE01: End If
  loc_F9CE36: var_DC = ("(" + IIf((global_112 = vbNullString), "''", global_112))
  loc_F9CE3F: var_FC = (var_DC + ")")
  loc_F9CE4A: global_112 = CStr(var_FC)
  loc_F9CE5E: Exit Sub
End Sub

Public Sub Proc_55_34_11FBC7C
  'Data Table: 4AACF4
  Dim var_94 As Variant
  Dim unk_4AAD09 As Connection15
  Dim var_86 As Integer
  Dim var_8C As Recordset15
  Dim var_90 As Fields15
  Dim var_D0 As CheckBox
  Dim var_D8 As Frame
  Dim var_E0 As CheckBox
  loc_11FB7E3: Set var_90 = Me.ChkCategory
  loc_11FB7E9: Call 0.Method_Proc_55_34_11FBC7C0 (0, var_94)
  loc_11FB7F1: var_94.Visible = False
  loc_11FB809: Set var_90 = Me.ChkCategory
  loc_11FB80F: Call 0.Method_Proc_55_34_11FBC7CC (var_96, var_86)
  loc_11FB81D: For var_9A =  To (var_96 - 1): 1 = var_9A 'Integer
  loc_11FB82D:   Set var_90 = Me.ChkCategory
  loc_11FB833:   Call 0.Method_Proc_55_34_11FBC7C0 (var_86)
  loc_11FB844:   Me.ChkCategory.Unload var_94
  loc_11FB853: Next var_9A 'Integer
  loc_11FB87C: unk_4AAD09.Execute "Select Name,Code,1 Value from RoomCat Where InclCount='Y' And LogSite_Code='" & MemVar_1F92078 & "' order by Name", var_C8, -1
  loc_11FB887: Set var_8C = var_90
  loc_11FB899: var_86 = 0
  loc_11FB8B0: If (var_8C.RecordCount > 0) Then
  loc_11FB8BE:   Set var_90 = Me.ChkCategory
  loc_11FB8C4:   Call 0.Method_Proc_55_34_11FBC7C0 (0, var_94, &HFF)
  loc_11FB8CC:   var_94.Visible = var_86
  loc_11FB8D8:   ' Referenced from: 11FBC6B
  loc_11FB8D8: End If
  loc_11FB8E7: If Not(var_8C.EOF) Then
  loc_11FB922:   Set var_A0 = Me.ChkCategory
  loc_11FB928:   Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_D0)
  loc_11FB930:   var_D0.Caption = CStr(var_8C.Fields.Item("Name").Value)
  loc_11FB97E:   Set var_A0 = Me.ChkCategory
  loc_11FB984:   Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_D0)
  loc_11FB98C:   var_D0.Tag = CStr(var_8C.Fields.Item("Code").Value)
  loc_11FB9BC:   var_94 = var_8C.Fields.Item("Value")
  loc_11FB9D7:   Set var_A0 = Me.ChkCategory
  loc_11FB9DD:   Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_D0)
  loc_11FB9E5:   var_D0.Value = CInt(var_94.Value)
  loc_11FB9FB:   var_8C.MoveNext
  loc_11FBA06:   var_86 = (var_86 + 1)
  loc_11FBA1A:   If (var_8C.EOF = 0) Then
  loc_11FBA27:     Set var_90 = Me.ChkCategory
  loc_11FBA2D:     Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_94)
  loc_11FBA3E:     Me.ChkCategory.Load var_94
  loc_11FBA56:     Set var_90 = Me.ChkCategory
  loc_11FBA5C:     Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_94, &HFF)
  loc_11FBA64:     var_94.Visible = var_86
  loc_11FBA80:     Set var_A0 = Me.ChkCategory
  loc_11FBA86:     Call 0.Method_Proc_55_34_11FBC7C0 ((var_86 - 1), var_D0)
  loc_11FBAB5:     Set var_90 = Me.ChkCategory
  loc_11FBABB:     Call 0.Method_Proc_55_34_11FBC7C0 ((var_86 - 1), var_94)
  loc_11FBAE1:     If (CSng((var_94.Left + var_D0.Width)) > Me.FrCat.Width) Then
  loc_11FBAF0:       Set var_A0 = Me.ChkCategory
  loc_11FBAF6:       Call 0.Method_Proc_55_34_11FBC7C0 (0, var_D0)
  loc_11FBB0F:       Set var_90 = Me.ChkCategory
  loc_11FBB15:       Call 0.Method_Proc_55_34_11FBC7C0 (0, var_94)
  loc_11FBB34:       Set var_D8 = Me.ChkCategory
  loc_11FBB3A:       Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_E0)
  loc_11FBB42:       var_E0.Top = (var_94.Top + var_D0.Height)
  loc_11FBB62:       Set var_90 = Me.ChkCategory
  loc_11FBB68:       Call 0.Method_Proc_55_34_11FBC7C0 (0, var_94)
  loc_11FBB82:       Set var_A0 = Me.ChkCategory
  loc_11FBB88:       Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_D0)
  loc_11FBB90:       var_D0.Left = var_94.Left
  loc_11FBBA3:     Else
  loc_11FBBB3:       Set var_90 = Me.ChkCategory
  loc_11FBBB9:       Call 0.Method_Proc_55_34_11FBC7C0 ((var_86 - 1), var_94)
  loc_11FBBD3:       Set var_A0 = Me.ChkCategory
  loc_11FBBD9:       Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_D0)
  loc_11FBBE1:       var_D0.Top = var_94.Top
  loc_11FBC01:       Set var_A0 = Me.ChkCategory
  loc_11FBC07:       Call 0.Method_Proc_55_34_11FBC7C0 ((var_86 - 1), var_D0)
  loc_11FBC24:       Set var_90 = Me.ChkCategory
  loc_11FBC2A:       Call 0.Method_Proc_55_34_11FBC7C0 ((var_86 - 1), var_94)
  loc_11FBC49:       Set var_D8 = Me.ChkCategory
  loc_11FBC4F:       Call 0.Method_Proc_55_34_11FBC7C0 (var_86, var_E0)
  loc_11FBC57:       var_E0.Left = (var_94.Left + var_D0.Width)
  loc_11FBC6B:     End If
  loc_11FBC6B:   End If
  loc_11FBC6B:   GoTo loc_11FB8D8
  loc_11FBC6E: End If
  loc_11FBC6E: Call Proc_55_33_F9CE60(var_90)
  loc_11FBC78: Set var_8C = Nothing
  loc_11FBC7B: Exit Sub
End Sub

Public Sub Proc_55_35_18D9940(arg_C, arg_10, arg_14, arg_18) '18D9940
  'Data Table: 4AACF4
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_D0 As String
  Dim unk_4AAD09 As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_F4 As Variant
  Dim var_A8 As Double
  Dim var_B2 As Integer
  Dim var_B4 As Integer
  Dim var_B6 As Integer
  Dim var_B0 As Double
  Dim var_14C As Variant
  Dim var_120 As Variant
  Dim var_17C As Variant
  Dim var_13C As Variant
  Dim var_98 As Long
  Dim var_15C As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_16C As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_110 As Variant
  Dim var_208 As Variant
  Dim var_1B0 As Variant
  Dim var_278 As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_90 As Recordset15
  Dim var_18C As Long
  Dim var_228 As Long
  loc_18D6FE8: If (arg_14 = "RoomType") Then
  loc_18D6FF2:   var_C4 = "Select RC.Code,RC.Name,RC.NoRooms,RL.Rate2 From RoomCat RC Left Join RateList RL on RC.Code=RL.RoomCat Where RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_18D7007:   var_D0 = var_C4 & "' AND RL.LOGSITE_CODE='" & MemVar_1F92078 & "' AND RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' And RC.InclCount='Y'  And RC.Code In "
  loc_18D7018:   var_A0 = var_D0 & global_112 & " Order By RC.Name"
  loc_18D7043:   var_C8 = "Select Sum(NoRooms) As tNoRooms From RoomCat Where Type='RO' And LOGSITE_CODE='" & MemVar_1F92078 & "' AND InclCount='Y' And Code In "
  loc_18D7056:   unk_4AAD09.Execute var_C8 & global_112, var_F4, -1
  loc_18D7061:   Set var_88 = var_F8
  loc_18D7087:   If (var_88.RecordCount > 0) Then
  loc_18D70B0:     Proc_6_39_E7C810(var_110, CVar(var_88.Fields.Item("tNoRooms")))
  loc_18D70B9:     var_A8 = CSng(var_110)
  loc_18D70C6:   End If
  loc_18D70C6:   GoTo loc_18D70C9
  loc_18D70C9:   ' Referenced from: 18D70C6
  loc_18D70C9: End If
  loc_18D70D8: Me.FGrid.Redraw = False
  loc_18D70E4: Set var_124 = Me.FGrid
  loc_18D70ED: If (arg_10 = 1) Then
  loc_18D70F4:   var_B2 = CInt(3)
  loc_18D70FB:   var_B4 = CInt(&H20)
  loc_18D7100:   var_B6 = 1
  loc_18D7106: Else
  loc_18D710A:   var_B2 = CInt(&H20)
  loc_18D7111:   var_B4 = CInt(3)
  loc_18D7116:   var_B6 = &HFF
  loc_18D7119: End If
  loc_18D7128: For var_12C = CLng(var_B2) To CLng(var_B4) Step CLng(var_B6): var_98 = var_12C 'Long
  loc_18D7136:   If (var_98 = CLng(var_B2)) Then
  loc_18D713C:     var_B0 = arg_C
  loc_18D7142:   Else
  loc_18D715E:     var_B0 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B0)))
  loc_18D7168:   End If
  loc_18D7168:   var_14C = 0
  loc_18D71A0:   var_17C = CVar(CStr(Format(CDate(var_B0), "DDD"))) 'String
  loc_18D71A7:   LateIdCallSt
  loc_18D71BA:   var_14C = 1
  loc_18D71F3:   var_13C = CVar(CStr(Format(var_B0, "dd/MM"))) 'String
  loc_18D71FA:   LateIdCallSt
  loc_18D720B:   var_14C = 2
  loc_18D7244:   var_13C = CVar(CStr(Format(var_B0, "dd/MMM/yy"))) 'String
  loc_18D724B:   LateIdCallSt
  loc_18D725F: Next var_12C 'Long
  loc_18D7271: Set var_F8 = Me.FGrid
  loc_18D7277: var_F8.Rows = 4
  loc_18D7291: var_120 = CVar(CLng(0)) 'Long
  loc_18D72A1: var_F4 = CVar(CStr((3 - 1))) 'String
  loc_18D72A8: LateIdCallSt
  loc_18D72BD: var_120 = CVar(CLng(1)) 'Long
  loc_18D72C2: var_15C = "<<Total Rooms>>"
  loc_18D72CB: LateIdCallSt
  loc_18D72DD: var_120 = CVar(CLng(2)) 'Long
  loc_18D72E2: var_15C = vbNullString
  loc_18D72EB: LateIdCallSt
  loc_18D72FC: For var_194 = CLng(3) To CLng(&H20): var_9C = var_194 'Long
  loc_18D730C:   var_124.Col = var_9C
  loc_18D731D:   var_124.CellBackColor = &HE69839
  loc_18D732E:   var_124.CellForeColor = &HFFFF
  loc_18D733A:   var_124.CellFontBold = True
  loc_18D7352:   var_F4 = CVar(CStr(var_A8)) 'String
  loc_18D7359:   LateIdCallSt
  loc_18D7367: Next var_194 'Long
  loc_18D7375: var_98 = (var_98 + 1)
  loc_18D738E: unk_4AAD09.Execute var_A0, var_F4, -1
  loc_18D7399: Set var_88 = var_F8
  loc_18D73B6: If (var_88.RecordCount > 0) Then
  loc_18D73B9:   ' Referenced from: 18D7DE5
  loc_18D73C8:   If Not(var_88.EOF) Then
  loc_18D73CB:     var_E4 = vbNullString
  loc_18D73E6:     var_120 = CVar(CLng(0)) 'Long
  loc_18D73F6:     var_F4 = CVar(CStr((3 - 1))) 'String
  loc_18D73FD:     LateIdCallSt
  loc_18D7477:     var_1C0 = CVar(Proc_6_45_EAD428(CStr(var_88.Fields.Item("Name").Value), &HF, CVar(CLng(1)), 3, var_124, var_88.Fields.Item("Name").Value)) 'String
  loc_18D7489:     var_17C = "0.00"
  loc_18D74A7:     var_1E0 = CVar(CStr(1 & Format(CVar(CStr(var_88.Fields.Item("Rate2").Value)), var_17C))) 'String
  loc_18D74AE:     LateIdCallSt
  loc_18D74E1:     var_14C = CVar(CLng(2)) 'Long
  loc_18D74F8:     var_F8 = var_88.Fields
  loc_18D7511:     var_110 = CVar(CStr(var_F8.Item("Code").Value)) 'String
  loc_18D7518:     LateIdCallSt
  loc_18D7537:     For var_1F8 = CLng(3) To CLng(&H20): var_9C = var_1F8 'Long
  loc_18D754E:       If ((arg_18 = "All") Or (arg_18 = vbNullString)) Then
  loc_18D7563:         var_F4 = var_124.TextMatrix)
  loc_18D7582:         var_110 = var_124.TextMatrix)
  loc_18D7593:         Proc_6_7_F25D88(var_17C, CVar(CStr(var_110)), var_9C, 2, var_F4, CVar(CLng(2)), 3, CLng(3))
  loc_18D75BC:         Proc_6_7_F25D88(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_124, var_110)
  loc_18D75D5:         var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_18D75FD:         var_1D0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_17C & " >= B.ArrDate And " 
  loc_18D761B:         unk_4AAD09.Execute CStr(var_1D0 & var_248 & " < B.DepDate AND B.Cancel='N' And RO.ChkInDate Is Null"), var_298, -1
  loc_18D7626:         Set var_94 = var_F8
  loc_18D7659:       Else
  loc_18D7661:         If (arg_18 = "Confirm") Then
  loc_18D7676:           var_F4 = var_124.TextMatrix)
  loc_18D76A6:           Proc_6_7_F25D88(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D76CF:           Proc_6_7_F25D88(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F8, var_14C)
  loc_18D76E8:           var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_18D7707:           var_1C0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_17C 
  loc_18D7720:           var_278 = var_1C0 & " >= B.ArrDate And " & var_248 & " < B.DepDate AND B.Cancel='N' AND (B.ResStatus='Confirm' Or B.ResStatus='') And RO.ChkInDate Is Null" 
  loc_18D772E:           unk_4AAD09.Execute CStr(var_278), var_298, -1
  loc_18D7739:           Set var_94 = var_F8
  loc_18D776C:         Else
  loc_18D7774:           If (arg_18 = "Tentative") Then
  loc_18D7789:             var_F4 = var_124.TextMatrix)
  loc_18D77B9:             Proc_6_7_F25D88(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D77E2:             Proc_6_7_F25D88(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F8)
  loc_18D77FB:             var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_18D781A:             var_1C0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") & var_17C 
  loc_18D7833:             var_278 = var_1C0 & " >= B.ArrDate And " & var_248 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Tentative' And RO.ChkInDate Is Null" 
  loc_18D7841:             unk_4AAD09.Execute CStr(var_278), var_298, -1
  loc_18D784C:             Set var_94 = var_F8
  loc_18D787F:           Else
  loc_18D7887:             If (arg_18 = "Waiting") Then
  loc_18D789C:               var_F4 = var_124.TextMatrix)
  loc_18D78CC:               Proc_6_7_F25D88(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D78F5:               Proc_6_7_F25D88(var_248, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F8)
  loc_18D790E:               var_C4 = "Select Sum(NoofRooms) As tRoomBusy From ((ViewBooking as B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) Where B.LOGSITE_CODE='" & MemVar_1F92078
  loc_18D7927:               var_1B0 = CVar(var_C4 & "' AND B.RoomCat='" & CStr(var_F4) & "' And (B.RoomType='RO' or B.RoomType is Null) And ") 'String
  loc_18D7946:               var_278 = var_1B0 & var_17C & " >= B.ArrDate And " & var_248 & " < B.DepDate AND B.Cancel='N' AND B.ResStatus='Waiting' And RO.ChkInDate Is Null" 
  loc_18D7954:               unk_4AAD09.Execute CStr(var_278), var_298, -1
  loc_18D795F:               Set var_94 = var_F8
  loc_18D798F:             End If
  loc_18D798F:           End If
  loc_18D798F:         End If
  loc_18D798F:       End If
  loc_18D79A1:       var_F4 = var_124.TextMatrix)
  loc_18D79D1:       Proc_6_7_F25D88(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D79E9:       var_1E0 = var_124.TextMatrix)
  loc_18D79FA:       Proc_6_7_F25D88(var_248, CVar(CStr(var_1E0)), var_9C, 2, var_F8)
  loc_18D7A2C:       var_1B0 = CVar("Select Count(*) As RoomBusyRO From RoomOcc Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND RoomCat='" & CStr(var_F4) & "' And RoomType='RO' And ") 'String
  loc_18D7A59:       unk_4AAD09.Execute CStr(var_1B0 & var_17C & " >=ChkInDate  AND " & var_248 & "< RoomOcc.DepDate AND RoomOcc.Type Not IN('C','O')"), var_298, -1
  loc_18D7A64:       Set var_8C = var_F8
  loc_18D7AA6:       var_F4 = var_124.TextMatrix)
  loc_18D7AD6:       Proc_6_7_F25D88(var_17C, CVar(CStr(var_124.TextMatrix))), var_9C, 2, var_F4, CVar(CLng(2)), 3)
  loc_18D7AEF:       var_C4 = "Select Count(*) As RoomBlocked From RoomBlockOut RB Inner Join RoomMast RM ON RB.RoomCode=RM.Code where RB.LOGSITE_CODE='" & MemVar_1F92078
  loc_18D7B17:       var_1D0 = CVar(var_C4 & "' And RM.RoomCat='" & CStr(var_F4) & "' And RB.Type='O' And RM.Type='RO' And ") & var_17C & " Between RB.FromDate and RB.ToDate" 
  loc_18D7B25:       unk_4AAD09.Execute CStr(var_1D0), var_1E0, -1
  loc_18D7B30:       Set var_90 = var_F8
  loc_18D7B8F:       var_110 = CVar(CStr(var_88.Fields.Item("noRooms").Value)) 'String
  loc_18D7B96:       LateIdCallSt
  loc_18D7BC0:       If (var_94.RecordCount > 0) Then
  loc_18D7C5E:         var_1C0 = (CVar(Val(CStr(var_124.TextMatrix)))) - IIf(IsNull(CVar(var_94.Fields.Item("tRoomBusy"))), 0, CVar(var_94.Fields.Item("tRoomBusy"))))
  loc_18D7C63:         var_1D0 = CVar(CStr(CVar(CStr(var_124.TextMatrix)) & "' And RM.RoomCat='" & CStr(var_124.TextMatrix)) & "' And RB.Type='O' And RM.Type='RO' And ") & CVar(var_94.Fields.Item("tRoomBusy")))) 'String
  loc_18D7C6A:         LateIdCallSt
  loc_18D7C8D:       End If
  loc_18D7CA1:       If (var_8C.RecordCount > 0) Then
  loc_18D7D04:         var_13C = (CVar(Val(CStr(var_124.TextMatrix)))) - var_8C.Fields.Item("RoomBusyRO").Value)
  loc_18D7D09:         var_17C = CVar(CStr(0)) 'String
  loc_18D7D10:         LateIdCallSt
  loc_18D7D2B:       End If
  loc_18D7D3F:       If (var_90.RecordCount > 0) Then
  loc_18D7DA2:         var_13C = (CVar(Val(CStr(var_124.TextMatrix)))) - var_90.Fields.Item("RoomBlocked").Value)
  loc_18D7DA7:         var_17C = CVar(CStr(0)) 'String
  loc_18D7DAE:         LateIdCallSt
  loc_18D7DC9:       End If
  loc_18D7DCC:     Next var_1F8 'Long
  loc_18D7DDA:     var_98 = (var_98 + 1)
  loc_18D7DE0:     var_88.MoveNext
  loc_18D7DE5:     GoTo loc_18D73B9
  loc_18D7DE8:   End If
  loc_18D7DFB:   Me.FGrid.FixedRows = 4
  loc_18D7E03: End If
  loc_18D7E05: Set var_124 = Nothing 
  loc_18D7E09: var_E4 = 2
  loc_18D7E12: var_14C = 0
  loc_18D7E1F: Set var_F8 = Me.FGrid
  loc_18D7E25: LateIdCallSt
  loc_18D7E30: var_E4 = vbNullString
  loc_18D7E3A: Set var_F8 = Me.FGrid
  loc_18D7E64: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7E69: var_14C = 1
  loc_18D7E72: var_16C = "TOTAL VACANT ROOM"
  loc_18D7E7C: Set var_100 = Me.FGrid
  loc_18D7E82: LateIdCallSt
  loc_18D7EBB: For var_2A0 = 4 To (CLng(Me.FGrid.Rows) - 2): var_9C = var_2A0 'Long
  loc_18D7EC8:   var_18C = 3
  loc_18D7F0A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7F0F:   var_228 = 3
  loc_18D7F31:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7F36:   var_14C = 3
  loc_18D7F66:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D7F6E:   Set var_2A4 = Me.FGrid
  loc_18D7F74:   LateIdCallSt
  loc_18D7FA4:   var_18C = 4
  loc_18D7FE6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D7FEB:   var_228 = 4
  loc_18D800D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8012:   var_14C = 4
  loc_18D8042:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D804A:   Set var_2A4 = Me.FGrid
  loc_18D8050:   LateIdCallSt
  loc_18D8080:   var_18C = 5
  loc_18D80C2:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D80C7:   var_228 = 5
  loc_18D80E9:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D80EE:   var_14C = 5
  loc_18D811E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8126:   Set var_2A4 = Me.FGrid
  loc_18D812C:   LateIdCallSt
  loc_18D815C:   var_18C = 6
  loc_18D819E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D81A3:   var_228 = 6
  loc_18D81C5:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D81CA:   var_14C = 6
  loc_18D81FA:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8202:   Set var_2A4 = Me.FGrid
  loc_18D8208:   LateIdCallSt
  loc_18D8238:   var_18C = 7
  loc_18D827A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D827F:   var_228 = 7
  loc_18D82A1:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D82A6:   var_14C = 7
  loc_18D82D6:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D82DE:   Set var_2A4 = Me.FGrid
  loc_18D82E4:   LateIdCallSt
  loc_18D8314:   var_18C = 8
  loc_18D8356:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D835B:   var_228 = 8
  loc_18D837D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8382:   var_14C = 8
  loc_18D83B2:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D83BA:   Set var_2A4 = Me.FGrid
  loc_18D83C0:   LateIdCallSt
  loc_18D83F0:   var_18C = 9
  loc_18D8432:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8437:   var_228 = 9
  loc_18D8459:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D845E:   var_14C = 9
  loc_18D848E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8496:   Set var_2A4 = Me.FGrid
  loc_18D849C:   LateIdCallSt
  loc_18D84CC:   var_18C = &HA
  loc_18D850E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8513:   var_228 = &HA
  loc_18D8535:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D853A:   var_14C = &HA
  loc_18D856A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8572:   Set var_2A4 = Me.FGrid
  loc_18D8578:   LateIdCallSt
  loc_18D85A8:   var_18C = &HB
  loc_18D85EA:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D85EF:   var_228 = &HB
  loc_18D8611:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8616:   var_14C = &HB
  loc_18D8646:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D864E:   Set var_2A4 = Me.FGrid
  loc_18D8654:   LateIdCallSt
  loc_18D8684:   var_18C = &HC
  loc_18D86C6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D86CB:   var_228 = &HC
  loc_18D86ED:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D86F2:   var_14C = &HC
  loc_18D8722:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D872A:   Set var_2A4 = Me.FGrid
  loc_18D8730:   LateIdCallSt
  loc_18D8760:   var_18C = &HD
  loc_18D87A2:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D87A7:   var_228 = &HD
  loc_18D87C9:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D87CE:   var_14C = &HD
  loc_18D87FE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8806:   Set var_2A4 = Me.FGrid
  loc_18D880C:   LateIdCallSt
  loc_18D883C:   var_18C = &HE
  loc_18D887E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8883:   var_228 = &HE
  loc_18D88A5:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D88AA:   var_14C = &HE
  loc_18D88DA:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D88E2:   Set var_2A4 = Me.FGrid
  loc_18D88E8:   LateIdCallSt
  loc_18D8918:   var_18C = &HF
  loc_18D895A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D895F:   var_228 = &HF
  loc_18D8981:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8986:   var_14C = &HF
  loc_18D89B6:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D89BE:   Set var_2A4 = Me.FGrid
  loc_18D89C4:   LateIdCallSt
  loc_18D89F4:   var_18C = &H10
  loc_18D8A36:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8A3B:   var_228 = &H10
  loc_18D8A5D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8A62:   var_14C = &H10
  loc_18D8A92:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8A9A:   Set var_2A4 = Me.FGrid
  loc_18D8AA0:   LateIdCallSt
  loc_18D8AD0:   var_18C = &H11
  loc_18D8B12:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8B17:   var_228 = &H11
  loc_18D8B39:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8B3E:   var_14C = &H11
  loc_18D8B6E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8B76:   Set var_2A4 = Me.FGrid
  loc_18D8B7C:   LateIdCallSt
  loc_18D8BAC:   var_18C = &H12
  loc_18D8BEE:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8BF3:   var_228 = &H12
  loc_18D8C15:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8C1A:   var_14C = &H12
  loc_18D8C4A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8C52:   Set var_2A4 = Me.FGrid
  loc_18D8C58:   LateIdCallSt
  loc_18D8C88:   var_18C = &H13
  loc_18D8CCA:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8CCF:   var_228 = &H13
  loc_18D8CF1:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8CF6:   var_14C = &H13
  loc_18D8D26:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8D2E:   Set var_2A4 = Me.FGrid
  loc_18D8D34:   LateIdCallSt
  loc_18D8D64:   var_18C = &H14
  loc_18D8DA6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8DAB:   var_228 = &H14
  loc_18D8DCD:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8DD2:   var_14C = &H14
  loc_18D8E02:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8E0A:   Set var_2A4 = Me.FGrid
  loc_18D8E10:   LateIdCallSt
  loc_18D8E40:   var_18C = &H15
  loc_18D8E82:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8E87:   var_228 = &H15
  loc_18D8EA9:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8EAE:   var_14C = &H15
  loc_18D8EDE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8EE6:   Set var_2A4 = Me.FGrid
  loc_18D8EEC:   LateIdCallSt
  loc_18D8F1C:   var_18C = &H16
  loc_18D8F5E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8F63:   var_228 = &H16
  loc_18D8F85:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D8F8A:   var_14C = &H16
  loc_18D8FBA:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D8FC2:   Set var_2A4 = Me.FGrid
  loc_18D8FC8:   LateIdCallSt
  loc_18D8FF8:   var_18C = &H17
  loc_18D903A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D903F:   var_228 = &H17
  loc_18D9061:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D9066:   var_14C = &H17
  loc_18D9096:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D909E:   Set var_2A4 = Me.FGrid
  loc_18D90A4:   LateIdCallSt
  loc_18D90D4:   var_18C = &H18
  loc_18D9116:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D911B:   var_228 = &H18
  loc_18D913D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D9142:   var_14C = &H18
  loc_18D9172:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D917A:   Set var_2A4 = Me.FGrid
  loc_18D9180:   LateIdCallSt
  loc_18D91B0:   var_18C = &H19
  loc_18D91F2:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D91F7:   var_228 = &H19
  loc_18D9219:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D921E:   var_14C = &H19
  loc_18D924E:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D9256:   Set var_2A4 = Me.FGrid
  loc_18D925C:   LateIdCallSt
  loc_18D928C:   var_18C = &H1A
  loc_18D92CE:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D92D3:   var_228 = &H1A
  loc_18D92F5:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D92FA:   var_14C = &H1A
  loc_18D932A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D9332:   Set var_2A4 = Me.FGrid
  loc_18D9338:   LateIdCallSt
  loc_18D9368:   var_18C = &H1B
  loc_18D93AA:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D93AF:   var_228 = &H1B
  loc_18D93D1:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D93D6:   var_14C = &H1B
  loc_18D9406:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D940E:   Set var_2A4 = Me.FGrid
  loc_18D9414:   LateIdCallSt
  loc_18D9444:   var_18C = &H1C
  loc_18D9486:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D948B:   var_228 = &H1C
  loc_18D94AD:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D94B2:   var_14C = &H1C
  loc_18D94E2:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D94EA:   Set var_2A4 = Me.FGrid
  loc_18D94F0:   LateIdCallSt
  loc_18D9520:   var_18C = &H1D
  loc_18D9562:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D9567:   var_228 = &H1D
  loc_18D9589:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D958E:   var_14C = &H1D
  loc_18D95BE:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D95C6:   Set var_2A4 = Me.FGrid
  loc_18D95CC:   LateIdCallSt
  loc_18D95FC:   var_18C = &H1E
  loc_18D963E:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D9643:   var_228 = &H1E
  loc_18D9665:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D966A:   var_14C = &H1E
  loc_18D969A:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D96A2:   Set var_2A4 = Me.FGrid
  loc_18D96A8:   LateIdCallSt
  loc_18D96D8:   var_18C = &H1F
  loc_18D971A:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D971F:   var_228 = &H1F
  loc_18D9741:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D9746:   var_14C = &H1F
  loc_18D9776:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D977E:   Set var_2A4 = Me.FGrid
  loc_18D9784:   LateIdCallSt
  loc_18D97B4:   var_18C = &H20
  loc_18D97F6:   var_208 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D97FB:   var_228 = &H20
  loc_18D981D:   var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_18D9822:   var_14C = &H20
  loc_18D9852:   var_1B0 = CVar(CStr((CDbl(Val(CStr(Me.FGrid.TextMatrix)))) + CDbl(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_18D985A:   Set var_2A4 = Me.FGrid
  loc_18D9860:   LateIdCallSt
  loc_18D988C: Next var_2A0 'Long
  loc_18D989F: Me.FGrid.Redraw = True
  loc_18D98B0: If (3 = 1) Then
  loc_18D98C6:   Me.FGrid.Rows = 4
  loc_18D98E1:   Me.FGrid.FixedRows = 4
  loc_18D98E9: End If
  loc_18D98FC: Me.FGrid.Row = 3
  loc_18D9917: Me.FGrid.Col = 3
  loc_18D9924: Set var_88 = Nothing
  loc_18D992C: Set var_94 = Nothing
  loc_18D9934: Set var_8C = Nothing
  loc_18D993C: Set var_90 = Nothing
  loc_18D993F: Exit Sub
End Sub

Public Sub Proc_55_36_F64B9C(arg_C) 'F64B9C
  'Data Table: 4AACF4
  Dim var_90 As Recordset15
  loc_F64A71: Set var_90 = arg_C 
  loc_F64A99: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F64AC5: var_90.Fields.Append "RoomType", &HC8, &H19
  loc_F64AD4: For var_A8 = 3 To &H19: var_8A = var_A8 'Integer
  loc_F64B0A:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F64B1C: Next var_A8 'Integer
  loc_F64B45: var_90.Fields.Append "Mark", &HC8, 1
  loc_F64B55: var_90.CursorType = 3
  loc_F64B62: var_90.LockType = 3
  loc_F64B81: var_90.Open var_A4, var_C0, -1
  loc_F64B88: Set var_90 = Nothing 
  loc_F64B8F: Set var_88 = arg_C 
  loc_F64B93: Proc_55_36_F64B9C = -1
End Sub

Public Sub Proc_55_37_16A15BC
  'Data Table: 4AACF4
  Dim var_100 As String
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_86 As Variant
  Dim var_118 As TextBox
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_468 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_4F0 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_588 As Variant
  Dim var_5A8 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_698 As Variant
  Dim var_6B8 As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_114 As Variant
  Dim var_74C As String
  Dim var_76C As String
  Dim var_78C As String
  Dim var_968 As String
  Dim var_998 As String
  Dim var_9C8 As String
  Dim var_9F8 As String
  Dim var_A20 As String
  Dim var_A50 As String
  Dim var_A80 As String
  Dim var_AB0 As String
  Dim var_AE4 As String
  loc_16A00CA: Close 1
  loc_16A00D3: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16A0105: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F923CC, 1, -1, 0)
  loc_16A0110: var_88 = 1
  loc_16A012A: If (Me.RecordCount > 0) Then
  loc_16A0133:   Me.MoveFirst
  loc_16A0138:   ' Referenced from: 16A14FC
  loc_16A014A:   If Not(Me.EOF) Then
  loc_16A0153:     If (var_86 = 0) Then
  loc_16A0166:       var_86 = Proc_6_129_12B6C1C(var_88, var_86)
  loc_16A0171:       var_100 = "B"
  loc_16A018D:       Print 1, Proc_6_128_10272A8(global_104, var_100, &H50)
  loc_16A01AA:       Set var_114 = Me.Txt
  loc_16A01B0:       Call 0.Method_Proc_55_37_16A15BC0 (CInt(0), var_118, var_100)
  loc_16A01B8:       var_86 = var_118.Text
  loc_16A01C9:       Print 1, "From Date " & var_100
  loc_16A01F3:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16A01F9:       Print 1, var_128
  loc_16A020D:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16A021E:         Set var_114 = Me.Txt
  loc_16A0224:         Call 0.Method_Proc_55_37_16A15BC0 (CInt(0), var_118, 1)
  loc_16A023E:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16A024B:         global_96 = CDate(var_128)
  loc_16A0299:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_96, "DDD")))
  loc_16A02E6:         var_14C = Space((2 - Len(CStr(Day(global_96)))))
  loc_16A02EE:         var_16C = (CVar(CStr(Day(global_96))) + Ucase(Format(global_96, "DDD")))
  loc_16A0320:         var_1BC = Space((2 - Len(CStr(Month(global_96)))))
  loc_16A0343:         var_1FC = (var_1BC + CVar(CStr(Month(global_96))))
  loc_16A0356:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16A0386:       Next var_12C 'Integer
  loc_16A059A:       var_128 = (Space(&HA) + "|")
  loc_16A05A4:       var_15C = (Day(global_96) + CVar(Proc_6_45_EAD428(var_BC(1))))
  loc_16A05AD:       var_16C = (CVar(CStr(Day(global_96))) + "|")
  loc_16A05B7:       var_1AC = (var_16C + CVar(Proc_6_45_EAD428(var_BC(2), 4)))
  loc_16A05C0:       var_1BC = (Month(global_96) + "|")
  loc_16A05CA:       var_1EC = (var_1BC + CVar(Proc_6_45_EAD428(var_BC(3), 4)))
  loc_16A05D3:       var_1FC = (CVar(CStr(Month(global_96))) + "|")
  loc_16A05DD:       var_224 = (var_1FC + CVar(Proc_6_45_EAD428(var_BC(4), 4)))
  loc_16A05E6:       var_234 = (var_224 + "|")
  loc_16A05F0:       var_258 = (var_234 + CVar(Proc_6_45_EAD428(var_BC(5), 4)))
  loc_16A05F9:       var_278 = (var_258 + "|")
  loc_16A0603:       var_29C = (var_278 + CVar(Proc_6_45_EAD428(var_BC(6), 4)))
  loc_16A060C:       var_2BC = (var_29C + "|")
  loc_16A0616:       var_2E0 = (var_2BC + CVar(Proc_6_45_EAD428(var_BC(7), 4)))
  loc_16A061F:       var_300 = (var_2E0 + "|")
  loc_16A0629:       var_324 = (var_300 + CVar(Proc_6_45_EAD428(var_BC(8), 4)))
  loc_16A0632:       var_344 = (var_324 + "|")
  loc_16A063C:       var_368 = (var_344 + CVar(Proc_6_45_EAD428(var_BC(9), 4)))
  loc_16A0645:       var_388 = (var_368 + "|")
  loc_16A064F:       var_3AC = (var_388 + CVar(Proc_6_45_EAD428(var_BC(&HA), 4)))
  loc_16A0658:       var_3CC = (var_3AC + "|")
  loc_16A0662:       var_3F0 = (var_3CC + CVar(Proc_6_45_EAD428(var_BC(&HB), 4)))
  loc_16A066B:       var_410 = (var_3F0 + "|")
  loc_16A0675:       var_434 = (var_410 + CVar(Proc_6_45_EAD428(var_BC(&HC), 4)))
  loc_16A067E:       var_454 = (var_434 + "|")
  loc_16A0688:       var_478 = (var_454 + CVar(Proc_6_45_EAD428(var_BC(&HD), 4)))
  loc_16A0691:       var_498 = (var_478 + "|")
  loc_16A069B:       var_4BC = (var_498 + CVar(Proc_6_45_EAD428(var_BC(&HE), 4)))
  loc_16A06A4:       var_4DC = (var_4BC + "|")
  loc_16A06AE:       var_500 = (var_4DC + CVar(Proc_6_45_EAD428(var_BC(&HF), 4)))
  loc_16A06B7:       var_520 = (var_500 + "|")
  loc_16A06C1:       var_544 = (var_520 + CVar(Proc_6_45_EAD428(var_BC(&H10), 4)))
  loc_16A06CA:       var_564 = (var_544 + "|")
  loc_16A06D4:       var_588 = (var_564 + CVar(Proc_6_45_EAD428(var_BC(&H11), 4)))
  loc_16A06DD:       var_5A8 = (var_588 + "|")
  loc_16A06E7:       var_5CC = (var_5A8 + CVar(Proc_6_45_EAD428(var_BC(&H12), 4)))
  loc_16A06F0:       var_5EC = (var_5CC + "|")
  loc_16A06FA:       var_610 = (var_5EC + CVar(Proc_6_45_EAD428(var_BC(&H13), 4)))
  loc_16A0703:       var_630 = (var_610 + "|")
  loc_16A070D:       var_654 = (var_630 + CVar(Proc_6_45_EAD428(var_BC(&H14), 4)))
  loc_16A0716:       var_674 = (var_654 + "|")
  loc_16A0720:       var_698 = (var_674 + CVar(Proc_6_45_EAD428(var_BC(&H15), 4)))
  loc_16A0729:       var_6B8 = (var_698 + "|")
  loc_16A0733:       var_6DC = (var_6B8 + CVar(Proc_6_45_EAD428(var_BC(&H16), 4)))
  loc_16A073C:       var_6FC = (var_6DC + "|")
  loc_16A0746:       var_720 = (var_6FC + CVar(Proc_6_45_EAD428(var_BC(&H17), 4)))
  loc_16A074F:       var_740 = (var_720 + "|")
  loc_16A0755:       Print 1, var_740
  loc_16A0832:       var_128 = ("TYPE" + Space(6))
  loc_16A083B:       var_14C = (Day(global_96) + "|")
  loc_16A084B:       var_15C = (CVar(Proc_6_45_EAD428(var_BC(1))) + CVar(var_D8(1)))
  loc_16A0854:       var_16C = (CVar(CStr(Day(global_96))) + "|")
  loc_16A0864:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16A086D:       var_1AC = (CVar(Proc_6_45_EAD428(var_BC(2), 4)) + "|")
  loc_16A087D:       var_1BC = (Month(global_96) + CVar(var_D8(3)))
  loc_16A0886:       var_1DC = (var_1BC + "|")
  loc_16A0896:       var_1EC = (CVar(Proc_6_45_EAD428(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16A089F:       var_1FC = (CVar(CStr(Month(global_96))) + "|")
  loc_16A08AF:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16A08B8:       var_224 = (CVar(Proc_6_45_EAD428(var_BC(4), 4)) + "|")
  loc_16A08C8:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16A08D1:       var_248 = (var_234 + "|")
  loc_16A08E1:       var_258 = (CVar(Proc_6_45_EAD428(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16A08EA:       var_278 = (var_258 + "|")
  loc_16A08FA:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16A0903:       var_29C = (CVar(Proc_6_45_EAD428(var_BC(6), 4)) + "|")
  loc_16A0913:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16A091C:       var_2D0 = (var_2BC + "|")
  loc_16A092C:       var_2E0 = (CVar(Proc_6_45_EAD428(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16A0935:       var_300 = (var_2E0 + "|")
  loc_16A0945:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16A094E:       var_324 = (CVar(Proc_6_45_EAD428(var_BC(8), 4)) + "|")
  loc_16A095E:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16A0967:       var_358 = (var_344 + "|")
  loc_16A0977:       var_368 = (CVar(Proc_6_45_EAD428(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16A0980:       var_388 = (var_368 + "|")
  loc_16A0990:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16A0999:       var_3AC = (CVar(Proc_6_45_EAD428(var_BC(&HA), 4)) + "|")
  loc_16A09A9:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16A09B2:       var_3E0 = (var_3CC + "|")
  loc_16A09C2:       var_3F0 = (CVar(Proc_6_45_EAD428(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16A09CB:       var_410 = (var_3F0 + "|")
  loc_16A09DB:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16A09E4:       var_434 = (CVar(Proc_6_45_EAD428(var_BC(&HC), 4)) + "|")
  loc_16A09F4:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16A09FD:       var_468 = (var_454 + "|")
  loc_16A0A0D:       var_478 = (CVar(Proc_6_45_EAD428(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16A0A16:       var_498 = (var_478 + "|")
  loc_16A0A26:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16A0A2F:       var_4BC = (CVar(Proc_6_45_EAD428(var_BC(&HE), 4)) + "|")
  loc_16A0A3F:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16A0A48:       var_4F0 = (var_4DC + "|")
  loc_16A0A58:       var_500 = (CVar(Proc_6_45_EAD428(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16A0A61:       var_520 = (var_500 + "|")
  loc_16A0A71:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16A0A7A:       var_544 = (CVar(Proc_6_45_EAD428(var_BC(&H10), 4)) + "|")
  loc_16A0A80:       Print 1, var_544
  loc_16A0AF0:       Print 1, var_A0
  loc_16A0AF6:     End If
  loc_16A0AFC:     var_86 = (var_86 + 6)
  loc_16A0B24:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16A0B30:       If (var_A2 = 3) Then
  loc_16A0B33:         GoTo loc_16A14F4
  loc_16A0B36:       End If
  loc_16A117A:       var_74C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("Roomtype")), 3), &HA) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day3")), var_86), 4)
  loc_16A119C:       var_76C = var_74C & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day4"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day5"))), 4)
  loc_16A11BE:       var_78C = var_76C & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day6"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day7"))), 4)
  loc_16A11E0:       var_968 = var_78C & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day8"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day9"))), 4)
  loc_16A1202:       var_998 = var_968 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day10"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day11"))), 4)
  loc_16A1224:       var_9C8 = var_998 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day12"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day13"))), 4)
  loc_16A1246:       var_9F8 = var_9C8 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day14"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day15"))), 4)
  loc_16A1264:       var_A20 = Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day16"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day17"))), 4)
  loc_16A1286:       var_A50 = var_A20 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16A12A8:       var_A80 = var_A50 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16A12CA:       var_AB0 = var_A80 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16A12EC:       var_AE4 = var_AB0 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16A12FC:       Print 1, var_9F8 & "|" & var_AE4 & "|"
  loc_16A148F:       var_86 = (var_86 + 1)
  loc_16A1498:       If (var_86 > &H3C) Then
  loc_16A14A0:         Print 1, var_A0
  loc_16A14A8:         var_86 = 0
  loc_16A14B1:         var_88 = (var_88 + 1)
  loc_16A14C6:         Print 1, Chr(&HC)
  loc_16A14CF:       End If
  loc_16A14D5:       Me.MoveNext
  loc_16A14EE:       If (Me.EOF = &HFF) Then
  loc_16A14F1:         GoTo loc_16A14FC
  loc_16A14F4:         ' Referenced from: 16A0B33
  loc_16A14F4:       End If
  loc_16A14F7:     Next var_914 'Integer
  loc_16A14FC:     ' Referenced from: 16A14F1
  loc_16A14FC:     GoTo loc_16A0138
  loc_16A14FF:   End If
  loc_16A14FF: End If
  loc_16A1504: Print 1, var_A0
  loc_16A152A: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16A1530: Print 1, CVar(Me.Fields.Item("Day4"))
  loc_16A1541: Close 1
  loc_16A154A: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16A155A: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_16A1565: Close 1
  loc_16A156F: If (MemVar_1F923B8 = "Y") Then
  loc_16A158B:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16A1595: Else
  loc_16A15AE:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16A15B5: End If
  loc_16A15B5: Exit Sub
  loc_16A15B6: Proc_6_60_E62BC4()
  loc_16A15BB: Exit Sub
End Sub

Public Sub Proc_55_38_118E874
  'Data Table: 4AACF4
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim var_14C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_11C As MSHFlexGrid
  Dim Proc_55_38_118E8740FF As Variant
  loc_118E4AC: var_AC = 1
  loc_118E4C8: var_CC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118E4D7: var_F0 = Me.FGrid.TextMatrix)
  loc_118E513: Set var_118 = Me.Txt
  loc_118E519: Call 0.Method_Proc_55_38_118E8740 (CInt(0), var_11C, CVar(Val(CStr(Right(CVar(CStr(var_F0)), 2)))))
  loc_118E54D: If (var_F0 < Month(CVar(var_11C))) Then
  loc_118E55B:   Set var_118 = Me.Txt
  loc_118E561:   Call 0.Method_Proc_55_38_118E8740 (CInt(0), var_11C)
  loc_118E566:   var_AC = 1
  loc_118E582:   var_CC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118E5C2:   var_12C = (Right(CVar(var_11C), 4) + 1)
  loc_118E5CC:   var_88 = CStr(Me.FGrid.TextMatrix)) & "/" & CStr(CVar(var_11C))
  loc_118E5F3: Else
  loc_118E5FE:   Set var_118 = Me.Txt
  loc_118E604:   Call 0.Method_Proc_55_38_118E8740 (CInt(0), var_11C, var_CC)
  loc_118E609:   var_AC = 1
  loc_118E625:   var_CC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118E660:   var_13C = (CVar(CStr(Me.FGrid.TextMatrix)) & "/") + Right(CVar(var_11C), 4))
  loc_118E665:   var_88 = CStr(Month(CVar(var_11C)))
  loc_118E683: End If
  loc_118E68F: If (global_108 = 1) Then
  loc_118E6A5:   var_14C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E6AD:   var_184 = CVar(CLng(1)) 'Long
  loc_118E6DB:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E6E3:   var_CC = CVar(CLng(2)) 'Long
  loc_118E703:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_118E726:   var_1B4 = Trim(Left(CVar(CStr(Me.FGrid.TextMatrix))), &HF))
  loc_118E73C:   Call unk_4AADD8.SEARCHBACKRoomType
  loc_118E765: Else
  loc_118E778:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E780:   var_CC = CVar(CLng(2)) 'Long
  loc_118E7B8:   var_14C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118E7CF:   var_13C = Me.FGrid.TextMatrix)
  loc_118E82B:   Proc_146_0_E7D9C8(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Trim(Left(CVar(CStr(var_13C)), &HF))), var_88, 0, 0, var_13C, CVar(CLng(1)))
  loc_118E85B: End If
  loc_118E868: Me.var_13C.Unload Me
  loc_118E870: Exit Sub
  loc_118E871: Proc_55_38_118E8740FF = CVar(var_14C) 'Integer
End Sub

Public Sub Proc_55_39_E547BC(arg_C) 'E547BC
  'Data Table: 4AACF4
  Dim var_A0 As Long
  loc_E54790: If (arg_C = 0) Then
  loc_E547A6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E547AF: End If
  loc_E547B4: Proc_55_39_E547BC = &HFF
End Sub

Public Sub Proc_55_40_E09F6C
  'Data Table: 4AACF4
  loc_E09F65: Proc_55_40_E09F6C = &HFF
End Sub

Public Sub Proc_55_41_F1E23C
  'Data Table: 4AACF4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1E14A: Set var_8C = Me.Txt
  loc_F1E150: Call 0.Method_Proc_55_41_F1E23CC (var_8E, var_86)
  loc_F1E160: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E176:   Set var_8C = Me.Txt
  loc_F1E17C:   Call 0.Method_Proc_55_41_F1E23C0 (CInt(var_86), var_98)
  loc_F1E184:   var_98.Text = vbNullString
  loc_F1E1A0:   Set var_8C = Me.Txt
  loc_F1E1A6:   Call 0.Method_Proc_55_41_F1E23C0 (CInt(var_86), var_98)
  loc_F1E1AE:   var_98.Tag = vbNullString
  loc_F1E1BD: Next var_92 'Byte
  loc_F1E1D6: Me.FGrid.Rows = 1
  loc_F1E1FC: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1E204: Set var_98 = Me.FGrid
  loc_F1E231: Me.FGrid.FixedRows = 1
  loc_F1E239: Exit Sub
  loc_F1E23A: CExtInstUnk
End Sub

Public Sub Proc_55_42_E777EC(arg_C) 'E777EC
  'Data Table: 4AACF4
  Dim var_98 As TextBox
  loc_E7779A: Set var_8C = Me.Txt
  loc_E777A0: Call 0.Method_Proc_55_42_E777ECC (var_8E, var_86)
  loc_E777B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E777C6:   Set var_8C = Me.Txt
  loc_E777CC:   Call 0.Method_Proc_55_42_E777EC0 (CInt(var_86), var_98)
  loc_E777D4:   var_98.Enabled = arg_C
  loc_E777E3: Next var_92 'Byte
  loc_E777E9: Exit Sub
  loc_E777EA: Set arg_7C78 = 
End Sub
