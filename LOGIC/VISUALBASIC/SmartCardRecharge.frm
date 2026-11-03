VERSION 5.00
Begin VB.Form SmartCardRecharge
  Caption = "Smart Card Recharge Entry"
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
  ClientWidth = 11520
  ClientHeight = 5490
  Begin BtnEnh CmdCardScan
    Left = 2250
    Top = 870
    Width = 5625
    Height = 540
    TabIndex = 38
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11520
    Height = 450
    TabIndex = 37
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4980
    Width = 1380
    Height = 285
    TabIndex = 35
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4665
    Width = 1380
    Height = 285
    TabIndex = 33
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin CommandButton CmdPosting
    Caption = "LS_Posting"
    Left = 12525
    Top = 9195
    Width = 1575
    Height = 510
    Visible = 0   'False
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1875
    Width = 1380
    Height = 285
    TabIndex = 27
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7020
    Top = 60
    Width = 2760
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 6570
    Top = 4965
    Width = 1380
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6555
    Top = 4665
    Width = 1395
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2505
    Width = 5475
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 75
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
    Left = 2490
    Top = 3135
    Width = 5475
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin PictureBox Picture1
    ForeColor = &HFF0000&
    Left = 12030
    Top = 1815
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    ForeColor = &HFF0000&
    Left = 11850
    Top = 1215
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 16
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 2190
    Width = 1380
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1875
    Width = 1380
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4350
    Width = 5475
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2190
    Width = 1380
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2475
    Top = 3450
    Width = 5475
    Height = 870
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
    Left = 2490
    Top = 2820
    Width = 5475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 75
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
    Left = 6585
    Top = 1560
    Width = 1380
    Height = 285
    TabIndex = 1
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1560
    Width = 1380
    Height = 285
    TabIndex = 28
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1560
    Width = 630
    Height = 285
    TabIndex = 30
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
  Begin Label LblName
    Caption = "Current Security Balance"
    Index = 11
    ForeColor = &HFF0000&
    Left = 15
    Top = 4980
    Width = 2385
    Height = 285
    TabIndex = 36
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
    Caption = "Current Balance"
    Index = 10
    ForeColor = &HFF0000&
    Left = 825
    Top = 4665
    Width = 1545
    Height = 285
    TabIndex = 34
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
    Caption = "Receipt.No."
    Index = 9
    ForeColor = &HFF0000&
    Left = 825
    Top = 1875
    Width = 1095
    Height = 285
    TabIndex = 32
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
    Caption = "Recharge Date"
    Index = 8
    ForeColor = &HFF0000&
    Left = 825
    Top = 1545
    Width = 1410
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
  Begin Label LblName
    Caption = "Security Amount"
    Index = 7
    ForeColor = &HFF0000&
    Left = 4920
    Top = 4995
    Width = 1575
    Height = 285
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
    Caption = "Recharge Amount"
    Index = 5
    ForeColor = &HFF0000&
    Left = 4770
    Top = 4650
    Width = 1710
    Height = 285
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
    Caption = "Member Name"
    Index = 3
    ForeColor = &HFF0000&
    Left = 825
    Top = 2505
    Width = 1395
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
  Begin Image ImgSign
    Left = 8145
    Top = 4170
    Width = 2295
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8130
    Top = 1530
    Width = 2235
    Height = 2460
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Photo"
    ForeColor = &H80&
    Left = 8820
    Top = 2520
    Width = 510
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSign
    Caption = "Signature"
    ForeColor = &H80&
    Left = 8880
    Top = 4380
    Width = 825
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 3135
    Width = 1035
    Height = 285
    TabIndex = 19
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
    Caption = "Mobile No."
    Index = 1
    ForeColor = &HFF0000&
    Left = 825
    Top = 4350
    Width = 1020
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
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 5310
    Top = 1875
    Width = 975
    Height = 285
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
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 2190
    Width = 1485
    Height = 285
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
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 825
    Top = 3465
    Width = 750
    Height = 285
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
  Begin Label LblName
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 5325
    Top = 2190
    Width = 765
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
  Begin Label LblName
    Caption = "Account Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 825
    Top = 2835
    Width = 1380
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 5295
    Top = 1560
    Width = 975
    Height = 285
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

Attribute VB_Name = "SmartCardRecharge"


