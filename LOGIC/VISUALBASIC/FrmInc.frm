VERSION 5.00
Begin VB.Form FrmInc
  Caption = "Inconsistency Check"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmInc.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 9390
  ClientHeight = 8115
  Begin BtnEnh BtnEnh1
    Left = 300
    Top = 1890
    Width = 1560
    Height = 660
    TabIndex = 23
  End
  Begin BtnEnh BtnAcGroup
    Left = 2025
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 22
  End
  Begin CommandButton BtnIntegrityz
    Caption = "Integrity Check"
    BackColor = &HC0FFC0&
    Left = 15585
    Top = 9885
    Width = 1620
    Height = 1020
    Visible = 0   'False
    TabIndex = 20
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
  Begin Frame FrmPurch
    Caption = "Purchase"
    BackColor = &HC0FFFF&
    Left = 19845
    Top = 10380
    Width = 495
    Height = 630
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton Command1
      Caption = "Update Structure"
      BackColor = &HC0FFFF&
      Left = 75
      Top = 2190
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 18
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
    Begin CommandButton BtnPurchasez
      Caption = "Purchase/Store"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 720
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 17
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
    Begin CommandButton BtnHouseKeepz
      Caption = "House Keep./Kitchen"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 255
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 16
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
    Begin CommandButton CmdGodownz
      Caption = "Godown"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 1185
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 15
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
    Begin CommandButton BtnBanquetz
      Caption = "Banquet"
      BackColor = &HC0FFFF&
      Left = 90
      Top = 1650
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 14
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
  Begin Frame FrmFOM
    Caption = "FrontDesk"
    BackColor = &HC0E0FF&
    Left = 18735
    Top = 10290
    Width = 375
    Height = 675
    Visible = 0   'False
    TabIndex = 2
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton btnPayTypez
      Caption = "PaymentTypes"
      BackColor = &HC0E0FF&
      Left = 60
      Top = 780
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 19
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
    Begin CommandButton BTNFOMz
      Caption = "F.O.M."
      BackColor = &HC0E0FF&
      Left = 60
      Top = 315
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 13
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
  Begin Frame FrmACC
    Caption = "Accounts"
    BackColor = &HFFFFC0&
    Left = 18450
    Top = 10230
    Width = 240
    Height = 840
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BtnVrTypez
      Caption = "Voucher Types"
      BackColor = &HFFFFC0&
      Left = 120
      Top = 735
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 11
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
    Begin CommandButton BtnAcGroupz
      Caption = "Account Group"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 270
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 10
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
    Begin CommandButton BtnTaxz
      Caption = "Tax"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 2130
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 9
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
    Begin CommandButton BtnUnitz
      Caption = "Unit"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 2595
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 8
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
    Begin CommandButton BtnSundryMastz
      Caption = "Sundry Master"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 1665
      Width = 2040
      Height = 465
      Visible = 0   'False
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
    Begin CommandButton BtnSundryTypeFixz
      Caption = "Sundry Type Fix"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 1200
      Width = 2040
      Height = 465
      Visible = 0   'False
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
  End
  Begin Frame FrmPOS
    Caption = "Restaurnt"
    BackColor = &HC0C0FF&
    Left = 19245
    Top = 10290
    Width = 525
    Height = 690
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BTNRoomServicez
      Caption = "Room Service"
      BackColor = &HC0C0FF&
      Left = 45
      Top = 330
      Width = 2040
      Height = 465
      Visible = 0   'False
      TabIndex = 12
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
  Begin TextBox Text1
    BackColor = &HC0E0FF&
    ForeColor = &HC00000&
    Left = 2595
    Top = 675
    Width = 12135
    Height = 555
    TabIndex = 1
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
  Begin CommandButton BtnExitz
    Caption = "Exit"
    BackColor = &HFFC0FF&
    Left = 17340
    Top = 10545
    Width = 1005
    Height = 360
    Visible = 0   'False
    TabIndex = 0
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
  Begin BtnEnh BtnVrType
    Left = 4290
    Top = 1875
    Width = 2265
    Height = 585
    TabIndex = 24
  End
  Begin BtnEnh BtnSundryTypeFix
    Left = 6555
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 25
  End
  Begin BtnEnh BtnSundryMast
    Left = 8820
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 26
  End
  Begin BtnEnh BtnTax
    Left = 11085
    Top = 1890
    Width = 2265
    Height = 585
    TabIndex = 27
  End
End
Begin BtnEnh BtnUnit
  Left = 13350
  Top = 1890
  Width = 2265
  Height = 585
  TabIndex = 28
End
Begin BtnEnh BtnEnh7
  Left = 300
  Top = 3030
  Width = 1560
  Height = 660
  TabIndex = 29
End
Begin BtnEnh BtnHouseKeep
  Left = 2040
  Top = 3060
  Width = 2265
  Height = 585
  TabIndex = 30
End
Begin BtnEnh BtnPurchase
  Left = 4305
  Top = 3060
  Width = 2265
  Height = 585
  TabIndex = 31
End
Begin BtnEnh CmdGodown
  Left = 6570
  Top = 3060
  Width = 2265
  Height = 585
  TabIndex = 32
End
Begin BtnEnh BTNFOM
  Left = 2040
  Top = 4170
  Width = 2295
  Height = 585
  TabIndex = 33
End
Begin BtnEnh btnPayType
  Left = 4335
  Top = 4170
  Width = 2310
  Height = 585
  TabIndex = 34
End
Begin BtnEnh BtnEnh13
  Left = 300
  Top = 4170
  Width = 1560
  Height = 660
  TabIndex = 35
End
Begin BtnEnh BtnEnh14
  Left = 300
  Top = 5340
  Width = 1560
  Height = 660
  TabIndex = 36
End
Begin BtnEnh BTNRoomService
  Left = 2055
  Top = 5340
  Width = 2265
  Height = 585
  TabIndex = 37
End
Begin BtnEnh BtnEnh16
  Left = 300
  Top = 6465
  Width = 1560
  Height = 660
  TabIndex = 38
End
Begin BtnEnh BtnBanquet
  Left = 2085
  Top = 6465
  Width = 2265
  Height = 585
  TabIndex = 39
End
Begin BtnEnh BtnIntegrity
  Left = 2055
  Top = 7410
  Width = 3615
  Height = 840
  TabIndex = 40
End
Begin BtnEnh BtnExit
  Left = 6930
  Top = 7410
  Width = 1155
  Height = 930
  TabIndex = 41
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 60
  Width = 180
  Height = 540
  TabIndex = 21
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

Attribute VB_Name = "FrmInc"


Private Sub Command1_Click() '1019400
  'Data Table: 575310
  Dim unk_57533F As Connection15
  loc_10191E2: unk_57533F.Execute "UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.WTUNIT = [ITEMMAST].[ISSUEUNIT],INDENT1.WTQTY=[INDENT1].[qTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PIND'", var_A4, -1
  loc_1019203: unk_57533F.Execute "UPDATE INDENT1 SET WTQTY=QTY,WTUNIT=UNIT WHERE VtYPE='RQ'", var_A4, -1
  loc_1019224: unk_57533F.Execute "UPDATE INDENT1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[INDENT1].[ITEM] SET INDENT1.CONVFACTOR = [ITEMMAST].[CONVRATIO], INDENT1.UNIT = [ITEMMAST].[UNIT], INDENT1.QTY = [INDENT1].[WTQTY]/[ITEMMAST].[cONVRATIO] WHERE VTYPE='RQ'", var_A4, -1
  loc_1019245: unk_57533F.Execute "update Indent set clearyn='Y' where indent.Vtype='RQ' and docid in (select Contradocid from stock where vtype='RQI')", var_A4, -1
  loc_1019266: unk_57533F.Execute "UPDATE PORDER1 INNER JOIN ITEMMAST ON [itemmast].[CODE]=[PORDER1].[ITEMCODE] SET PORDER1.CONVRATIO = [ITEMMAST].[CONVRATIO], PORDER1.WTUNIT = [ITEMMAST].[ISSUEUNIT], PORDER1.WTQTY = [PORDER1].[QTY]*[ITEMMAST].[cONVRATIO] WHERE VTYPE='PORD'", var_A4, -1
  loc_1019287: unk_57533F.Execute "UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.RECDUNIT=ITEMMAST.UNIT,STOCK.RECDQTY=STOCK.QTYREC/ITEMMAST.CONVRATIO, STOCK.ACCQTY = STOCK.QTYREC / ITEMMAST.ConvRatio WHERE VTYPE='RQI'", var_A4, -1
  loc_10192A8: unk_57533F.Execute "UPDATE STOCK LEFT JOIN ITEMMAST ON STOCK.ITEM=ITEMMAST.CODE SET STOCK.CONVRATIO=ITEMMAST.CONVRATIO,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/ITEMMAST.CONVRATIO WHERE VTYPE='RQR'", var_A4, -1
  loc_10192C9: unk_57533F.Execute "update stock set ISSQTY=QTYISS,ISSUEUNIT=UNIT WHERE VTYPE IN ('KSISS','KMISS')", var_A4, -1
  loc_10192EA: unk_57533F.Execute "update stock set ACCQTY=QTYREC,RECDQTY=QTYREC,RECDUNIT=UNIT WHERE VTYPE IN ('KSREC','KMREC')", var_A4, -1
  loc_101930B: unk_57533F.Execute "UPDATE STOCK INNER JOIN ITEMMAST ON [itemmast].[CODE]=[STOCK].[ITEM] SET STOCK.UNIT = [ITEMMAST].[ISSUEUNIT],STOCK.QTYISS=STOCK.CONVRATIO*STOCK.ISSQTY,STOCK.QTYREC=STOCK.CONVRATIO*STOCK.RECDQTY WHERE VTYPE IN ('KSISS','KSREC','KMREC','KMISS')", var_A4, -1
  loc_101932C: unk_57533F.Execute "update stock Set IssQty=Recdqty,Accqty=0,ChalQty=0,IssueUnit=RECDUNIT where vtype='PRPB'", var_A4, -1
  loc_101934D: unk_57533F.Execute "Update STOCK Inner Join ITEMMAST on (ITEMMAST.cODE=STOCK.ITEM) Set STOCK.RECDQTY=0,STOCK.ISSUEUNIT=ITEMMAST.UNIT,STOCK.ISSQTY=STOCK.QTYISS/STOCK.CONVRATIO WHERE VTYPE IN ('PRPB','PRPC')", var_A4, -1
  loc_101936E: unk_57533F.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio", var_A4, -1
  loc_101938F: unk_57533F.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.ChalQty=Stock.ChalQty,Purch2.AccQty=Stock.AccQty,Purch2.RecdUnit=Stock.RecdUnit,Purch2.RecdQty=Stock.RecdQty,Purch2.RejQty=Stock.RejQty,purch2.ConvRatio=Stock.ConvRatio Where Purch2.QtyIss=0", var_A4, -1
  loc_10193B0: unk_57533F.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.iSSQty=Stock.iSSQty,Purch2.ISSUEUNIT=Stock.ISSUEUNIT Where Purch2.QtyIss<>0", var_A4, -1
  loc_10193D1: unk_57533F.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.ContraDocid And Stock.Sno=Purch2.ContraSno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.RecdUnit=Stock.RecdUnit,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT", var_A4, -1
  loc_10193F2: unk_57533F.Execute "Update purch2 Inner Join Stock on (Stock.Docid=Purch2.Docid And Stock.Sno=Purch2.Sno) Set Purch2.QtyIss=Stock.QtyIss,Purch2.QtyRec=Stock.QtyRec,Purch2.UNIT=Stock.UNIT ", var_A4, -1
  loc_10193FD: Exit Sub
End Sub

Private Sub BtnHouseKeep_UnknownEvent_9 '10013D0
  'Data Table: 575310
  Dim var_C4 As Variant
  loc_1001208: On Error Goto loc_1001392
  loc_1001226: var_F0 = "N"
  loc_100122F: var_EC = "N"
  loc_1001238: var_E8 = "N"
  loc_1001241: var_E4 = "N"
  loc_100124A: var_E0 = "HK"
  loc_1001285: var_C4 = (Trim(MemVar_1F92078) + "HK")
  loc_100128E: Call Proc_97_23_122E3AC(CStr(var_C4), "HOUSE KEEPING", "N", "N", "House Keeping", "N")
  loc_10012C6: var_110 = vbNullString
  loc_10012CF: var_10C = "Other"
  loc_10012DF: var_100 = vbNullString
  loc_10012E8: var_FC = "No"
  loc_10012F1: var_F8 = vbNullString
  loc_10012FA: var_F0 = vbNullString
  loc_1001303: var_EC = vbNullString
  loc_100130C: var_E8 = vbNullString
  loc_1001359: var_C4 = (Trim(MemVar_1F92078) + "HK")
  loc_1001362: Call Proc_97_21_117A4F4(CStr(var_C4), "HOUSE KEEPING", "HK", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_1001391: Exit Sub
  loc_1001392: ' Referenced from: 1001208
  loc_10013A8: Set var_114 = Err()
  loc_10013AE: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_124, var_144, var_E8)
  loc_10013B9: MsgBox(CVar(var_C8), var_EC, var_F0, var_F8, var_FC)
  loc_10013CC: Exit Sub
End Sub