Private Sub CmdPosting_Click() '140CF44
  'Data Table: 45A94C
  Dim var_B8 As String
  Dim unk_45A959 As Connection15
  Dim var_88 As Recordset15
  Dim var_E0 As Fields15
  Dim var_DC As Variant
  Dim var_264 As String
  Dim var_240 As String
  loc_140C560: On Error Goto loc_140CECD
  loc_140C587: unk_45A959.Execute "Select * From SmartCardTransaction SCT Where LogSite_Code='" & MemVar_1F92078 & "' Order By TransactionId", var_DC, -1
  loc_140C592: Set var_88 = var_E0
  loc_140C5A8: var_E4 = var_88.RecordCount
  loc_140C5B6: If (var_E4 > 0) Then
  loc_140C5C2:   unk_45A959.BeginTrans var_E4
  loc_140C5CB:   var_B2 = CByte(1) 'Byte
  loc_140C5CF:   ' Referenced from: 140CE36
  loc_140C5DE:   If Not(var_88.EOF) Then
  loc_140C61A:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type"))) = "Recharge") Then
  loc_140C777:       var_250 = var_88.Fields.Item("U_EntDt").Value
  loc_140C7C2:       var_268 = 0
  loc_140C7CC:       var_264 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_140C7D9:       var_240 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_140C808:       Proc_275_17_1185D08(CStr(var_88.Fields.Item("Code").Value), CStr(var_88.Fields.Item("SerialNo").Value), CStr(var_88.Fields.Item("Type").Value), CDate(var_88.Fields.Item("VDate").Value), CSng(var_88.Fields.Item("CashAmtCr").Value), CSng(var_88.Fields.Item("SecurAmtCr").Value), CStr(var_88.Fields.Item("Comments").Value))
  loc_140C863:     Else
  loc_140C89C:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_240, CDate(var_250), var_264) = "Refund") Then
  loc_140C9F9:         var_250 = var_88.Fields.Item("U_EntDt").Value
  loc_140CA44:         var_268 = 0
  loc_140CA4E:         var_264 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_140CA8A:         Proc_275_17_1185D08(CStr(var_88.Fields.Item("Code").Value), CStr(var_88.Fields.Item("SerialNo").Value), CStr(var_88.Fields.Item("Type").Value), CDate(var_88.Fields.Item("VDate").Value), CSng(var_88.Fields.Item("CashAmtDr").Value), CSng(var_88.Fields.Item("SecurAmtDr").Value), CStr(var_88.Fields.Item("Comments").Value), CStr(var_88.Fields.Item("U_Name").Value))
  loc_140CAE5:       Else
  loc_140CB0D:         var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), CDate(var_250), var_264, var_268, 0)
  loc_140CB1E:         If (var_B8 = "Settlement") Then
  loc_140CB49:           var_A0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), 0, var_268)
  loc_140CB5C:           If (Len(var_A0) = &H15) Then
  loc_140CC48:             var_E0 = var_88.Fields
  loc_140CC58:             var_DC = var_E0.Item("VDate").Value
  loc_140CC7F:             var_1D4 = var_88.Fields.Item("Code").Value
  loc_140CCA6:             var_1E4 = var_88.Fields.Item("SerialNo").Value
  loc_140CCCD:             var_1F8 = var_88.Fields.Item("CashAmtDr").Value
  loc_140CCF4:             var_208 = var_88.Fields.Item("Comments").Value
  loc_140CD1B:             var_218 = var_88.Fields.Item("U_Name").Value
  loc_140CD42:             var_228 = var_88.Fields.Item("U_EntDt").Value
  loc_140CD69:             var_23C = var_88.Fields.Item("U_AE").Value
  loc_140CD7E:             var_264 = "CARDEXP"
  loc_140CDE4:             Proc_275_16_10AF42C(MemVar_1F92044, var_A0, 1, CStr(Trim(Mid(var_A0, 4, 5))), CLng(Trim(Mid(var_A0, &HE, 8))), CStr(Trim(Mid(var_A0, 9, 5))), CStr(Trim(Mid(var_A0, 2, 2))), CDate(var_DC))
  loc_140CE2E:           End If
  loc_140CE2E:         End If
  loc_140CE2E:       End If
  loc_140CE2E:     End If
  loc_140CE31:     var_88.MoveNext
  loc_140CE36:     GoTo loc_140C5CF
  loc_140CE39:   End If
  loc_140CE4F:   unk_45A959.Execute "Update SmartCardRegistration Set CurrBal=R.CurrBal,SecurBal=R.SecurBal From SmartCardRegistration SCR Left Join (Select Q.Code,Sum(Q.RCARDC)+Sum(Q.CARDEXP) Currbal,Sum(Q.RCARDS) SecurBal From (Select Code,(Case When Type='RCARDC' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDC,(Case When Type='CARDEXP' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) CARDEXP,(Case When Type='RCARDS' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDS From SmartCardLedger Group By Code,Type)Q Group By Q.Code)R On SCR.Code=R.Code", var_DC, -1
  loc_140CE5A:   Proc_275_21_11281A4(var_E0, CStr(var_1D4), CStr(var_1E4), CDbl(0), CSng(var_1F8))
  loc_140CE75:   unk_45A959.Execute "Update SmartCardRegistration Set CurrBal=R.CurrBal,SecurBal=R.SecurBal From SmartCardRegistration SCR Left Join (Select Q.Code,Sum(Q.RCARDC)+Sum(Q.CARDEXP) Currbal,Sum(Q.RCARDS) SecurBal From (Select Code,(Case When Type In ('RCARDC','CARDADJC') Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDC,(Case When Type='CARDEXP' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) CARDEXP,(Case When Type In ('RCARDS','CARDADJS') Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDS From SmartCardLedger Group By Code,Type)Q Group By Q.Code)R On SCR.Code=R.Code", var_DC, -1
  loc_140CE86:   unk_45A959.CommitTrans
  loc_140CE8F:   var_B2 = CByte(1) 'Byte
  loc_140CEAC:   MsgBox("Process Completed Successfully.", &H40, var_1D4, var_1E4, var_1F8)
  loc_140CEBC: End If
  loc_140CEC1: Set var_88 = Nothing
  loc_140CEC9: Set var_8C = Nothing
  loc_140CECC: Exit Sub
  loc_140CECD: ' Referenced from: 140C560
  loc_140CED6: If (CInt(var_B2) = 1) Then
  loc_140CEDF:   unk_45A959.RollbackTrans
  loc_140CEE4: End If
  loc_140CEF2: Call 0.Method_arg_1C (var_E4, Err(), CStr(var_208))
  loc_140CF03: If (var_E4 <> 0) Then
  loc_140CF0E:   Set var_E0 = Err()
  loc_140CF14:   Call 0.Method_arg_2C (var_B8, CStr(var_218))
  loc_140CF2D:   MsgBox(CVar(var_B8), &H10, var_1D4, var_1E4, var_1F8)
  loc_140CF40: End If
  loc_140CF40: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E7A03C
  'Data Table: 45A94C
  Dim var_86 As Integer
  loc_E79FEC: On Error Goto loc_E79FF6
  loc_E79FF2: var_86 = Index
  loc_E79FF5: Exit Sub
  loc_E79FF6: ' Referenced from: E79FEC
  loc_E79FFE: Set var_8C = Err()
  loc_E7A004: Call 0.Method_arg_2C (var_90)
  loc_E7A025: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E7A038: Exit Sub
  loc_E7A039: Exit Sub
  loc_E7A03A: DOC
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E79A64
  'Data Table: 45A94C
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_E799FF: var_86 = Shift
  loc_E79A0C: If (CLng(Shift) = &H1B) Then
  loc_E79A0F:   Exit Sub
  loc_E79A10: End If
  loc_E79A13: var_88 = KeyCode
  loc_E79A34: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_E79A3D:   Proc_6_75_E527CC(Shift, arg_14)
  loc_E79A42: End If
  loc_E79A55: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_E79A5E:   Proc_6_76_E52838(Shift, arg_14)
  loc_E79A63: End If
  loc_E79A63: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EED000
  'Data Table: 45A94C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EECF3E: Proc_6_133_E7EF78(var_94)
  loc_EECF47: arg_10 = CInt(var_94)
  loc_EECF50: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EECF58: var_96 = KeyAscii
  loc_EECF63: If (var_96 = CInt(9)) Then
  loc_EECF6C:   If (arg_10 = &H2D) Then
  loc_EECF71:     arg_10 = 0
  loc_EECF74:   End If
  loc_EECF7E:   Set var_9C = Me.Txt
  loc_EECF84:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EECF9F:   Proc_6_42_129A86C(var_A0, arg_10, 7)
  loc_EECFAE: Else
  loc_EECFB6:   If (var_96 = CInt(&HA)) Then
  loc_EECFBF:     If (arg_10 = &H2D) Then
  loc_EECFC4:       arg_10 = 0
  loc_EECFC7:     End If
  loc_EECFD1:     Set var_9C = Me.Txt
  loc_EECFD7:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EECFF2:     Proc_6_42_129A86C(var_A0, arg_10, 6, 0)
  loc_EECFFE:   End If
  loc_EECFFE: End If
  loc_EECFFE: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F876E4
  'Data Table: 45A94C
  Dim var_86 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  loc_F87598: On Error Goto loc_F8769F
  loc_F8759E: var_86 = Cancel
  loc_F875A9: If (var_86 = CInt(9)) Then
  loc_F875B6:   Set var_8C = Me.Txt
  loc_F875BC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F875F6:   Set var_D4 = Me.Txt
  loc_F875FC:   Call 0.Method_Txt_Validate0 (Cancel, var_D8, CStr(Format(CVar(var_90), "0.00")))
  loc_F87604:   var_D8.Text = 1
  loc_F87621: Else
  loc_F87629:   If (var_86 = CInt(&HA)) Then
  loc_F87636:     Set var_8C = Me.Txt
  loc_F8763C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F87660:     var_D0 = Format(CVar(var_90), "0.00")
  loc_F87668:     var_DC = CStr(var_D0)
  loc_F87676:     Set var_D4 = Me.Txt
  loc_F8767C:     Call 0.Method_Txt_Validate0 (Cancel, var_D8, var_DC, 1)
  loc_F87684:     var_D8.Text = 1
  loc_F8769E:   End If
  loc_F8769E: End If
  loc_F8769E: Exit Sub
  loc_F8769F: ' Referenced from: F87598
  loc_F876A7: Set var_8C = Err()
  loc_F876AD: Call 0.Method_arg_2C (var_DC, 1)
  loc_F876CE: MsgBox(CVar(var_DC), &H40, "Information", var_D0, var_10C)
  loc_F876E1: Exit Sub
  loc_F876E2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F34100
  'Data Table: 45A94C
  Dim var_108 As String
  Dim var_114 As TextBox
  loc_F33FF0: On Error Goto loc_F340BC
  loc_F33FFE: If (global_56 = vbNullString) Then
  loc_F34022:   MsgBox("Please Scan Card First.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F34032:   Exit Sub
  loc_F34033: End If
  loc_F34056: Call Proc_284_20_1095A68(Proc_5_1_100CB50("ADD", Me))
  loc_F34061: Call Proc_284_22_F0C6D8(global_52)
  loc_F3406B: var_108 = CStr(MemVar_1F920EC)
  loc_F34079: Set var_10C = Me.Txt
  loc_F3407F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_114)
  loc_F34087: var_114.Text = var_108
  loc_F340A1: Set var_10C = Me.Txt
  loc_F340A7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9))
  loc_F340AF: var_114.SetFocus
  loc_F340BB: Exit Sub
  loc_F340BC: ' Referenced from: F33FF0
  loc_F340C4: Set var_10C = Err()
  loc_F340CA: Call 0.Method_arg_2C (var_108)
  loc_F340EB: MsgBox(CVar(var_108), &H40, "Information", var_E4, var_104)
  loc_F340FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA8A0
  'Data Table: 45A94C
  loc_EBA80C: On Error Goto loc_EBA897
  loc_EBA846: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBA855:   Set var_110 = Me
  loc_EBA86C:   Call Proc_284_20_1095A68(Proc_5_1_100CB50("INI", var_110))
  loc_EBA877:   Call Proc_284_23_135F454(global_52)
  loc_EBA87F: Else
  loc_EBA885:   Call 0.Method_arg_1E8 (var_110)
  loc_EBA88D:   Call var_110.SetFocus
  loc_EBA896: End If
  loc_EBA896: Exit Sub
  loc_EBA897: ' Referenced from: EBA80C
  loc_EBA897: Proc_6_60_E62BC4()
  loc_EBA89C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19064
  'Data Table: 45A94C
  loc_E19059: Me.Global.Unload Me
  loc_E19061: Exit Sub
  loc_E19062: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE9050
  'Data Table: 45A94C
  Dim Me As Recordset15
  loc_EE8F94: On Error Goto loc_EE8FEA
  loc_EE8F97: Call Proc_284_26_EF6134()
  loc_EE8FA5: var_88 = Me.RecordCount
  loc_EE8FB3: If (var_88 > 0) Then
  loc_EE8FB9:   var_8C = "0,0,900,900,3000,800,0,1000,1000,0,0,2500,1000,0,0,0,0,0,0,0,0,2500"
  loc_EE8FBF:   Proc_6_126_F1BCC0(var_8C)
  loc_EE8FCD:   MemVar_1F92120 = Me
  loc_EE8FE4:   Call 0.Method_arg_2B0 (1)
  loc_EE8FE9: End If
  loc_EE8FE9: Exit Sub
  loc_EE8FEA: ' Referenced from: EE8F94
  loc_EE8FF2: Set var_B0 = Err()
  loc_EE8FF8: Call 0.Method_arg_1C (var_88)
  loc_EE9009: If (var_88 <> 0) Then
  loc_EE9014:   Set var_B0 = Err()
  loc_EE901A:   Call 0.Method_arg_2C (var_8C)
  loc_EE903B:   MsgBox(CVar(var_8C), &H40, "Validation", var_E0, var_100)
  loc_EE904E: End If
  loc_EE904E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32F58
  'Data Table: 45A94C
  loc_E32F48: Proc_5_0_110649C(&HFF, Me)
  loc_E32F50: Call Proc_284_23_135F454(global_52)
  loc_E32F55: Exit Sub
  loc_E32F56: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E332B8
  'Data Table: 45A94C
  loc_E332A8: Proc_5_0_110649C(&HFF, Me)
  loc_E332B0: Call Proc_284_23_135F454(global_52)
  loc_E332B5: Exit Sub
  loc_E332B6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33018
  'Data Table: 45A94C
  loc_E33008: Proc_5_0_110649C(&HFF, Me)
  loc_E33010: Call Proc_284_23_135F454(global_52)
  loc_E33015: Exit Sub
  loc_E33016: Assert
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32FB8
  'Data Table: 45A94C
  loc_E32FA8: Proc_5_0_110649C(&HFF, Me)
  loc_E32FB0: Call Proc_284_23_135F454(global_52)
  loc_E32FB5: Exit Sub
  loc_E32FB6: Assert
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F037E4
  'Data Table: 45A94C
  Dim var_8C As TextBox
  loc_F0371B: Set var_88 = Me.Txt
  loc_F03721: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD))
  loc_F03738: If IsDate(CVar(var_8C)) Then
  loc_F03749:   Set var_88 = Me.Txt
  loc_F0374F:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD), var_8C)
  loc_F0376F:   If (CDate(var_8C.Text) = MemVar_1F920EC) Then
  loc_F03780:     Set var_88 = Me.Txt
  loc_F03786:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB), var_8C)
  loc_F0378E:     var_A0 = var_8C.Text
  loc_F03799:     Proc_275_19_166EDB0(var_A0, MemVar_1F923B4)
  loc_F037AB:   Else
  loc_F037B1:     Call 0.Method_arg_50 (var_A0)
  loc_F037D2:     MsgBox("Print Receipt Of Current Date Only.", &H40, CVar(var_A0), var_E0, var_100)
  loc_F037E2:   End If
  loc_F037E2: End If
  loc_F037E2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12E8934
  'Data Table: 45A94C
  Dim var_BC As String
  Dim var_134 As TextBox
  Dim var_140 As TextBox
  Dim unk_45A959 As Connection15
  Dim var_138 As String
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_154 As Double
  Dim var_168 As TextBox
  Dim var_15C As Double
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_144 As String
  Dim var_160 As String
  Dim var_240 As Variant
  Dim Me As Recordset15
  loc_12E82C0: On Error Goto loc_12E8888
  loc_12E82CE: If (global_56 = vbNullString) Then
  loc_12E82DC:   var_EC = "Smart Card Validation"
  loc_12E82F2:   MsgBox("Please Scan Card First.", &H40, var_EC, var_10C, var_12C)
  loc_12E8302:   Exit Sub
  loc_12E8303: End If
  loc_12E8311: Set var_130 = Me.Txt
  loc_12E8317: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134)
  loc_12E833F: Set var_13C = Me.Txt
  loc_12E8345: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_12E8372: If ((CDbl(Val(var_134.Text)) = CDbl(0)) And (CDbl(Val(var_140.Text)) = CDbl(0))) Then
  loc_12E838E:   MsgBox("Both of Amount Should Not be Zero.", &H40, var_EC, var_10C, var_12C)
  loc_12E83A5:   Call Txt_GotFocus(CInt(9))
  loc_12E83AA:   Exit Sub
  loc_12E83AB: End If
  loc_12E83B4: unk_45A959.BeginTrans var_14C
  loc_12E83BD: var_AA = CByte(1) 'Byte
  loc_12E83D4: Set var_130 = Me.Txt
  loc_12E83DA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134)
  loc_12E83E2: var_134.Text = CStr(MemVar_1F920EC)
  loc_12E83FC: var_160 = 0
  loc_12E8421: var_144 = 0
  loc_12E844B: If (Proc_275_12_130A7A4(2, var_8C, var_88, 0, var_144) = 0) Then
  loc_12E844E:   GoTo loc_12E8888
  loc_12E8451: End If
  loc_12E8468: If ((global_60 = var_8C) And (global_56 = var_88)) Then
  loc_12E8478:   var_138 = "Agnst. Recharge " & var_88
  loc_12E848D:   Set var_130 = Me.Txt
  loc_12E8493:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134, CVar(var_138 & "/"), 0)
  loc_12E84A2:   var_EC = Trim(CVar(var_134))
  loc_12E84D1:   Set var_130 = Me.Txt
  loc_12E84D7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134, var_160)
  loc_12E84F2:   Set var_13C = Me.Txt
  loc_12E84F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_140, var_138)
  loc_12E8500:   var_94 = var_140.Text
  loc_12E850D:   var_154 = Val(var_138)
  loc_12E851E:   Set var_164 = Me.Txt
  loc_12E8524:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_144)
  loc_12E8539:   var_15C = Val(var_144)
  loc_12E8577:   Proc_275_17_1185D08(var_88, global_60, "Recharge", CDate(var_134.Text), var_168.Text, var_15C, CStr(0 & var_EC))
  loc_12E85A6:   Set var_130 = Me.Txt
  loc_12E85AC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, MemVar_1F920C8, CDate(Proc_6_14_EF349C(var_15C)))
  loc_12E85B4:   "A" = var_134.Text
  loc_12E85C1:   var_154 = Val(var_138)
  loc_12E85CB:   var_94 = (var_94 + var_154)
  loc_12E85E6:   Set var_130 = Me.Txt
  loc_12E85EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134, var_138, var_94, var_154)
  loc_12E85F4:   var_A8 = var_134.Text
  loc_12E860B:   var_9C = (var_9C + Val(var_138))
  loc_12E8626:   Set var_130 = Me.Txt
  loc_12E862C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, var_9C)
  loc_12E8634:   var_154 = var_134.Text
  loc_12E8641:   var_154 = Val(var_138)
  loc_12E864F:   Proc_6_17_EAA2B0(var_EC, CVar(Proc_6_14_EF349C(var_154, var_94)))
  loc_12E865F:   Proc_6_17_EAA2B0(var_1F0, var_88)
  loc_12E8684:   var_10C = CVar("Update SmartCardRegistration Set LastTransAmt=" & CStr(var_154) & ",LastTransDate=") 'String
  loc_12E868A:   var_12C = var_10C & var_EC 
  loc_12E86D5:   var_240 = var_12C & ",CurrBal=" & CVar(var_94) & ",SecurBal=" & CVar(var_9C) & " Where Code=" & var_1F0 & " And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_12E86EC:   unk_45A959.Execute CStr(var_240 & "'"), var_280, -1
  loc_12E8737:   If (Proc_275_7_10CC664(var_94, var_9C, var_8C) = 0) Then
  loc_12E873A:     GoTo loc_12E8888
  loc_12E873D:   End If
  loc_12E8740: Else
  loc_12E8756:   var_BC = "Smart Card is Changed"
  loc_12E8761:   MsgBox(var_BC, &H10, "Smart Card Verification", var_10C, var_12C)
  loc_12E8774: Else
  loc_12E877A:   unk_45A959.CommitTrans
  loc_12E8783:   var_AA = CByte(0) 'Byte
  loc_12E8787:   Call Proc_284_26_EF6134(var_13C, var_9C)
  loc_12E87B1:   Me.Find "SearchCode='" & var_A8 & "'", 0, 1
  loc_12E87E0:   Call Proc_284_20_1095A68(Proc_5_1_100CB50("INI", Me, global_52), var_BC)
  loc_12E87EB:   Call Proc_284_23_135F454(var_9C)
  loc_12E87F9:   var_14C = Me.RecordCount
  loc_12E8807:   If (var_14C > 0) Then
  loc_12E8841:     If (MsgBox("Print Receipt ?", &H24, "Print", var_10C, var_12C) = 6) Then
  loc_12E884A:       Proc_275_19_166EDB0(var_A8)
  loc_12E884F:     End If
  loc_12E884F:   End If
  loc_12E884F:   Call Proc_284_21_EE1310(MemVar_1F923B4)
  loc_12E8854:   Call Proc_284_26_EF6134()
  loc_12E886E:   var_138 = "INI"
  loc_12E887C:   Call Proc_284_20_1095A68(Proc_5_1_100CB50(var_138, Me))
  loc_12E8887:   Exit Sub
  loc_12E8888: End If
  loc_12E8888: ' Referenced from: 12E873A
  loc_12E8888: ' Referenced from: 12E844E
  loc_12E8888: ' Referenced from: 12E82C0
  loc_12E8891: If (CInt(var_AA) = 1) Then
  loc_12E889A:   unk_45A959.RollbackTrans
  loc_12E88AA:   var_EC = "Smart Card Detail"
  loc_12E88C0:   MsgBox("Transaction Failed.", &H10, var_EC, var_10C, var_12C)
  loc_12E88D0:   Call Proc_284_21_EE1310(global_52)
  loc_12E88D5: End If
  loc_12E88DD: Set var_130 = Err()
  loc_12E88E3: Call 0.Method_arg_1C (var_14C)
  loc_12E88F4: If (var_14C <> 0) Then
  loc_12E88FF:   Set var_130 = Err()
  loc_12E8905:   Call 0.Method_arg_2C (var_138)
  loc_12E891E:   MsgBox(CVar(var_138), &H10, var_EC, var_10C, var_12C)
  loc_12E8931: End If
  loc_12E8931: Exit Sub
  loc_12E8932:  = var_2B02
End Sub

Private Sub Form_Load() 'EE1400
  'Data Table: 45A94C
  loc_EE1350: On Error Goto loc_EE13BC
  loc_EE135A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EE135F: Call Proc_284_21_EE1310()
  loc_EE1364: Call Proc_284_26_EF6134()
  loc_EE1375: Set var_90 = Me
  loc_EE137E: var_8C = "INI"
  loc_EE138C: Call Proc_284_20_1095A68(Proc_5_1_100CB50(var_8C, var_90))
  loc_EE13A0: Call 0.Method_arg_160 (var_90)
  loc_EE13AE: Call 0.Method_arg_164 (var_90)
  loc_EE13B6: Call Proc_284_23_135F454(global_52)
  loc_EE13BB: Exit Sub
  loc_EE13BC: ' Referenced from: EE1350
  loc_EE13C4: Set var_90 = Err()
  loc_EE13CA: Call 0.Method_arg_2C (var_8C)
  loc_EE13EB: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EE13FE: Exit Sub
  loc_EE13FF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D0CC
  'Data Table: 45A94C
  loc_E0D0C3: Set global_52 = Nothing
  loc_E0D0CA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27444
  'Data Table: 45A94C
  loc_E2741C: On Error Goto loc_E2743B
  loc_E27433: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2743B: ' Referenced from: E2741C
  loc_E2743B: Proc_6_60_E62BC4(Shift)
  loc_E27440: Exit Sub