Private Sub BtnBanquet_UnknownEvent_9 '10EF9CC
  'Data Table: 575310
  Dim var_A0 As Variant
  Dim unk_575319 As Connection15
  Dim var_8E As Integer
  loc_10EF6B0: On Error Resume Next
  loc_10EF6BC: var_A0 = CVar("Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9210C) 'String
  loc_10EF6C6: Call 0.Method_arg_24 (var_A0)
  loc_10EF6D9: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_10EF6E4: MemVar_1F9204C = New 
  loc_10EF6F5: Me.Connection15.CursorLocation = 3
  loc_10EF707: unk_575319.IsolationLevel = &H10
  loc_10EF719: unk_575319.CommandTimeout = 0
  loc_10EF742: unk_575319.Open "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & MemVar_1F9210C & ";Persist Security Info=False", vbNullString, vbNullString, -1
  loc_10EF75F: Call 0.Method_arg_30 (var_AC)
  loc_10EF767: Call 0.Method_arg_30 ("Itemmast")
  loc_10EF780: Call 0.Method_arg_30 (var_AC)
  loc_10EF788: Call 0.Method_arg_30 ("Voucher_Type")
  loc_10EF7A1: Call 0.Method_arg_30 (var_AC)
  loc_10EF7A9: Call 0.Method_arg_30 ("Voucher_Prefix")
  loc_10EF7C2: Call 0.Method_arg_30 (var_AC)
  loc_10EF7CA: Call 0.Method_arg_30 ("Depart")
  loc_10EF7EA: Me.Connection15.Execute "Drop table Itemmast", var_A0, -1
  loc_10EF80D: unk_575319.Execute "Drop table Voucher_Type", var_A0, -1
  loc_10EF830: unk_575319.Execute "Drop table Voucher_Prefix", var_A0, -1
  loc_10EF853: unk_575319.Execute "Drop table Depart", var_A0, -1
  loc_10EF86C: Set var_AC = var_88
  loc_10EF893: Call 0.Method_arg_1DC ("Depart", "Select * from " & MemVar_1F92108 & ".Depart", var_AC, var_C2)
  loc_10EF8C1: Set var_AC = var_AC
  loc_10EF8E8: Call 0.Method_arg_1DC ("Voucher_Type", "Select * from " & MemVar_1F92108 & ".Voucher_Type", var_AC, var_C2, var_C2)
  loc_10EF916: Set var_AC = var_AC
  loc_10EF93D: Call 0.Method_arg_1DC ("Voucher_Prefix", "Select * from " & MemVar_1F92108 & ".Voucher_Prefix", var_AC, var_C2, var_C2)
  loc_10EF96B: Set var_AC = var_AC
  loc_10EF992: Call 0.Method_arg_1DC ("ItemMast", "Select * from " & MemVar_1F92108 & ".ItemMast", var_AC, var_C2, var_C2)
  loc_10EF99D: Set var_88 = var_AC
  loc_10EF9A3: var_8E = var_C2
  loc_10EF9B9: Set var_8C = Nothing
  loc_10EF9C4: Me.Connection15.Close
  loc_10EF9CB: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E15718
  'Data Table: 575310
  loc_E1570D: Me.Global.Unload Me
  loc_E15715: Exit Sub
  loc_E15716: Set var_6800 = 
End Sub

Private Sub BtnVrType_UnknownEvent_9 '1D304D4
  'Data Table: 575310
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim unk_57533F As Connection15
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_8C As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_118 As Fields15
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_190 As Variant
  Dim var_1C0 As Variant
  Dim var_3A8 As Variant
  loc_1D28BFC: On Error Goto loc_1D30498
  loc_1D28C04: var_C8 = 0
  loc_1D28C0F: var_C4 = 0
  loc_1D28C1A: var_C0 = 0
  loc_1D28C25: var_BC = 0
  loc_1D28C30: var_B8 = 0
  loc_1D28C3B: var_B4 = 0
  loc_1D28C46: var_B0 = 0
  loc_1D28C51: var_AC = 0
  loc_1D28C9F: Call Proc_97_25_1371C2C("EBOUT", "EBOUT", "EBOUT", vbNullString, "EPABX OUTPUT", "EOUT", "Automatic", vbNullString)
  loc_1D28CCC: var_C8 = 0
  loc_1D28CD7: var_C4 = 0
  loc_1D28CE2: var_C0 = 0
  loc_1D28CED: var_BC = 0
  loc_1D28CF8: var_B8 = 0
  loc_1D28D03: var_B4 = 0
  loc_1D28D0E: var_B0 = 0
  loc_1D28D19: var_AC = 0
  loc_1D28D67: Call Proc_97_25_1371C2C("CFORM", "CFORM", "CFORM", vbNullString, "CFORM", "CFORM", "Automatic", vbNullString)
  loc_1D28D94: var_C8 = 0
  loc_1D28D9F: var_C4 = 0
  loc_1D28DAA: var_C0 = 0
  loc_1D28DB5: var_BC = 0
  loc_1D28DC0: var_B8 = 0
  loc_1D28DCB: var_B4 = 0
  loc_1D28DD6: var_B0 = 0
  loc_1D28DE1: var_AC = 0
  loc_1D28E2F: Call Proc_97_25_1371C2C("OPBAL", "OPBAL", "F_AO", vbNullString, "Party Opening", "Party O/B", "Automatic", vbNullString)
  loc_1D28E5C: var_C8 = 0
  loc_1D28E67: var_C4 = 0
  loc_1D28E72: var_C0 = 0
  loc_1D28E7D: var_BC = 0
  loc_1D28E88: var_B8 = 0
  loc_1D28E93: var_B4 = 0
  loc_1D28E9E: var_B0 = 0
  loc_1D28EA9: var_AC = 0
  loc_1D28EF7: Call Proc_97_25_1371C2C("TDS", "TDS", "TDS", vbNullString, "T.D.S.", "TDS", "Automatic", vbNullString)
  loc_1D28F24: var_C8 = 0
  loc_1D28F2F: var_C4 = 0
  loc_1D28F3A: var_C0 = 0
  loc_1D28F45: var_BC = 0
  loc_1D28F50: var_B8 = 0
  loc_1D28F5B: var_B4 = 0
  loc_1D28F66: var_B0 = 0
  loc_1D28F71: var_AC = 0
  loc_1D28FBF: Call Proc_97_25_1371C2C("TDSCH", "TDSCH", "TDSCP", vbNullString, "T.D.S.Challan (Cash)", "TDSCP", "Automatic", vbNullString)
  loc_1D28FEC: var_C8 = 0
  loc_1D28FF7: var_C4 = 0
  loc_1D29002: var_C0 = 0
  loc_1D2900D: var_BC = 0
  loc_1D29018: var_B8 = 0
  loc_1D29023: var_B4 = 0
  loc_1D2902E: var_B0 = 0
  loc_1D29039: var_AC = 0
  loc_1D29087: Call Proc_97_25_1371C2C("TDSCH", "TDSCH", "TDSBP", vbNullString, "T.D.S.Challan (Bank)", "TDSBP", "Automatic", vbNullString)
  loc_1D290C4: var_C8 = 0
  loc_1D290CF: var_C4 = 0
  loc_1D290DA: var_C0 = 0
  loc_1D290E8: var_108 = (Trim(MemVar_1F92078) + "CASH")
  loc_1D290F4: var_B8 = vbNullString
  loc_1D290FD: var_B4 = "Cr"
  loc_1D29106: var_B0 = "Y"
  loc_1D2910F: var_AC = "N"
  loc_1D2915D: Call Proc_97_25_1371C2C("FA", "RCT", "CRV", vbNullString, "Cash Receipt", "CR", "Automatic", vbNullString)
  loc_1D29191: var_C8 = 0
  loc_1D2919C: var_C4 = 0
  loc_1D291A7: var_C0 = 0
  loc_1D291B2: var_BC = 0
  loc_1D291BD: var_B8 = 0
  loc_1D291C6: var_B4 = "Dr"
  loc_1D291CF: var_B0 = "Y"
  loc_1D291D8: var_AC = "N"
  loc_1D29226: Call Proc_97_25_1371C2C("FA", "JV", "JV", vbNullString, "Journal", "JV", "Automatic", vbNullString)
  loc_1D29251: var_C8 = "Y"
  loc_1D2925A: var_C4 = "Y"
  loc_1D29263: var_C0 = "Y"
  loc_1D2926C: var_BC = vbNullString
  loc_1D29275: var_B8 = vbNullString
  loc_1D2927E: var_B4 = "Cr"
  loc_1D29287: var_B0 = "Y"
  loc_1D29290: var_AC = "N"
  loc_1D292DE: Call Proc_97_25_1371C2C("FA", "RCT", "RCT", vbNullString, "Bank Receipt", "RCT", "Automatic", vbNullString)
  loc_1D2930B: var_C8 = 0
  loc_1D29316: var_C4 = 0
  loc_1D29321: var_C0 = 0
  loc_1D2932C: var_BC = 0
  loc_1D29337: var_B8 = 0
  loc_1D29340: var_B4 = "Dr"
  loc_1D29349: var_B0 = "Y"
  loc_1D29352: var_AC = "N"
  loc_1D293A0: Call Proc_97_25_1371C2C("FA", "JV", "DN", vbNullString, "Debit Note", "DN", "Automatic", vbNullString)
  loc_1D293DD: var_C8 = 0
  loc_1D293E8: var_C4 = 0
  loc_1D293F3: var_C0 = 0
  loc_1D293FE: var_BC = 0
  loc_1D2940C: var_108 = (Trim(MemVar_1F92078) + "CASH")
  loc_1D29418: var_B4 = "Dr"
  loc_1D29421: var_B0 = "Y"
  loc_1D2942A: var_AC = "N"
  loc_1D29478: Call Proc_97_25_1371C2C("FA", "PMT", "CPV", vbNullString, "Cash Payment", "CP", "Automatic", vbNullString)
  loc_1D294AC: var_C8 = 0
  loc_1D294B7: var_C4 = 0
  loc_1D294C2: var_C0 = 0
  loc_1D294CD: var_BC = 0
  loc_1D294D8: var_B8 = 0
  loc_1D294E1: var_B4 = "Dr"
  loc_1D294EA: var_B0 = "Y"
  loc_1D294F3: var_AC = "N"
  loc_1D29541: Call Proc_97_25_1371C2C("FA", "CNT", "CNT", vbNullString, "Contra", "CNT", "Automatic", vbNullString)
  loc_1D2956E: var_C8 = 0
  loc_1D29579: var_C4 = 0
  loc_1D29584: var_C0 = 0
  loc_1D2958F: var_BC = 0
  loc_1D2959A: var_B8 = 0
  loc_1D295A3: var_B4 = "Cr"
  loc_1D295AC: var_B0 = "Y"
  loc_1D295B5: var_AC = "N"
  loc_1D29603: Call Proc_97_25_1371C2C("FA", "JV", "CN", vbNullString, "Credit Note", "CN", "Automatic", vbNullString)
  loc_1D2962E: var_C8 = "Y"
  loc_1D29637: var_C4 = "Y"
  loc_1D29640: var_C0 = "Y"
  loc_1D29649: var_BC = vbNullString
  loc_1D29652: var_B8 = vbNullString
  loc_1D2965B: var_B4 = "Dr"
  loc_1D29664: var_B0 = "Y"
  loc_1D2966D: var_AC = "Y"
  loc_1D296BB: Call Proc_97_25_1371C2C("FA", "PMT", "PMT", vbNullString, "Bank Payment", "PMT", "Automatic", vbNullString)
  loc_1D296E8: var_C8 = 0
  loc_1D296F3: var_C4 = 0
  loc_1D296FE: var_C0 = 0
  loc_1D29709: var_BC = 0
  loc_1D29714: var_B8 = 0
  loc_1D2971F: var_B4 = 0
  loc_1D2972A: var_B0 = 0
  loc_1D29735: var_AC = 0
  loc_1D29783: Call Proc_97_25_1371C2C("FA", "BREC", "BREC", "IDC", "Banquet recieving", "BREC", "Automatic", vbNullString)
  loc_1D297B0: var_C8 = 0
  loc_1D297BB: var_C4 = 0
  loc_1D297C6: var_C0 = 0
  loc_1D297D1: var_BC = 0
  loc_1D297DC: var_B8 = 0
  loc_1D297E7: var_B4 = 0
  loc_1D297F2: var_B0 = 0
  loc_1D297FD: var_AC = 0
  loc_1D2984B: Call Proc_97_25_1371C2C("RESCANCEL", "CAN", "CAN", vbNullString, "Reservation Cancellation", "CAN", "Automatic", vbNullString)
  loc_1D29878: var_C8 = 0
  loc_1D29883: var_C4 = 0
  loc_1D2988E: var_C0 = 0
  loc_1D29899: var_BC = 0
  loc_1D298A4: var_B8 = 0
  loc_1D298AF: var_B4 = 0
  loc_1D298BA: var_B0 = 0
  loc_1D298C5: var_AC = 0
  loc_1D29913: Call Proc_97_25_1371C2C("CONSUMP", "CONS", "CONSU", vbNullString, "Consumption Posting", "CONS", "Automatic", vbNullString)
  loc_1D29940: var_C8 = 0
  loc_1D2994B: var_C4 = 0
  loc_1D29956: var_C0 = 0
  loc_1D29961: var_BC = 0
  loc_1D2996C: var_B8 = 0
  loc_1D29977: var_B4 = 0
  loc_1D29982: var_B0 = 0
  loc_1D2998D: var_AC = 0
  loc_1D299DB: Call Proc_97_25_1371C2C("BANQ", "BREC", "BREC", vbNullString, "Banquet Settlement", "BREC", "Automatic", vbNullString)
  loc_1D29A08: var_C8 = 0
  loc_1D29A13: var_C4 = 0
  loc_1D29A1E: var_C0 = 0
  loc_1D29A29: var_BC = 0
  loc_1D29A34: var_B8 = 0
  loc_1D29A3F: var_B4 = 0
  loc_1D29A4A: var_B0 = 0
  loc_1D29A55: var_AC = 0
  loc_1D29AA3: Call Proc_97_25_1371C2C("Advance", "AR", "AR1", vbNullString, "Advance Return", "AR", "Automatic", vbNullString)
  loc_1D29AD0: var_C8 = 0
  loc_1D29ADB: var_C4 = 0
  loc_1D29AE6: var_C0 = 0
  loc_1D29AF1: var_BC = 0
  loc_1D29AFC: var_B8 = 0
  loc_1D29B07: var_B4 = 0
  loc_1D29B12: var_B0 = 0
  loc_1D29B1D: var_AC = 0
  loc_1D29B6B: Call Proc_97_25_1371C2C("Advance", "AR", "AR2", vbNullString, "Advance Return", "AR", "Automatic", vbNullString)
  loc_1D29B98: var_C8 = 0
  loc_1D29BA3: var_C4 = 0
  loc_1D29BAE: var_C0 = 0
  loc_1D29BB9: var_BC = 0
  loc_1D29BC4: var_B8 = 0
  loc_1D29BCF: var_B4 = 0
  loc_1D29BDA: var_B0 = 0
  loc_1D29BE5: var_AC = 0
  loc_1D29C33: Call Proc_97_25_1371C2C("Advance", "AD", "AD", vbNullString, "Banquet Advance", "AD", "Automatic", vbNullString)
  loc_1D29C60: var_C8 = 0
  loc_1D29C6B: var_C4 = 0
  loc_1D29C76: var_C0 = 0
  loc_1D29C81: var_BC = 0
  loc_1D29C8C: var_B8 = 0
  loc_1D29C97: var_B4 = 0
  loc_1D29CA2: var_B0 = 0
  loc_1D29CAD: var_AC = 0
  loc_1D29CFB: Call Proc_97_25_1371C2C("Advance", "AR", "AR", vbNullString, "Banquet Advance Return", "AR", "Automatic", vbNullString)
  loc_1D29D28: var_C8 = 0
  loc_1D29D33: var_C4 = 0
  loc_1D29D3E: var_C0 = 0
  loc_1D29D49: var_BC = 0
  loc_1D29D54: var_B8 = 0
  loc_1D29D5F: var_B4 = 0
  loc_1D29D6A: var_B0 = 0
  loc_1D29D75: var_AC = 0
  loc_1D29DC3: Call Proc_97_25_1371C2C("Advance", "ADE", "ADE", vbNullString, "Advance", "ADE", "Automatic", vbNullString)
  loc_1D29DF0: var_C8 = 0
  loc_1D29DFB: var_C4 = 0
  loc_1D29E06: var_C0 = 0
  loc_1D29E11: var_BC = 0
  loc_1D29E1C: var_B8 = 0
  loc_1D29E27: var_B4 = 0
  loc_1D29E32: var_B0 = 0
  loc_1D29E3D: var_AC = 0
  loc_1D29E8B: Call Proc_97_25_1371C2C("Leave_Ench", "LV", "LV", vbNullString, "Leave Encashment", "LV", "Automatic", vbNullString)
  loc_1D29EB8: var_C8 = 0
  loc_1D29EC3: var_C4 = 0
  loc_1D29ECE: var_C0 = 0
  loc_1D29ED9: var_BC = 0
  loc_1D29EE4: var_B8 = 0
  loc_1D29EEF: var_B4 = 0
  loc_1D29EFA: var_B0 = 0
  loc_1D29F05: var_AC = 0
  loc_1D29F53: Call Proc_97_25_1371C2C("Loan", "LO", "LO", vbNullString, "Loan", "LO", "Automatic", vbNullString)
  loc_1D29F80: var_C8 = 0
  loc_1D29F8B: var_C4 = 0
  loc_1D29F96: var_C0 = 0
  loc_1D29FA1: var_BC = 0
  loc_1D29FAC: var_B8 = 0
  loc_1D29FB7: var_B4 = 0
  loc_1D29FC2: var_B0 = 0
  loc_1D29FCD: var_AC = 0
  loc_1D2A01B: Call Proc_97_25_1371C2C("Loan", "LR", "LR1", vbNullString, "Loan Return", "LR", "Automatic", vbNullString)
  loc_1D2A048: var_C8 = 0
  loc_1D2A053: var_C4 = 0
  loc_1D2A05E: var_C0 = 0
  loc_1D2A069: var_BC = 0
  loc_1D2A074: var_B8 = 0
  loc_1D2A07F: var_B4 = 0
  loc_1D2A08A: var_B0 = 0
  loc_1D2A095: var_AC = 0
  loc_1D2A0E3: Call Proc_97_25_1371C2C("Loan", "LR", "LR", vbNullString, "Loan Return", "LR", "Automatic", vbNullString)
  loc_1D2A110: var_C8 = 0
  loc_1D2A11B: var_C4 = 0
  loc_1D2A126: var_C0 = 0
  loc_1D2A131: var_BC = 0
  loc_1D2A13C: var_B8 = 0
  loc_1D2A147: var_B4 = 0
  loc_1D2A152: var_B0 = 0
  loc_1D2A15D: var_AC = 0
  loc_1D2A1AB: Call Proc_97_25_1371C2C("SALARY", "SL", "SL", vbNullString, "Salary", "SL", "Automatic", vbNullString)
  loc_1D2A1D8: var_C8 = 0
  loc_1D2A1E3: var_C4 = 0
  loc_1D2A1EE: var_C0 = 0
  loc_1D2A1F9: var_BC = 0
  loc_1D2A204: var_B8 = 0
  loc_1D2A20F: var_B4 = 0
  loc_1D2A21A: var_B0 = 0
  loc_1D2A225: var_AC = 0
  loc_1D2A273: Call Proc_97_25_1371C2C("BillCnt", "BCNT", "BCNT", vbNullString, "Guest Bill No", "BCNT", "Automatic", vbNullString)
  loc_1D2A2A0: var_C8 = 0
  loc_1D2A2AB: var_C4 = 0
  loc_1D2A2B6: var_C0 = 0
  loc_1D2A2C1: var_BC = 0
  loc_1D2A2CC: var_B8 = 0
  loc_1D2A2D7: var_B4 = 0
  loc_1D2A2E2: var_B0 = 0
  loc_1D2A2ED: var_AC = 0
  loc_1D2A33B: Call Proc_97_25_1371C2C("STOP", "STOP", "STOP", vbNullString, "Raw Item Op.Stock Entry", "STOP", "Automatic", vbNullString)
  loc_1D2A368: var_C8 = 0
  loc_1D2A373: var_C4 = 0
  loc_1D2A37E: var_C0 = 0
  loc_1D2A389: var_BC = 0
  loc_1D2A394: var_B8 = 0
  loc_1D2A39F: var_B4 = 0
  loc_1D2A3AA: var_B0 = 0
  loc_1D2A3B5: var_AC = 0
  loc_1D2A403: Call Proc_97_25_1371C2C("PRAP", "PRAP", "PRAP", vbNullString, "Travel Agency Posting", "PRAP", "Automatic", vbNullString)
  loc_1D2A430: var_C8 = 0
  loc_1D2A43B: var_C4 = 0
  loc_1D2A446: var_C0 = 0
  loc_1D2A451: var_BC = 0
  loc_1D2A45C: var_B8 = 0
  loc_1D2A467: var_B4 = 0
  loc_1D2A472: var_B0 = 0
  loc_1D2A47D: var_AC = 0
  loc_1D2A4CB: Call Proc_97_25_1371C2C("PPOS", "PPOS", "PPOS", vbNullString, "Outlet Posting", "PPOS", "Automatic", vbNullString)
  loc_1D2A4F8: var_C8 = 0
  loc_1D2A503: var_C4 = 0
  loc_1D2A50E: var_C0 = 0
  loc_1D2A519: var_BC = 0
  loc_1D2A524: var_B8 = 0
  loc_1D2A52F: var_B4 = 0
  loc_1D2A53A: var_B0 = 0
  loc_1D2A545: var_AC = 0
  loc_1D2A593: Call Proc_97_25_1371C2C("IPOS", "IPOS", "IPOS", vbNullString, "Item Posting", "IPOS", "Automatic", vbNullString)
  loc_1D2A5C0: var_C8 = 0
  loc_1D2A5CB: var_C4 = 0
  loc_1D2A5D6: var_C0 = 0
  loc_1D2A5E1: var_BC = 0
  loc_1D2A5EC: var_B8 = 0
  loc_1D2A5F7: var_B4 = 0
  loc_1D2A602: var_B0 = 0
  loc_1D2A60D: var_AC = 0
  loc_1D2A65B: Call Proc_97_25_1371C2C("RSOP", "RSOP", "RSOP", vbNullString, "Menu Item Op.Stock Entry", "RSOP", "Automatic", vbNullString)
  loc_1D2A688: var_C8 = 0
  loc_1D2A693: var_C4 = 0
  loc_1D2A69E: var_C0 = 0
  loc_1D2A6A9: var_BC = 0
  loc_1D2A6B4: var_B8 = 0
  loc_1D2A6BF: var_B4 = 0
  loc_1D2A6CA: var_B0 = 0
  loc_1D2A6D5: var_AC = 0
  loc_1D2A723: Call Proc_97_25_1371C2C("AD", "PC", "PCH", vbNullString, "Pay Charge", "PC", "Automatic", vbNullString)
  loc_1D2A750: var_C8 = 0
  loc_1D2A75B: var_C4 = 0
  loc_1D2A766: var_C0 = 0
  loc_1D2A771: var_BC = 0
  loc_1D2A77C: var_B8 = 0
  loc_1D2A787: var_B4 = 0
  loc_1D2A792: var_B0 = 0
  loc_1D2A79D: var_AC = 0
  loc_1D2A7EB: Call Proc_97_25_1371C2C("CHECKIN", "CHK", "CHK", vbNullString, "Check In", "CHK", "Automatic", vbNullString)
  loc_1D2A818: var_C8 = 0
  loc_1D2A823: var_C4 = 0
  loc_1D2A82E: var_C0 = 0
  loc_1D2A839: var_BC = 0
  loc_1D2A844: var_B8 = 0
  loc_1D2A84F: var_B4 = 0
  loc_1D2A85A: var_B0 = 0
  loc_1D2A865: var_AC = 0
  loc_1D2A8B3: Call Proc_97_25_1371C2C("REVENUE", "REV", "REV", vbNullString, "Revenues", "REV", "Automatic", vbNullString)
  loc_1D2A8E0: var_C8 = 0
  loc_1D2A8EB: var_C4 = 0
  loc_1D2A8F6: var_C0 = 0
  loc_1D2A901: var_BC = 0
  loc_1D2A90C: var_B8 = 0
  loc_1D2A917: var_B4 = 0
  loc_1D2A922: var_B0 = 0
  loc_1D2A92D: var_AC = 0
  loc_1D2A97B: Call Proc_97_25_1371C2C("PAYMENT", "REC", "REC", vbNullString, "Payment Recieves", "REC", "Automatic", vbNullString)
  loc_1D2A9A8: var_C8 = 0
  loc_1D2A9B3: var_C4 = 0
  loc_1D2A9BE: var_C0 = 0
  loc_1D2A9C9: var_BC = 0
  loc_1D2A9D4: var_B8 = 0
  loc_1D2A9DF: var_B4 = 0
  loc_1D2A9EA: var_B0 = 0
  loc_1D2A9F5: var_AC = 0
  loc_1D2AA43: Call Proc_97_25_1371C2C("HTFEX", "HTFEX", "HTFEX", vbNullString, "Forex Receive Entry", "HTFEX", "Automatic", vbNullString)
  loc_1D2AA70: var_C8 = 0
  loc_1D2AA7B: var_C4 = 0
  loc_1D2AA86: var_C0 = 0
  loc_1D2AA91: var_BC = 0
  loc_1D2AA9C: var_B8 = 0
  loc_1D2AAA7: var_B4 = 0
  loc_1D2AAB2: var_B0 = 0
  loc_1D2AABD: var_AC = 0
  loc_1D2AB0B: Call Proc_97_25_1371C2C("HTGWP", "HTGWP", "HTGWP", vbNullString, "Register Wake up Calls", "HTGWP", "Automatic", vbNullString)
  loc_1D2AB38: var_C8 = 0
  loc_1D2AB43: var_C4 = 0
  loc_1D2AB4E: var_C0 = 0
  loc_1D2AB59: var_BC = 0
  loc_1D2AB64: var_B8 = 0
  loc_1D2AB6F: var_B4 = 0
  loc_1D2AB7A: var_B0 = 0
  loc_1D2AB85: var_AC = 0
  loc_1D2ABD3: Call Proc_97_25_1371C2C("HTHGM", "HTHGM", "HTHGM", vbNullString, "In House Guest Message", "HTHGM", "Automatic", vbNullString)
  loc_1D2AC00: var_C8 = 0
  loc_1D2AC0B: var_C4 = 0
  loc_1D2AC16: var_C0 = 0
  loc_1D2AC21: var_BC = 0
  loc_1D2AC2C: var_B8 = 0
  loc_1D2AC37: var_B4 = 0
  loc_1D2AC42: var_B0 = 0
  loc_1D2AC4D: var_AC = 0
  loc_1D2AC9B: Call Proc_97_25_1371C2C("ROOMCHRG", "RC", "RC    ", vbNullString, "Room Charge", "RC", "Automatic", vbNullString)
  loc_1D2ACC8: var_C8 = 0
  loc_1D2ACD3: var_C4 = 0
  loc_1D2ACDE: var_C0 = 0
  loc_1D2ACE9: var_BC = 0
  loc_1D2ACF4: var_B8 = 0
  loc_1D2ACFF: var_B4 = 0
  loc_1D2AD0A: var_B0 = 0
  loc_1D2AD15: var_AC = 0
  loc_1D2AD63: Call Proc_97_25_1371C2C("HTEXP", "HTEXP", "HTEXP", vbNullString, "Misc Payment", "HTEXP", "Automatic", vbNullString)
  loc_1D2AD90: var_C8 = 0
  loc_1D2AD9B: var_C4 = 0
  loc_1D2ADA6: var_C0 = 0
  loc_1D2ADB1: var_BC = 0
  loc_1D2ADBC: var_B8 = 0
  loc_1D2ADC7: var_B4 = 0
  loc_1D2ADD2: var_B0 = 0
  loc_1D2ADDD: var_AC = 0
  loc_1D2AE2B: Call Proc_97_25_1371C2C("HTSAL", "HTSAL", "HTSAL", vbNullString, "Misc Rect.", "HTSAL", "Automatic", vbNullString)
  loc_1D2AE58: var_C8 = 0
  loc_1D2AE63: var_C4 = 0
  loc_1D2AE6E: var_C0 = 0
  loc_1D2AE79: var_BC = 0
  loc_1D2AE84: var_B8 = 0
  loc_1D2AE8F: var_B4 = 0
  loc_1D2AE9A: var_B0 = 0
  loc_1D2AEA5: var_AC = 0
  loc_1D2AEF3: Call Proc_97_25_1371C2C("HPOST", "HPOST", "HPOST", vbNullString, "Hotel Posting", "HPOST", "Automatic", vbNullString)
  loc_1D2AF20: var_C8 = 0
  loc_1D2AF2B: var_C4 = 0
  loc_1D2AF36: var_C0 = 0
  loc_1D2AF41: var_BC = 0
  loc_1D2AF4C: var_B8 = 0
  loc_1D2AF57: var_B4 = 0
  loc_1D2AF62: var_B0 = 0
  loc_1D2AF6D: var_AC = 0
  loc_1D2AFBB: Call Proc_97_25_1371C2C("RESV", "RES", "RES", vbNullString, "Reservation", "RESV", "Automatic", vbNullString)
  loc_1D2AFE8: var_C8 = 0
  loc_1D2AFF3: var_C4 = 0
  loc_1D2AFFE: var_C0 = 0
  loc_1D2B009: var_BC = 0
  loc_1D2B014: var_B8 = 0
  loc_1D2B01F: var_B4 = 0
  loc_1D2B02A: var_B0 = 0
  loc_1D2B035: var_AC = 0
  loc_1D2B083: Call Proc_97_25_1371C2C("RESADV", "ADRES", "ADRES", vbNullString, "Reservation Advance", "ADRES", "Automatic", vbNullString)
  loc_1D2B0B0: var_C8 = 0
  loc_1D2B0BB: var_C4 = 0
  loc_1D2B0C6: var_C0 = 0
  loc_1D2B0D1: var_BC = 0
  loc_1D2B0DC: var_B8 = 0
  loc_1D2B0E7: var_B4 = 0
  loc_1D2B0F2: var_B0 = 0
  loc_1D2B0FD: var_AC = 0
  loc_1D2B14B: Call Proc_97_25_1371C2C("KCLOS", "KC", "KC", vbNullString, "Kitchen Closing", "KC", "Automatic", vbNullString)
  loc_1D2B178: var_C8 = 0
  loc_1D2B183: var_C4 = 0
  loc_1D2B18E: var_C0 = 0
  loc_1D2B199: var_BC = 0
  loc_1D2B1A4: var_B8 = 0
  loc_1D2B1AF: var_B4 = 0
  loc_1D2B1BA: var_B0 = 0
  loc_1D2B1C5: var_AC = 0
  loc_1D2B213: Call Proc_97_25_1371C2C("KSTKRI", "KSISS", "KSISS", vbNullString, "Kitchen Stock Issue", "KSISS", "Automatic", vbNullString)
  loc_1D2B240: var_C8 = 0
  loc_1D2B24B: var_C4 = 0
  loc_1D2B256: var_C0 = 0
  loc_1D2B261: var_BC = 0
  loc_1D2B26C: var_B8 = 0
  loc_1D2B277: var_B4 = 0
  loc_1D2B282: var_B0 = 0
  loc_1D2B28D: var_AC = 0
  loc_1D2B2DB: Call Proc_97_25_1371C2C("KSTKRI", "KSREC", "KSREC ", vbNullString, "Kitchen Stock Receive", "KSREC", "Automatic", vbNullString)
  loc_1D2B308: var_C8 = 0
  loc_1D2B313: var_C4 = 0
  loc_1D2B31E: var_C0 = 0
  loc_1D2B329: var_BC = 0
  loc_1D2B334: var_B8 = 0
  loc_1D2B33F: var_B4 = 0
  loc_1D2B34A: var_B0 = 0
  loc_1D2B355: var_AC = 0
  loc_1D2B3A3: Call Proc_97_25_1371C2C("KMTKRI", "KMISS", "KMISS", vbNullString, "Kitchen Material Issue", "KMISS", "Automatic", vbNullString)
  loc_1D2B3D0: var_C8 = 0
  loc_1D2B3DB: var_C4 = 0
  loc_1D2B3E6: var_C0 = 0
  loc_1D2B3F1: var_BC = 0
  loc_1D2B3FC: var_B8 = 0
  loc_1D2B407: var_B4 = 0
  loc_1D2B412: var_B0 = 0
  loc_1D2B41D: var_AC = 0
  loc_1D2B46B: Call Proc_97_25_1371C2C("KMTKRI", "KMREC", "KMREC ", vbNullString, "Kitchen Material Receive", "KMREC", "Automatic", vbNullString)
  loc_1D2B498: var_C8 = 0
  loc_1D2B4A3: var_C4 = 0
  loc_1D2B4AE: var_C0 = 0
  loc_1D2B4B9: var_BC = 0
  loc_1D2B4C4: var_B8 = 0
  loc_1D2B4CF: var_B4 = 0
  loc_1D2B4DA: var_B0 = 0
  loc_1D2B4E5: var_AC = 0
  loc_1D2B533: Call Proc_97_25_1371C2C("BKSTRI", "BKREC", "BKREC ", vbNullString, "Bakery Stock Receive", "BKREC", "Automatic", vbNullString)
  loc_1D2B560: var_C8 = 0
  loc_1D2B56B: var_C4 = 0
  loc_1D2B576: var_C0 = 0
  loc_1D2B581: var_BC = 0
  loc_1D2B58C: var_B8 = 0
  loc_1D2B597: var_B4 = 0
  loc_1D2B5A2: var_B0 = 0
  loc_1D2B5AD: var_AC = 0
  loc_1D2B5FB: Call Proc_97_25_1371C2C("REQISS", "RQI", "RQI", "RQ", "Requistion Issue", "RI", "Automatic", vbNullString)
  loc_1D2B628: var_C8 = 0
  loc_1D2B633: var_C4 = 0
  loc_1D2B63E: var_C0 = 0
  loc_1D2B649: var_BC = 0
  loc_1D2B654: var_B8 = 0
  loc_1D2B65F: var_B4 = 0
  loc_1D2B66A: var_B0 = 0
  loc_1D2B675: var_AC = 0
  loc_1D2B6C3: Call Proc_97_25_1371C2C("REQREC", "RQR", "RQR", "RQI", "Requistion Received", "RR", "Automatic", vbNullString)
  loc_1D2B6F0: var_C8 = 0
  loc_1D2B6FB: var_C4 = 0
  loc_1D2B706: var_C0 = 0
  loc_1D2B711: var_BC = 0
  loc_1D2B71C: var_B8 = 0
  loc_1D2B727: var_B4 = 0
  loc_1D2B732: var_B0 = 0
  loc_1D2B73D: var_AC = 0
  loc_1D2B78B: Call Proc_97_25_1371C2C("REQSLIP", "RQS", "RQ", vbNullString, "Requistion", "RSLIP", "Automatic", vbNullString)
  loc_1D2B7B8: var_C8 = 0
  loc_1D2B7C3: var_C4 = 0
  loc_1D2B7CE: var_C0 = 0
  loc_1D2B7D9: var_BC = 0
  loc_1D2B7E4: var_B8 = 0
  loc_1D2B7EF: var_B4 = 0
  loc_1D2B7FA: var_B0 = 0
  loc_1D2B805: var_AC = 0
  loc_1D2B853: Call Proc_97_25_1371C2C("PORD", "PORD", "PORD", vbNullString, "Purchase Order", "PORD", "Automatic", vbNullString)
  loc_1D2B880: var_C8 = 0
  loc_1D2B88B: var_C4 = 0
  loc_1D2B896: var_C0 = 0
  loc_1D2B8A1: var_BC = 0
  loc_1D2B8AC: var_B8 = 0
  loc_1D2B8B7: var_B4 = 0
  loc_1D2B8C2: var_B0 = 0
  loc_1D2B8CD: var_AC = 0
  loc_1D2B91B: Call Proc_97_25_1371C2C("INDENT", "PIND", "PIND", vbNullString, "Indent Entry", "PIND", "Automatic", vbNullString)
  loc_1D2B948: var_C8 = 0
  loc_1D2B953: var_C4 = 0
  loc_1D2B95E: var_C0 = 0
  loc_1D2B969: var_BC = 0
  loc_1D2B974: var_B8 = 0
  loc_1D2B97F: var_B4 = 0
  loc_1D2B98A: var_B0 = 0
  loc_1D2B995: var_AC = 0
  loc_1D2B9E3: Call Proc_97_25_1371C2C("MREntry", "MRE", "MRCR", vbNullString, "M.R.Entry(Credit)", "MRCR", "Automatic", vbNullString)
  loc_1D2BA10: var_C8 = 0
  loc_1D2BA1B: var_C4 = 0
  loc_1D2BA26: var_C0 = 0
  loc_1D2BA31: var_BC = 0
  loc_1D2BA3C: var_B8 = 0
  loc_1D2BA47: var_B4 = 0
  loc_1D2BA52: var_B0 = 0
  loc_1D2BA5D: var_AC = 0
  loc_1D2BAAB: Call Proc_97_25_1371C2C("MREntry", "MRE", "MRCH", vbNullString, "M.R.Entry(Cash)", "MRCH", "Automatic", vbNullString)
  loc_1D2BAD8: var_C8 = 0
  loc_1D2BAE3: var_C4 = 0
  loc_1D2BAEE: var_C0 = 0
  loc_1D2BAF9: var_BC = 0
  loc_1D2BB04: var_B8 = 0
  loc_1D2BB0F: var_B4 = 0
  loc_1D2BB1A: var_B0 = 0
  loc_1D2BB25: var_AC = 0
  loc_1D2BB73: Call Proc_97_25_1371C2C("PurchBill", "PRC", "PRPC", vbNullString, "Purchase Return (Cash)", "PRET", "Automatic", vbNullString)
  loc_1D2BBA0: var_C8 = 0
  loc_1D2BBAB: var_C4 = 0
  loc_1D2BBB6: var_C0 = 0
  loc_1D2BBC1: var_BC = 0
  loc_1D2BBCC: var_B8 = 0
  loc_1D2BBD7: var_B4 = 0
  loc_1D2BBE2: var_B0 = 0
  loc_1D2BBED: var_AC = 0
  loc_1D2BC3B: Call Proc_97_25_1371C2C("PurchBill", "PBR", "PBPB", vbNullString, "Purchase Bill (Credit)", "PBILL", "Automatic", vbNullString)
  loc_1D2BC68: var_C8 = 0
  loc_1D2BC73: var_C4 = 0
  loc_1D2BC7E: var_C0 = 0
  loc_1D2BC89: var_BC = 0
  loc_1D2BC94: var_B8 = 0
  loc_1D2BC9F: var_B4 = 0
  loc_1D2BCAA: var_B0 = 0
  loc_1D2BCB5: var_AC = 0
  loc_1D2BD03: Call Proc_97_25_1371C2C("PurchBill", "PRR", "PRPB", vbNullString, "Purchase Return (Credit)", "PRET", "Automatic", vbNullString)
  loc_1D2BD30: var_C8 = 0
  loc_1D2BD3B: var_C4 = 0
  loc_1D2BD46: var_C0 = 0
  loc_1D2BD51: var_BC = 0
  loc_1D2BD5C: var_B8 = 0
  loc_1D2BD67: var_B4 = 0
  loc_1D2BD72: var_B0 = 0
  loc_1D2BD7D: var_AC = 0
  loc_1D2BDCB: Call Proc_97_25_1371C2C("PurchBill", "PBC", "PBPC", vbNullString, "Purchase Bill (Cash)", "PBILL", "Automatic", vbNullString)
  loc_1D2BE08: var_C8 = 0
  loc_1D2BE13: var_C4 = 0
  loc_1D2BE1E: var_C0 = 0
  loc_1D2BE29: var_BC = 0
  loc_1D2BE34: var_B8 = 0
  loc_1D2BE3F: var_B4 = 0
  loc_1D2BE4A: var_B0 = 0
  loc_1D2BE55: var_AC = 0
  loc_1D2BE63: var_108 = (Trim(MemVar_1F92078) + "RS")
  loc_1D2BEAB: Call Proc_97_25_1371C2C("RSKOT", "RSKOT", "NRS", vbNullString, "RS N.C.KOT Entry", "NRS", "Automatic", CStr(var_108))
  loc_1D2BEEF: var_C8 = 0
  loc_1D2BEFA: var_C4 = 0
  loc_1D2BF05: var_C0 = 0
  loc_1D2BF10: var_BC = 0
  loc_1D2BF1B: var_B8 = 0
  loc_1D2BF26: var_B4 = 0
  loc_1D2BF31: var_B0 = 0
  loc_1D2BF3C: var_AC = 0
  loc_1D2BF4A: var_108 = (Trim(MemVar_1F92078) + "RS")
  loc_1D2BF92: Call Proc_97_25_1371C2C("RSKOT", "RSKOT", "KRS", vbNullString, "RS KOT Entry", "KRS", "Automatic", CStr(var_108))
  loc_1D2BFD6: var_C8 = 0
  loc_1D2BFE1: var_C4 = 0
  loc_1D2BFEC: var_C0 = 0
  loc_1D2BFF7: var_BC = 0
  loc_1D2C002: var_B8 = 0
  loc_1D2C00D: var_B4 = 0
  loc_1D2C018: var_B0 = 0
  loc_1D2C023: var_AC = 0
  loc_1D2C031: var_108 = (Trim(MemVar_1F92078) + "RS")
  loc_1D2C079: Call Proc_97_25_1371C2C("RSBILL", "RSBIL", "BRS", "KRS", "RS Memo Entry", "BRS", "Automatic", CStr(var_108))
  loc_1D2C0AD: var_C8 = 0
  loc_1D2C0B8: var_C4 = 0
  loc_1D2C0C3: var_C0 = 0
  loc_1D2C0CE: var_BC = 0
  loc_1D2C0D9: var_B8 = 0
  loc_1D2C0E4: var_B4 = 0
  loc_1D2C0EF: var_B0 = 0
  loc_1D2C0FA: var_AC = 0
  loc_1D2C148: Call Proc_97_25_1371C2C("RSREC", "RSREC", "RSREC", vbNullString, "Restaurant Recd.", "RSREC", "Automatic", vbNullString)
  loc_1D2C185: var_C8 = 0
  loc_1D2C190: var_C4 = 0
  loc_1D2C19B: var_C0 = 0
  loc_1D2C1A6: var_BC = 0
  loc_1D2C1B1: var_B8 = 0
  loc_1D2C1BC: var_B4 = 0
  loc_1D2C1C7: var_B0 = 0
  loc_1D2C1D2: var_AC = 0
  loc_1D2C1E0: var_108 = (Trim(MemVar_1F92078) + "HK")
  loc_1D2C228: Call Proc_97_25_1371C2C("HKIR", "HKISS", "IHK", vbNullString, "House Keeping Issue", "IHK", "Automatic", CStr(var_108))
  loc_1D2C26C: var_C8 = 0
  loc_1D2C277: var_C4 = 0
  loc_1D2C282: var_C0 = 0
  loc_1D2C28D: var_BC = 0
  loc_1D2C298: var_B8 = 0
  loc_1D2C2A3: var_B4 = 0
  loc_1D2C2AE: var_B0 = 0
  loc_1D2C2B9: var_AC = 0
  loc_1D2C2C7: var_108 = (Trim(MemVar_1F92078) + "HK")
  loc_1D2C30F: Call Proc_97_25_1371C2C("HKIR", "HKIR", "RHK", vbNullString, "House Keeping Received", "RHK", "Automatic", CStr(var_108))
  loc_1D2C353: var_C8 = 0
  loc_1D2C35E: var_C4 = 0
  loc_1D2C369: var_C0 = 0
  loc_1D2C374: var_BC = 0
  loc_1D2C37F: var_B8 = 0
  loc_1D2C38A: var_B4 = 0
  loc_1D2C395: var_B0 = 0
  loc_1D2C3A0: var_AC = 0
  loc_1D2C3AE: var_108 = (Trim(MemVar_1F92078) + "HK")
  loc_1D2C3F6: Call Proc_97_25_1371C2C("HKOP", "HKOP", "OHK", vbNullString, "House Keeping Opening", "OHK", "Automatic", CStr(var_108))
  loc_1D2C43A: var_C8 = 0
  loc_1D2C445: var_C4 = 0
  loc_1D2C450: var_C0 = 0
  loc_1D2C45B: var_BC = 0
  loc_1D2C466: var_B8 = 0
  loc_1D2C471: var_B4 = 0
  loc_1D2C47C: var_B0 = 0
  loc_1D2C487: var_AC = 0
  loc_1D2C495: var_108 = (Trim(MemVar_1F92078) + "HK")
  loc_1D2C4DD: Call Proc_97_25_1371C2C("HKROP", "HKROP", "MHK", vbNullString, "House Keeping Room Opening", "MHK", "Automatic", CStr(var_108))
  loc_1D2C521: var_C8 = 0
  loc_1D2C52C: var_C4 = 0
  loc_1D2C537: var_C0 = 0
  loc_1D2C542: var_BC = 0
  loc_1D2C54D: var_B8 = 0
  loc_1D2C558: var_B4 = 0
  loc_1D2C563: var_B0 = 0
  loc_1D2C56E: var_AC = 0
  loc_1D2C57C: var_108 = (Trim(MemVar_1F92078) + "FOM")
  loc_1D2C5C4: Call Proc_97_25_1371C2C("CCHG", "CCHG", "CCHG", vbNullString, "Retention/Cancellation Charges", "CCHG", "Automatic", CStr(var_108))
  loc_1D2C608: var_C8 = 0
  loc_1D2C613: var_C4 = 0
  loc_1D2C61E: var_C0 = 0
  loc_1D2C629: var_BC = 0
  loc_1D2C634: var_B8 = 0
  loc_1D2C63F: var_B4 = 0
  loc_1D2C64A: var_B0 = 0
  loc_1D2C655: var_AC = 0
  loc_1D2C663: var_108 = (Trim(MemVar_1F92078) + "BANQ")
  loc_1D2C6AB: Call Proc_97_25_1371C2C("BANQ", "BBOOK", "IBOOK", vbNullString, "Indoor Booking", "IBOOK", "Automatic", CStr(var_108))
  loc_1D2C6EF: var_C8 = 0
  loc_1D2C6FA: var_C4 = 0
  loc_1D2C705: var_C0 = 0
  loc_1D2C710: var_BC = 0
  loc_1D2C71B: var_B8 = 0
  loc_1D2C726: var_B4 = 0
  loc_1D2C731: var_B0 = 0
  loc_1D2C73C: var_AC = 0
  loc_1D2C74A: var_108 = (Trim(MemVar_1F92078) + "ODC")
  loc_1D2C792: Call Proc_97_25_1371C2C("BANQ", "BBOOK", "OBOOK", vbNullString, "Outdoor Booking", "OBOOK", "Automatic", CStr(var_108))
  loc_1D2C7D6: var_C8 = 0
  loc_1D2C7E1: var_C4 = 0
  loc_1D2C7EC: var_C0 = 0
  loc_1D2C7F7: var_BC = 0
  loc_1D2C802: var_B8 = 0
  loc_1D2C80D: var_B4 = 0
  loc_1D2C818: var_B0 = 0
  loc_1D2C823: var_AC = 0
  loc_1D2C831: var_108 = (Trim(MemVar_1F92078) + "BANQ")
  loc_1D2C879: Call Proc_97_25_1371C2C("BANQ", "BKOT", "IKOT", vbNullString, "Indoor KOT", "IKOT", "Automatic", CStr(var_108))
  loc_1D2C8BD: var_C8 = 0
  loc_1D2C8C8: var_C4 = 0
  loc_1D2C8D3: var_C0 = 0
  loc_1D2C8DE: var_BC = 0
  loc_1D2C8E9: var_B8 = 0
  loc_1D2C8F4: var_B4 = 0
  loc_1D2C8FF: var_B0 = 0
  loc_1D2C90A: var_AC = 0
  loc_1D2C918: var_108 = (Trim(MemVar_1F92078) + "ODC")
  loc_1D2C960: Call Proc_97_25_1371C2C("BANQ", "BKOT", "OKOT", vbNullString, "Outdoor KOT", "OKOT", "Automatic", CStr(var_108))
  loc_1D2C9A4: var_C8 = 0
  loc_1D2C9AF: var_C4 = 0
  loc_1D2C9BA: var_C0 = 0
  loc_1D2C9C5: var_BC = 0
  loc_1D2C9D0: var_B8 = 0
  loc_1D2C9DB: var_B4 = 0
  loc_1D2C9E6: var_B0 = 0
  loc_1D2C9F1: var_AC = 0
  loc_1D2C9FF: var_108 = (Trim(MemVar_1F92078) + "BANQ")
  loc_1D2CA47: Call Proc_97_25_1371C2C("BANQ", "BBILL", "IDC", vbNullString, "Banquet Bill", "IDC", "Automatic", CStr(var_108))
  loc_1D2CA8B: var_C8 = 0
  loc_1D2CA96: var_C4 = 0
  loc_1D2CAA1: var_C0 = 0
  loc_1D2CAAC: var_BC = 0
  loc_1D2CAB7: var_B8 = 0
  loc_1D2CAC2: var_B4 = 0
  loc_1D2CACD: var_B0 = 0
  loc_1D2CAD8: var_AC = 0
  loc_1D2CAE6: var_108 = (Trim(MemVar_1F92078) + "ODC")
  loc_1D2CB2E: Call Proc_97_25_1371C2C("BANQ", "BBILL", "ODC", vbNullString, "Outdoor Bill", "ODC", "Automatic", CStr(var_108))
  loc_1D2CB72: var_C8 = 0
  loc_1D2CB7D: var_C4 = 0
  loc_1D2CB88: var_C0 = 0
  loc_1D2CB93: var_BC = 0
  loc_1D2CB9E: var_B8 = 0
  loc_1D2CBA9: var_B4 = 0
  loc_1D2CBB4: var_B0 = 0
  loc_1D2CBBF: var_AC = 0
  loc_1D2CBCD: var_108 = (Trim(MemVar_1F92078) + "BANQ")
  loc_1D2CC15: Call Proc_97_25_1371C2C("BANQ", "EBILL", "EIDC", vbNullString, "Estimate Banquet Bill", "EIDC", "Automatic", CStr(var_108))
  loc_1D2CC59: var_C8 = 0
  loc_1D2CC64: var_C4 = 0
  loc_1D2CC6F: var_C0 = 0
  loc_1D2CC7A: var_BC = 0
  loc_1D2CC85: var_B8 = 0
  loc_1D2CC90: var_B4 = 0
  loc_1D2CC9B: var_B0 = 0
  loc_1D2CCA6: var_AC = 0
  loc_1D2CCB4: var_108 = (Trim(MemVar_1F92078) + "ODC")
  loc_1D2CCFC: Call Proc_97_25_1371C2C("BANQ", "EBILL", "EODC", vbNullString, "Estimate Outdoor Bill", "EODC", "Automatic", CStr(var_108))
  loc_1D2CD40: var_C8 = 0
  loc_1D2CD4B: var_C4 = 0
  loc_1D2CD56: var_C0 = 0
  loc_1D2CD61: var_BC = 0
  loc_1D2CD6C: var_B8 = 0
  loc_1D2CD77: var_B4 = 0
  loc_1D2CD82: var_B0 = 0
  loc_1D2CD8D: var_AC = 0
  loc_1D2CD9B: var_108 = (Trim(MemVar_1F92078) + "BANQ")
  loc_1D2CDE3: Call Proc_97_25_1371C2C("BANQ", "ESBIL", "ESIDC", vbNullString, "Banquet Estimate Bill", "ESIDC", "Automatic", CStr(var_108))
  loc_1D2CE1D: var_E8 = Trim(MemVar_1F92078)
  loc_1D2CE27: var_C8 = 0
  loc_1D2CE32: var_C4 = 0
  loc_1D2CE3D: var_C0 = 0
  loc_1D2CE48: var_BC = 0
  loc_1D2CE53: var_B8 = 0
  loc_1D2CE5E: var_B4 = 0
  loc_1D2CE69: var_B0 = 0
  loc_1D2CE74: var_AC = 0
  loc_1D2CE82: var_108 = (var_E8 + "ODC")
  loc_1D2CECA: Call Proc_97_25_1371C2C("BANQ", "ESBIL", "ESODC", vbNullString, "Outdoor Estimate Bill", "ESODC", "Automatic", CStr(var_108))
  loc_1D2CEFE: var_C8 = 0
  loc_1D2CF09: var_C4 = 0
  loc_1D2CF14: var_C0 = 0
  loc_1D2CF1F: var_BC = 0
  loc_1D2CF2A: var_B8 = 0
  loc_1D2CF35: var_B4 = 0
  loc_1D2CF40: var_B0 = 0
  loc_1D2CF4B: var_AC = 0
  loc_1D2CF99: Call Proc_97_25_1371C2C("MBILL", "MBILL", "MBILL", vbNullString, "MEMBER BILL", "MBILL", "Automatic", vbNullString)
  loc_1D2CFC6: var_C8 = 0
  loc_1D2CFD1: var_C4 = 0
  loc_1D2CFDC: var_C0 = 0
  loc_1D2CFE7: var_BC = 0
  loc_1D2CFF2: var_B8 = 0
  loc_1D2CFFD: var_B4 = 0
  loc_1D2D008: var_B0 = 0
  loc_1D2D013: var_AC = 0
  loc_1D2D061: Call Proc_97_25_1371C2C("FMEM", "MRCT", "MCRV", vbNullString, "Cash Receipt", "MCR", "Automatic", vbNullString)
  loc_1D2D08E: var_C8 = 0
  loc_1D2D099: var_C4 = 0
  loc_1D2D0A4: var_C0 = 0
  loc_1D2D0AF: var_BC = 0
  loc_1D2D0BA: var_B8 = 0
  loc_1D2D0C5: var_B4 = 0
  loc_1D2D0D0: var_B0 = 0
  loc_1D2D0DB: var_AC = 0
  loc_1D2D129: Call Proc_97_25_1371C2C("FMEM", "MRCT", "MBRV", vbNullString, "Bank Receipt", "MBR", "Automatic", vbNullString)
  loc_1D2D156: var_C8 = 0
  loc_1D2D161: var_C4 = 0
  loc_1D2D16C: var_C0 = 0
  loc_1D2D177: var_BC = 0
  loc_1D2D182: var_B8 = 0
  loc_1D2D18D: var_B4 = 0
  loc_1D2D198: var_B0 = 0
  loc_1D2D1A3: var_AC = 0
  loc_1D2D1F1: Call Proc_97_25_1371C2C("MTGDA", "MTGDA", "MTLET", vbNullString, "MEMBER TAGADA LETTER", "MTLET", "Automatic", vbNullString)
  loc_1D2D21E: var_C8 = 0
  loc_1D2D229: var_C4 = 0
  loc_1D2D234: var_C0 = 0
  loc_1D2D23F: var_BC = 0
  loc_1D2D24A: var_B8 = 0
  loc_1D2D255: var_B4 = 0
  loc_1D2D260: var_B0 = 0
  loc_1D2D26B: var_AC = 0
  loc_1D2D2B9: Call Proc_97_25_1371C2C("MTGDA", "MTGDA", "MTREM", vbNullString, "MEMBER TAGADA LETTER REMINDER", "MTREM", "Automatic", vbNullString)
  loc_1D2D2E6: var_C8 = 0
  loc_1D2D2F1: var_C4 = 0
  loc_1D2D2FC: var_C0 = 0
  loc_1D2D307: var_BC = 0
  loc_1D2D312: var_B8 = 0
  loc_1D2D31D: var_B4 = 0
  loc_1D2D328: var_B0 = 0
  loc_1D2D333: var_AC = 0
  loc_1D2D381: Call Proc_97_25_1371C2C("CASHCARD", "CCARD", "CCARD", vbNullString, "Cash Card Collection Entry", "CCARD", "Automatic", vbNullString)
  loc_1D2D3AE: var_C8 = 0
  loc_1D2D3B9: var_C4 = 0
  loc_1D2D3C4: var_C0 = 0
  loc_1D2D3CF: var_BC = 0
  loc_1D2D3DA: var_B8 = 0
  loc_1D2D3E5: var_B4 = 0
  loc_1D2D3F0: var_B0 = 0
  loc_1D2D3FB: var_AC = 0
  loc_1D2D449: Call Proc_97_25_1371C2C("SMARTCARD", "SCARD", "RCARD", vbNullString, "Card ReCharge/Refund Amount", "RCARD", "Automatic", vbNullString)
  loc_1D2D476: var_C8 = 0
  loc_1D2D481: var_C4 = 0
  loc_1D2D48C: var_C0 = 0
  loc_1D2D497: var_BC = 0
  loc_1D2D4A2: var_B8 = 0
  loc_1D2D4AD: var_B4 = 0
  loc_1D2D4B8: var_B0 = 0
  loc_1D2D4C3: var_AC = 0
  loc_1D2D511: Call Proc_97_25_1371C2C("SMARTCARD", "SCARD", "ECARD", vbNullString, "Card Expense Amount", "ECARD", "Automatic", vbNullString)
  loc_1D2D53E: var_C8 = 0
  loc_1D2D549: var_C4 = 0
  loc_1D2D554: var_C0 = 0
  loc_1D2D55F: var_BC = 0
  loc_1D2D56A: var_B8 = 0
  loc_1D2D575: var_B4 = 0
  loc_1D2D580: var_B0 = 0
  loc_1D2D58B: var_AC = 0
  loc_1D2D5D9: Call Proc_97_25_1371C2C("MBILL", "FBILL", "MFBIL", vbNullString, "FACITLY BILL", "MFBIL", "Automatic", vbNullString)
  loc_1D2D606: var_C8 = 0
  loc_1D2D611: var_C4 = 0
  loc_1D2D61C: var_C0 = 0
  loc_1D2D627: var_BC = 0
  loc_1D2D632: var_B8 = 0
  loc_1D2D63D: var_B4 = 0
  loc_1D2D648: var_B0 = 0
  loc_1D2D653: var_AC = 0
  loc_1D2D6A1: Call Proc_97_25_1371C2C("EXPENT", "EXR", "EXPB", vbNullString, "Expense (Credit)", "EXPEN", "Automatic", vbNullString)
  loc_1D2D6CE: var_C8 = 0
  loc_1D2D6D9: var_C4 = 0
  loc_1D2D6E4: var_C0 = 0
  loc_1D2D6EF: var_BC = 0
  loc_1D2D6FA: var_B8 = 0
  loc_1D2D705: var_B4 = 0
  loc_1D2D710: var_B0 = 0
  loc_1D2D71B: var_AC = 0
  loc_1D2D769: Call Proc_97_25_1371C2C("EXPENT", "EXC", "EXPC", vbNullString, "Expense (Cash)", "EXPEN", "Automatic", vbNullString)
  loc_1D2D796: var_C8 = 0
  loc_1D2D7A1: var_C4 = 0
  loc_1D2D7AC: var_C0 = 0
  loc_1D2D7B7: var_BC = 0
  loc_1D2D7C2: var_B8 = 0
  loc_1D2D7CB: var_B4 = "Cr"
  loc_1D2D7D4: var_B0 = "Y"
  loc_1D2D7DD: var_AC = "N"
  loc_1D2D82B: Call Proc_97_25_1371C2C("FA", "CRN", "CNV", vbNullString, "Credit Note", "CNV", "Automatic", vbNullString)
  loc_1D2D858: var_C8 = 0
  loc_1D2D863: var_C4 = 0
  loc_1D2D86E: var_C0 = 0
  loc_1D2D879: var_BC = 0
  loc_1D2D884: var_B8 = 0
  loc_1D2D88F: var_B4 = 0
  loc_1D2D89A: var_B0 = 0
  loc_1D2D8A5: var_AC = 0
  loc_1D2D8F3: Call Proc_97_25_1371C2C("RESADV", "ARRES", "ARRES", vbNullString, "Reservation Advance Return", "ARRES", "Automatic", vbNullString)
  loc_1D2D920: var_C8 = 0
  loc_1D2D92B: var_C4 = 0
  loc_1D2D936: var_C0 = 0
  loc_1D2D941: var_BC = 0
  loc_1D2D94C: var_B8 = 0
  loc_1D2D957: var_B4 = 0
  loc_1D2D962: var_B0 = 0
  loc_1D2D96D: var_AC = 0
  loc_1D2D9BB: Call Proc_97_25_1371C2C("PAYMENT", "RPV", "RPV", vbNullString, "Payment Recieves (POS)", "RPV", "Automatic", vbNullString)
  loc_1D2D9F9: unk_57533F.Execute "select * from depart where outletYN='Y'", var_E8, -1
  loc_1D2DA04: Set var_88 = var_110
  loc_1D2DA0D: ' Referenced from: 1D2DDD2
  loc_1D2DA1C: If Not(var_88.EOF) Then
  loc_1D2DA3B:   var_118 = var_88.Fields.Item("ShortName")
  loc_1D2DA43:   var_E8 = CVar(var_118) 'Address
  loc_1D2DA4A:   var_108 = Trim(var_E8)
  loc_1D2DA52:   var_128 = ("P" + var_108)
  loc_1D2DA57:   var_10C = CStr(var_128)
  loc_1D2DA6C:   var_F8 = 0
  loc_1D2DA9E:   var_98 = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & var_10C & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1D2DAB5:   unk_57533F.Execute var_98 & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2DABD:   var_110 = var_110.Fields
  loc_1D2DAC5:   var_F8 = var_118.Item(var_118)
  loc_1D2DACD:   var_12C = var_12C.Value
  loc_1D2DAFC:   If (var_108 <= 0) Then
  loc_1D2DB13:     var_8C = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values " & "('POSPayment','PPMT','"
  loc_1D2DB33:     var_110 = var_88.Fields
  loc_1D2DB43:     var_E8 = CVar(var_110.Item("ShortName")) 'Address
  loc_1D2DB4A:     var_108 = Trim(var_E8)
  loc_1D2DB57:     var_128 = (var_108 + " Payment Receive")
  loc_1D2DB5B:     var_15C = CVar(var_8C & var_10C & "','','") & var_128 
  loc_1D2DB9B:     var_1C0 = (Trim(CVar(var_88.Fields.Item("ShortName"))) + " Payment Receive")
  loc_1D2DBC2:     Proc_6_104_ED5D18(var_240, var_15C & "','" & var_1C0 & "','" & CVar(var_10C) & "','',0,'Automatic',", var_3E8, -1, var_3EC, var_108, var_110)
  loc_1D2DBED:     Proc_6_104_ED5D18(var_2C0, var_AC & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "',", var_B0, var_B4)
  loc_1D2DC52:     var_3A8 = var_B8 & var_2C0 & ",'A','N','N','N',0,'" & var_88.Fields.Item("Code").Value & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_1D2DC69:     unk_57533F.Execute CStr(var_3A8 & "')"), var_BC, var_C0
  loc_1D2DCD5:     var_8C = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_10C
  loc_1D2DCDC:     var_108 = CVar(var_8C & "',") 'String
  loc_1D2DCEA:     Proc_6_7_F25D88(var_E8, MemVar_1F920F4, var_108)
  loc_1D2DD0A:     Proc_6_7_F25D88(var_15C, MemVar_1F920FC, var_2C0 & var_E8 & ",")
  loc_1D2DD12:     var_16C = -1 & var_15C 
  loc_1D2DD32:     var_1C0 = var_15C & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1D2DD60:     Proc_6_7_F25D88(var_240, Date)
  loc_1D2DD92:     unk_57533F.Execute CStr(var_1C0 & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) & "' )"), var_110, 
  loc_1D2DDCA:   End If
  loc_1D2DDCD:   var_88.MoveNext
  loc_1D2DDD2:   GoTo loc_1D2DA0D
  loc_1D2DDD5: End If
  loc_1D2DDF9: unk_57533F.Execute "SELECT * FROM FAENVIRO where LogSite_Code='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2DE04: Set var_88 = var_110
  loc_1D2DE28: If (var_88.RecordCount <= 0) Then
  loc_1D2DE5D:   unk_57533F.Execute "INSERT INTO FAENVIRO (AGE1,LogSite_Code,Site_Code) VALUES (0,'" & MemVar_1F92078 & "','" & MemVar_1F92070 & "')", var_E8, -1
  loc_1D2DE73: End If
  loc_1D2DE7B: var_88.Requery -1
  loc_1D2DE9F: var_E8 = CVar(var_88.Fields.Item("Age1")) 'Address
  loc_1D2DEA6: Proc_6_39_E7C810(var_108, var_E8)
  loc_1D2DEC0: If (var_108 = 0) Then
  loc_1D2DED9:   unk_57533F.Execute "UPDATE FAENVIRO SET Age1=0", var_E8, -1
  loc_1D2DEE4: End If
  loc_1D2DEF3: var_110 = var_88.Fields
  loc_1D2DF03: var_E8 = CVar(var_110.Item("Age2")) 'Address
  loc_1D2DF0A: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2DF24: If (var_108 = 0) Then
  loc_1D2DF3D:   unk_57533F.Execute "UPDATE FAENVIRO SET Age2=15", var_E8, -1
  loc_1D2DF48: End If
  loc_1D2DF57: var_110 = var_88.Fields
  loc_1D2DF67: var_E8 = CVar(var_110.Item("Age3")) 'Address
  loc_1D2DF6E: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2DF88: If (var_108 = 0) Then
  loc_1D2DFA1:   unk_57533F.Execute "UPDATE FAENVIRO SET Age3=30", var_E8, -1
  loc_1D2DFAC: End If
  loc_1D2DFBB: var_110 = var_88.Fields
  loc_1D2DFCB: var_E8 = CVar(var_110.Item("Age4")) 'Address
  loc_1D2DFD2: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2DFEC: If (var_108 = 0) Then
  loc_1D2E005:   unk_57533F.Execute "UPDATE FAENVIRO SET Age4=45", var_E8, -1
  loc_1D2E010: End If
  loc_1D2E01F: var_110 = var_88.Fields
  loc_1D2E02F: var_E8 = CVar(var_110.Item("Age5")) 'Address
  loc_1D2E036: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E050: If (var_108 = 0) Then
  loc_1D2E069:   unk_57533F.Execute "UPDATE FAENVIRO SET Age5=60", var_E8, -1
  loc_1D2E074: End If
  loc_1D2E083: var_110 = var_88.Fields
  loc_1D2E093: var_E8 = CVar(var_110.Item("Age6")) 'Address
  loc_1D2E09A: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E0B4: If (var_108 = 0) Then
  loc_1D2E0CD:   unk_57533F.Execute "UPDATE FAENVIRO SET Age6=90", var_E8, -1
  loc_1D2E0D8: End If
  loc_1D2E0E7: var_110 = var_88.Fields
  loc_1D2E0F7: var_E8 = CVar(var_110.Item("Amt1")) 'Address
  loc_1D2E0FE: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E118: If (var_108 = 0) Then
  loc_1D2E131:   unk_57533F.Execute "UPDATE FAENVIRO SET Amt1=1000", var_E8, -1
  loc_1D2E13C: End If
  loc_1D2E14B: var_110 = var_88.Fields
  loc_1D2E15B: var_E8 = CVar(var_110.Item("Amt2")) 'Address
  loc_1D2E162: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E17C: If (var_108 = 0) Then
  loc_1D2E195:   unk_57533F.Execute "UPDATE FAENVIRO SET Amt2=2000", var_E8, -1
  loc_1D2E1A0: End If
  loc_1D2E1AF: var_110 = var_88.Fields
  loc_1D2E1BF: var_E8 = CVar(var_110.Item("Amt3")) 'Address
  loc_1D2E1C6: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E1E0: If (var_108 = 0) Then
  loc_1D2E1F9:   unk_57533F.Execute "UPDATE FAENVIRO SET Amt3=3000", var_E8, -1
  loc_1D2E204: End If
  loc_1D2E213: var_110 = var_88.Fields
  loc_1D2E223: var_E8 = CVar(var_110.Item("Amt4")) 'Address
  loc_1D2E22A: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E244: If (var_108 = 0) Then
  loc_1D2E25D:   unk_57533F.Execute "UPDATE FAENVIRO SET Amt4=4000", var_E8, -1
  loc_1D2E268: End If
  loc_1D2E277: var_110 = var_88.Fields
  loc_1D2E287: var_E8 = CVar(var_110.Item("Amt5")) 'Address
  loc_1D2E28E: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E2A8: If (var_108 = 0) Then
  loc_1D2E2C1:   unk_57533F.Execute "UPDATE FAENVIRO SET Amt5=5000", var_E8, -1
  loc_1D2E2CC: End If
  loc_1D2E2DB: var_110 = var_88.Fields
  loc_1D2E2EB: var_E8 = CVar(var_110.Item("Amt6")) 'Address
  loc_1D2E2F2: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2E30C: If (var_108 = 0) Then
  loc_1D2E325:   unk_57533F.Execute "UPDATE FAENVIRO SET Amt6=6000", var_E8, -1
  loc_1D2E330: End If
  loc_1D2E33F: var_110 = var_88.Fields
  loc_1D2E34F: var_E8 = CVar(var_110.Item("TagadaHeader1")) 'Address
  loc_1D2E369: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E382:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaHeader1='Dear Sirs,'", var_E8, -1
  loc_1D2E38D: End If
  loc_1D2E39C: var_110 = var_88.Fields
  loc_1D2E3AC: var_E8 = CVar(var_110.Item("TagadaHeader2")) 'Address
  loc_1D2E3C6: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E3DF:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaHeader2='                 SUB : Outstanding Letter'", var_E8, -1
  loc_1D2E3EA: End If
  loc_1D2E3F9: var_110 = var_88.Fields
  loc_1D2E409: var_E8 = CVar(var_110.Item("TagadaHeader3")) 'Address
  loc_1D2E423: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E43C:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaHeader3=''", var_E8, -1
  loc_1D2E447: End If
  loc_1D2E456: var_110 = var_88.Fields
  loc_1D2E466: var_E8 = CVar(var_110.Item("TagadaHeader4")) 'Address
  loc_1D2E480: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E499:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which'", var_E8, -1
  loc_1D2E4A4: End If
  loc_1D2E4B3: var_110 = var_88.Fields
  loc_1D2E4C3: var_E8 = CVar(var_110.Item("TagadaHeader5")) 'Address
  loc_1D2E4DD: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E4F6:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaHeader5='are given below for your ready reference.'", var_E8, -1
  loc_1D2E501: End If
  loc_1D2E510: var_110 = var_88.Fields
  loc_1D2E520: var_E8 = CVar(var_110.Item("TagadaFooter1")) 'Address
  loc_1D2E53A: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E553:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaFooter1='The payment of the bills have become late and as such, we request you to'", var_E8, -1
  loc_1D2E55E: End If
  loc_1D2E56D: var_110 = var_88.Fields
  loc_1D2E57D: var_E8 = CVar(var_110.Item("TagadaFooter2")) 'Address
  loc_1D2E597: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E5B0:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.'", var_E8, -1
  loc_1D2E5BB: End If
  loc_1D2E5CA: var_110 = var_88.Fields
  loc_1D2E5DA: var_E8 = CVar(var_110.Item("TagadaFooter3")) 'Address
  loc_1D2E5F4: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E60D:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaFooter3='Thanking you                                           Yours Faithfully'", var_E8, -1
  loc_1D2E618: End If
  loc_1D2E627: var_110 = var_88.Fields
  loc_1D2E637: var_E8 = CVar(var_110.Item("TagadaFooter4")) 'Address
  loc_1D2E651: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E66A:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaFooter4=''", var_E8, -1
  loc_1D2E675: End If
  loc_1D2E684: var_110 = var_88.Fields
  loc_1D2E694: var_E8 = CVar(var_110.Item("TagadaFooter5")) 'Address
  loc_1D2E6AE: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E6C7:   unk_57533F.Execute "UPDATE FAENVIRO SET TagadaFooter5='                                                       For ABC & Company'", var_E8, -1
  loc_1D2E6D2: End If
  loc_1D2E6E1: var_110 = var_88.Fields
  loc_1D2E6F1: var_E8 = CVar(var_110.Item("CreditLimit")) 'Address
  loc_1D2E70B: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E724:   unk_57533F.Execute "UPDATE FAENVIRO SET CreditLimit='Yes'", var_E8, -1
  loc_1D2E72F: End If
  loc_1D2E73E: var_110 = var_88.Fields
  loc_1D2E74E: var_E8 = CVar(var_110.Item("DebitLimit")) 'Address
  loc_1D2E768: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E781:   unk_57533F.Execute "UPDATE FAENVIRO SET DebitLimit='Yes'", var_E8, -1
  loc_1D2E78C: End If
  loc_1D2E79B: var_110 = var_88.Fields
  loc_1D2E7AB: var_E8 = CVar(var_110.Item("NegativeCashBalance")) 'Address
  loc_1D2E7C5: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E7DE:   unk_57533F.Execute "UPDATE FAENVIRO SET NegativeCashBalancE='Yes'", var_E8, -1
  loc_1D2E7E9: End If
  loc_1D2E7F8: var_110 = var_88.Fields
  loc_1D2E808: var_E8 = CVar(var_110.Item("ShowGroup")) 'Address
  loc_1D2E822: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E83B:   unk_57533F.Execute "UPDATE FAENVIRO SET ShowGroup='No'", var_E8, -1
  loc_1D2E846: End If
  loc_1D2E855: var_110 = var_88.Fields
  loc_1D2E865: var_E8 = CVar(var_110.Item("DonotShowGroup")) 'Address
  loc_1D2E87F: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E898:   unk_57533F.Execute "UPDATE FAENVIRO SET DonotShowGroup='No'", var_E8, -1
  loc_1D2E8A3: End If
  loc_1D2E8B2: var_110 = var_88.Fields
  loc_1D2E8C2: var_E8 = CVar(var_110.Item("ShowCurrentBalance")) 'Address
  loc_1D2E8DC: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E8F5:   unk_57533F.Execute "UPDATE FAENVIRO SET ShowCurrentBalance='Yes'", var_E8, -1
  loc_1D2E900: End If
  loc_1D2E90F: var_110 = var_88.Fields
  loc_1D2E91F: var_E8 = CVar(var_110.Item("VerticleBalanceSheet")) 'Address
  loc_1D2E939: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E952:   unk_57533F.Execute "UPDATE FAENVIRO SET VerticleBalanceSheet='No'", var_E8, -1
  loc_1D2E95D: End If
  loc_1D2E96C: var_110 = var_88.Fields
  loc_1D2E97C: var_E8 = CVar(var_110.Item("ShowQty")) 'Address
  loc_1D2E996: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2E9AF:   unk_57533F.Execute "UPDATE FAENVIRO SET ShowQty='No'", var_E8, -1
  loc_1D2E9BA: End If
  loc_1D2E9C9: var_110 = var_88.Fields
  loc_1D2E9D9: var_E8 = CVar(var_110.Item("ShowCityName")) 'Address
  loc_1D2E9F3: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EA0C:   unk_57533F.Execute "UPDATE FAENVIRO SET ShowCityName='No'", var_E8, -1
  loc_1D2EA17: End If
  loc_1D2EA26: var_110 = var_88.Fields
  loc_1D2EA36: var_E8 = CVar(var_110.Item("LedDivCode")) 'Address
  loc_1D2EA50: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EA69:   unk_57533F.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_E8, -1
  loc_1D2EA74: End If
  loc_1D2EA83: var_110 = var_88.Fields
  loc_1D2EA93: var_E8 = CVar(var_110.Item("LedSiteCode")) 'Address
  loc_1D2EAAD: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EAC6:   unk_57533F.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_E8, -1
  loc_1D2EAD1: End If
  loc_1D2EAE0: var_110 = var_88.Fields
  loc_1D2EAF0: var_E8 = CVar(var_110.Item("LedPrefix")) 'Address
  loc_1D2EB0A: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EB23:   unk_57533F.Execute "UPDATE FAENVIRO SET LedPrefix='No'", var_E8, -1
  loc_1D2EB2E: End If
  loc_1D2EB3D: var_110 = var_88.Fields
  loc_1D2EB4D: var_E8 = CVar(var_110.Item("daterfill")) 'Address
  loc_1D2EB67: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EB80:   unk_57533F.Execute "UPDATE FAENVIRO SET daterfill='Y'", var_E8, -1
  loc_1D2EB8B: End If
  loc_1D2EB9A: var_110 = var_88.Fields
  loc_1D2EBAA: var_E8 = CVar(var_110.Item("titlerfill")) 'Address
  loc_1D2EBC4: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EBDD:   unk_57533F.Execute "UPDATE FAENVIRO SET titlerfill='M'", var_E8, -1
  loc_1D2EBE8: End If
  loc_1D2EBF7: var_110 = var_88.Fields
  loc_1D2EC07: var_E8 = CVar(var_110.Item("pagenofill")) 'Address
  loc_1D2EC21: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EC3A:   unk_57533F.Execute "UPDATE FAENVIRO SET pagenofill='Y'", var_E8, -1
  loc_1D2EC45: End If
  loc_1D2EC54: var_110 = var_88.Fields
  loc_1D2EC64: var_E8 = CVar(var_110.Item("RunPIF")) 'Address
  loc_1D2EC7E: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EC97:   unk_57533F.Execute "UPDATE FAENVIRO SET RunPIF='Y'", var_E8, -1
  loc_1D2ECA2: End If
  loc_1D2ECB1: var_110 = var_88.Fields
  loc_1D2ECC1: var_E8 = CVar(var_110.Item("FilterAC")) 'Address
  loc_1D2ECDB: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2ECF4:   unk_57533F.Execute "UPDATE FAENVIRO SET FilterAC='No'", var_E8, -1
  loc_1D2ECFF: End If
  loc_1D2ED0E: var_110 = var_88.Fields
  loc_1D2ED1E: var_E8 = CVar(var_110.Item("AddressHelp")) 'Address
  loc_1D2ED38: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2ED51:   unk_57533F.Execute "UPDATE FAENVIRO SET AddressHelp='Yes'", var_E8, -1
  loc_1D2ED5C: End If
  loc_1D2ED6B: var_110 = var_88.Fields
  loc_1D2ED7B: var_E8 = CVar(var_110.Item("DateLock")) 'Address
  loc_1D2ED95: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EDAE:   unk_57533F.Execute "UPDATE FAENVIRO SET DateLock='Y'", var_E8, -1
  loc_1D2EDB9: End If
  loc_1D2EDC8: var_110 = var_88.Fields
  loc_1D2EDD8: var_E8 = CVar(var_110.Item("CashBookBalance")) 'Address
  loc_1D2EDF2: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EE0B:   unk_57533F.Execute "UPDATE FAENVIRO SET CashBookBalance='Yes'", var_E8, -1
  loc_1D2EE16: End If
  loc_1D2EE25: var_110 = var_88.Fields
  loc_1D2EE35: var_E8 = CVar(var_110.Item("MonthTotal")) 'Address
  loc_1D2EE4F: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EE68:   unk_57533F.Execute "UPDATE FAENVIRO SET MonthTotal='Yes'", var_E8, -1
  loc_1D2EE73: End If
  loc_1D2EE82: var_110 = var_88.Fields
  loc_1D2EE92: var_E8 = CVar(var_110.Item("OnLineAdjustment")) 'Address
  loc_1D2EEAC: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EEC5:   unk_57533F.Execute "UPDATE FAENVIRO SET OnLineAdjustment='Yes'", var_E8, -1
  loc_1D2EED0: End If
  loc_1D2EEDF: var_110 = var_88.Fields
  loc_1D2EEEF: var_E8 = CVar(var_110.Item("linefiller")) 'Address
  loc_1D2EF09: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EF22:   unk_57533F.Execute "UPDATE FAENVIRO SET linefiller='-'", var_E8, -1
  loc_1D2EF2D: End If
  loc_1D2EF3C: var_110 = var_88.Fields
  loc_1D2EF4C: var_E8 = CVar(var_110.Item("CashBookPage")) 'Address
  loc_1D2EF66: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2EF7F:   unk_57533F.Execute "UPDATE FAENVIRO SET CashBookPage='Yes'", var_E8, -1
  loc_1D2EF8A: End If
  loc_1D2EFAE: unk_57533F.Execute "SELECT * FROM ENVIRO where LogSite_Code='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2EFB9: Set var_88 = var_110
  loc_1D2EFDD: If (var_88.RecordCount <= 0) Then
  loc_1D2F00A:   var_108 = (Trim(MemVar_1F92078) + "CASH")
  loc_1D2F034:   var_190 = "INSERT INTO ENVIRO (Cash_Ac,SiteCode,LogSite_Code) VALUES ('" & var_108 & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F92078) 
  loc_1D2F04B:   unk_57533F.Execute CStr(var_190 & "')"), var_1C0, -1
  loc_1D2F06B: End If
  loc_1D2F073: var_88.Requery -1
  loc_1D2F087: var_110 = var_88.Fields
  loc_1D2F0B1: If (Proc_6_38_E68A98(CVar(var_110.Item("CASH_AC")), var_110, var_110) = vbNullString) Then
  loc_1D2F0DE:   var_108 = (Trim(MemVar_1F92078) + "CASH")
  loc_1D2F10C:   unk_57533F.Execute CStr("UPDATE ENVIRO SET Cash_Ac='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_190, -1
  loc_1D2F128: End If
  loc_1D2F137: var_110 = var_88.Fields
  loc_1D2F147: var_E8 = CVar(var_110.Item("PF_LIMIT")) 'Address
  loc_1D2F14E: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2F168: If (var_108 = 0) Then
  loc_1D2F18F:   unk_57533F.Execute "UPDATE ENVIRO SET PF_LIMIT=5000  WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F1A1: End If
  loc_1D2F1B0: var_110 = var_88.Fields
  loc_1D2F1C0: var_E8 = CVar(var_110.Item("PF_EMPLOYEE")) 'Address
  loc_1D2F1C7: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2F1E1: If (var_108 = 0) Then
  loc_1D2F208:   unk_57533F.Execute "UPDATE ENVIRO SET PF_EMPLOYEE=12 WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F21A: End If
  loc_1D2F229: var_110 = var_88.Fields
  loc_1D2F239: var_E8 = CVar(var_110.Item("PF_EMPLOYER")) 'Address
  loc_1D2F240: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2F25A: If (var_108 = 0) Then
  loc_1D2F281:   unk_57533F.Execute "UPDATE ENVIRO SET PF_EMPLOYER=8 WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F293: End If
  loc_1D2F2A2: var_110 = var_88.Fields
  loc_1D2F2B2: var_E8 = CVar(var_110.Item("ESI_LIMIT")) 'Address
  loc_1D2F2B9: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2F2D3: If (var_108 = 0) Then
  loc_1D2F2FA:   unk_57533F.Execute "UPDATE ENVIRO SET ESI_LIMIT=6000 WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F30C: End If
  loc_1D2F31B: var_110 = var_88.Fields
  loc_1D2F32B: var_E8 = CVar(var_110.Item("esi_employee")) 'Address
  loc_1D2F332: Proc_6_39_E7C810(var_108, var_E8, var_110)
  loc_1D2F34C: If (var_108 = 0) Then
  loc_1D2F373:   unk_57533F.Execute "UPDATE ENVIRO SET esi_employee=8 WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F385: End If
  loc_1D2F394: var_110 = var_88.Fields
  loc_1D2F3BE: If (Proc_6_38_E68A98(CVar(var_110.Item("SALARY_AC")), var_110, var_110) = vbNullString) Then
  loc_1D2F3D4:   var_9C = "Expenditure"
  loc_1D2F3FD:   var_108 = (Trim(MemVar_1F92078) + "SLAC")
  loc_1D2F406:   Call Proc_97_20_10FB0CC(CStr(var_108), "EMP. SALARY A/C", "0003", "L")
  loc_1D2F449:   var_108 = (Trim(MemVar_1F92078) + "SLAC")
  loc_1D2F477:   unk_57533F.Execute CStr("UPDATE ENVIRO SET SALARY_AC='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_190, -1
  loc_1D2F493: End If
  loc_1D2F4A2: var_110 = var_88.Fields
  loc_1D2F4CC: If (Proc_6_38_E68A98(CVar(var_110.Item("Loan_AC")), var_110, var_9C) = vbNullString) Then
  loc_1D2F4E2:   var_9C = "Others"
  loc_1D2F50B:   var_108 = (Trim(MemVar_1F92078) + "LOAN")
  loc_1D2F514:   Call Proc_97_20_10FB0CC(CStr(var_108), "EMP. LOAN A/C", "0019", "A")
  loc_1D2F557:   var_108 = (Trim(MemVar_1F92078) + "LOAN")
  loc_1D2F585:   unk_57533F.Execute CStr("UPDATE ENVIRO SET Loan_AC='" & var_108 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_190, -1
  loc_1D2F5A1: End If
  loc_1D2F5B0: var_110 = var_88.Fields
  loc_1D2F5DA: If (Proc_6_38_E68A98(CVar(var_110.Item("AdvanceAc")), var_110, var_9C) = vbNullString) Then
  loc_1D2F5F0:   var_9C = "Others"
  loc_1D2F619:   var_108 = (Trim(MemVar_1F92078) + "ADV")
  loc_1D2F622:   Call Proc_97_20_10FB0CC(CStr(var_108), "EMP. ADVANCE A/C", "0019", "A")
  loc_1D2F665:   var_108 = (Trim(MemVar_1F92078) + "ADV")
  loc_1D2F672:   var_14C = "UPDATE ENVIRO SET AdvanceAc='" & var_108 & "' WHERE LOGSITE_CODE='" 
  loc_1D2F685:   var_16C = var_14C & CVar(MemVar_1F92078) & "'" 
  loc_1D2F693:   unk_57533F.Execute CStr(var_16C), var_190, -1
  loc_1D2F6AF: End If
  loc_1D2F6BE: var_110 = var_88.Fields
  loc_1D2F6E8: If (Proc_6_38_E68A98(CVar(var_110.Item("SiteCode")), var_110, var_9C) = vbNullString) Then
  loc_1D2F727:   unk_57533F.Execute CStr("UPDATE ENVIRO SET SiteCode='" & Trim(MemVar_1F92078) & "'"), var_14C, -1
  loc_1D2F73D: End If
  loc_1D2F74C: var_110 = var_88.Fields
  loc_1D2F75C: var_E8 = CVar(var_110.Item("Ncur")) 'Address
  loc_1D2F76B: If IsNull(var_E8) Then
  loc_1D2F78B:   Proc_6_7_F25D88(var_E8, MemVar_1F920F4, "UPDATE ENVIRO SET NCUR=", var_16C, -1)
  loc_1D2F7BD:   unk_57533F.Execute CStr(var_110 & var_E8 & " WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_110, var_110
  loc_1D2F7D7: End If
  loc_1D2F7F6: var_E8 = CVar(var_88.Fields.Item("calcMethod")) 'Address
  loc_1D2F810: If (Proc_6_38_E68A98(var_E8) = vbNullString) Then
  loc_1D2F837:   unk_57533F.Execute "UPDATE ENVIRO SET calcMethod='A' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F849: End If
  loc_1D2F858: var_110 = var_88.Fields
  loc_1D2F868: var_E8 = CVar(var_110.Item("CheckOut")) 'Address
  loc_1D2F882: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2F8A9:   unk_57533F.Execute "UPDATE ENVIRO SET Checkout='Other' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F8BB: End If
  loc_1D2F8CA: var_110 = var_88.Fields
  loc_1D2F8DA: var_E8 = CVar(var_110.Item("variation")) 'Address
  loc_1D2F8F4: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2F91B:   unk_57533F.Execute "UPDATE ENVIRO SET Variation='01:00' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F92D: End If
  loc_1D2F93C: var_110 = var_88.Fields
  loc_1D2F94C: var_E8 = CVar(var_110.Item("CheckoutVar")) 'Address
  loc_1D2F966: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2F98D:   unk_57533F.Execute "UPDATE ENVIRO SET CheckoutVar='10:00' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2F99F: End If
  loc_1D2F9AE: var_110 = var_88.Fields
  loc_1D2F9BE: var_E8 = CVar(var_110.Item("PurchaseAdd1")) 'Address
  loc_1D2F9D8: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2F9FF:   unk_57533F.Execute "UPDATE ENVIRO SET PurchaseAdd1='Addition1' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FA11: End If
  loc_1D2FA20: var_110 = var_88.Fields
  loc_1D2FA30: var_E8 = CVar(var_110.Item("PurchaseDed1")) 'Address
  loc_1D2FA4A: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FA71:   unk_57533F.Execute "UPDATE ENVIRO SET PurchaseDed1='Deduction1' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FA83: End If
  loc_1D2FA92: var_110 = var_88.Fields
  loc_1D2FAA2: var_E8 = CVar(var_110.Item("PurchaseAdd2")) 'Address
  loc_1D2FABC: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FAE3:   unk_57533F.Execute "UPDATE ENVIRO SET PurchaseAdd2='Addition2' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FAF5: End If
  loc_1D2FB04: var_110 = var_88.Fields
  loc_1D2FB14: var_E8 = CVar(var_110.Item("PurchaseDed2")) 'Address
  loc_1D2FB2E: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FB55:   unk_57533F.Execute "UPDATE ENVIRO SET PurchaseDed2='Deduction2' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FB67: End If
  loc_1D2FB76: var_110 = var_88.Fields
  loc_1D2FB86: var_E8 = CVar(var_110.Item("Rate1")) 'Address
  loc_1D2FBA0: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FBC7:   unk_57533F.Execute "UPDATE ENVIRO SET Rate1='High Rate' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FBD9: End If
  loc_1D2FBE8: var_110 = var_88.Fields
  loc_1D2FBF8: var_E8 = CVar(var_110.Item("Rate2")) 'Address
  loc_1D2FC12: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FC39:   unk_57533F.Execute "UPDATE ENVIRO SET Rate2='Rack Rate' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FC4B: End If
  loc_1D2FC5A: var_110 = var_88.Fields
  loc_1D2FC6A: var_E8 = CVar(var_110.Item("Rate3")) 'Address
  loc_1D2FC84: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FCAB:   unk_57533F.Execute "UPDATE ENVIRO SET Rate3='Disc1 Rate' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FCBD: End If
  loc_1D2FCCC: var_110 = var_88.Fields
  loc_1D2FCDC: var_E8 = CVar(var_110.Item("Rate4")) 'Address
  loc_1D2FCF6: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FD1D:   unk_57533F.Execute "UPDATE ENVIRO SET Rate4='Disc2 Rate' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FD2F: End If
  loc_1D2FD3E: var_110 = var_88.Fields
  loc_1D2FD4E: var_E8 = CVar(var_110.Item("Rate5")) 'Address
  loc_1D2FD68: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FD8F:   unk_57533F.Execute "UPDATE ENVIRO SET Rate5='Disc3 Rate' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FDA1: End If
  loc_1D2FDB0: var_110 = var_88.Fields
  loc_1D2FDC0: var_E8 = CVar(var_110.Item("DefCompGroup")) 'Address
  loc_1D2FDDA: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FE01:   unk_57533F.Execute "UPDATE ENVIRO SET DefCompGroup='0020' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FE13: End If
  loc_1D2FE22: var_110 = var_88.Fields
  loc_1D2FE32: var_E8 = CVar(var_110.Item("ReservationPrinting")) 'Address
  loc_1D2FE4C: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FE73:   unk_57533F.Execute "UPDATE ENVIRO SET ReservationPrinting='W' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FE85: End If
  loc_1D2FE94: var_110 = var_88.Fields
  loc_1D2FEA4: var_E8 = CVar(var_110.Item("ArrDateTimeEdit")) 'Address
  loc_1D2FEBE: If (Proc_6_38_E68A98(var_E8, var_110) = vbNullString) Then
  loc_1D2FEE5:   unk_57533F.Execute "UPDATE ENVIRO SET ArrDateTimeEdit='N' WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1D2FEF7: End If
  loc_1D2FF06: var_110 = var_88.Fields
  loc_1D2FF30: If (Proc_6_38_E68A98(CVar(var_110.Item("CashPayType")), var_110) = vbNullString) Then
  loc_1D2FF5D:   var_108 = (Trim(MemVar_1F92078) + "CASH")
  loc_1D2FF7D:   var_16C = "UPDATE ENVIRO SET CashPayType='" & var_110 & Trim(MemVar_1F92078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'" 
  loc_1D2FF8B:   unk_57533F.Execute CStr(var_16C), var_190, -1
  loc_1D2FFA7: End If
  loc_1D2FFB6: var_110 = var_88.Fields
  loc_1D2FFE0: If (Proc_6_38_E68A98(CVar(var_110.Item("RoomPayType")), var_110) = vbNullString) Then
  loc_1D3000D:   var_108 = (Trim(MemVar_1F92078) + "ROOM")
  loc_1D3002D:   var_16C = "UPDATE ENVIRO SET RoomPayType='" & var_110 & Trim(MemVar_1F92078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'" 
  loc_1D3003B:   unk_57533F.Execute CStr(var_16C), var_190, -1
  loc_1D30057: End If
  loc_1D30066: var_110 = var_88.Fields
  loc_1D30090: If (Proc_6_38_E68A98(CVar(var_110.Item("RoomChrgDueAc")), var_110) = vbNullString) Then
  loc_1D300A6:   var_9C = "Others"
  loc_1D300AF:   var_98 = "A"
  loc_1D300CF:   var_108 = (Trim(MemVar_1F92078) + "RDUE")
  loc_1D300D8:   Call Proc_97_20_10FB0CC(CStr(var_110 & Trim(MemVar_1F92078)), "DAILY PAYMENT/CHARGES POSTING A/C", "0006")
  loc_1D3011B:   var_108 = (Trim(MemVar_1F92078) + "RDUE")
  loc_1D3013B:   var_16C = "UPDATE ENVIRO SET RoomChrgDueAc='" & var_110 & Trim(MemVar_1F92078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'" 
  loc_1D30149:   unk_57533F.Execute CStr(var_16C), var_190, -1
  loc_1D30165: End If
  loc_1D301A1: var_108 = (Trim(MemVar_1F92078) + "DISC")
  loc_1D301AA: Call Proc_97_20_10FB0CC(CStr(var_110 & Trim(MemVar_1F92078)), "DISCOUNT A/C", "0028", "E", "Others")
  loc_1D301FF: var_108 = (Trim(MemVar_1F92078) + "ROFF")
  loc_1D30208: Call Proc_97_20_10FB0CC(CStr(var_110 & Trim(MemVar_1F92078)), "ROUND OFF A/C", "0028", "E", "Others")
  loc_1D30234: var_9C = "Others"
  loc_1D3023D: var_98 = "E"
  loc_1D3025D: var_108 = (Trim(MemVar_1F92078) + "COMM")
  loc_1D30266: Call Proc_97_20_10FB0CC(CStr(var_110 & Trim(MemVar_1F92078)), "COMMISSION A/C", "0028", var_98, var_9C)
  loc_1D3028E: var_110 = var_88.Fields
  loc_1D302B8: If (Proc_6_38_E68A98(CVar(var_110.Item("OutletDiscAc")), var_110, var_98) = vbNullString) Then
  loc_1D302E5:   var_108 = (Trim(MemVar_1F92078) + "DISC")
  loc_1D30305:   var_16C = "UPDATE ENVIRO SET OutletDiscAc='" & var_110 & Trim(MemVar_1F92078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'" 
  loc_1D30313:   unk_57533F.Execute CStr(var_16C), var_190, -1
  loc_1D3032F: End If
  loc_1D3033E: var_110 = var_88.Fields
  loc_1D30368: If (Proc_6_38_E68A98(CVar(var_110.Item("OutletRoundAc")), var_110) = vbNullString) Then
  loc_1D30395:   var_108 = (Trim(MemVar_1F92078) + "ROFF")
  loc_1D303B5:   var_16C = "UPDATE ENVIRO SET OutletRoundAc='" & var_110 & Trim(MemVar_1F92078) & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'" 
  loc_1D303C3:   unk_57533F.Execute CStr(var_16C), var_190, -1
  loc_1D303DF: End If
  loc_1D303EE: var_110 = var_88.Fields
  loc_1D30418: If (Proc_6_38_E68A98(CVar(var_110.Item("CommissionAc")), var_110) = vbNullString) Then
  loc_1D30445:   var_108 = (Trim(MemVar_1F92078) + "COMM")
  loc_1D30449:   var_128 = "UPDATE ENVIRO SET CommissionAc='" & var_110 & Trim(MemVar_1F92078) 
  loc_1D30452:   var_14C = var_128 & "' WHERE LOGSITE_CODE='" 
  loc_1D30469:   var_8C = CStr(var_14C & CVar(MemVar_1F92078) & "'")
  loc_1D30473:   unk_57533F.Execute var_8C, var_190, -1
  loc_1D3048F: End If
  loc_1D30494: Set var_88 = Nothing
  loc_1D30497: Exit Sub
  loc_1D30498: ' Referenced from: 1D28BFC
  loc_1D304B4: Call 0.Method_arg_2C (var_8C, 0, Err() & Trim(MemVar_1F92078), var_128)
  loc_1D304BF: MsgBox(CVar(var_8C), var_14C, Err(), var_9C, Err())
  loc_1D304D2: Exit Sub
End Sub

Private Sub BtnAcGroup_UnknownEvent_9 '1445FBC
  'Data Table: 575310
  loc_1445494: On Error Goto loc_1445F7E
  loc_144549A: var_A4 = "N"
  loc_14454A3: var_A0 = "Y"
  loc_14454B4: var_98 = "060007"
  loc_14454DE: Call Proc_97_24_11A9C24("0022", "BANK ACCOUNTS", "A", "Bank")
  loc_14454F7: var_A4 = "N"
  loc_1445500: var_A0 = "Y"
  loc_144553B: Call Proc_97_24_11A9C24("0011", "BANK OD/AC", "L", "Bank", "020001", &H6E)
  loc_1445554: var_A4 = "N"
  loc_1445598: Call Proc_97_24_11A9C24("0007", "BRANCH/DIVISIONS", "A", "Others", "070", &H46, "Y")
  loc_14455F5: Call Proc_97_24_11A9C24("0001", "CAPITAL ACCOUNT", "L", "Others", "010", &HA, "Y", "N")
  loc_1445643: var_8C = "CASH-IN-HAND"
  loc_1445652: Call Proc_97_24_11A9C24("0021", "CAPITAL ACCOUNT", "A", "Cash", "060005", &HD2, "Y", "N")
  loc_14456AF: Call Proc_97_24_11A9C24("000A", "CLOSING STOCK", "R", "Others", "200", &HF0, "Y", "Y")
  loc_144570C: Call Proc_97_24_11A9C24("0006", "CURRENT ASSETS", "A", "Others", "060", &H3C, "Y", "N")
  loc_1445769: Call Proc_97_24_11A9C24("0003", "CURRENT LIABILITIES", "L", "Others", "030", &H1E, "Y", "N")
  loc_14457C6: Call Proc_97_24_11A9C24("0018", "DEPOSIT (ASSET)", "A", "Others", "060002", &HB4, "Y", "N")
  loc_1445823: Call Proc_97_24_11A9C24("0026", "DIRECT EXPENSE", "E", "Others", "260", &H104, "Y", "Y")
  loc_1445880: Call Proc_97_24_11A9C24("0025", "DIRECT INCOMES", "R", "Others", "250", &HFA, "Y", "Y")
  loc_14458DD: Call Proc_97_24_11A9C24("0014", "DUTIES & TAXES", "L", "Others", "030001", &H8C, "Y", "N")
  loc_144593A: Call Proc_97_24_11A9C24("0004", "FIXED ASSETS", "A", "Others", "040", &H28, "Y", "N")
  loc_1445997: Call Proc_97_24_11A9C24("0028", "INDIRECT EXPENSES", "E", "Others", "280", &H118, "Y", "N")
  loc_14459F4: Call Proc_97_24_11A9C24("0027", "INDIRECT INCOME", "R", "Others", "270", &H10E, "Y", "N")
  loc_1445A51: Call Proc_97_24_11A9C24("0005", "INVESTMENTS", "A", "Others", "050", &H32, "Y", "N")
  loc_1445AAE: Call Proc_97_24_11A9C24("0002", "LOAN (LIABILITY)", "L", "Others", "020", &H14, "Y", "N")
  loc_1445B0B: Call Proc_97_24_11A9C24("0019", "LOANS & ADVANCES (ASSET)", "A", "Others", "060003", &HBE, "Y", "N")
  loc_1445B68: Call Proc_97_24_11A9C24("0008", "MISC. EXPENSES (ASSET)", "A", "Others", "080", &H50, "Y", "N")
  loc_1445BC5: Call Proc_97_24_11A9C24("0017", "OPENING STOCK", "A", "Others", "060001", &HAA, "Y", "N")
  loc_1445C22: Call Proc_97_24_11A9C24("0029", "PROFIT & LOSS A/C", "L", "Others", "999", &H3E8, "Y", "N")
  loc_1445C7F: Call Proc_97_24_11A9C24("0015", "PROVISIONS", "L", "Others", "030002", &H96, "Y", "N")
  loc_1445CDC: Call Proc_97_24_11A9C24("0024", "PURCHASE ACCOUNTS", "E", "Purchase", "240", &HF0, "Y", "Y")
  loc_1445D39: Call Proc_97_24_11A9C24("0010", "RESERVE & SURPLUS", "L", "Others", "010001", &H64, "Y", "N")
  loc_1445D96: Call Proc_97_24_11A9C24("0023", "SALES ACCOUNTS", "R", "Sale", "230", &HE6, "Y", "Y")
  loc_1445DF3: Call Proc_97_24_11A9C24("0012", "SECURED LOANS", "L", "Others", "020002", &H78, "Y", "N")
  loc_1445E50: Call Proc_97_24_11A9C24("0016", "SUNDRY CREDITORS", "L", "Supplier", "030003", &HA0, "Y", "N")
  loc_1445EAD: Call Proc_97_24_11A9C24("0020", "SUNDRY DEBTORS", "A", "Customer", "060004", &HC8, "Y", "N")
  loc_1445F0A: Call Proc_97_24_11A9C24("0009", "SUSPENCE A/C ", "A", "Others", "090", &H5A, "Y", "N")
  loc_1445F23: var_A4 = "N"
  loc_1445F2C: var_A0 = "Y"
  loc_1445F3D: var_98 = "020003"
  loc_1445F61: var_88 = "0013"
  loc_1445F67: Call Proc_97_24_11A9C24(var_88, "UNSECURED LOANS", "L", "Others", var_98, &H82, var_A0, var_A4)
  loc_1445F7D: Exit Sub
  loc_1445F7E: ' Referenced from: 1445494
  loc_1445F94: Set var_A8 = Err()
  loc_1445F9A: Call 0.Method_arg_2C (var_88, 0, var_D8, var_F8, var_118, var_A4)
  loc_1445FA5: MsgBox(CVar(var_88), var_A0, var_A4, var_98, &HDC)
  loc_1445FB8: Exit Sub
End Sub

Private Sub BtnPurchase_UnknownEvent_9 '130DCA8
  'Data Table: 575310
  Dim var_C4 As Variant
  loc_130D58C: On Error Goto loc_130DC9C
  loc_130D5AC: var_F0 = "N"
  loc_130D5B5: var_EC = "N"
  loc_130D5BE: var_E8 = "N"
  loc_130D5C7: var_E4 = "N"
  loc_130D5D0: var_E0 = "STR"
  loc_130D60B: var_C4 = (Trim(MemVar_1F92078) + "PURC")
  loc_130D614: Call Proc_97_23_122E3AC(CStr(var_C4), "PURCHASE STORE", "N", "N", "Store", "N")
  loc_130D640: var_108 = 0
  loc_130D64B: var_104 = 0
  loc_130D656: var_100 = 0
  loc_130D661: var_FC = 0
  loc_130D66C: var_F8 = 0
  loc_130D677: var_F0 = 0
  loc_130D682: var_EC = 0
  loc_130D68D: var_E8 = 0
  loc_130D6DD: Call Proc_97_25_1371C2C("INDENT", "PIND", "PIND", vbNullString, "Indent Entry", "PIND", "Automatic", MemVar_1F92078 & "PURC")
  loc_130D70C: var_108 = 0
  loc_130D717: var_104 = 0
  loc_130D722: var_100 = 0
  loc_130D72D: var_FC = 0
  loc_130D738: var_F8 = 0
  loc_130D743: var_F0 = 0
  loc_130D74E: var_EC = 0
  loc_130D759: var_E8 = 0
  loc_130D7A9: Call Proc_97_25_1371C2C("PORD", "PORD", "PORD", vbNullString, "Purchase Order", "PORD", "Automatic", MemVar_1F92078 & "PURC")
  loc_130D7D8: var_108 = 0
  loc_130D7E3: var_104 = 0
  loc_130D7EE: var_100 = 0
  loc_130D7F9: var_FC = 0
  loc_130D804: var_F8 = 0
  loc_130D80F: var_F0 = 0
  loc_130D81A: var_EC = 0
  loc_130D825: var_E8 = 0
  loc_130D875: Call Proc_97_25_1371C2C("MREntry", "MRE", "MRCH", vbNullString, "M.R.Entry(Cash)", "MRCH", "Automatic", MemVar_1F92078 & "PURC")
  loc_130D8A4: var_108 = 0
  loc_130D8AF: var_104 = 0
  loc_130D8BA: var_100 = 0
  loc_130D8C5: var_FC = 0
  loc_130D8D0: var_F8 = 0
  loc_130D8DB: var_F0 = 0
  loc_130D8E6: var_EC = 0
  loc_130D8F1: var_E8 = 0
  loc_130D941: Call Proc_97_25_1371C2C("MREntry", "MRE", "MRCR", vbNullString, "M.R.Entry(Credit)", "MRCR", "Automatic", MemVar_1F92078 & "PURC")
  loc_130D970: var_108 = 0
  loc_130D97B: var_104 = 0
  loc_130D986: var_100 = 0
  loc_130D991: var_FC = 0
  loc_130D99C: var_F8 = 0
  loc_130D9A7: var_F0 = 0
  loc_130D9B2: var_EC = 0
  loc_130D9BD: var_E8 = 0
  loc_130DA0D: Call Proc_97_25_1371C2C("PURCHBILL", "PBR", "PBPB", vbNullString, "Purchase Bill (Credit)", "PBILL", "Automatic", MemVar_1F92078 & "PURC")
  loc_130DA3C: var_108 = 0
  loc_130DA47: var_104 = 0
  loc_130DA52: var_100 = 0
  loc_130DA5D: var_FC = 0
  loc_130DA68: var_F8 = 0
  loc_130DA73: var_F0 = 0
  loc_130DA7E: var_EC = 0
  loc_130DA89: var_E8 = 0
  loc_130DAD9: Call Proc_97_25_1371C2C("PURCHBILL", "PBC", "PBPC", vbNullString, "Purchase Bill (Cash)", "PBILL", "Automatic", MemVar_1F92078 & "PURC")
  loc_130DB08: var_108 = 0
  loc_130DB13: var_104 = 0
  loc_130DB1E: var_100 = 0
  loc_130DB29: var_FC = 0
  loc_130DB34: var_F8 = 0
  loc_130DB3F: var_F0 = 0
  loc_130DB4A: var_EC = 0
  loc_130DB55: var_E8 = 0
  loc_130DBA5: Call Proc_97_25_1371C2C("PURCHBILL", "PRR", "PRPB", vbNullString, "Purchase Return (Credit)", "PRET", "Automatic", MemVar_1F92078 & "PURC")
  loc_130DBD4: var_108 = 0
  loc_130DBDF: var_104 = 0
  loc_130DBEA: var_100 = 0
  loc_130DBF5: var_FC = 0
  loc_130DC00: var_F8 = 0
  loc_130DC0B: var_F0 = 0
  loc_130DC16: var_EC = 0
  loc_130DC21: var_E8 = 0
  loc_130DC71: Call Proc_97_25_1371C2C("PURCHBILL", "PRC", "PRPC", vbNullString, "Purchase Return (Cash)", "PRET", "Automatic", MemVar_1F92078 & "PURC")
  loc_130DC9B: Exit Sub
  loc_130DC9C: ' Referenced from: 130D58C
  loc_130DC9E: Resume Next
  loc_130DCA4: Exit Sub
End Sub

Private Sub BTNRoomService_UnknownEvent_9 '158660C
  'Data Table: 575310
  Dim var_C4 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_190 As Variant
  Dim var_210 As Variant
  loc_15854DC: On Error Goto loc_15865CE
  loc_15854FA: var_F0 = "Y"
  loc_1585503: var_EC = "N"
  loc_158550C: var_E8 = "N"
  loc_1585515: var_E4 = "Y"
  loc_158551E: var_E0 = "RS"
  loc_1585559: var_C4 = (Trim(MemVar_1F92078) + "RS")
  loc_1585562: Call Proc_97_23_122E3AC(CStr(var_C4), "ROOM SERVICE", "Y", "Y", "Room Service", "Y")
  loc_15855AA: var_150 = vbNullString
  loc_15855B3: var_14C = "Other"
  loc_15855C3: var_140 = vbNullString
  loc_15855CC: var_13C = vbNullString
  loc_15855D5: var_138 = vbNullString
  loc_15855DE: var_F0 = vbNullString
  loc_15855EC: var_134 = (Trim(MemVar_1F92078) + "RS")
  loc_1585645: var_C4 = (Trim(MemVar_1F92078) + "RS")
  loc_158564E: Call Proc_97_21_117A4F4(CStr(var_C4), "ROOM SERVICE", "RS", vbNullString, vbNullString, "Cr", "Amount", "Header")
  loc_15856AF: var_CC = "RS - BEVERAGE"
  loc_15856BD: var_C4 = (Trim(MemVar_1F92078) + "RSBG")
  loc_15856C6: Call Proc_97_20_10FB0CC(CStr(var_C4), "ROOM SERVICE", "0023", "R", "Sale", "POS")
  loc_1585722: var_150 = vbNullString
  loc_158572B: var_14C = "Other"
  loc_158573B: var_140 = vbNullString
  loc_1585744: var_13C = "No"
  loc_158574D: var_138 = "C"
  loc_1585756: var_F0 = vbNullString
  loc_1585764: var_1D0 = (Trim(MemVar_1F92078) + "RS")
  loc_1585770: var_E8 = "POS"
  loc_1585799: var_190 = (Trim(MemVar_1F92078) + "TRBG")
  loc_15857AA: var_134 = (Trim(MemVar_1F92078) + "RSBG")
  loc_15857BF: var_CC = "RS - BEVERAGE"
  loc_15857CD: var_C4 = (Trim(MemVar_1F92078) + "RSBG")
  loc_15857D6: Call Proc_97_21_117A4F4(CStr(var_C4), "ROOM SERVICE", "RSBG", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_1585869: var_210 = (Trim(MemVar_1F92078) + "TRBG")
  loc_158587A: var_1D0 = (Trim(MemVar_1F92078) + "RSBG")
  loc_1585894: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_15858C0: var_134 = (Trim(MemVar_1F92078) + "RSBG")
  loc_15858E3: var_C4 = (Trim(MemVar_1F92078) + "RSBG")
  loc_15858EC: Call Proc_97_26_111509C(CStr(var_C4), "BEVERAGE", "No", CStr(var_134), "Y", "Category", "Beverage", CStr(var_190))
  loc_158594F: var_CC = "RS - FOOD"
  loc_158595D: var_C4 = (Trim(MemVar_1F92078) + "RSFD")
  loc_1585966: Call Proc_97_20_10FB0CC(CStr(var_C4), "BEVERAGE", "0023", "R", "Sale", "Dr")
  loc_15859C2: var_150 = vbNullString
  loc_15859CB: var_14C = "Other"
  loc_15859DB: var_140 = vbNullString
  loc_15859E4: var_13C = "No"
  loc_15859ED: var_138 = "C"
  loc_15859F6: var_F0 = vbNullString
  loc_1585A04: var_1D0 = (Trim(MemVar_1F92078) + "RS")
  loc_1585A10: var_E8 = "POS"
  loc_1585A39: var_190 = (Trim(MemVar_1F92078) + "TRFD")
  loc_1585A4A: var_134 = (Trim(MemVar_1F92078) + "RSFD")
  loc_1585A5F: var_CC = "RS - FOOD"
  loc_1585A6D: var_C4 = (Trim(MemVar_1F92078) + "RSFD")
  loc_1585A76: Call Proc_97_21_117A4F4(CStr(var_C4), "BEVERAGE", "RSFD", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_1585B09: var_210 = (Trim(MemVar_1F92078) + "TRFD")
  loc_1585B1A: var_1D0 = (Trim(MemVar_1F92078) + "RSFD")
  loc_1585B34: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_1585B60: var_134 = (Trim(MemVar_1F92078) + "RSFD")
  loc_1585B83: var_C4 = (Trim(MemVar_1F92078) + "RSFD")
  loc_1585B8C: Call Proc_97_26_111509C(CStr(var_C4), "FOOD", "No", CStr(var_134), "Y", "Category", "Food", CStr(var_190))
  loc_1585BEF: var_CC = "RS - CONFECTIONARY"
  loc_1585BFD: var_C4 = (Trim(MemVar_1F92078) + "RSCF")
  loc_1585C06: Call Proc_97_20_10FB0CC(CStr(var_C4), "FOOD", "0023", "R", "Sale", "Dr")
  loc_1585C62: var_150 = vbNullString
  loc_1585C6B: var_14C = "Other"
  loc_1585C7B: var_140 = vbNullString
  loc_1585C84: var_13C = "No"
  loc_1585C8D: var_138 = "C"
  loc_1585C96: var_F0 = vbNullString
  loc_1585CA4: var_1D0 = (Trim(MemVar_1F92078) + "RS")
  loc_1585CB0: var_E8 = "POS"
  loc_1585CD9: var_190 = (Trim(MemVar_1F92078) + "TRCF")
  loc_1585CEA: var_134 = (Trim(MemVar_1F92078) + "RSCF")
  loc_1585CFF: var_CC = "RS - CONFECTIONARY"
  loc_1585D0D: var_C4 = (Trim(MemVar_1F92078) + "RSCF")
  loc_1585D16: Call Proc_97_21_117A4F4(CStr(var_C4), "FOOD", "RSCF", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_1585DA9: var_210 = (Trim(MemVar_1F92078) + "TRCF")
  loc_1585DBA: var_1D0 = (Trim(MemVar_1F92078) + "RSCF")
  loc_1585DD4: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_1585E00: var_134 = (Trim(MemVar_1F92078) + "RSCF")
  loc_1585E23: var_C4 = (Trim(MemVar_1F92078) + "RSCF")
  loc_1585E2C: Call Proc_97_26_111509C(CStr(var_C4), "CONFECTIONARY", "No", CStr(var_134), "Y", "Category", "Confectionary", CStr(var_190))
  loc_1585E8F: var_CC = "RS - TOBACCO"
  loc_1585E9D: var_C4 = (Trim(MemVar_1F92078) + "RSTB")
  loc_1585EA6: Call Proc_97_20_10FB0CC(CStr(var_C4), "CONFECTIONARY", "0023", "R", "Sale", "Dr")
  loc_1585F02: var_150 = vbNullString
  loc_1585F0B: var_14C = "Other"
  loc_1585F1B: var_140 = vbNullString
  loc_1585F24: var_13C = "No"
  loc_1585F2D: var_138 = "C"
  loc_1585F36: var_F0 = vbNullString
  loc_1585F44: var_1D0 = (Trim(MemVar_1F92078) + "RS")
  loc_1585F50: var_E8 = "POS"
  loc_1585F79: var_190 = (Trim(MemVar_1F92078) + "TRTB")
  loc_1585F8A: var_134 = (Trim(MemVar_1F92078) + "RSTB")
  loc_1585F9F: var_CC = "RS - TOBACCO"
  loc_1585FAD: var_C4 = (Trim(MemVar_1F92078) + "RSTB")
  loc_1585FB6: Call Proc_97_21_117A4F4(CStr(var_C4), "CONFECTIONARY", "RSTB", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_1586049: var_210 = (Trim(MemVar_1F92078) + "TRTB")
  loc_158605A: var_1D0 = (Trim(MemVar_1F92078) + "RSTB")
  loc_1586074: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_15860A0: var_134 = (Trim(MemVar_1F92078) + "RSTB")
  loc_15860C3: var_C4 = (Trim(MemVar_1F92078) + "RSTB")
  loc_15860CC: Call Proc_97_26_111509C(CStr(var_C4), "TOBACCO", "No", CStr(var_134), "Y", "Category", "Tobacco", CStr(var_190))
  loc_158612F: var_CC = "RS - MISC."
  loc_158613D: var_C4 = (Trim(MemVar_1F92078) + "RSMS")
  loc_1586146: Call Proc_97_20_10FB0CC(CStr(var_C4), "TOBACCO", "0023", "R", "Sale", "Dr")
  loc_15861A2: var_150 = vbNullString
  loc_15861AB: var_14C = "Other"
  loc_15861BB: var_140 = vbNullString
  loc_15861C4: var_13C = "No"
  loc_15861CD: var_138 = "C"
  loc_15861D6: var_F0 = vbNullString
  loc_15861E4: var_1D0 = (Trim(MemVar_1F92078) + "RS")
  loc_15861F0: var_E8 = "POS"
  loc_1586219: var_190 = (Trim(MemVar_1F92078) + "TRNO")
  loc_158622A: var_134 = (Trim(MemVar_1F92078) + "RSMS")
  loc_158623F: var_CC = "RS - MISC."
  loc_158624D: var_C4 = (Trim(MemVar_1F92078) + "RSMS")
  loc_1586256: Call Proc_97_21_117A4F4(CStr(var_C4), "TOBACCO", "RSMS", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_15862E9: var_210 = (Trim(MemVar_1F92078) + "TRNO")
  loc_15862FA: var_1D0 = (Trim(MemVar_1F92078) + "RSMS")
  loc_1586306: var_E8 = "Dr"
  loc_1586314: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_1586340: var_134 = (Trim(MemVar_1F92078) + "RSMS")
  loc_1586363: var_C4 = (Trim(MemVar_1F92078) + "RSMS")
  loc_158636C: Call Proc_97_26_111509C(CStr(var_C4), "MISC.", "No", CStr(var_134), "Y", "Category", "Miscellaneous", CStr(var_190))
  loc_15863D4: var_150 = vbNullString
  loc_15863DD: var_14C = "Other"
  loc_15863ED: var_140 = vbNullString
  loc_15863F6: var_13C = "No"
  loc_15863FF: var_138 = "C"
  loc_1586408: var_F0 = vbNullString
  loc_1586416: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_1586422: var_E8 = "POS"
  loc_1586454: var_134 = (Trim(MemVar_1F92078) + "DISC")
  loc_1586469: var_CC = "RS - DISCOUNT"
  loc_1586477: var_C4 = (Trim(MemVar_1F92078) + "RSDC")
  loc_1586480: Call Proc_97_21_117A4F4(CStr(var_C4), "MISC.", "RSDC", CStr(var_134), vbNullString, "Cr", "Percent", "Detail")
  loc_15864D2: var_114 = Trim(MemVar_1F92078)
  loc_15864EA: var_150 = vbNullString
  loc_15864F3: var_14C = "Other"
  loc_1586503: var_140 = vbNullString
  loc_158650C: var_13C = "No"
  loc_1586515: var_138 = "C"
  loc_158651E: var_F0 = vbNullString
  loc_158652C: var_190 = (Trim(MemVar_1F92078) + "RS")
  loc_1586538: var_E8 = "POS"
  loc_158656A: var_134 = (var_114 + "ROFF")
  loc_158657F: var_CC = "RS - ROUND-OFF"
  loc_158658D: var_C4 = (Trim(MemVar_1F92078) + "RSRO")
  loc_1586596: Call Proc_97_21_117A4F4(CStr(var_C4), "MISC.", "RSRO", CStr(var_134), vbNullString, "Cr", "Percent", "Detail")
  loc_15865CD: Exit Sub
  loc_15865CE: ' Referenced from: 15854DC
  loc_15865E4: Set var_214 = Err()
  loc_15865EA: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_114, var_134, var_E8)
  loc_15865F5: MsgBox(CVar(var_C8), CStr(var_190), var_F0, var_138, var_13C)
  loc_1586608: Exit Sub
End Sub

Private Sub btnPayType_UnknownEvent_9 '13AEB40
  'Data Table: 575310
  Dim var_C4 As Variant
  Dim var_118 As Variant
  Dim var_18C As Variant
  loc_13AE228: On Error Goto loc_13AEB04
  loc_13AE23E: var_D8 = "Cash"
  loc_13AE247: var_D4 = "A"
  loc_13AE267: var_C4 = (Trim(MemVar_1F92078) + "CASH")
  loc_13AE270: Call Proc_97_20_10FB0CC(CStr(var_C4), "CASH IN HAND", "0021")
  loc_13AE2AC: var_14C = vbNullString
  loc_13AE2B5: var_148 = "Cash"
  loc_13AE2C5: var_13C = vbNullString
  loc_13AE2CE: var_138 = "No"
  loc_13AE2D7: var_134 = "P"
  loc_13AE2E0: var_130 = "Cash"
  loc_13AE2E9: var_12C = vbNullString
  loc_13AE324: var_118 = (Trim(MemVar_1F92078) + "CASH")
  loc_13AE347: var_C4 = (Trim(MemVar_1F92078) + "CASH")
  loc_13AE350: Call Proc_97_21_117A4F4(CStr(var_C4), "CASH IN HAND", "CASH", CStr(var_118), vbNullString, "Dr", "Percent", "Detail")
  loc_13AE3BF: var_C4 = (Trim(MemVar_1F92078) + "HOLD")
  loc_13AE3C8: Call Proc_97_20_10FB0CC(CStr(var_C4), "BILL ON HOLD", "0006", "A", "Others", vbNullString)
  loc_13AE404: var_14C = vbNullString
  loc_13AE40D: var_148 = "Hold"
  loc_13AE41D: var_13C = vbNullString
  loc_13AE426: var_138 = "No"
  loc_13AE42F: var_134 = "P"
  loc_13AE438: var_130 = "Hold"
  loc_13AE47C: var_118 = (Trim(MemVar_1F92078) + "HOLD")
  loc_13AE49F: var_C4 = (Trim(MemVar_1F92078) + "HOLD")
  loc_13AE4A8: Call Proc_97_21_117A4F4(CStr(var_C4), "BILL ON HOLD", "HOLD", CStr(var_118), vbNullString, "Dr", "Percent", "Detail")
  loc_13AE517: var_C4 = (Trim(MemVar_1F92078) + "CCOM")
  loc_13AE520: Call Proc_97_20_10FB0CC(CStr(var_C4), "COMMISSION ON CREDIT CARD", "0028", "E", "Others", vbNullString)
  loc_13AE575: var_C4 = (Trim(MemVar_1F92078) + "CC")
  loc_13AE57E: Call Proc_97_20_10FB0CC(CStr(var_C4), "CREDIT CARD A/C", "0022", "A", "Bank", vbNullString)
  loc_13AE5B2: var_F8 = Trim(MemVar_1F92078)
  loc_13AE5CA: var_14C = vbNullString
  loc_13AE5D3: var_148 = "Credit Card"
  loc_13AE5E8: var_18C = (Trim(MemVar_1F92078) + "CCOM")
  loc_13AE5F4: var_138 = "No"
  loc_13AE5FD: var_134 = "P"
  loc_13AE606: var_130 = "Credit Card"
  loc_13AE60F: var_12C = vbNullString
  loc_13AE618: var_128 = vbNullString
  loc_13AE64A: var_118 = (var_F8 + "CC")
  loc_13AE66D: var_C4 = (Trim(MemVar_1F92078) + "VISA")
  loc_13AE676: Call Proc_97_21_117A4F4(CStr(var_C4), "CREDIT CARD", "VISA", CStr(var_118), vbNullString, "Dr", "Percent", "Detail")
  loc_13AE6C0: var_14C = vbNullString
  loc_13AE6C9: var_148 = "Company"
  loc_13AE6D9: var_13C = vbNullString
  loc_13AE6E2: var_138 = "No"
  loc_13AE6EB: var_134 = "P"
  loc_13AE6F4: var_130 = "Company"
  loc_13AE6FD: var_12C = vbNullString
  loc_13AE706: var_128 = vbNullString
  loc_13AE753: var_C4 = (Trim(MemVar_1F92078) + "CRED")
  loc_13AE75C: Call Proc_97_21_117A4F4(CStr(var_C4), "BILL TO COMPANY", "CRED", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AE79E: var_14C = vbNullString
  loc_13AE7A7: var_148 = "Room"
  loc_13AE7B7: var_13C = vbNullString
  loc_13AE7C0: var_138 = "No"
  loc_13AE7C9: var_134 = "P"
  loc_13AE7D2: var_130 = "Room"
  loc_13AE7DB: var_12C = vbNullString
  loc_13AE7E4: var_128 = vbNullString
  loc_13AE831: var_C4 = (Trim(MemVar_1F92078) + "ROOM")
  loc_13AE83A: Call Proc_97_21_117A4F4(CStr(var_C4), "ROOM SETTLEMENT", "ROOM", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AE87C: var_14C = vbNullString
  loc_13AE885: var_148 = "Staff"
  loc_13AE895: var_13C = vbNullString
  loc_13AE89E: var_138 = "No"
  loc_13AE8A7: var_134 = "P"
  loc_13AE8B0: var_130 = "Staff"
  loc_13AE8B9: var_12C = vbNullString
  loc_13AE8C2: var_128 = vbNullString
  loc_13AE90F: var_C4 = (Trim(MemVar_1F92078) + "STAF")
  loc_13AE918: Call Proc_97_21_117A4F4(CStr(var_C4), "STAFF SETTLEMENT", "STAF", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AE95A: var_14C = vbNullString
  loc_13AE963: var_148 = "Member"
  loc_13AE973: var_13C = vbNullString
  loc_13AE97C: var_138 = "No"
  loc_13AE985: var_134 = "P"
  loc_13AE98E: var_130 = "Member"
  loc_13AE997: var_12C = vbNullString
  loc_13AE9A0: var_128 = vbNullString
  loc_13AE9ED: var_C4 = (Trim(MemVar_1F92078) + "MEM")
  loc_13AE9F6: Call Proc_97_21_117A4F4(CStr(var_C4), "BILL TO MEMBER", "MEM", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AEA38: var_14C = vbNullString
  loc_13AEA41: var_148 = "Cash Card"
  loc_13AEA51: var_13C = vbNullString
  loc_13AEA5A: var_138 = "No"
  loc_13AEA63: var_134 = "P"
  loc_13AEA6C: var_130 = "Cash Card"
  loc_13AEA75: var_12C = vbNullString
  loc_13AEA7E: var_128 = vbNullString
  loc_13AEACB: var_C4 = (Trim(MemVar_1F92078) + "CCAD")
  loc_13AEAD4: Call Proc_97_21_117A4F4(CStr(var_C4), "CASH CARD", "CCAD", vbNullString, vbNullString, "Dr", "Percent", "Detail")
  loc_13AEB03: Exit Sub
  loc_13AEB04: ' Referenced from: 13AE228
  loc_13AEB1A: Set var_190 = Err()
  loc_13AEB20: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_F8, var_118, var_128)
  loc_13AEB2B: MsgBox(CVar(var_C8), var_12C, var_130, var_134, var_138)
  loc_13AEB3E: Exit Sub
End Sub

Private Sub BtnSundryTypeFix_UnknownEvent_9 '1277EC0
  'Data Table: 575310
  Dim var_88 As String
  Dim unk_57533F As Connection15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  loc_1277928: On Error Goto loc_1277E84
  loc_127793F: var_88 = "Delete From SundryTypeFix Where LogSite_Code='" & MemVar_1F92078
  loc_127794F: unk_57533F.Execute var_88 & "'", var_AC, -1
  loc_1277974: var_F0 = "Y"
  loc_127797D: var_EC = "Y"
  loc_1277986: var_E8 = "+"
  loc_127798F: var_E4 = vbNullString
  loc_12779C9: var_D0 = (Trim(MemVar_1F92078) + "TOT")
  loc_12779D2: Call Proc_97_30_1102B9C(CStr(var_D0), 1, "Total", vbNullString, "A", "N")
  loc_1277A06: var_F0 = vbNullString
  loc_1277A0F: var_EC = "Y"
  loc_1277A18: var_E8 = "-"
  loc_1277A5B: var_D0 = (Trim(MemVar_1F92078) + "DIS")
  loc_1277A64: Call Proc_97_30_1102B9C(CStr(var_D0), 2, "Discount", "1", "P", "N", "Discount", var_E8)
  loc_1277A98: var_F0 = vbNullString
  loc_1277AA1: var_EC = "Y"
  loc_1277AAA: var_E8 = "+"
  loc_1277ACE: var_D8 = "1-2"
  loc_1277AED: var_D0 = (Trim(MemVar_1F92078) + "ST")
  loc_1277AF6: Call Proc_97_30_1102B9C(CStr(var_D0), 3, "Comp Cess", "1", "A", "N", "Sale Tax", var_E8)
  loc_1277B2A: var_F0 = vbNullString
  loc_1277B33: var_EC = "Y"
  loc_1277B3C: var_E8 = "+"
  loc_1277B60: var_D8 = "1-2"
  loc_1277B7F: var_D0 = (Trim(MemVar_1F92078) + "SCH")
  loc_1277B88: Call Proc_97_30_1102B9C(CStr(var_D0), 4, "Service Charge", "1", "P", "N", "Service Charge", var_E8)
  loc_1277BBC: var_F0 = vbNullString
  loc_1277BC5: var_EC = "Y"
  loc_1277BCE: var_E8 = "+"
  loc_1277BF2: var_D8 = "1-2"
  loc_1277C11: var_D0 = (Trim(MemVar_1F92078) + "CGSS")
  loc_1277C1A: Call Proc_97_30_1102B9C(CStr(var_D0), 5, "CGST", "1", "A", "N", "CGST", var_E8)
  loc_1277C4E: var_F0 = vbNullString
  loc_1277C57: var_EC = "Y"
  loc_1277C60: var_E8 = "+"
  loc_1277C84: var_D8 = "1-2"
  loc_1277CA3: var_D0 = (Trim(MemVar_1F92078) + "SGSS")
  loc_1277CAC: Call Proc_97_30_1102B9C(CStr(var_D0), 6, "SGST", "1", "A", "N", "SGST", var_E8)
  loc_1277CE0: var_F0 = vbNullString
  loc_1277CE9: var_EC = "Y"
  loc_1277CF2: var_E8 = "+"
  loc_1277D16: var_D8 = "1-2+3+4+5+6"
  loc_1277D35: var_D0 = (Trim(MemVar_1F92078) + "ADD")
  loc_1277D3E: Call Proc_97_30_1102B9C(CStr(var_D0), 7, "Addition", "1", "A", "N", "Addition", var_E8)
  loc_1277D72: var_F0 = vbNullString
  loc_1277D7B: var_EC = "Y"
  loc_1277D84: var_E8 = "+"
  loc_1277DA8: var_D8 = "1-2+3+4+5+6+7"
  loc_1277DC7: var_D0 = (Trim(MemVar_1F92078) + "ROFF")
  loc_1277DD0: Call Proc_97_30_1102B9C(CStr(var_D0), 8, "Round Off", "1", "A", "N", "Round Off", var_E8)
  loc_1277E04: var_F0 = "Y"
  loc_1277E0D: var_EC = "Y"
  loc_1277E16: var_E8 = "+"
  loc_1277E3A: var_D8 = "1-2+3+4+5+6+7+8"
  loc_1277E59: var_D0 = (Trim(MemVar_1F92078) + "NET")
  loc_1277E62: Call Proc_97_30_1102B9C(CStr(var_D0), 9, "Net Amount", "1", "A", "N", vbNullString, var_E8)
  loc_1277E83: Exit Sub
  loc_1277E84: ' Referenced from: 1277928
  loc_1277E9A: Set var_B0 = Err()
  loc_1277EA0: Call 0.Method_arg_2C (var_88, 0, var_D0, var_100, var_120, var_EC)
  loc_1277EAB: MsgBox(CVar(var_88), var_F0, var_EC, var_F0, var_EC)
  loc_1277EBE: Exit Sub
End Sub

Private Sub CmdGodown_UnknownEvent_9 '12D1AE0
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_88 As Recordset15
  Dim var_13C As Variant
  Dim var_D4 As Variant
  Dim var_BC As Variant
  Dim var_F4 As String
  Dim var_128 As Variant
  Dim var_12C As Fields15
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_1A0 As Variant
  Dim var_274 As Variant
  loc_12D1506: unk_57533F.Execute "Select * from Depart Where Site_Code='" & MemVar_1F92078 & "' and LogSite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_12D1511: Set var_88 = var_BC
  loc_12D1525: ' Referenced from: 12D17C8
  loc_12D1536: If (var_88.EOF = 0) Then
  loc_12D153F:   var_13C = 0
  loc_12D1571:   var_D4 = CVar("SELECT COUNT(*) FROM GodownMast WHERE Logsite_Code='" & MemVar_1F92078 & "' and Site_Code='" & MemVar_1F92078 & "' and Code='") 'String
  loc_12D15B5:   unk_57533F.Execute CStr(var_D4 & var_88.Fields.Item("Code").Value & "'"), var_124, -1
  loc_12D15BD:   var_128 = var_128.Fields
  loc_12D15C5:   var_13C = var_12C.Item(var_12C)
  loc_12D15CD:   var_140 = var_140.Value
  loc_12D1604:   If (var_150 <= 0) Then
  loc_12D1607:     var_F4 = "Godown Name :----->"
  loc_12D1636:     var_D4 = ("'" + var_88.Fields.Item("Name").Value)
  loc_12D1648:     Me.Text1.Text = CStr(var_D4)
  loc_12D166A:     Me.Text1.Refresh
  loc_12D16AE:     var_D4 = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & var_88.Fields.Item("Code").Value 
  loc_12D16E9:     var_150 = var_D4 & "','" & Trim(CVar(var_88.Fields.Item("Name"))) 
  loc_12D1704:     Proc_6_7_F25D88(var_190, Now, var_150 & "','Analysis',", var_2B4)
  loc_12D170C:     var_1A0 = -1 & var_190 
  loc_12D1769:     var_274 = var_1A0 & ",'A','" & var_88.Fields.Item("ShortName").Value & "','Y','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F92078) 
  loc_12D1780:     unk_57533F.Execute CStr(var_274 & "')"), var_2B8, var_150
  loc_12D17C0:   End If
  loc_12D17C3:   var_88.MoveNext
  loc_12D17C8:   GoTo loc_12D1525
  loc_12D17CB: End If
  loc_12D17E6: var_2D4 = "N"
  loc_12D17EF: var_2D0 = "N"
  loc_12D17F8: var_2CC = "N"
  loc_12D1801: var_2C8 = "N"
  loc_12D1845: var_D4 = (Trim(MemVar_1F92078) + "MK")
  loc_12D184E: Call Proc_97_23_122E3AC(CStr(var_D4), "MAIN KITCHEN", "N", "N", "Kitchen", "N", "MK")
  loc_12D1886: var_2F4 = vbNullString
  loc_12D188F: var_2F0 = "Other"
  loc_12D189F: var_2E4 = vbNullString
  loc_12D18A8: var_2E0 = "No"
  loc_12D18B1: var_2DC = vbNullString
  loc_12D18BA: var_2D4 = vbNullString
  loc_12D18C3: var_2D0 = vbNullString
  loc_12D18CC: var_2CC = vbNullString
  loc_12D1919: var_D4 = (Trim(MemVar_1F92078) + "MK")
  loc_12D1922: Call Proc_97_21_117A4F4(CStr(var_D4), "MAIN KITCHEN", "MK", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_12D196C: var_2D4 = "N"
  loc_12D1975: var_2D0 = "N"
  loc_12D197E: var_2CC = "N"
  loc_12D19CB: var_D4 = (Trim(MemVar_1F92078) + "DBAR")
  loc_12D19D4: Call Proc_97_23_122E3AC(CStr(var_D4), "DISPENSE BAR", "N", "N", "Kitchen", "N", "DBAR", "N")
  loc_12D1A0C: var_2F4 = vbNullString
  loc_12D1A15: var_2F0 = "Other"
  loc_12D1A25: var_2E4 = vbNullString
  loc_12D1A2E: var_2E0 = "No"
  loc_12D1A37: var_2DC = vbNullString
  loc_12D1A40: var_2D4 = vbNullString
  loc_12D1A49: var_2D0 = vbNullString
  loc_12D1A52: var_2CC = vbNullString
  loc_12D1A9F: var_D4 = (Trim(MemVar_1F92078) + "DBAR")
  loc_12D1AA8: Call Proc_97_21_117A4F4(CStr(var_D4), "DISPENSE BAR", "DBAR", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_12D1ADC: Set var_88 = Nothing
  loc_12D1ADF: Exit Sub
End Sub

Private Sub BtnTax_UnknownEvent_9 '15AE454
  'Data Table: 575310
  Dim var_C4 As Variant
  Dim var_158 As Variant
  Dim var_118 As Variant
  loc_15AD224: On Error Goto loc_15AE418
  loc_15AD23A: var_D8 = "Others"
  loc_15AD243: var_D4 = "L"
  loc_15AD263: var_C4 = (Trim(MemVar_1F92078) + "CGSS")
  loc_15AD26C: Call Proc_97_20_10FB0CC(CStr(var_C4), "CGST (SALES)", "0014")
  loc_15AD2BD: var_158 = (Trim(MemVar_1F92078) + "CGSS")
  loc_15AD2C9: var_188 = "Other"
  loc_15AD2D9: var_17C = vbNullString
  loc_15AD2E2: var_178 = "No"
  loc_15AD2EB: var_174 = "T"
  loc_15AD2F4: var_170 = vbNullString
  loc_15AD2FD: var_16C = vbNullString
  loc_15AD338: var_118 = (Trim(MemVar_1F92078) + "CGSS")
  loc_15AD35B: var_C4 = (Trim(MemVar_1F92078) + "CGSS")
  loc_15AD364: Call Proc_97_21_117A4F4(CStr(var_C4), "CGST (SALES)", "CGSS", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AD3D7: var_C4 = (Trim(MemVar_1F92078) + "SGSS")
  loc_15AD3E0: Call Proc_97_20_10FB0CC(CStr(var_C4), "SGST (SALES)", "0014", "L", "Others", vbNullString)
  loc_15AD431: var_158 = (Trim(MemVar_1F92078) + "SGSS")
  loc_15AD43D: var_188 = "Other"
  loc_15AD44D: var_17C = vbNullString
  loc_15AD456: var_178 = "No"
  loc_15AD45F: var_174 = "T"
  loc_15AD468: var_170 = vbNullString
  loc_15AD471: var_16C = vbNullString
  loc_15AD4AC: var_118 = (Trim(MemVar_1F92078) + "SGSS")
  loc_15AD4CF: var_C4 = (Trim(MemVar_1F92078) + "SGSS")
  loc_15AD4D8: Call Proc_97_21_117A4F4(CStr(var_C4), "SGST (SALES)", "SGSS", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AD54B: var_C4 = (Trim(MemVar_1F92078) + "IGSS")
  loc_15AD554: Call Proc_97_20_10FB0CC(CStr(var_C4), "IGST (SALES)", "0014", "L", "Others", vbNullString)
  loc_15AD5A5: var_158 = (Trim(MemVar_1F92078) + "IGSS")
  loc_15AD5B1: var_188 = "Other"
  loc_15AD5C1: var_17C = vbNullString
  loc_15AD5CA: var_178 = "No"
  loc_15AD5D3: var_174 = "T"
  loc_15AD5DC: var_170 = vbNullString
  loc_15AD5E5: var_16C = vbNullString
  loc_15AD620: var_118 = (Trim(MemVar_1F92078) + "IGSS")
  loc_15AD643: var_C4 = (Trim(MemVar_1F92078) + "IGSS")
  loc_15AD64C: Call Proc_97_21_117A4F4(CStr(var_C4), "IGST (SALES)", "IGSS", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AD6BF: var_C4 = (Trim(MemVar_1F92078) + "CGSP")
  loc_15AD6C8: Call Proc_97_20_10FB0CC(CStr(var_C4), "CGST (PURCHASE)", "0014", "L", "Others", vbNullString)
  loc_15AD719: var_158 = (Trim(MemVar_1F92078) + "CGSP")
  loc_15AD725: var_188 = "Other"
  loc_15AD735: var_17C = vbNullString
  loc_15AD73E: var_178 = "No"
  loc_15AD747: var_174 = "T"
  loc_15AD750: var_170 = vbNullString
  loc_15AD759: var_16C = vbNullString
  loc_15AD794: var_118 = (Trim(MemVar_1F92078) + "CGSP")
  loc_15AD7B7: var_C4 = (Trim(MemVar_1F92078) + "CGSP")
  loc_15AD7C0: Call Proc_97_21_117A4F4(CStr(var_C4), "CGST (PURCHASE)", "CGSP", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AD833: var_C4 = (Trim(MemVar_1F92078) + "SGSP")
  loc_15AD83C: Call Proc_97_20_10FB0CC(CStr(var_C4), "SGST (PURCHASE)", "0014", "L", "Others", vbNullString)
  loc_15AD88D: var_158 = (Trim(MemVar_1F92078) + "SGSP")
  loc_15AD899: var_188 = "Other"
  loc_15AD8A9: var_17C = vbNullString
  loc_15AD8B2: var_178 = "No"
  loc_15AD8BB: var_174 = "T"
  loc_15AD8C4: var_170 = vbNullString
  loc_15AD8CD: var_16C = vbNullString
  loc_15AD908: var_118 = (Trim(MemVar_1F92078) + "SGSP")
  loc_15AD92B: var_C4 = (Trim(MemVar_1F92078) + "SGSP")
  loc_15AD934: Call Proc_97_21_117A4F4(CStr(var_C4), "SGST (PURCHASE)", "SGSP", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15AD9A7: var_C4 = (Trim(MemVar_1F92078) + "IGSP")
  loc_15AD9B0: Call Proc_97_20_10FB0CC(CStr(var_C4), "IGST (PURCHASE)", "0014", "L", "Others", vbNullString)
  loc_15ADA01: var_158 = (Trim(MemVar_1F92078) + "IGSP")
  loc_15ADA0D: var_188 = "Other"
  loc_15ADA1D: var_17C = vbNullString
  loc_15ADA26: var_178 = "No"
  loc_15ADA2F: var_174 = "T"
  loc_15ADA38: var_170 = vbNullString
  loc_15ADA41: var_16C = vbNullString
  loc_15ADA7C: var_118 = (Trim(MemVar_1F92078) + "IGSP")
  loc_15ADA9F: var_C4 = (Trim(MemVar_1F92078) + "IGSP")
  loc_15ADAA8: Call Proc_97_21_117A4F4(CStr(var_C4), "IGST (PURCHASE)", "IGSP", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15ADB1B: var_C4 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADB24: Call Proc_97_20_10FB0CC(CStr(var_C4), "NO TAX", "0014", "L", "Others", vbNullString)
  loc_15ADB60: var_18C = vbNullString
  loc_15ADB69: var_188 = "Other"
  loc_15ADB79: var_17C = vbNullString
  loc_15ADB82: var_178 = "No"
  loc_15ADB8B: var_174 = "T"
  loc_15ADB94: var_170 = vbNullString
  loc_15ADB9D: var_16C = vbNullString
  loc_15ADBA6: var_168 = vbNullString
  loc_15ADBD8: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADBFB: var_C4 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADC04: Call Proc_97_21_117A4F4(CStr(var_C4), "NO TAX", "NT", CStr(var_118), vbNullString, "Cr", vbNullString, vbNullString)
  loc_15ADC7F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADCA1: var_C4 = (Trim(MemVar_1F92078) + "TR")
  loc_15ADCAA: Call Proc_97_27_10E7454(CStr(var_C4), "ROOM TAX", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15ADD0F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADD31: var_C4 = (Trim(MemVar_1F92078) + "TRFD")
  loc_15ADD3A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES FOOD", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15ADD9F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADDC1: var_C4 = (Trim(MemVar_1F92078) + "TRBG")
  loc_15ADDCA: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES BEVERAGE", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15ADE2F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADE51: var_C4 = (Trim(MemVar_1F92078) + "TRCF")
  loc_15ADE5A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES CONFECTIONARY", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15ADEBF: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADEE1: var_C4 = (Trim(MemVar_1F92078) + "TRTB")
  loc_15ADEEA: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES TOBACCO", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15ADF4F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15ADF71: var_C4 = (Trim(MemVar_1F92078) + "TRMS")
  loc_15ADF7A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES MISC.", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15ADFDF: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE001: var_C4 = (Trim(MemVar_1F92078) + "TRNO")
  loc_15AE00A: Call Proc_97_27_10E7454(CStr(var_C4), "NO TAXES", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE06F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE091: var_C4 = (Trim(MemVar_1F92078) + "TPRB")
  loc_15AE09A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES PREVIOUS BALANCE", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE0FF: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE121: var_C4 = (Trim(MemVar_1F92078) + "TMBA")
  loc_15AE12A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES MEMBER BILL AMOUNT", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE18F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE1B1: var_C4 = (Trim(MemVar_1F92078) + "TPR1")
  loc_15AE1BA: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES PRE. BAL. OF PRE. MONTH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE21F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE241: var_C4 = (Trim(MemVar_1F92078) + "TPR2")
  loc_15AE24A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES PRE. BAL. BEFORE PRE. MONTH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE2AF: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE2D1: var_C4 = (Trim(MemVar_1F92078) + "TPR3")
  loc_15AE2DA: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES P.BAL. OF PRE.MONTH TO 15TH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE33F: var_118 = (Trim(MemVar_1F92078) + "NT")
  loc_15AE361: var_C4 = (Trim(MemVar_1F92078) + "TPR4")
  loc_15AE36A: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES P.BAL. BEF.PRE. MONTH TO 15TH", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE3A2: var_F8 = Trim(MemVar_1F92078)
  loc_15AE3CF: var_118 = (var_F8 + "NT")
  loc_15AE3F1: var_C4 = (Trim(MemVar_1F92078) + "TMPA")
  loc_15AE3FA: Call Proc_97_27_10E7454(CStr(var_C4), "TAXES MEMBER POS BILL AMOUNT", CByte(1), CStr(var_118), "On Base Amt", CDbl(0), CDbl(0), vbNullString)
  loc_15AE417: Exit Sub
  loc_15AE418: ' Referenced from: 15AD224
  loc_15AE42E: Set var_19C = Err()
  loc_15AE434: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_F8, var_118, var_168)
  loc_15AE43F: MsgBox(CVar(var_C8), var_16C, var_170, var_174, var_178)
  loc_15AE452: Exit Sub
End Sub

Private Sub BTNFOM_UnknownEvent_9 '13DA938
  'Data Table: 575310
  Dim var_C4 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_190 As Variant
  loc_13D9F9C: On Error Goto loc_13DA8FC
  loc_13D9FBA: var_F0 = "N"
  loc_13D9FC3: var_EC = "N"
  loc_13D9FCC: var_E8 = "N"
  loc_13D9FD5: var_E4 = "N"
  loc_13D9FDE: var_E0 = "FO"
  loc_13DA019: var_C4 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA022: Call Proc_97_23_122E3AC(CStr(var_C4), "FRONT OFFICE", "N", "N", "FOM", "N")
  loc_13DA06A: var_150 = vbNullString
  loc_13DA073: var_14C = "Other"
  loc_13DA083: var_140 = vbNullString
  loc_13DA08C: var_13C = "No"
  loc_13DA095: var_138 = vbNullString
  loc_13DA09E: var_F0 = vbNullString
  loc_13DA0AC: var_134 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA105: var_C4 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA10E: Call Proc_97_21_117A4F4(CStr(var_C4), "FRONT OFFICE", "FO", vbNullString, vbNullString, "Bt", "Amount", "Header")
  loc_13DA17D: var_C4 = (Trim(MemVar_1F92078) + "TEL")
  loc_13DA186: Call Proc_97_20_10FB0CC(CStr(var_C4), "TELEPHONE CHARGES", "0023", "R", "Sale", "FOM")
  loc_13DA1E2: var_150 = vbNullString
  loc_13DA1EB: var_14C = "Telephone Charge"
  loc_13DA1FB: var_140 = vbNullString
  loc_13DA204: var_13C = "No"
  loc_13DA20D: var_138 = "C"
  loc_13DA216: var_F0 = vbNullString
  loc_13DA224: var_1D0 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA259: var_190 = (Trim(MemVar_1F92078) + "TRNO")
  loc_13DA26A: var_134 = (Trim(MemVar_1F92078) + "TEL")
  loc_13DA28D: var_C4 = (Trim(MemVar_1F92078) + "TEL")
  loc_13DA296: Call Proc_97_21_117A4F4(CStr(var_C4), "TELEPHONE CHARGES", "TEL", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_13DA30D: var_C4 = (Trim(MemVar_1F92078) + "RMCH")
  loc_13DA316: Call Proc_97_20_10FB0CC(CStr(var_C4), "ROOM CHARGE", "0023", "R", "Sale", "FOM")
  loc_13DA372: var_150 = vbNullString
  loc_13DA37B: var_14C = "Room Charge"
  loc_13DA38B: var_140 = vbNullString
  loc_13DA394: var_13C = "No"
  loc_13DA39D: var_138 = "C"
  loc_13DA3A6: var_F0 = vbNullString
  loc_13DA3B4: var_1D0 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA3C0: var_E8 = "FOM"
  loc_13DA3E9: var_190 = (Trim(MemVar_1F92078) + "TR")
  loc_13DA3FA: var_134 = (Trim(MemVar_1F92078) + "RMCH")
  loc_13DA41D: var_C4 = (Trim(MemVar_1F92078) + "RMCH")
  loc_13DA426: Call Proc_97_21_117A4F4(CStr(var_C4), "ROOM CHARGE", "RMCH", CStr(var_134), CStr(var_190), "Cr", "Percent", "Detail")
  loc_13DA494: var_150 = vbNullString
  loc_13DA49D: var_14C = "Other"
  loc_13DA4AD: var_140 = vbNullString
  loc_13DA4B6: var_13C = "No"
  loc_13DA4BF: var_138 = "C"
  loc_13DA4C8: var_F0 = vbNullString
  loc_13DA4D6: var_190 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA4E2: var_E8 = "FOM"
  loc_13DA50B: var_134 = (Trim(MemVar_1F92078) + "TRNO")
  loc_13DA537: var_C4 = (Trim(MemVar_1F92078) + "TOUT")
  loc_13DA540: Call Proc_97_21_117A4F4(CStr(var_C4), "TRANSFER FROM OUTLET", "TOUT", vbNullString, CStr(var_134), "Cr", "Percent", "Detail")
  loc_13DA5AA: var_150 = vbNullString
  loc_13DA5B3: var_14C = "Room Charge"
  loc_13DA5C3: var_140 = vbNullString
  loc_13DA5CC: var_13C = "No"
  loc_13DA5D5: var_138 = "C"
  loc_13DA5DE: var_F0 = vbNullString
  loc_13DA5EC: var_190 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA5F8: var_E8 = "FOM"
  loc_13DA62A: var_134 = (Trim(MemVar_1F92078) + "DISC")
  loc_13DA64D: var_C4 = (Trim(MemVar_1F92078) + "DISC")
  loc_13DA656: Call Proc_97_21_117A4F4(CStr(var_C4), "ROOM DISC.", "RMDC", CStr(var_134), vbNullString, "Dr", "Percent", "Detail")
  loc_13DA6C0: var_150 = vbNullString
  loc_13DA6C9: var_14C = "Other"
  loc_13DA6D9: var_140 = vbNullString
  loc_13DA6E2: var_13C = "No"
  loc_13DA6EB: var_138 = "C"
  loc_13DA6F4: var_F0 = vbNullString
  loc_13DA702: var_190 = (Trim(MemVar_1F92078) + "FOM")
  loc_13DA70E: var_E8 = "FOM"
  loc_13DA740: var_134 = (Trim(MemVar_1F92078) + "ROFF")
  loc_13DA763: var_C4 = (Trim(MemVar_1F92078) + "ROFF")
  loc_13DA76C: Call Proc_97_21_117A4F4(CStr(var_C4), "ROUND OFF A/C", "ROFF", CStr(var_134), vbNullString, "Cr", "Percent", "Detail")
  loc_13DA7BE: var_114 = Trim(MemVar_1F92078)
  loc_13DA7C6: var_150 = vbNullString
  loc_13DA7CF: var_14C = "Room Charge"
  loc_13DA7DF: var_140 = vbNullString
  loc_13DA7E8: var_13C = "No"
  loc_13DA7F1: var_138 = "C"
  loc_13DA7FA: var_F0 = vbNullString
  loc_13DA808: var_134 = (var_114 + "FOM")
  loc_13DA861: var_C4 = (Trim(MemVar_1F92078) + "EXTB")
  loc_13DA86A: Call Proc_97_21_117A4F4(CStr(var_C4), "EXTRA BED", "EXTB", vbNullString, vbNullString, "Cr", "Percent", "Detail")
  loc_13DA8D9: var_C4 = (Trim(MemVar_1F92078) + "GSTB")
  loc_13DA8E2: Call Proc_97_20_10FB0CC(CStr(var_C4), "GUEST BALANCE", "0006", "A", "Others", "FOM")
  loc_13DA8FB: Exit Sub
  loc_13DA8FC: ' Referenced from: 13D9F9C
  loc_13DA912: Set var_1D4 = Err()
  loc_13DA918: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_114, var_134, CStr(var_134))
  loc_13DA923: MsgBox(CVar(var_C8), var_F0, var_138, var_13C, var_140)
  loc_13DA936: Exit Sub
End Sub

Private Sub BtnIntegrity_UnknownEvent_9 '14614B8
  'Data Table: 575310
  Dim var_98 As String
  Dim unk_57533F As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_1A4 As String
  loc_1460968: On Error Goto loc_1461490
  loc_1460972: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1460983: var_94 = Me.Global.App
  loc_14609A7: Call 0.Method_arg_78 (App.Path & "\HMSIssueList.Log", &HFF)
  loc_14609C6: var_94 = Me.Global.App
  loc_14609F2: Call 0.Method_arg_7C (App.Path & "\HMSIssueList.Log", 8, 0, 0)
  loc_14609FD: Set var_8C = var_A0
  loc_1460A1B: Call 0.Method_arg_38 ("***** Analysis Compute System              " & vbCrLf, var_A0)
  loc_1460A2A: var_98 = "-------------------------------------------" & vbCrLf
  loc_1460A30: Call 0.Method_arg_38 ("***** Analysis Compute System              " & vbCrLf, 0)
  loc_1460A45: Call 0.Method_arg_38 ("***** DESCRIPTION : Integrity Tool         " & vbCrLf)
  loc_1460A5A: Call 0.Method_arg_38 ("***** WRITTEN BY  : HMS Team               " & vbCrLf)
  loc_1460A6F: Call 0.Method_arg_38 ("***** DATE UPDATED: 01/Jan/2013            " & vbCrLf)
  loc_1460A7E: var_98 = "-------------------------------------------" & vbCrLf
  loc_1460A84: Call 0.Method_arg_38 ("***** DATE UPDATED: 01/Jan/2013            " & vbCrLf)
  loc_1460A99: Call 0.Method_arg_38 ("***** Updating PayCharge for Null Values in PayCharge Table *****" & vbCrLf)
  loc_1460AB7: Me.Connection15.Execute "UPDATE PayCharge SET AMTDR=0 WHERE AMTDR IS NULL", var_C0, -1
  loc_1460AD8: unk_57533F.Execute "UPDATE PayCharge SET AMTCR=0 WHERE AMTCR IS NULL", var_C0, -1
  loc_1460AF9: unk_57533F.Execute "UPDATE PayCharge SET COMMENTS='' WHERE COMMENTS IS NULL", var_C0, -1
  loc_1460B11: Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1460B2F: unk_57533F.Execute "SELECT * From PayCharge WHERE PayType IS NOT NULL AND PAYTYPE<>'' AND (PAYCODE IS NULL OR PAYCODE='')", var_C0, -1
  loc_1460B3A: Set var_90 = var_94
  loc_1460B57: If (var_90.RecordCount > 0) Then
  loc_1460B67:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1460B7C:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge not have PayCode *****" & vbCrLf, var_94)
  loc_1460B8B:   var_98 = "--------" & vbCrLf
  loc_1460B91:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge not have PayCode *****" & vbCrLf)
  loc_1460BA6:   Call 0.Method_arg_38 ("Docid                 | Sno  " & vbCrLf)
  loc_1460BB5:   var_98 = "-----------------------------" & vbCrLf
  loc_1460BBB:   Call 0.Method_arg_38 ("Docid                 | Sno  " & vbCrLf)
  loc_1460BC3:   ' Referenced from: 1460C68
  loc_1460BD2:   If Not(var_90.EOF) Then
  loc_1460BE4:     var_94 = var_90.Fields
  loc_1460BEC:     var_A0 = var_94.Item("DocID")
  loc_1460BF4:     var_C0 = CVar(var_A0) 'Address
  loc_1460C40:     Call 0.Method_arg_38 (var_A0 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("SNo")), Proc_6_38_E68A98(var_C0) & "|") & vbCrLf)
  loc_1460C63:     var_90.MoveNext
  loc_1460C68:     GoTo loc_1460BC3
  loc_1460C6B:   End If
  loc_1460C72:   var_98 = "-----------------------------" & vbCrLf
  loc_1460C78:   Call 0.Method_arg_38 (Proc_6_38_E68A98(var_C0))
  loc_1460C80: End If
  loc_1460C96: unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE SETTLEDATE IS NOT NULL AND (BILL_NO IS NULL OR BILL_NO='') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')", var_C0, -1
  loc_1460CA1: Set var_90 = var_94
  loc_1460CBE: If (var_90.RecordCount > 0) Then
  loc_1460CCE:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460CE3:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Bill No *****" & vbCrLf)
  loc_1460CF2:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460CF8:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Bill No *****" & vbCrLf)
  loc_1460D0D:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460D1C:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460D22:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460D2A:   ' Referenced from: 1460DCF
  loc_1460D39:   If Not(var_90.EOF) Then
  loc_1460D4B:     var_94 = var_90.Fields
  loc_1460D5B:     var_C0 = CVar(var_94.Item("DocID")) 'Address
  loc_1460DA7:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("FolioNoDocid")), Proc_6_38_E68A98(var_C0) & "|") & vbCrLf)
  loc_1460DCA:     var_90.MoveNext
  loc_1460DCF:     GoTo loc_1460D2A
  loc_1460DD2:   End If
  loc_1460DD9:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460DDF:   Call 0.Method_arg_38 (Proc_6_38_E68A98(var_C0))
  loc_1460DE7: End If
  loc_1460DF4: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460E09: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro *****" & vbCrLf)
  loc_1460E27: unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE (FOLIONODOCID IS NOT NULL AND FOLIONODOCID<>'') AND SETTLEDATE IS NULL AND (BILL_NO IS NOT NULL AND BILL_NO<>'') AND MODESET<>'S' AND vTYPE Not In ('ARRES','ADRES')", var_C0, -1
  loc_1460E32: Set var_90 = var_94
  loc_1460E4F: If (var_90.RecordCount > 0) Then
  loc_1460E5F:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460E74:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Settle Date *****" & vbCrLf)
  loc_1460E83:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460E89:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Settle Date *****" & vbCrLf)
  loc_1460E9E:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460EAD:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460EB3:   Call 0.Method_arg_38 ("Docid                |Folio No Docid        " & vbCrLf)
  loc_1460EBB:   ' Referenced from: 1460F60
  loc_1460ECA:   If Not(var_90.EOF) Then
  loc_1460EDC:     var_94 = var_90.Fields
  loc_1460EEC:     var_C0 = CVar(var_94.Item("DocID")) 'Address
  loc_1460F1E:     var_F0 = CVar(var_90.Fields.Item("FolioNoDocid")) 'Address
  loc_1460F38:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E68A98(var_F0, Proc_6_38_E68A98(var_C0) & "|") & vbCrLf)
  loc_1460F5B:     var_90.MoveNext
  loc_1460F60:     GoTo loc_1460EBB
  loc_1460F63:   End If
  loc_1460F6A:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460F70:   Call 0.Method_arg_38 (Proc_6_38_E68A98(var_C0))
  loc_1460F78: End If
  loc_1460F8E: unk_57533F.Execute "SELECT FolionoDocId,Sum(AmtDr) As AmtDr,Sum(AmtCr) As AmtCr,Sum(AmtDr)-Sum(AmtCr) As Diff,Max(Bill_No) As Bill_No FROM PAYCHARGE Group By FOLIONODOCID Having Round((Sum(AmtDr)-Sum(AmtCr)),2)<>0 Order By FolionoDocId", var_C0, -1
  loc_1460F99: Set var_90 = var_94
  loc_1460FB6: If (var_90.RecordCount > 0) Then
  loc_1460FC6:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1460FDB:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have equal Debit And Credit Amount *****" & vbCrLf)
  loc_1460FEA:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1460FF0:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have equal Debit And Credit Amount *****" & vbCrLf)
  loc_1461005:   Call 0.Method_arg_38 ("  Debit Amt. Credit Amt.  Difference |Folio No Docid        |Bill_No             " & vbCrLf)
  loc_1461014:   var_98 = "--------------------------------------------" & vbCrLf
  loc_146101A:   Call 0.Method_arg_38 ("  Debit Amt. Credit Amt.  Difference |Folio No Docid        |Bill_No             " & vbCrLf)
  loc_1461022:   ' Referenced from: 14611D8
  loc_1461031:   If Not(var_90.EOF) Then
  loc_1461043:     var_94 = var_90.Fields
  loc_1461053:     var_C0 = CVar(var_94.Item("AmtDr")) 'Address
  loc_146105A:     Proc_6_47_EF59D0(var_F0, var_C0)
  loc_1461085:     Proc_6_47_EF59D0(var_11C, CVar(var_90.Fields.Item("AmtCr")))
  loc_14610B0:     Proc_6_47_EF59D0(var_158, CVar(var_90.Fields.Item("Diff")))
  loc_1461143:     var_1A4 = Proc_6_52_EAD4F4(CStr(var_F0), &HC) & Proc_6_52_EAD4F4(CStr(var_11C), &HC) & Proc_6_52_EAD4F4(CStr(var_158), &HC) & " |" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(var_90.Fields.Item("FolioNoDocid"))), &H15)
  loc_1461186:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Bill_no")), var_1A4 & " |") & vbCrLf)
  loc_14611D3:     var_90.MoveNext
  loc_14611D8:     GoTo loc_1461022
  loc_14611DB:   End If
  loc_14611E2:   var_98 = "--------------------------------------------" & vbCrLf
  loc_14611E8:   Call 0.Method_arg_38 ("  Debit Amt. Credit Amt.  Difference |Folio No Docid        |Bill_No             " & vbCrLf)
  loc_14611F0: End If
  loc_14611FD: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1461212: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro *****" & vbCrLf)
  loc_1461230: unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE PAYCODE NOT IN (SELECT CODE FROM REVMAST)", var_C0, -1
  loc_146123B: Set var_90 = var_94
  loc_1461258: If (var_90.RecordCount > 0) Then
  loc_1461268:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_146127D:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Valid PayCode *****" & vbCrLf)
  loc_146128C:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1461292:   Call 0.Method_arg_38 ("***** These Docid(s) in PayCharge Don't have Valid PayCode *****" & vbCrLf)
  loc_14612A7:   Call 0.Method_arg_38 ("Docid                |PayCode        " & vbCrLf)
  loc_14612B6:   var_98 = "--------------------------------------------" & vbCrLf
  loc_14612BC:   Call 0.Method_arg_38 ("Docid                |PayCode        " & vbCrLf)
  loc_14612C4:   ' Referenced from: 1461369
  loc_14612D3:   If Not(var_90.EOF) Then
  loc_14612E5:     var_94 = var_90.Fields
  loc_14612F5:     var_C0 = CVar(var_94.Item("DocID")) 'Address
  loc_1461341:     Call 0.Method_arg_38 (var_94 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("PayCode")), Proc_6_38_E68A98(var_C0) & "|") & vbCrLf)
  loc_1461364:     var_90.MoveNext
  loc_1461369:     GoTo loc_14612C4
  loc_146136C:   End If
  loc_1461373:   var_98 = "--------------------------------------------" & vbCrLf
  loc_1461379:   Call 0.Method_arg_38 (Proc_6_38_E68A98(var_C0))
  loc_1461381: End If
  loc_1461388: var_98 = " " & vbCrLf
  loc_146138E: Call 0.Method_arg_38 (var_98)
  loc_14613AC: unk_57533F.Execute "SELECT * FROM PAYCHARGE WHERE Docid is NUll or Docid=''", var_C0, -1
  loc_14613D4: If (var_94.RecordCount > 0) Then
  loc_14613ED:   unk_57533F.Execute "Delete from paycharge where Docid is NULL or Docid=''", var_C0, -1
  loc_14613F8: End If
  loc_146140E: unk_57533F.Execute "SELECT * FROM GuestFolio WHERE Docid is NUll or Docid=''", var_C0, -1
  loc_1461436: If (var_94.RecordCount > 0) Then
  loc_146144F:   unk_57533F.Execute "Delete from GuestFolio where Docid is NULL or Docid=''", var_C0, -1
  loc_146145A: End If
  loc_1461470: unk_57533F.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_C0, -1
  loc_146147E: Call 0.Method_BtnIntegrity_UnknownEvent_9C (var_94, var_94, var_94)
  loc_146148A: Call 0.Method_arg_A4 (CInt(0), var_94)
  loc_146148F: Exit Sub
  loc_1461490: ' Referenced from: 1460968
  loc_1461496: Call 0.Method_arg_50 (var_98)
  loc_14614AB: Proc_183_57_104AA84(var_98, "BtnIntegrity_Click")
  loc_14614B7: Exit Sub
End Sub

Private Sub Form_Load() 'FA7380
  'Data Table: 575310
  Dim var_88 As Variant
  loc_FA7202: Set var_88 = Me.Command1
  loc_FA7208: var_88.Visible = False
  loc_FA7210: On Error Goto loc_FA7339
  loc_FA721A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FA7228: Call 0.Method_arg_160 (var_88)
  loc_FA7236: Call 0.Method_arg_164 (var_88)
  loc_FA7246: If (MemVar_1F92170 = "[Aatithya_Restaurant]") Then
  loc_FA724F:   Set var_88 = Me.Print_KOT_Timer
  loc_FA7255:   MDIForm1.Print_KOT_Timer.Visible = True
  loc_FA7269:   Me.FrmPOS.Visible = True
  loc_FA7274: Else
  loc_FA727C:   If (MemVar_1F92170 = "[Aatithya_Lite]") Then
  loc_FA728B:     Me.FrmACC.Visible = True
  loc_FA729F:     Me.FrmPOS.Visible = True
  loc_FA72B3:     Me.FrmFOM.Visible = True
  loc_FA72C7:     Me.FrmPurch.Visible = True
  loc_FA72D2:   Else
  loc_FA72DE:     Me.FrmACC.Visible = True
  loc_FA72F2:     Me.FrmPOS.Visible = True
  loc_FA7306:     Me.FrmFOM.Visible = True
  loc_FA731A:     Me.FrmPurch.Visible = True
  loc_FA732A:     Set var_88 = Me.BtnBanquet
  loc_FA7330:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_FA7338:   End If
  loc_FA7338: End If
  loc_FA7338: Exit Sub
  loc_FA7339: ' Referenced from: FA7210
  loc_FA7341: Set var_88 = Err()
  loc_FA7347: Call 0.Method_arg_2C (var_B0)
  loc_FA7368: MsgBox(CVar(var_B0), &H40, "Information", var_E0, var_100)
  loc_FA737B: Exit Sub
  loc_FA737C: Exit Sub
End Sub

Private Sub Form_Resize() 'E74E84
  'Data Table: 575310
  loc_E74E2E: Call 0.Method_arg_50 (var_88)
  loc_E74E40: Me.LblFormCaption.Caption = var_88
  loc_E74E59: Me.LblFormCaption.Left = CDbl(0)
  loc_E74E67: Call 0.Method_arg_100 (var_90)
  loc_E74E79: Me.LblFormCaption.Width = var_90
  loc_E74E81: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AF34
  'Data Table: 575310
  loc_E2AF0C: On Error Goto loc_E2AF2B
  loc_E2AF23: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AF2B: ' Referenced from: E2AF0C
  loc_E2AF2B: Proc_6_60_E62BC4(Shift)
  loc_E2AF30: Exit Sub
End Sub

Private Sub BtnUnit_UnknownEvent_9 'EE5CBC
  'Data Table: 575310
  Dim var_6800 As Long
  loc_EE5C04: On Error Goto loc_EE5C7F
  loc_EE5C10: Call Proc_97_28_1016378("PTN")
  loc_EE5C21: Call Proc_97_28_1016378("PLATE")
  loc_EE5C32: Call Proc_97_28_1016378("PEG")
  loc_EE5C43: Call Proc_97_28_1016378("PCS")
  loc_EE5C54: Call Proc_97_28_1016378("M.L.")
  loc_EE5C65: Call Proc_97_28_1016378("BOTTLE")
  loc_EE5C70: var_88 = "K.G."
  loc_EE5C76: Call Proc_97_28_1016378(var_88)
  loc_EE5C7E: Exit Sub
  loc_EE5C7F: ' Referenced from: EE5C04
  loc_EE5C95: Set var_8C = Err()
  loc_EE5C9B: Call 0.Method_arg_2C (var_88, 0, var_BC)
  loc_EE5CA6: MsgBox(CVar(var_88), var_DC, var_FC, , )
  loc_EE5CB9: Exit Sub
  loc_EE5CBA: var_6800 = 
End Sub

Private Sub BtnSundryMast_UnknownEvent_9 '12CEB40
  'Data Table: 575310
  Dim var_C4 As Variant
  loc_12CE4C0: On Error Goto loc_12CEB02
  loc_12CE4D6: var_D8 = "Y"
  loc_12CE4DF: var_D4 = "+"
  loc_12CE4FF: var_C4 = (Trim(MemVar_1F92078) + "ST")
  loc_12CE508: Call Proc_97_29_1095410(CStr(var_C4), "SALES TAX", "Sale Tax")
  loc_12CE534: var_D8 = "Y"
  loc_12CE53D: var_D4 = "+"
  loc_12CE55D: var_C4 = (Trim(MemVar_1F92078) + "ADD")
  loc_12CE566: Call Proc_97_29_1095410(CStr(var_C4), "ADDITION", "Addition", var_D4)
  loc_12CE592: var_D8 = "Y"
  loc_12CE59B: var_D4 = "-"
  loc_12CE5BB: var_C4 = (Trim(MemVar_1F92078) + "ADV")
  loc_12CE5C4: Call Proc_97_29_1095410(CStr(var_C4), "ADVANCE", "Advance", var_D4)
  loc_12CE5F9: var_D4 = "-"
  loc_12CE619: var_C4 = (Trim(MemVar_1F92078) + "RDM")
  loc_12CE622: Call Proc_97_29_1095410(CStr(var_C4), "REDEMPTION", "Redemption", var_D4, "Y")
  loc_12CE657: var_D4 = "-"
  loc_12CE677: var_C4 = (Trim(MemVar_1F92078) + "DED")
  loc_12CE680: Call Proc_97_29_1095410(CStr(var_C4), "DEDUCTION", "Deduction", var_D4, "Y")
  loc_12CE6B5: var_D4 = "-"
  loc_12CE6D5: var_C4 = (Trim(MemVar_1F92078) + "DIS")
  loc_12CE6DE: Call Proc_97_29_1095410(CStr(var_C4), "DISCOUNT", "Discount", var_D4, "Y")
  loc_12CE733: var_C4 = (Trim(MemVar_1F92078) + "NET")
  loc_12CE73C: Call Proc_97_29_1095410(CStr(var_C4), "NET AMOUNT", "Net Amount", vbNullString, "Y")
  loc_12CE771: var_D4 = "+"
  loc_12CE791: var_C4 = (Trim(MemVar_1F92078) + "ROFF")
  loc_12CE79A: Call Proc_97_29_1095410(CStr(var_C4), "ROUND OFF", "Round Off", vbNullString, "Y")
  loc_12CE7CF: var_D4 = "+"
  loc_12CE7EF: var_C4 = (Trim(MemVar_1F92078) + "SC")
  loc_12CE7F8: Call Proc_97_29_1095410(CStr(var_C4), "SURCHARGE", "Sale Tax", vbNullString, "Y")
  loc_12CE82D: var_D4 = "+"
  loc_12CE84D: var_C4 = (Trim(MemVar_1F92078) + "SCH")
  loc_12CE856: Call Proc_97_29_1095410(CStr(var_C4), "SERVICE CHARGE", "Service Charge", vbNullString, "Y")
  loc_12CE88B: var_D4 = "+"
  loc_12CE8AB: var_C4 = (Trim(MemVar_1F92078) + "CGSS")
  loc_12CE8B4: Call Proc_97_29_1095410(CStr(var_C4), "CGST (SALES)", "CGST", vbNullString, "Y")
  loc_12CE8E9: var_D4 = "+"
  loc_12CE909: var_C4 = (Trim(MemVar_1F92078) + "SGSS")
  loc_12CE912: Call Proc_97_29_1095410(CStr(var_C4), "SGST (SALES)", "SGST", vbNullString, "Y")
  loc_12CE947: var_D4 = "+"
  loc_12CE967: var_C4 = (Trim(MemVar_1F92078) + "IGSS")
  loc_12CE970: Call Proc_97_29_1095410(CStr(var_C4), "IGST (SALES)", "IGST", vbNullString, "Y")
  loc_12CE9A5: var_D4 = "+"
  loc_12CE9C5: var_C4 = (Trim(MemVar_1F92078) + "CGSP")
  loc_12CE9CE: Call Proc_97_29_1095410(CStr(var_C4), "CGST (PURCHASE)", "CGST", vbNullString, "Y")
  loc_12CEA03: var_D4 = "+"
  loc_12CEA23: var_C4 = (Trim(MemVar_1F92078) + "SGSP")
  loc_12CEA2C: Call Proc_97_29_1095410(CStr(var_C4), "SGST (PURCHASE)", "SGST", vbNullString, "Y")
  loc_12CEA61: var_D4 = "+"
  loc_12CEA81: var_C4 = (Trim(MemVar_1F92078) + "IGSP")
  loc_12CEA8A: Call Proc_97_29_1095410(CStr(var_C4), "IGST (PURCHASE)", "IGST", vbNullString, "Y")
  loc_12CEAB6: var_D8 = "Y"
  loc_12CEABF: var_D4 = vbNullString
  loc_12CEADF: var_C4 = (Trim(MemVar_1F92078) + "TOT")
  loc_12CEAE8: Call Proc_97_29_1095410(CStr(var_C4), "AMOUNT", "Amount", var_D4, var_D8)
  loc_12CEB01: Exit Sub
  loc_12CEB02: ' Referenced from: 12CE4C0
  loc_12CEB18: Set var_DC = Err()
  loc_12CEB1E: Call 0.Method_arg_2C (var_C8, 0, var_C4, var_EC, var_10C)
  loc_12CEB29: MsgBox(CVar(var_C8), var_D8, var_D8, var_D4, var_D8)
  loc_12CEB3C: Exit Sub
  loc_12CEB3E: DOC
End Sub

Public Sub Proc_97_19_DFC318
  'Data Table: 575310
  loc_DFC314: Exit Sub
End Sub

Public Sub Proc_97_20_10FB0CC(arg_C, arg_10, arg_14, arg_18, arg_1C) '10FB0CC
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_CC As Variant
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_1E8 As Variant
  Dim var_298 As Variant
  Dim var_C8 As Variant
  loc_10FAE04: On Error Goto loc_10FB07A
  loc_10FAE10: unk_57533F.BeginTrans var_94
  loc_10FAE17: var_8A = &HFF
  loc_10FAE21: var_98 = "SELECT COUNT(*) FROM SUBGROUP WHERE Upper(NAME)='" & arg_10
  loc_10FAE5A: var_E0 = 0
  loc_10FAE79: unk_57533F.Execute var_98 & "' AND SITE_CODE='" & MemVar_1F92078 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C8, -1
  loc_10FAE81: var_CC = var_CC.Fields
  loc_10FAE89: var_E0 = var_D0.Item(var_D0)
  loc_10FAE91: var_E4 = var_E4.Value
  loc_10FAEB1: If (var_F4 <= 0) Then
  loc_10FAEBB:   Call 0.Method_Proc_97_20_10FB0CC8 (var_98, "A/C Name :----->")
  loc_10FAED1:   Me.Text1.Text = var_F4 & var_98
  loc_10FAEEA:   Me.Text1.Refresh
  loc_10FAF39:   Proc_183_7_EB0C44(var_268, Now)
  loc_10FAF52:   var_98 = "Insert Into SUBGROUP (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,areacode,Phone,Mobile,Fax,EMail,Religion,CreditLimit,CreditDays,ActiveYN,CSTNo,LSTNo,PANNo,ITWard_No,Remark,FName,U_Name,U_EntDt,U_AE,TDS_Catg,LogSite_Code) Values ('" & MemVar_1F92078
  loc_10FAF67:   var_F4 = CVar(var_98 & "','" & arg_C & "','") 'String
  loc_10FAF6D:   var_114 = var_F4 & Trim(arg_10) 
  loc_10FAF76:   var_124 = var_114 & "','" 
  loc_10FAFAD:   var_1E8 = var_124 & Trim(CVar(Proc_183_20_FB3974(arg_10))) & "','" & CVar(Proc_6_45_EAD428("HO", 2)) & CVar(arg_14) & "','" & CVar(arg_18) 
  loc_10FAFD9:   var_298 = var_1E8 & "','" & CVar(arg_1C) & "','','','','','','',0,'','','','',0,0,0,1,'','','','','','','Analysis'," & var_268 & ",'A','','" 
  loc_10FAFFA:   unk_57533F.Execute CStr(var_298 & CVar(MemVar_1F92078) & "')"), var_2F8, -1
  loc_10FB042: End If
  loc_10FB048: unk_57533F.CommitTrans
  loc_10FB04F: var_8A = 0
  loc_10FB05F: Me.Text1.Text = vbNullString
  loc_10FB071: Me.Text1.Refresh
  loc_10FB079: Exit Sub
  loc_10FB07A: ' Referenced from: 10FAE04
  loc_10FB080: If (var_8A = &HFF) Then
  loc_10FB089:   unk_57533F.RollbackTrans
  loc_10FB08E: End If
  loc_10FB0AA: Call 0.Method_arg_2C (var_98, 0, var_F4, var_114)
  loc_10FB0B5: MsgBox(CVar(var_98), var_124, var_8A, Err(), var_8A)
  loc_10FB0C8: Exit Sub
End Sub

Public Sub Proc_97_21_117A4F4(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '117A4F4
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_1B8 As String
  Dim var_1F0 As String
  Dim var_B4 As Variant
  loc_117A1BC: On Error Goto loc_117A4A2
  loc_117A1C8: unk_57533F.BeginTrans var_94
  loc_117A1CF: var_8A = &HFF
  loc_117A1E2: var_B4 = Ucase(arg_10)
  loc_117A1EA: var_D4 = "SELECT COUNT(*) FROM RevMast WHERE UPPER(NAME)='" & var_B4 
  loc_117A238: var_C4 = 0
  loc_117A257: unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_B4, -1
  loc_117A25F: var_178 = var_178.Fields
  loc_117A267: var_C4 = var_17C.Item(var_17C)
  loc_117A26F: var_180 = var_180.Value
  loc_117A28F: If (var_D4 <= 0) Then
  loc_117A299:   var_184 = "Revenue Name :----->" & arg_10
  loc_117A2A6:   Me.Text1.Text = var_184
  loc_117A2BB:   Me.Text1.Refresh
  loc_117A2D1:   Proc_6_7_F25D88(var_D4, Now)
  loc_117A2EA:   var_184 = "Insert Into RevMast (Code,Name,ShortName,ACCode,TaxStru,Site_Code,SysYN,Type,AppMode,FlagAMR,FlagType,DeskCode,PAYTYPE,FieldType,Sundry,RoundOff,BankCommAC,BankCommPer,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES ('" & arg_C
  loc_117A345:   var_1B8 = var_184 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','" & MemVar_1F92078 & "','Y','" & arg_20 & "','"
  loc_117A3A7:   var_1F0 = var_1B8 & arg_24 & "','" & arg_28 & "','" & arg_2C & "','" & arg_30 & "','" & arg_34 & "','" & arg_38 & "','" & Proc_97_21_117A4F4C & "','"
  loc_117A3D6:   var_F4 = CVar(var_1F0 & arg_3C & "','" & Proc_97_21_117A4F40 & "'," & CStr(Proc_97_21_117A4F44) & ",'Analysis',") 'String
  loc_117A3DC:   var_114 = var_F4 & var_D4 
  loc_117A406:   unk_57533F.Execute CStr(var_114 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_21C, -1
  loc_117A46A: End If
  loc_117A470: unk_57533F.CommitTrans
  loc_117A477: var_8A = 0
  loc_117A487: Me.Text1.Text = vbNullString
  loc_117A499: Me.Text1.Refresh
  loc_117A4A1: Exit Sub
  loc_117A4A2: ' Referenced from: 117A1BC
  loc_117A4A8: If (var_8A = &HFF) Then
  loc_117A4B1:   unk_57533F.RollbackTrans
  loc_117A4B6: End If
  loc_117A4D2: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4, var_114)
  loc_117A4DD: MsgBox(CVar(var_184), var_8A, Err(), var_D4, var_8A)
  loc_117A4F0: Exit Sub
End Sub

Public Sub Proc_97_22_108F198(arg_C, arg_10, arg_14, arg_18, arg_1C) '108F198
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_B4 As Variant
  loc_108EF30: On Error Goto loc_108F149
  loc_108EF3C: unk_57533F.BeginTrans var_94
  loc_108EF43: var_8A = &HFF
  loc_108EF56: var_B4 = Ucase(arg_10)
  loc_108EF5E: var_D4 = "SELECT COUNT(*) FROM TelCallType WHERE UPPER(CallType)='" & var_B4 
  loc_108EFAC: var_C4 = 0
  loc_108EFCB: unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_B4, -1
  loc_108EFD3: var_178 = var_178.Fields
  loc_108EFDB: var_C4 = var_17C.Item(var_17C)
  loc_108EFE3: var_180 = var_180.Value
  loc_108F003: If (var_D4 <= 0) Then
  loc_108F00D:   var_184 = "Revenue Name :----->" & arg_10
  loc_108F01A:   Me.Text1.Text = var_184
  loc_108F029:   Set var_178 = Me.Text1
  loc_108F02F:   var_178.Refresh
  loc_108F04B:   var_184 = "Insert Into TelCallType (Code,CallType,ShortName,ACCode,TaxStru,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & arg_C
  loc_108F098:   var_F4 = CVar(var_184 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','" & MemVar_1F92078 & "','Analysis',") 'String
  loc_108F0A9:   Proc_6_7_F25D88(var_D4, Now, var_F4, var_1C0)
  loc_108F0B1:   var_114 = -1 & var_D4 
  loc_108F0DB:   unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & ",'A','" & CVar(MemVar_1F92078) & "')"), var_178, var_D4
  loc_108F111: End If
  loc_108F117: unk_57533F.CommitTrans
  loc_108F11E: var_8A = 0
  loc_108F12E: Me.Text1.Text = vbNullString
  loc_108F140: Me.Text1.Refresh
  loc_108F148: Exit Sub
  loc_108F149: ' Referenced from: 108EF30
  loc_108F14F: If (var_8A = &HFF) Then
  loc_108F158:   unk_57533F.RollbackTrans
  loc_108F15D: End If
  loc_108F173: Set var_178 = Err()
  loc_108F179: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4)
  loc_108F184: MsgBox(CVar(var_184), var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078), var_8A, var_8A, )
  loc_108F197: Exit Sub
End Sub

Public Sub Proc_97_23_122E3AC(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '122E3AC
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_E4 As Variant
  Dim var_98 As String
  Dim var_A0 As String
  Dim var_A8 As String
  Dim var_D0 As Variant
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_1B8 As Variant
  Dim var_F8 As Variant
  Dim var_1F8 As Variant
  Dim var_324 As Variant
  Dim var_CC As Variant
  loc_122DF08: On Error Goto loc_122E35D
  loc_122DF14: unk_57533F.BeginTrans var_94
  loc_122DF1B: var_8A = &HFF
  loc_122DF26: If (arg_20 = "N") Then
  loc_122DF2F:   var_E4 = 0
  loc_122DF68:   var_A8 = "SELECT COUNT(*) FROM GodownMast WHERE Code='" & arg_C & "' and Site_Code='" & MemVar_1F92078 & "' and LogSite_Code='" & MemVar_1F92078
  loc_122DF78:   unk_57533F.Execute var_A8 & "'", var_CC, -1
  loc_122DF80:   var_D0 = var_D0.Fields
  loc_122DF88:   var_E4 = var_D4.Item(var_D4)
  loc_122DF90:   var_E8 = var_E8.Value
  loc_122DFBF:   If (var_F8 <= 0) Then
  loc_122DFC9:     var_98 = "Godown Name :----->" & arg_10
  loc_122DFD6:     Me.Text1.Text = "SELECT COUNT(*) FROM GodownMast WHERE Code='" & arg_C
  loc_122DFE5:     Set var_D0 = Me.Text1
  loc_122DFEB:     var_D0.Refresh
  loc_122E015:     var_A0 = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & arg_C & "','" & arg_10
  loc_122E02D:     Proc_6_7_F25D88(var_F8, Now, CVar(var_A0 & "','Analysis',"), var_1F8)
  loc_122E035:     var_128 = -1 & var_F8 
  loc_122E085:     unk_57533F.Execute CStr(var_128 & ",'A','" & CVar(arg_24) & "','Y','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F92078) & "')"), var_D0, var_F8
  loc_122E0B3:   End If
  loc_122E0B3: End If
  loc_122E0C3: var_CC = Ucase(arg_10)
  loc_122E0CB: var_F8 = "SELECT COUNT(*) FROM Depart WHERE UPPER(NAME)='" & var_CC 
  loc_122E119: var_E4 = 0
  loc_122E138: unk_57533F.Execute CStr(var_F8 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "' AND LogSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_CC, -1
  loc_122E140: var_D0 = var_D0.Fields
  loc_122E148: var_E4 = var_D4.Item(var_D4)
  loc_122E150: var_E8 = var_E8.Value
  loc_122E170: If (var_F8 <= 0) Then
  loc_122E17A:   var_98 = "Department Name :----->" & arg_10
  loc_122E187:   Me.Text1.Text = "Insert Into GodownMast (Code,Name,U_Name,U_EntDt,U_AE,ShortName,SysYN,Site_Code,LogSite_Code) VALUES ('" & arg_C
  loc_122E196:   Set var_D0 = Me.Text1
  loc_122E19C:   var_D0.Refresh
  loc_122E1B8:   var_98 = "Insert Into Depart (Code,Name,Site_Code,KotYn,POS,U_Name,U_EntDt,U_AE,RestType,OutletYN,ShortName,LinkToRoom,RateInclTax,DiscApp,Roff,BackColor,LogSite_Code,TokenPrint) VALUES ('" & arg_C
  loc_122E1F7:   var_118 = CVar(var_98 & "','" & arg_10 & "','" & MemVar_1F92078 & "','" & arg_14 & "','" & arg_18 & "','Analysis',") 'String
  loc_122E208:   Proc_6_7_F25D88(var_F8, Now, var_118, var_388)
  loc_122E210:   var_128 = -1 & var_F8 
  loc_122E249:   var_1B8 = var_F8 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & ",'A','" & CVar(arg_1C) & "','" & CVar(arg_20) & "','" & CVar(arg_24) 
  loc_122E2B2:   var_324 = var_1B8 & "','" & CVar(arg_28) & "','" & CVar(arg_2C) & "','" & CVar(arg_30) & "','" & CVar(arg_34) & "'," & CVar(arg_38) & ",'" 
  loc_122E2D3:   unk_57533F.Execute CStr(var_324 & CVar(MemVar_1F92078) & "','')"), var_D0, var_F8
  loc_122E325: End If
  loc_122E32B: unk_57533F.CommitTrans
  loc_122E332: var_8A = 0
  loc_122E342: Me.Text1.Text = vbNullString
  loc_122E354: Me.Text1.Refresh
  loc_122E35C: Exit Sub
  loc_122E35D: ' Referenced from: 122DF08
  loc_122E363: If (var_8A = &HFF) Then
  loc_122E36C:   unk_57533F.RollbackTrans
  loc_122E371: End If
  loc_122E387: Set var_D0 = Err()
  loc_122E38D: Call 0.Method_arg_2C (var_98, 0, var_F8, var_118)
  loc_122E398: MsgBox(CVar(var_98), var_F8 & "' AND SITE_CODE='" & CVar(MemVar_1F92078), var_8A, var_8A, )
  loc_122E3AB: Exit Sub
End Sub

Public Sub Proc_97_24_11A9C24(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '11A9C24
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As Variant
  Dim var_100 As Fields15
  Dim var_104 As Field20
  Dim var_90 As Recordset15
  Dim var_B8 As Variant
  Dim var_88 As Long
  Dim var_108 As String
  Dim var_10C As String
  Dim var_11C As Variant
  Dim var_26C As Variant
  Dim var_300 As Variant
  loc_11A987C: On Error Goto loc_11A9BD4
  loc_11A9888: unk_57533F.BeginTrans var_98
  loc_11A988F: var_8A = &HFF
  loc_11A98A2: var_B8 = Ucase(arg_10)
  loc_11A98AA: var_D8 = "SELECT COUNT(*) FROM ACGROUP WHERE UPPER(GROUPNAME)='" & var_B8 
  loc_11A98CA: var_C8 = 0
  loc_11A98E9: unk_57533F.Execute CStr(var_D8 & "' AND LOGSITE_CODE='HO'  AND SITE_CODE='HO'"), var_B8, -1
  loc_11A98F9: var_C8 = var_100.Item(var_100)
  loc_11A9901: var_104 = var_104.Value
  loc_11A9921: If (var_D8 <= 0) Then
  loc_11A993A:   unk_57533F.Execute "SELECT MAX(ID) AS MAXID FROM ACGROUP", var_B8, -1
  loc_11A9945:   Set var_90 = var_FC.Fields
  loc_11A9962:   If (var_90.RecordCount > 0) Then
  loc_11A9974:     var_FC = var_90.Fields
  loc_11A998B:     Proc_6_39_E7C810(var_D8, CVar(var_FC.Item("MaxId")), var_FC)
  loc_11A9998:     var_F8 = (var_D8 + 1)
  loc_11A999E:     var_88 = CLng(var_D8 & "' AND LOGSITE_CODE='HO'  AND SITE_CODE='HO'")
  loc_11A99B0:   Else
  loc_11A99B5:     var_88 = 1
  loc_11A99B8:   End If
  loc_11A99BF:   var_108 = "Group Name :----->" & arg_10
  loc_11A99CC:   Me.Text1.Text = var_108
  loc_11A99DB:   Set var_FC = Me.Text1
  loc_11A99E1:   var_FC.Refresh
  loc_11A99FE:   var_108 = CStr(var_88)
  loc_11A9A02:   var_10C = "Insert Into ACGROUP (ID,GroupCode,GroupName,GroupNameBiLang,Site_Code,GroupNature,Nature,MainGrCode,SubLedYN,BlOrd,AliasYN,SysGroup,GroupHelp,TradingYN,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (" & var_108
  loc_11A9A09:   var_D8 = CVar(var_10C & ",'HO") 'String
  loc_11A9A1F:   var_F8 = var_D8 & Trim(arg_C) 
  loc_11A9A28:   var_11C = var_F8 & "','" 
  loc_11A9AB3:   var_26C = var_11C & Trim(arg_10) & "','','HO','" & Trim(arg_14) & "','" & Trim(arg_18) & "','" & Trim(arg_1C) & "','N'," & CVar(arg_20) 
  loc_11A9AF0:   var_300 = CVar(Proc_183_20_FB3974(CStr(Trim(arg_10)), var_26C & ",'N','" & CVar(arg_24) & "','", var_3E4, -1, var_FC)) 'String
  loc_11A9B21:   Proc_6_7_F25D88(var_390, Now, var_88 & var_300 & "','" & CVar(arg_28) & "','Analysis',")
  loc_11A9B40:   unk_57533F.Execute CStr(var_88 & var_390 & ",'A','HO')"), var_D8, var_8A
  loc_11A9B94: End If
  loc_11A9B9A: unk_57533F.CommitTrans
  loc_11A9BA1: var_8A = 0
  loc_11A9BB1: Me.Text1.Text = vbNullString
  loc_11A9BC3: Me.Text1.Refresh
  loc_11A9BD0: Set var_90 = Nothing
  loc_11A9BD3: Exit Sub
  loc_11A9BD4: ' Referenced from: 11A987C
  loc_11A9BDA: If (var_8A = &HFF) Then
  loc_11A9BE3:   unk_57533F.RollbackTrans
  loc_11A9BE8: End If
  loc_11A9BFE: Set var_FC = Err()
  loc_11A9C04: Call 0.Method_arg_2C (var_108, 0, var_D8)
  loc_11A9C0F: MsgBox(CVar(var_108), var_F8, var_11C, var_8A, )
  loc_11A9C22: Exit Sub
End Sub

Public Sub Proc_97_25_1371C2C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '1371C2C
  'Data Table: 575310
  Dim var_D4 As Variant
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim unk_57533F As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_10C As String
  Dim var_8A As Integer
  Dim var_134 As String
  Dim var_16C As String
  Dim var_108 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_E8 As Variant
  Dim var_BC As Variant
  loc_1371468: On Error Goto loc_1371BDC
  loc_1371471: var_D4 = 0
  loc_13714AC: unk_57533F.Execute "SELECT COUNT(*) FROM VoucherCat WHERE Category='" & arg_C & "' And NCat='" & arg_10 & "'", var_BC, -1
  loc_13714B4: var_C0 = var_C0.Fields
  loc_13714BC: var_D4 = var_C4.Item(var_C4)
  loc_13714C4: var_D8 = var_D8.Value
  loc_13714EF: If (var_E8 <= 0) Then
  loc_1371524:   unk_57533F.Execute "Insert Into VoucherCat (Category,NCat,Site_Code,LogSite_Code) VALUES ('" & arg_C & "','" & arg_10 & "','HO','HO')", var_BC, -1
  loc_137153A: End If
  loc_1371540: var_D4 = 0
  loc_1371579: var_10C = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1371589: unk_57533F.Execute var_10C & "'", var_BC, -1
  loc_1371591: var_C0 = var_C0.Fields
  loc_1371599: var_D4 = var_C4.Item(var_C4)
  loc_13715A1: var_D8 = var_D8.Value
  loc_13715D0: If (var_E8 <= 0) Then
  loc_13715DA:   var_90 = "Voucher Type :----->" & arg_1C
  loc_13715E7:   Me.Text1.Text = "SELECT COUNT(*) FROM Voucher_Type WHERE V_Type='" & arg_14
  loc_13715F6:   Set var_C0 = Me.Text1
  loc_13715FC:   var_C0.Refresh
  loc_137160D:   unk_57533F.BeginTrans var_114
  loc_137162B:   var_90 = "Insert Into Voucher_Type (Category,NCat,V_Type,Site_Code,Contratype,Description,Description_Help,Short_Name,Number_Method,RestCode,Separate_Narr,Common_Narr,ChqNo,ChqDt,ClgDt,DefaultCrAc,DefaultDrAc,FirstDrCr,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES ('" & arg_C
  loc_1371686:   var_134 = var_90 & "','" & arg_10 & "','" & arg_14 & "','" & MemVar_1F92070 & "','" & arg_18 & "','" & arg_1C & "','" & arg_1C & "','"
  loc_13716E8:   var_16C = var_134 & arg_20 & "','" & arg_24 & "','" & arg_28 & "','" & arg_2C & "','" & arg_30 & "','" & Proc_97_25_1371C2C0 & "','" & Proc_97_25_1371C2C4 & "','"
  loc_1371726:   var_BC = Now
  loc_1371731:   Proc_6_7_F25D88(var_E8, var_BC, CVar(var_16C & Proc_97_25_1371C2C8 & "','" & arg_38 & "','" & arg_3C & "','" & arg_34 & "','Analysis',"), var_1EC, -1)
  loc_1371742:   var_1A8 = var_C0 & var_E8 & ",'A','" 
  loc_137174C:   var_1B8 = var_1A8 & CVar(MemVar_1F92078) 
  loc_1371763:   unk_57533F.Execute CStr(var_1B8 & "')"), &HFF, var_E8
  loc_13717CF:   unk_57533F.CommitTrans
  loc_13717D6:   var_8A = 0
  loc_13717E6:   Me.Text1.Text = vbNullString
  loc_13717F2:   Set var_C0 = Me.Text1
  loc_13717F8:   var_C0.Refresh
  loc_1371800: End If
  loc_1371808: If (arg_14 = "F_AO") Then
  loc_1371843:   var_9C = "SELECT COUNT(*) FROM Voucher_Prefix WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND logSITE_CODE='"
  loc_1371851:   var_E8 = CVar(var_9C & MemVar_1F92078 & "' AND DATE_FROM=DATEADD(day,-1,") 'String
  loc_137185F:   Proc_6_7_F25D88(var_BC, MemVar_1F920F4, var_E8, var_1A8, -1, var_C0, var_C4)
  loc_137187E:   unk_57533F.Execute CStr(0 & var_BC & ")"), var_D8, var_1B8
  loc_1371886:   var_8A = var_C0.Fields
  loc_137188E:   var_E8 = var_C4.Item(var_C0)
  loc_1371896:    = var_D8.Value
  loc_13718CD:   If (var_1B8 <= 0) Then
  loc_13718D9:     unk_57533F.BeginTrans var_114
  loc_1371905:     var_98 = "Insert Into Voucher_PREFIX (V_Type,Site_Code,DATE_FROM,DATE_TO,PREFIX,U_EntDt,LogSite_Code) VALUES ('" & arg_14 & "','" & MemVar_1F92070
  loc_137190C:     var_E8 = CVar(var_98 & "',DATEADD(day,-1,") 'String
  loc_137191A:     Proc_6_7_F25D88(var_BC, MemVar_1F920F4, var_E8, var_2DC)
  loc_1371922:     var_108 = -1 & var_BC 
  loc_137192B:     var_198 = 0 & var_BC & ")," 
  loc_137193A:     Proc_6_7_F25D88(var_1A8, MemVar_1F920FC, var_198)
  loc_137197D:     Proc_6_7_F25D88(var_24C, Date)
  loc_13719AF:     unk_57533F.Execute CStr(var_C0 & var_1A8 & ",'" & Year(MemVar_1F920F4) & "'," & var_24C & ",'" & CVar(MemVar_1F92078) & "')"), &HFF, 
  loc_13719ED:     unk_57533F.CommitTrans
  loc_13719F4:     var_8A = 0
  loc_13719F7:   End If
  loc_13719FA: Else
  loc_1371A32:   var_9C = "SELECT COUNT(*) FROM Voucher_Prefix WHERE V_Type='" & arg_14 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND logSITE_CODE='"
  loc_1371A4E:   Proc_6_7_F25D88(var_BC, MemVar_1F920F4, CVar(var_9C & MemVar_1F92078 & "' AND DATE_FROM="), var_198, -1, var_C0)
  loc_1371A64:   unk_57533F.Execute CStr(var_C4 & var_BC), 0, var_D8
  loc_1371A6C:   var_1A8 = var_C0.Fields
  loc_1371A74:    = var_C4.Item(var_8A)
  loc_1371A7C:    = var_D8.Value
  loc_1371AB1:   If (var_1A8 <= 0) Then
  loc_1371ABD:     unk_57533F.BeginTrans var_114
  loc_1371ADB:     var_90 = "Insert Into Voucher_PREFIX (V_Type,Site_Code,DATE_FROM,DATE_TO,PREFIX,U_EntDt,LogSite_Code) VALUES ('" & arg_14
  loc_1371AF0:     var_E8 = CVar(var_90 & "','" & MemVar_1F92070 & "',") 'String
  loc_1371AFE:     Proc_6_7_F25D88(var_BC, MemVar_1F920F4, var_E8, var_2DC)
  loc_1371B06:     var_108 = -1 & var_BC 
  loc_1371B0F:     var_198 = var_C4 & var_BC & "," 
  loc_1371B1E:     Proc_6_7_F25D88(var_1A8, MemVar_1F920FC, var_198)
  loc_1371B61:     Proc_6_7_F25D88(var_24C, Date)
  loc_1371B93:     unk_57533F.Execute CStr(var_C0 & var_1A8 & ",'" & Year(MemVar_1F920F4) & "'," & var_24C & ",'" & CVar(MemVar_1F92078) & "')"), &HFF, 
  loc_1371BD1:     unk_57533F.CommitTrans
  loc_1371BD8:     var_8A = 0
  loc_1371BDB:   End If
  loc_1371BDB: End If
  loc_1371BDB: Exit Sub
  loc_1371BDC: ' Referenced from: 1371468
  loc_1371BE2: If (var_8A = &HFF) Then
  loc_1371BEB:   unk_57533F.RollbackTrans
  loc_1371BF0: End If
  loc_1371C06: Set var_C0 = Err()
  loc_1371C0C: Call 0.Method_arg_2C (var_90, 0, var_E8)
  loc_1371C17: MsgBox(CVar(var_90), var_C4 & CVar(var_90), var_198, var_8A, )
  loc_1371C2A: Exit Sub
End Sub

Public Sub Proc_97_26_111509C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '111509C
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Fields15
  Dim var_140 As Field20
  Dim var_144 As String
  Dim var_1C4 As Variant
  Dim var_304 As Variant
  Dim var_B4 As Variant
  loc_1114DBC: On Error Goto loc_111504D
  loc_1114DC8: unk_57533F.BeginTrans var_94
  loc_1114DCF: var_8A = &HFF
  loc_1114DE2: var_B4 = Ucase(arg_10)
  loc_1114DEA: var_D4 = "SELECT COUNT(*) FROM ItemCatMast WHERE UPPER(NAME)='" & var_B4 
  loc_1114E21: var_C4 = 0
  loc_1114E40: unk_57533F.Execute CStr(var_D4 & "' AND LEFT(CODE,2)='" & CVar(MemVar_1F92078) & "'"), var_B4, -1
  loc_1114E48: var_138 = var_138.Fields
  loc_1114E50: var_C4 = var_13C.Item(var_13C)
  loc_1114E58: var_140 = var_140.Value
  loc_1114E78: If (var_D4 <= 0) Then
  loc_1114E82:   var_144 = "Item Category Name :----->" & arg_10
  loc_1114E8F:   Me.Text1.Text = var_144
  loc_1114E9E:   Set var_138 = Me.Text1
  loc_1114EA4:   var_138.Refresh
  loc_1114EC0:   var_144 = "Insert Into ItemCatMast (Code,Name,RoundOff,AcName,OutletYN,U_Name,U_EntDt,U_AE,Flag,CatType,RestCode,DrCr,RevCode,TaxStru,sITE_cODE,LOGSITE_CODE) VALUES ('" & arg_C
  loc_1114EFF:   var_F4 = CVar(var_144 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','Analysis',") 'String
  loc_1114F10:   Proc_6_7_F25D88(var_D4, Now, var_F4, var_348)
  loc_1114F18:   var_114 = -1 & var_D4 
  loc_1114F51:   var_1C4 = var_D4 & "' AND LEFT(CODE,2)='" & CVar(MemVar_1F92078) & ",'A','" & CVar(arg_20) & "','" & CVar(arg_24) & "','" & CVar(arg_28) 
  loc_1114FB0:   var_304 = var_1C4 & "','" & CVar(arg_2C) & "','" & CVar(arg_30) & "','" & CVar(arg_34) & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F92078) 
  loc_1114FC7:   unk_57533F.Execute CStr(var_304 & "')"), var_138, var_D4
  loc_1115015: End If
  loc_111501B: unk_57533F.CommitTrans
  loc_1115022: var_8A = 0
  loc_1115032: Me.Text1.Text = vbNullString
  loc_1115044: Me.Text1.Refresh
  loc_111504C: Exit Sub
  loc_111504D: ' Referenced from: 1114DBC
  loc_1115053: If (var_8A = &HFF) Then
  loc_111505C:   unk_57533F.RollbackTrans
  loc_1115061: End If
  loc_1115077: Set var_138 = Err()
  loc_111507D: Call 0.Method_arg_2C (var_144, 0, var_D4, var_F4)
  loc_1115088: MsgBox(CVar(var_144), var_D4 & "' AND LEFT(CODE,2)='" & CVar(MemVar_1F92078), var_8A, var_8A, )
  loc_111509B: Exit Sub
End Sub

Public Sub Proc_97_27_10E7454(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '10E7454
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_248 As Variant
  Dim var_B4 As Variant
  loc_10E7198: On Error Goto loc_10E7405
  loc_10E71A4: unk_57533F.BeginTrans var_94
  loc_10E71AB: var_8A = &HFF
  loc_10E71BE: var_B4 = Ucase(arg_C)
  loc_10E71C6: var_D4 = "SELECT COUNT(*) FROM TaxStru WHERE CODE='" & var_B4 
  loc_10E7214: var_C4 = 0
  loc_10E7233: unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_B4, -1
  loc_10E723B: var_178 = var_178.Fields
  loc_10E7243: var_C4 = var_17C.Item(var_17C)
  loc_10E724B: var_180 = var_180.Value
  loc_10E726B: If (var_D4 <= 0) Then
  loc_10E7275:   var_184 = "Tax Structure Name :----->" & arg_10
  loc_10E7282:   Me.Text1.Text = var_184
  loc_10E7297:   Me.Text1.Refresh
  loc_10E72AD:   Proc_6_7_F25D88(var_D4, Now)
  loc_10E72C6:   var_184 = "Insert Into TaxStru (Code,Name,Sno,TaxCode,Nature,U_Name,U_EntDt,U_AE,Rate,Limit,Site_Code,CondApp,LogSite_Code) VALUES ('" & arg_C
  loc_10E730B:   var_F4 = CVar(var_184 & "','" & arg_10 & "'," & CStr(arg_14) & ",'" & arg_18 & "','" & arg_1C & "','Analysis',") 'String
  loc_10E7311:   var_114 = var_F4 & var_D4 
  loc_10E7372:   var_248 = var_114 & ",'A'," & CVar(arg_20) & ",'" & CVar(arg_24) & "','" & CVar(MemVar_1F92078) & "','" & CVar(arg_28) & "','" & CVar(MemVar_1F92078) 
  loc_10E7389:   unk_57533F.Execute CStr(var_248 & "')"), var_28C, -1
  loc_10E73CD: End If
  loc_10E73D3: unk_57533F.CommitTrans
  loc_10E73DA: var_8A = 0
  loc_10E73EA: Me.Text1.Text = vbNullString
  loc_10E73FC: Me.Text1.Refresh
  loc_10E7404: Exit Sub
  loc_10E7405: ' Referenced from: 10E7198
  loc_10E740B: If (var_8A = &HFF) Then
  loc_10E7414:   unk_57533F.RollbackTrans
  loc_10E7419: End If
  loc_10E7435: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4, var_114)
  loc_10E7440: MsgBox(CVar(var_184), var_8A, Err(), var_D4, var_8A)
  loc_10E7453: Exit Sub
End Sub

Public Sub Proc_97_28_1016378(arg_C) '1016378
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_F8 As Variant
  Dim var_FC As Fields15
  Dim var_100 As Field20
  Dim var_104 As String
  Dim var_114 As Variant
  Dim var_B4 As Variant
  loc_1016180: On Error Goto loc_1016328
  loc_101618C: unk_57533F.BeginTrans var_94
  loc_1016193: var_8A = &HFF
  loc_10161A6: var_B4 = Ucase(arg_C)
  loc_10161AE: var_D4 = "SELECT COUNT(*) FROM UnitMast WHERE UPPER(NAME)='" & var_B4 
  loc_10161CE: var_C4 = 0
  loc_10161ED: unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='HO' AND LOGSITE_CODE='HO'"), var_B4, -1
  loc_10161F5: var_F8 = var_F8.Fields
  loc_10161FD: var_C4 = var_FC.Item(var_FC)
  loc_1016205: var_100 = var_100.Value
  loc_1016225: If (var_D4 <= 0) Then
  loc_101622F:   var_104 = "Unit Name :----->" & arg_C
  loc_101623C:   Me.Text1.Text = var_104
  loc_101624B:   Set var_F8 = Me.Text1
  loc_1016251:   var_F8.Refresh
  loc_101626D:   var_104 = "Insert Into UnitMast (Name,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) VALUES ('" & arg_C
  loc_1016274:   var_F4 = CVar(var_104 & "','Analysis',") 'String
  loc_1016285:   Proc_6_7_F25D88(var_D4, Now, var_F4, var_1A8)
  loc_101628D:   var_114 = -1 & var_D4 
  loc_10162CA:   unk_57533F.Execute CStr(var_114 & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_F8, var_D4
  loc_10162F0: End If
  loc_10162F6: unk_57533F.CommitTrans
  loc_10162FD: var_8A = 0
  loc_101630D: Me.Text1.Text = vbNullString
  loc_101631F: Me.Text1.Refresh
  loc_1016327: Exit Sub
  loc_1016328: ' Referenced from: 1016180
  loc_101632E: If (var_8A = &HFF) Then
  loc_1016337:   unk_57533F.RollbackTrans
  loc_101633C: End If
  loc_1016352: Set var_F8 = Err()
  loc_1016358: Call 0.Method_arg_2C (var_104, 0, var_D4, var_F4)
  loc_1016363: MsgBox(CVar(var_104), var_114, var_8A, var_8A, )
  loc_1016376: Exit Sub
End Sub

Public Sub Proc_97_29_1095410(arg_C, arg_10, arg_14, arg_18, arg_1C) '1095410
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_1C4 As Variant
  Dim var_B4 As Variant
  loc_10951A0: On Error Goto loc_10953BE
  loc_10951AC: unk_57533F.BeginTrans var_94
  loc_10951B3: var_8A = &HFF
  loc_10951C6: var_B4 = Ucase(arg_10)
  loc_10951CE: var_D4 = "SELECT COUNT(*) FROM SundryMast WHERE UPPER(NAME)='" & var_B4 
  loc_109521C: var_C4 = 0
  loc_109523B: unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_B4, -1
  loc_1095243: var_178 = var_178.Fields
  loc_109524B: var_C4 = var_17C.Item(var_17C)
  loc_1095253: var_180 = var_180.Value
  loc_1095273: If (var_D4 <= 0) Then
  loc_109527D:   var_184 = "Sundry Master Name :----->" & arg_10
  loc_109528A:   Me.Text1.Text = var_184
  loc_1095299:   Set var_178 = Me.Text1
  loc_109529F:   var_178.Refresh
  loc_10952BB:   var_184 = "Insert Into SundryMast (Code,Name,Nature,CalcSign,SysYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) VALUES ('" & arg_C
  loc_10952FA:   var_F4 = CVar(var_184 & "','" & arg_10 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','Analysis',") 'String
  loc_109530B:   Proc_6_7_F25D88(var_D4, Now, var_F4, var_1D8)
  loc_1095313:   var_114 = -1 & var_D4 
  loc_1095342:   var_1C4 = var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & ",'A','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1095350:   unk_57533F.Execute CStr(var_1C4), var_178, var_D4
  loc_1095386: End If
  loc_109538C: unk_57533F.CommitTrans
  loc_1095393: var_8A = 0
  loc_10953A3: Me.Text1.Text = vbNullString
  loc_10953B5: Me.Text1.Refresh
  loc_10953BD: Exit Sub
  loc_10953BE: ' Referenced from: 10951A0
  loc_10953C4: If (var_8A = &HFF) Then
  loc_10953CD:   unk_57533F.RollbackTrans
  loc_10953D2: End If
  loc_10953E8: Set var_178 = Err()
  loc_10953EE: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4)
  loc_10953F9: MsgBox(CVar(var_184), var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078), var_8A, var_8A, )
  loc_109540C: Exit Sub
End Sub

Public Sub Proc_97_30_1102B9C(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30) '1102B9C
  'Data Table: 575310
  Dim unk_57533F As Connection15
  Dim var_8A As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_17C As Fields15
  Dim var_180 As Field20
  Dim var_184 As String
  Dim var_1C0 As String
  Dim var_B4 As Variant
  loc_11028D0: On Error Goto loc_1102B4A
  loc_11028DC: unk_57533F.BeginTrans var_94
  loc_11028E3: var_8A = &HFF
  loc_11028F6: var_B4 = Ucase(arg_C)
  loc_11028FE: var_D4 = "SELECT COUNT(*) FROM SundryTypeFix WHERE UPPER(SundryCode)='" & var_B4 
  loc_110294C: var_C4 = 0
  loc_110296B: unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_B4, -1
  loc_1102973: var_178 = var_178.Fields
  loc_110297B: var_C4 = var_17C.Item(var_17C)
  loc_1102983: var_180 = var_180.Value
  loc_11029A3: If (var_D4 <= 0) Then
  loc_11029AD:   var_184 = "Sundry Code :----->" & arg_C
  loc_11029BA:   Me.Text1.Text = var_184
  loc_11029C9:   Set var_178 = Me.Text1
  loc_11029CF:   var_178.Refresh
  loc_11029EB:   var_184 = "Insert Into SundryTypeFix (SundryCode,SNo,DispName,CalcFormula,PerOrAmt,RoundOff,Nature,CalcSign,SysYN,Grp,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & arg_C
  loc_1102A52:   var_1C0 = var_184 & "'," & CStr(arg_10) & ",'" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','" & arg_20 & "','" & arg_24 & "','" & arg_28
  loc_1102A83:   var_F4 = CVar(var_1C0 & "','" & arg_2C & "','" & arg_30 & "','" & MemVar_1F92078 & "',") 'String
  loc_1102A94:   Proc_6_7_F25D88(var_D4, Date, var_F4, var_1EC)
  loc_1102A9C:   var_114 = -1 & var_D4 
  loc_1102AC6:   unk_57533F.Execute CStr(var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & ",'A','" & CVar(MemVar_1F92078) & "')"), var_178, var_D4
  loc_1102B12: End If
  loc_1102B18: unk_57533F.CommitTrans
  loc_1102B1F: var_8A = 0
  loc_1102B2F: Me.Text1.Text = vbNullString
  loc_1102B41: Me.Text1.Refresh
  loc_1102B49: Exit Sub
  loc_1102B4A: ' Referenced from: 11028D0
  loc_1102B50: If (var_8A = &HFF) Then
  loc_1102B59:   unk_57533F.RollbackTrans
  loc_1102B5E: End If
  loc_1102B74: Set var_178 = Err()
  loc_1102B7A: Call 0.Method_arg_2C (var_184, 0, var_D4, var_F4)
  loc_1102B85: MsgBox(CVar(var_184), var_D4 & "' AND SITE_CODE='" & CVar(MemVar_1F92078), var_8A, var_8A, )
  loc_1102B98: Exit Sub
End Sub