End Sub

Private Sub CmdCardScan_UnknownEvent_9 'F6DD8C
  'Data Table: 45A94C
  Dim var_D8 As TextBox
  loc_F6DC54: Call Proc_284_21_EE1310()
  loc_F6DC61: If (Proc_275_20_1365BE0() = 0) Then
  loc_F6DC64:   Exit Sub
  loc_F6DC65: End If
  loc_F6DC70: var_B0 = 0
  loc_F6DCC5: If (Proc_275_12_130A7A4(2, global_60, global_56, 0, 0) = 0) Then
  loc_F6DCC8:   Exit Sub
  loc_F6DCC9: End If
  loc_F6DCCF: Call Proc_284_24_125BF80(global_56, 0, 0)
  loc_F6DCDF: Proc_6_47_EF59D0(var_D0, var_8C, var_B0)
  loc_F6DCF6: Set var_D4 = Me.Txt
  loc_F6DCFC: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&HF), var_D8, CStr(var_D0))
  loc_F6DD04: var_D8.Text = var_8C
  loc_F6DD21: Proc_6_47_EF59D0(var_D0, var_94)
  loc_F6DD38: Set var_D4 = Me.Txt
  loc_F6DD3E: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&H10), var_D8)
  loc_F6DD46: var_D8.Text = CStr(var_D0)
  loc_F6DD58: Call Proc_284_26_EF6134(var_94)
  loc_F6DD80: Call Proc_284_20_1095A68(Proc_5_1_100CB50("INI", Me))
  loc_F6DD8B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE70CC
  'Data Table: 45A94C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EE701E: On Error Goto loc_EE7087
  loc_EE7027: Me.MoveFirst
  loc_EE7041: var_8C = "SearchCode='" & MyValue
  loc_EE7051: Me.Find var_8C & "'", 0, 1
  loc_EE7079: Proc_5_0_110649C(&HFF, Me, global_52)
  loc_EE7081: Call Proc_284_23_135F454(0)
  loc_EE7086: Exit Sub
  loc_EE7087: ' Referenced from: EE701E
  loc_EE708F: Set var_A8 = Err()
  loc_EE7095: Call 0.Method_arg_2C (var_8C)
  loc_EE70B6: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EE70C9: Exit Sub
  loc_EE70CA: Exit Sub
End Sub

Public Sub Proc_284_20_1095A68(arg_C) '1095A68
  'Data Table: 45A94C
  Dim var_98 As TextBox
  loc_10957AE: Set var_8C = Me.Txt
  loc_10957B4: Call 0.Method_Proc_284_20_1095A68C (var_8E, var_86)
  loc_10957C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10957DA:   Set var_8C = Me.Txt
  loc_10957E0:   Call 0.Method_Proc_284_20_1095A680 (CInt(var_86), var_98)
  loc_10957E8:   var_98.Enabled = arg_C
  loc_10957F7: Next var_92 'Byte
  loc_109580A: Set var_8C = Me.Txt
  loc_1095810: Call 0.Method_Proc_284_20_1095A680 (CInt(0), var_98)
  loc_1095818: var_98.Enabled = False
  loc_1095831: Set var_8C = Me.Txt
  loc_1095837: Call 0.Method_Proc_284_20_1095A680 (CInt(1), var_98)
  loc_109583F: var_98.Enabled = False
  loc_1095858: Set var_8C = Me.Txt
  loc_109585E: Call 0.Method_Proc_284_20_1095A680 (CInt(2), var_98)
  loc_1095866: var_98.Enabled = False
  loc_109587F: Set var_8C = Me.Txt
  loc_1095885: Call 0.Method_Proc_284_20_1095A680 (CInt(3), var_98)
  loc_109588D: var_98.Enabled = False
  loc_10958A6: Set var_8C = Me.Txt
  loc_10958AC: Call 0.Method_Proc_284_20_1095A680 (CInt(4), var_98)
  loc_10958B4: var_98.Enabled = False
  loc_10958CD: Set var_8C = Me.Txt
  loc_10958D3: Call 0.Method_Proc_284_20_1095A680 (CInt(5), var_98)
  loc_10958DB: var_98.Enabled = False
  loc_10958F4: Set var_8C = Me.Txt
  loc_10958FA: Call 0.Method_Proc_284_20_1095A680 (CInt(6), var_98)
  loc_1095902: var_98.Enabled = False
  loc_109591B: Set var_8C = Me.Txt
  loc_1095921: Call 0.Method_Proc_284_20_1095A680 (CInt(7), var_98)
  loc_1095929: var_98.Enabled = False
  loc_1095942: Set var_8C = Me.Txt
  loc_1095948: Call 0.Method_Proc_284_20_1095A680 (CInt(8), var_98)
  loc_1095950: var_98.Enabled = False
  loc_1095969: Set var_8C = Me.Txt
  loc_109596F: Call 0.Method_Proc_284_20_1095A680 (CInt(&HB), var_98)
  loc_1095977: var_98.Enabled = False
  loc_1095990: Set var_8C = Me.Txt
  loc_1095996: Call 0.Method_Proc_284_20_1095A680 (CInt(&HC), var_98)
  loc_109599E: var_98.Enabled = False
  loc_10959B7: Set var_8C = Me.Txt
  loc_10959BD: Call 0.Method_Proc_284_20_1095A680 (CInt(&HD), var_98)
  loc_10959C5: var_98.Enabled = False
  loc_10959DE: Set var_8C = Me.Txt
  loc_10959E4: Call 0.Method_Proc_284_20_1095A680 (CInt(&HE), var_98)
  loc_10959EC: var_98.Enabled = False
  loc_1095A05: Set var_8C = Me.Txt
  loc_1095A0B: Call 0.Method_Proc_284_20_1095A680 (CInt(&HF), var_98)
  loc_1095A13: var_98.Enabled = False
  loc_1095A2C: Set var_8C = Me.Txt
  loc_1095A32: Call 0.Method_Proc_284_20_1095A680 (CInt(&H10), var_98)
  loc_1095A3A: var_98.Enabled = False
  loc_1095A53: Set var_8C = Me.CmdCardScan
  loc_1095A59: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_1095A64: Exit Sub
End Sub

Public Sub Proc_284_21_EE1310
  'Data Table: 45A94C
  Dim var_98 As TextBox
  loc_EE1262: Set var_8C = Me.Txt
  loc_EE1268: Call 0.Method_Proc_284_21_EE1310C (var_8E, var_86)
  loc_EE1278: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE128E:   Set var_8C = Me.Txt
  loc_EE1294:   Call 0.Method_Proc_284_21_EE13100 (CInt(var_86), var_98)
  loc_EE129C:   var_98.Text = vbNullString
  loc_EE12B8:   Set var_8C = Me.Txt
  loc_EE12BE:   Call 0.Method_Proc_284_21_EE13100 (CInt(var_86), var_98)
  loc_EE12C6:   var_98.Tag = vbNullString
  loc_EE12D5: Next var_92 'Byte
  loc_EE12E1: global_56 = vbNullString
  loc_EE12EB: global_60 = vbNullString
  loc_EE12F2: var_A0 = vbNullString
  loc_EE1301: Call Proc_284_25_11DB2A4(vbNullString)
  loc_EE130D: Exit Sub
End Sub

Public Sub Proc_284_22_F0C6D8
  'Data Table: 45A94C
  Dim var_8C As TextBox
  loc_F0C5F2: Set var_88 = Me.Txt
  loc_F0C5F8: Call 0.Method_Proc_284_22_F0C6D80 (CInt(&HD), var_8C)
  loc_F0C600: var_8C.Text = vbNullString
  loc_F0C61A: Set var_88 = Me.Txt
  loc_F0C620: Call 0.Method_Proc_284_22_F0C6D80 (CInt(&HC), var_8C)
  loc_F0C628: var_8C.Text = vbNullString
  loc_F0C642: Set var_88 = Me.Txt
  loc_F0C648: Call 0.Method_Proc_284_22_F0C6D80 (CInt(&HE), var_8C)
  loc_F0C650: var_8C.Text = vbNullString
  loc_F0C66A: Set var_88 = Me.Txt
  loc_F0C670: Call 0.Method_Proc_284_22_F0C6D80 (CInt(&HB), var_8C)
  loc_F0C678: var_8C.Text = vbNullString
  loc_F0C692: Set var_88 = Me.Txt
  loc_F0C698: Call 0.Method_Proc_284_22_F0C6D80 (CInt(9), var_8C)
  loc_F0C6A0: var_8C.Text = vbNullString
  loc_F0C6BA: Set var_88 = Me.Txt
  loc_F0C6C0: Call 0.Method_Proc_284_22_F0C6D80 (CInt(&HA), var_8C)
  loc_F0C6C8: var_8C.Text = vbNullString
  loc_F0C6D4: Exit Sub
  loc_F0C6D5:  = 
End Sub

Public Sub Proc_284_23_135F454
  'Data Table: 45A94C
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  loc_135EC18: On Error Goto loc_135F40E
  loc_135EC21: Proc_183_45_E5C118(global_52)
  loc_135EC3D: If (Me.RecordCount <= 0) Then
  loc_135EC40:   Call Proc_284_21_EE1310()
  loc_135EC48: Else
  loc_135EC79:   global_60 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SerialNo")))
  loc_135ECC2:   Set var_B8 = Me.Txt
  loc_135ECC8:   Call 0.Method_Proc_284_23_135F4540 (CInt(&HB), var_BC)
  loc_135ECD0:   var_BC.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_135ED3B:   Set var_B8 = Me.Txt
  loc_135ED41:   Call 0.Method_Proc_284_23_135F4540 (CInt(&HD), var_BC, CStr(Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_135ED49:   var_BC.Text = 1
  loc_135ED91:   var_DC = "hh:nn"
  loc_135EDB8:   Set var_B8 = Me.Txt
  loc_135EDBE:   Call 0.Method_Proc_284_23_135F4540 (CInt(&HE), var_BC, CStr(Format(CVar(Me.Fields.Item("U_EntDt")), var_DC)))
  loc_135EDC6:   var_BC.Text = 1
  loc_135EE09:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("VNo")))
  loc_135EE20:   Set var_B8 = Me.Txt
  loc_135EE26:   Call 0.Method_Proc_284_23_135F4540 (CInt(&HC), var_BC, CStr(var_DC))
  loc_135EE2E:   var_BC.Text = 1
  loc_135EE9B:   Set var_B8 = Me.Txt
  loc_135EEA1:   Call 0.Method_Proc_284_23_135F4540 (CInt(0), var_BC, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_135EEA9:   var_BC.Text = 1
  loc_135EEFF:   Set var_B8 = Me.Txt
  loc_135EF05:   Call 0.Method_Proc_284_23_135F4540 (CInt(1), var_BC, CStr(Me.Fields.Item("CardType").Value))
  loc_135EF0D:   var_BC.Text = 1
  loc_135EF5C:   Set var_B8 = Me.Txt
  loc_135EF62:   Call 0.Method_Proc_284_23_135F4540 (CInt(2), var_BC)
  loc_135EF6A:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberName")))
  loc_135EFB7:   Set var_B8 = Me.Txt
  loc_135EFBD:   Call 0.Method_Proc_284_23_135F4540 (CInt(2), var_BC)
  loc_135EFC5:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberCode")))
  loc_135F012:   Set var_B8 = Me.Txt
  loc_135F018:   Call 0.Method_Proc_284_23_135F4540 (CInt(3), var_BC)
  loc_135F020:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_135F06D:   Set var_B8 = Me.Txt
  loc_135F073:   Call 0.Method_Proc_284_23_135F4540 (CInt(3), var_BC)
  loc_135F07B:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_135F0CB:   Set var_B8 = Me.Txt
  loc_135F0D1:   Call 0.Method_Proc_284_23_135F4540 (CInt(4), var_BC)
  loc_135F0D9:   var_BC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_135F128:   Set var_B8 = Me.Txt
  loc_135F12E:   Call 0.Method_Proc_284_23_135F4540 (CInt(5), var_BC)
  loc_135F136:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Addr")))
  loc_135F183:   Set var_B8 = Me.Txt
  loc_135F189:   Call 0.Method_Proc_284_23_135F4540 (CInt(6), var_BC)
  loc_135F191:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_135F1FA:   Set var_B8 = Me.Txt
  loc_135F200:   Call 0.Method_Proc_284_23_135F4540 (CInt(7), var_BC, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_135F208:   var_BC.Text = 1
  loc_135F255:   var_EC = "No"
  loc_135F260:   var_DC = "Yes"
  loc_135F278:   var_11C = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_DC, var_EC)
  loc_135F28F:   Set var_B8 = Me.Txt
  loc_135F295:   Call 0.Method_Proc_284_23_135F4540 (CInt(8), var_BC)
  loc_135F29D:   var_BC.Text = CStr(var_11C)
  loc_135F2EA:   Proc_6_47_EF59D0(var_DC, CVar(Me.Fields.Item("CashAmt")))
  loc_135F301:   Set var_B8 = Me.Txt
  loc_135F307:   Call 0.Method_Proc_284_23_135F4540 (CInt(9), var_BC)
  loc_135F30F:   var_BC.Text = CStr(var_DC)
  loc_135F350:   Proc_6_47_EF59D0(var_DC, CVar(Me.Fields.Item("SecurityAmt")))
  loc_135F358:   var_B4 = CStr(var_DC)
  loc_135F367:   Set var_B8 = Me.Txt
  loc_135F36D:   Call 0.Method_Proc_284_23_135F4540 (CInt(&HA), var_BC)
  loc_135F375:   var_BC.Text = var_B4
  loc_135F3F1:   Call Proc_284_25_11DB2A4(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E68A98(CVar(Me.Fields.Item("SigPath"))))
  loc_135F40D: End If
  loc_135F40D: Exit Sub
  loc_135F40E: ' Referenced from: 135EC18
  loc_135F416: Set var_8C = Err()
  loc_135F41C: Call 0.Method_arg_2C (var_B4)
  loc_135F43D: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_11C)
  loc_135F450: Exit Sub
End Sub

Public Sub Proc_284_24_125BF80(arg_C) '125BF80
  'Data Table: 45A94C
  Dim var_90 As String
  Dim unk_45A959 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_100 As TextBox
  Dim var_C8 As Variant
  Dim var_FC As Fields15
  loc_125BA27: var_88 = arg_C
  loc_125BA3E: var_90 = "Select SCR.MemberCode,S.Name As MemberName,SCR.Code,SCR.Name As Name,SCR.CardType,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.SerialNo,SCR.IssDate,SCR.ValidUpto,SCR.BlockedYN,MF.PicPath,MF.SigPath From SmartCardRegistration SCR Left Join MemberFamily MF On MF.CardRegId=SCR.Code Left Join SubGroup S On SCR.MemberCode=S.Subcode Where SCR.LogSite_Code='" & MemVar_1F92078
  loc_125BA5C: unk_45A959.Execute var_90 & "' And SCR.Code='" & var_88 & "'", var_BC, -1
  loc_125BA67: Set var_8C = var_C0
  loc_125BA8F: If (var_8C.RecordCount > 0) Then
  loc_125BAC0:   global_60 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SerialNo")))
  loc_125BB1F:   Set var_FC = Me.Txt
  loc_125BB25:   Call 0.Method_Proc_284_24_125BF800 (CInt(0), var_100, CStr(Format(CVar(var_8C.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_125BB2D:   var_100.Text = 1
  loc_125BB80:   Set var_FC = Me.Txt
  loc_125BB86:   Call 0.Method_Proc_284_24_125BF800 (CInt(1), var_100, CStr(var_8C.Fields.Item("CardType").Value))
  loc_125BB8E:   var_100.Text = 1
  loc_125BBDA:   Set var_FC = Me.Txt
  loc_125BBE0:   Call 0.Method_Proc_284_24_125BF800 (CInt(2), var_100)
  loc_125BBE8:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MemberName")))
  loc_125BC32:   Set var_FC = Me.Txt
  loc_125BC38:   Call 0.Method_Proc_284_24_125BF800 (CInt(2), var_100)
  loc_125BC40:   var_100.Tag = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MemberCode")))
  loc_125BC6B:   var_C8 = var_8C.Fields.Item("Name")
  loc_125BC8A:   Set var_FC = Me.Txt
  loc_125BC90:   Call 0.Method_Proc_284_24_125BF800 (CInt(3), var_100)
  loc_125BC98:   var_100.Text = Proc_6_38_E68A98(CVar(var_C8))
  loc_125BCBA:   Set var_C0 = Me.Txt
  loc_125BCC0:   Call 0.Method_Proc_284_24_125BF800 (CInt(3), var_C8)
  loc_125BCC8:   var_C8.Tag = var_88
  loc_125BD0A:   Set var_FC = Me.Txt
  loc_125BD10:   Call 0.Method_Proc_284_24_125BF800 (CInt(4), var_100)
  loc_125BD18:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")))
  loc_125BD62:   Set var_FC = Me.Txt
  loc_125BD68:   Call 0.Method_Proc_284_24_125BF800 (CInt(5), var_100)
  loc_125BD70:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Addr")))
  loc_125BDBA:   Set var_FC = Me.Txt
  loc_125BDC0:   Call 0.Method_Proc_284_24_125BF800 (CInt(6), var_100)
  loc_125BDC8:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Phone")))
  loc_125BE2E:   Set var_FC = Me.Txt
  loc_125BE34:   Call 0.Method_Proc_284_24_125BF800 (CInt(7), var_100, CStr(Format(CVar(var_8C.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_125BE3C:   var_100.Text = 1
  loc_125BEC0:   Set var_FC = Me.Txt
  loc_125BEC6:   Call 0.Method_Proc_284_24_125BF800 (CInt(8), var_100)
  loc_125BECE:   var_100.Text = CStr(IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BlockedYN")), 1) = "Y"), "Yes", "No"))
  loc_125BF01:   var_C0 = var_8C.Fields
  loc_125BF50:   Call Proc_284_25_11DB2A4(Proc_6_38_E68A98(CVar(var_C0.Item("PicPath"))), Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SigPath"))))
  loc_125BF6F: Else
  loc_125BF6F:   Call Proc_284_21_EE1310(var_C0)
  loc_125BF74: End If
  loc_125BF79: Set var_8C = Nothing
  loc_125BF7C: Exit Sub
End Sub

Public Sub Proc_284_25_11DB2A4(arg_C, arg_10) '11DB2A4
  'Data Table: 45A94C
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11DAE4B: Set var_8C = Me.ImgPhoto
  loc_11DAE64: If (var_8C.Tag <> arg_C) Then
  loc_11DAE74:   var_F0 = IsNull(arg_C)
  loc_11DAE7B:   var_B0 = arg_C
  loc_11DAE8B:   var_D0 = vbNullString
  loc_11DAEA2:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DAEC3:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DAED8:     Me.ImgPhoto.Picture = var_8C
  loc_11DAEF1:     Me.ImgPhoto.Tag = vbNullString
  loc_11DAEFC:   Else
  loc_11DAEFF:     var_A0 = arg_C
  loc_11DAF0F:     var_D0 = arg_C
  loc_11DAF3A:     var_B0 = "DAT"
  loc_11DAF62:     var_F0 = "AVI"
  loc_11DAF81:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DAF90:       Me.ImgPhoto.Visible = False
  loc_11DAF9B:     Else
  loc_11DAFA8:       Me.ImgPhoto.Tag = arg_C
  loc_11DAFBC:       Call 0.Method_Proc_284_25_11DB2A44 (arg_C, var_17A)
  loc_11DAFC4:       If var_17A Then
  loc_11DAFE1:         Set var_8C = Me.ImgPhoto
  loc_11DAFF9:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DB00E:         Me.ImgPhoto.Picture = var_114
  loc_11DB023:         Set var_8C = Me.ImgPhoto
  loc_11DB029:         var_8C.Refresh
  loc_11DB034:       Else
  loc_11DB052:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB067:         Me.ImgPhoto.Picture = var_8C
  loc_11DB073:       End If
  loc_11DB073:     End If
  loc_11DB073:   End If
  loc_11DB073: End If
  loc_11DB07A: Set var_8C = Me.ImgSign
  loc_11DB093: If (var_8C.Tag <> arg_10) Then
  loc_11DB0A3:   var_F0 = IsNull(arg_10)
  loc_11DB0AA:   var_B0 = arg_10
  loc_11DB0BA:   var_D0 = vbNullString
  loc_11DB0D1:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DB0F2:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB107:     Me.ImgSign.Picture = var_8C
  loc_11DB120:     Me.ImgSign.Tag = vbNullString
  loc_11DB12B:   Else
  loc_11DB12E:     var_A0 = arg_10
  loc_11DB13E:     var_D0 = arg_10
  loc_11DB169:     var_B0 = "DAT"
  loc_11DB191:     var_F0 = "AVI"
  loc_11DB1B0:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DB1BF:       Me.ImgSign.Visible = False
  loc_11DB1CA:     Else
  loc_11DB1D1:       Set var_8C = Me.ImgSign
  loc_11DB1D7:       var_8C.Tag = arg_10
  loc_11DB1EB:       Call 0.Method_Proc_284_25_11DB2A44 (arg_10, var_17A, var_8C)
  loc_11DB1F3:       If var_17A Then
  loc_11DB210:         Set var_8C = Me.ImgSign
  loc_11DB228:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DB23D:         Me.ImgSign.Picture = var_114
  loc_11DB252:         Set var_8C = Me.ImgSign
  loc_11DB258:         var_8C.Refresh
  loc_11DB263:       Else
  loc_11DB281:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB296:         Me.ImgSign.Picture = var_8C
  loc_11DB2A2:       End If
  loc_11DB2A2:     End If
  loc_11DB2A2:   End If
  loc_11DB2A2: End If
  loc_11DB2A2: Exit Sub
End Sub

Public Sub Proc_284_26_EF6134
  'Data Table: 45A94C
  Dim var_88 As String
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_45A959 As Connection15
  loc_EF6087: var_88 = "SELECT SCL.DocId As Searchcode,SCL.Code,SCL.VType,SCL.VNo,Convert(Varchar(11),SCL.VDate,103) VDate,SCL.Narration,SCL.U_Name,SCL.U_EntDt,SCL.CashAmt,SCL.SecurityAmt,SCR.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.ValidUpto,SCR.BlockedYN,SCR.SerialNo,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From (Select DocId,Max(Code)Code,Max(VType)Vtype,Max(VNo)VNo,Max(VDate)VDate,Max(Narration)Narration,Max(U_Name)U_Name,Max(U_EntDt)U_EntDt,IsNull(Sum(CashAmt),0)CashAmt,IsNull(Sum(SecurityAmt),0)SecurityAmt From " & "(Select DocId,Code,Vtype,VNo,VDate,Narration,U_Name,U_EntDt,CashAmt = CASE WHEN Type='RCARDC' THEN AmtCr ELSE 0 END ,SecurityAmt = CASE WHEN Type='RCARDS' THEN AmtCr ELSE 0 END From SmartCardLedger Where VType='RCARD' And AmtCr>0 And Code='"
  loc_EF6098: var_9C = CVar(var_88 & global_56 & "' And VDate='") 'String
  loc_EF60D1: var_15C = var_9C & CDate(MemVar_1F920EC) & "' And Site_Code='" & CVar(MemVar_1F92070) & "' And LOGSITE_CODE='" & CVar(MemVar_1F92078) & "')Q Group By Q.DocId) SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code " 
  loc_EF60DA: var_17C = var_15C & "Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode Order By SCL.VNo Desc" 
  loc_EF6113: unk_45A959.Execute CStr(var_17C), var_9C, -1
  loc_EF6124: Set global_52 = var_180
  loc_EF6132: Exit Sub
End Sub
