VERSION 5.00
Begin VB.Form fdPostChrg
  Caption = "Post Charges /Payments"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdPostChrg.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6330
  ClientHeight = 3195
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 6330
    Height = 450
    Visible = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 1
    Left = 6435
    Top = 45
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
    ForeColor = &HC00000&
    Left = 4155
    Top = 1365
    Width = 1425
    Height = 255
    TabIndex = 2
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
  Begin CommandButton Cmdz
    Caption = "Exit"
    Index = 0
    Left = 4680
    Top = 2700
    Width = 1725
    Height = 750
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &H8000000F&
  End
  Begin CommandButton Cmdz
    Caption = "Post Charges"
    Index = 1
    Left = 2955
    Top = 2700
    Width = 1725
    Height = 750
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
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &H8000000F&
  End
  Begin BtnEnh CmdExit
    Left = 5400
    Top = 4065
    Width = 1680
    Height = 840
    TabIndex = 6
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 2565
    Top = 4080
    Width = 1680
    Height = 840
    TabIndex = 7
  End
  Begin Label lblDisplay
    Caption = "."
    ForeColor = &HC0&
    Left = 1740
    Top = 2040
    Width = 8550
    Height = 615
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date For"
    Index = 2
    ForeColor = &HC00000&
    Left = 3075
    Top = 1365
    Width = 810
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "fdPostChrg"

Private MasterFormExit As Integer

Private Sub TopCtrl1_UnknownEvent_16 '1757828
  'Data Table: 42F7F4
  Dim var_A8 As String
  Dim var_AC As String
  Dim unk_42F80C As Connection15
  Dim var_BC As String
  Dim var_D0 As Variant
  Dim var_D4 As Variant
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_154 As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_F4 As Variant
  Dim var_158 As Variant
  Dim var_15C As Field20
  Dim var_210 As Fields15
  Dim var_218 As Field20
  Dim var_17C As Variant
  Dim var_20C As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_90 As Recordset15
  Dim var_280 As Variant
  Dim var_298 As Variant
  Dim var_2AC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_300 As Fields15
  Dim var_314 As Field20
  Dim var_334 As Variant
  Dim var_354 As Variant
  Dim var_374 As Variant
  Dim var_394 As Variant
  Dim var_3EC As Variant
  Dim var_A0 As Recordset15
  Dim var_2BC As Variant
  Dim var_410 As Fields15
  Dim var_414 As Field20
  Dim var_40C As Variant
  Dim var_424 As Variant
  Dim var_448 As Fields15
  Dim var_4F4 As Variant
  Dim var_5E4 As Variant
  Dim var_21C As Fields15
  Dim var_284 As Fields15
  Dim var_8C As Recordset15
  Dim var_61C As String
  Dim var_94 As Recordset15
  Dim var_220 As Field20
  Dim var_29C As Field20
  loc_1755BDC: On Error Goto loc_17577EB
  loc_1755C03: unk_42F80C.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_CC, -1
  loc_1755C0E: Set var_98 = var_D0
  loc_1755C3B: var_D4 = Me.Recordset15.Fields.Item("RoomChrgPostingType")
  loc_1755C5D: If (var_D4.Value = "While Printing Bill") Then
  loc_1755C60:   Exit Sub
  loc_1755C61: End If
  loc_1755C6E: var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP],GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1755C84: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC, var_20C)
  loc_1755C93: Proc_6_7_F25D88(var_F4, CVar(var_D4), -1)
  loc_1755CB7: var_154 = var_210 & var_F4 & " >=chkindate and ChkOutDate is Null  AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=" 
  loc_1755CC6: Set var_158 = Me.Txt
  loc_1755CCC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C)
  loc_1755CDB: Proc_6_7_F25D88(var_17C, CVar(var_15C))
  loc_1755CF6: var_1CC = var_154 & var_17C & " AND SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_1755D0D: unk_42F80C.Execute CStr(var_1CC & "')"), Me.Txt, 
  loc_1755D18: Set var_8C = var_210
  loc_1755D4B: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1755D50: ' Referenced from: 1756EEB
  loc_1755D62: If Not(Me.Recordset15.EOF) Then
  loc_1755DA9:   Me.lblDisplay.Caption = CStr("Posting Charges For Room : " & Me.Recordset15.Fields.Item("RoomNo").Value)
  loc_1755DCB:   Me.lblDisplay.Refresh
  loc_1755E12:   If CBool(Me.Recordset15.Fields.Item("mFolioNoDocid").Value <> vbNullString) Then
  loc_1755E5D:     var_104 = "Select * from Paycharge where (FolionoDocid='" & Me.Recordset15.Fields.Item("mFolioNoDocid").Value & "' OR FolioNODocid='" 
  loc_1755EB8:     var_218 = Me.Recordset15.Fields.Item("RoomNo")
  loc_1755EE0:     Set var_21C = Me.Txt
  loc_1755EE6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220, var_104 & Me.Recordset15.Fields.Item("DocID").Value & "') and VTYPE='RC' AND RoomNo='" & var_218.Value & "' and VDATE=")
  loc_1755EF5:     Proc_6_7_F25D88(var_1CC, CVar(var_220), var_280)
  loc_1755EFD:     var_1EC = -1 & var_1CC 
  loc_1755F19:     var_260 = var_1CC & "')" & " AND SITE_CODE='" & CVar(MemVar_1F92070) & "'" 
  loc_1755F27:     unk_42F80C.Execute CStr(var_260), var_284, 
  loc_1755F82:     If (var_284.RecordCount = 0) Then
  loc_1755FA2:       var_D4 = Me.Recordset15.Fields.Item("mFolioNo")
  loc_1755FAA:       var_F4 = var_D4.Value
  loc_1755FF3:       If (var_F4 = Me.Recordset15.Fields.Item("FolioNo").Value) Then
  loc_1756003:         var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756013:         Set var_D0 = Me.Txt
  loc_1756019:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1756028:         Proc_6_7_F25D88(var_F4, CVar(var_D4), var_40C)
  loc_1756030:         var_104 = -1 & var_F4 
  loc_175607D:         var_17C = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_1756095:         Set var_210 = Me.Txt
  loc_175609B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_17560AA:         Proc_6_7_F25D88(var_1CC, CVar(var_218))
  loc_17560BB:         var_20C = var_17C & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_17560CA:         Set var_21C = Me.Txt
  loc_17560D0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_17560D8:         var_240 = CVar(var_220) 'Address
  loc_17560DF:         Proc_6_7_F25D88(var_260, var_240)
  loc_17560FF:         Set var_284 = Me.Txt
  loc_1756105:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_175610D:         var_2AC = CVar(var_29C) 'Address
  loc_1756114:         Proc_6_7_F25D88(var_2BC, var_2AC)
  loc_175612F:         var_2EC = var_20C & var_260 & ">=chkindate and ChngDate<=" & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_1756159:         var_314 = Me.Txt.Fields.Item("DocID")
  loc_175617C:         var_374 = var_2EC & "' AND ROOMOCC.DOCID='" & var_314.Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_17561CD:         unk_42F80C.Execute CStr(var_374 & "' AND ROOMOCC.DOCID='" & Me.Recordset15.Fields.Item("DocID").Value & "')"), var_410, 
  loc_17561D8:         Set var_A0 = var_410
  loc_1756247:         var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756257:         Set var_D0 = Me.Txt
  loc_175625D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_175626C:         Proc_6_7_F25D88(var_F4, CVar(var_D4), var_604)
  loc_1756274:         var_104 = -1 & var_F4 
  loc_17562BE:         var_17C = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" & var_A0.Fields.Item("DocID").Value 
  loc_17562E5:         var_218 = var_A0.Fields.Item("RoomNo")
  loc_17562F5:         var_1CC = var_17C & "' and ROOMOCC.ROOMNO='" & var_218.Value 
  loc_175630D:         Set var_21C = Me.Txt
  loc_1756313:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_1756322:         Proc_6_7_F25D88(var_240, CVar(var_220))
  loc_175632A:         var_260 = var_1CC & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_240 
  loc_1756342:         Set var_284 = Me.Txt
  loc_1756348:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_1756357:         Proc_6_7_F25D88(var_2AC, CVar(var_29C))
  loc_175635F:         var_2BC = var_260 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_2AC 
  loc_1756377:         Set var_300 = Me.Txt
  loc_175637D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_314)
  loc_175638C:         Proc_6_7_F25D88(var_2EC, CVar(var_314))
  loc_17563B0:         var_354 = var_2BC & ">=chkindate and ChngDate<=" & var_2EC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" 
  loc_1756405:         var_414 = var_A0.Fields.Item("RoomNo")
  loc_175641E:         var_40C = var_354 & var_A0.Fields.Item("DocID").Value & "' and ROOMOCC.ROOMNO='" & var_414.Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" 
  loc_1756428:         var_424 = var_40C & CVar(MemVar_1F92070) 
  loc_1756447:         var_448 = var_A0.Fields
  loc_175648E:         var_4C4 = var_A0.Fields.Item("RoomNo").Value
  loc_175649F:         var_4F4 = var_424 & "' AND ROOMOCC.DOCID='" & var_448.Item("DocID").Value & "' and ROOMOCC.ROOMNO='" & var_4C4 & "') AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' And ROOMNO='" 
  loc_17564E5:         Set var_550 = Me.Txt
  loc_17564EB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_554)
  loc_17564FA:         Proc_6_7_F25D88(var_574, CVar(var_554))
  loc_175651E:         var_5E4 = var_4F4 & var_A0.Fields.Item("RoomNo").Value & "' AND VDATE=" & var_574 & " AND SITE_CODE='" & CVar(MemVar_1F92070) & "')" 
  loc_175652C:         unk_42F80C.Execute CStr(var_5E4), var_608, 
  loc_1756537:         Set var_88 = var_608
  loc_17565D2:       Else
  loc_17565DF:         var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_17565EF:         Set var_D0 = Me.Txt
  loc_17565F5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1756604:         Proc_6_7_F25D88(var_F4, CVar(var_D4), var_4C4)
  loc_175660C:         var_104 = -1 & var_F4 
  loc_1756659:         var_17C = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_1756671:         Set var_210 = Me.Txt
  loc_1756677:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_1756686:         Proc_6_7_F25D88(var_1CC, CVar(var_218))
  loc_1756697:         var_20C = var_17C & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_17566A6:         Set var_21C = Me.Txt
  loc_17566AC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_17566BB:         Proc_6_7_F25D88(var_260, CVar(var_220))
  loc_17566DB:         Set var_284 = Me.Txt
  loc_17566E1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_17566F0:         Proc_6_7_F25D88(var_2BC, CVar(var_29C))
  loc_1756714:         var_2FC = var_20C & var_260 & ">=chkindate and ChngDate<=" & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DocID='" 
  loc_1756758:         var_374 = var_2FC & Me.Txt.Fields.Item("DocID").Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_175679B:         var_3EC = var_374 & "' AND ROOMOCC.DOCID='" & Me.Recordset15.Fields.Item("DocID").Value & "') AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=" 
  loc_17567AA:         Set var_410 = Me.Txt
  loc_17567B0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_414)
  loc_17567BF:         Proc_6_7_F25D88(var_424, CVar(var_414))
  loc_17567F1:         unk_42F80C.Execute CStr(var_3EC & var_424 & " AND SITE_CODE='" & CVar(MemVar_1F92070) & "')"), var_448, 
  loc_17567FC:         Set var_88 = var_448
  loc_175686C:       End If
  loc_175686F:     Else
  loc_1756872:     Else
  loc_1756875:     Else
  loc_1756882:       var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP] ,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756892:       Set var_D0 = Me.Txt
  loc_1756898:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_17568A7:       Proc_6_7_F25D88(var_F4, CVar(var_D4), var_4C4)
  loc_17568AF:       var_104 = -1 & var_F4 
  loc_17568B8:       var_114 = var_104 & " >=chkindate AND ROOMOCC.SITE_CODE='" 
  loc_1756905:       var_18C = var_114 & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " 
  loc_1756914:       Set var_210 = Me.Txt
  loc_175691A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_1756929:       Proc_6_7_F25D88(var_1CC, CVar(var_218))
  loc_1756949:       Set var_21C = Me.Txt
  loc_175694F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_175695E:       Proc_6_7_F25D88(var_260, CVar(var_220))
  loc_175696F:       var_298 = var_18C & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_260 & ">=chkindate and ChngDate<=" 
  loc_175697E:       Set var_284 = Me.Txt
  loc_1756984:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_1756993:       Proc_6_7_F25D88(var_2BC, CVar(var_29C))
  loc_17569E8:       var_334 = var_298 & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_1756A04:       var_394 = var_334 & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" 
  loc_1756A3E:       var_3EC = var_394 & Me.Recordset15.Fields.Item("DocID").Value & "') AND ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=" 
  loc_1756A4D:       Set var_410 = Me.Txt
  loc_1756A53:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_414)
  loc_1756A5B:       var_40C = CVar(var_414) 'Address
  loc_1756A62:       Proc_6_7_F25D88(var_424, var_40C)
  loc_1756A94:       unk_42F80C.Execute CStr(var_3EC & var_424 & " AND SITE_CODE='" & CVar(MemVar_1F92070) & "')"), var_448, 
  loc_1756A9F:       Set var_88 = var_448
  loc_1756B0F:     End If
  loc_1756B26:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1756B6E:       var_158 = Me.Recordset15.Fields
  loc_1756BA5:       If ((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CheckOut"))) = "Other") And (Proc_6_38_E68A98(CVar(var_158.Item("RoomRentBefChkOut"))) = "Yes")) Then
  loc_1756BD7:         var_D4 = Me.Recordset15.Fields.Item("DocID")
  loc_1756BF4:         var_A8 = CStr("Select * from RoomOcc Where DocId='" & var_D4.Value & "' And SNo=1")
  loc_1756BFE:         unk_42F80C.Execute var_A8, var_114, -1
  loc_1756C09:         Set var_90 = var_158
  loc_1756C32:         var_158 = var_90.Fields
  loc_1756C68:         var_218 = Me.Recordset15.Fields.Item("CheckoutVar")
  loc_1756C70:         var_F4 = CVar(var_218) 'Address
  loc_1756CB9:         var_220 = Me.Recordset15.Fields.Item("VariationBefore")
  loc_1756CE5:         var_16C = CVar(Proc_6_38_E68A98(CVar(var_220), 1)) 'String
  loc_1756D07:         var_29C = var_90.Fields.Item("ChkInTime")
  loc_1756D33:         var_1CC = CVar(Proc_6_38_E68A98(CVar(var_29C), 1, 1)) 'String
  loc_1756D52:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_A8, 1)
  loc_1756D5A:         1 = var_D4.Text
  loc_1756D7F:         Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_F4)), "hh:nn")), CDate(Format(var_16C, "hh:nn")), (CDate(var_A8) = CDate(Proc_6_38_E68A98(CVar(var_158.Item("ChkInDate"))))))
  loc_1756DCC:         If (var_158 And (1 > CDate(Format(var_1CC, "hh:nn")))) Then
  loc_1756DF7:           unk_42F80C.Execute CStr(Me.Recordset15.Source), var_F4, -1
  loc_1756E20:           Set var_D0 = Me.Txt
  loc_1756E26:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4)
  loc_1756E2E:           var_A8 = var_D4.Text
  loc_1756E38:           var_620 = 0
  loc_1756E43:           var_61C = 0
  loc_1756E60:           Proc_96_4_1C1BDCC(CDate(var_A8), Me.Txt, 0)
  loc_1756E77:         End If
  loc_1756E77:       End If
  loc_1756E85:       Set var_D0 = Me.Txt
  loc_1756E8B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_A8)
  loc_1756E93:       var_61C = var_D4.Text
  loc_1756E9D:       var_620 = 0
  loc_1756EC9:       Proc_96_4_1C1BDCC(CDate(var_A8), var_88, 0, 0)
  loc_1756EE0:     End If
  loc_1756EE0:   End If
  loc_1756EE6:   var_8C.MoveNext
  loc_1756EEB:   GoTo loc_1755D50
  loc_1756EEE: End If
  loc_1756EFB: var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP],GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid   FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756F11: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC, var_16C, -1)
  loc_1756F20: Proc_6_7_F25D88(var_F4, CVar(var_D4), var_158)
  loc_1756F52: unk_42F80C.Execute CStr(var_620 & var_F4 & " >=chkindate and ChkOutDate is Null  AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "'"), var_620, Me.Txt
  loc_1756F5D: Set var_8C = var_158
  loc_1756F7B: ' Referenced from: 175777C
  loc_1756F8D: If Not(Me.Recordset15.EOF) Then
  loc_1756F9D:   var_BC = "SELECT ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP],GUESTFOLIO.GuestProf As GuestCode,GUESTFOLIO.Mfoliono,GUESTFOLIO.MfolionoDocid  FROM ((ROOMOCC LEFT JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) LEFT JOIN RevMast ON RoomCat.RevCode = RevMast.Code) LEFT JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_1756FAD:   Set var_D0 = Me.Txt
  loc_1756FB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_BC)
  loc_1756FC2:   Proc_6_7_F25D88(var_F4, CVar(var_D4), var_40C)
  loc_1756FCA:   var_104 = -1 & var_F4 
  loc_1757017:   var_17C = var_620 & var_F4 & " >=chkindate AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" & Me.Txt.Fields.Item("DocID").Value 
  loc_175702F:   Set var_210 = Me.Txt
  loc_1757035:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_218)
  loc_1757044:   Proc_6_7_F25D88(var_1CC, CVar(var_218))
  loc_1757055:   var_20C = var_17C & "' And RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_1CC & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_1757064:   Set var_21C = Me.Txt
  loc_175706A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_220)
  loc_1757079:   Proc_6_7_F25D88(var_260, CVar(var_220))
  loc_1757099:   Set var_284 = Me.Txt
  loc_175709F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_29C)
  loc_17570AE:   Proc_6_7_F25D88(var_2BC, CVar(var_29C))
  loc_17570D2:   var_2FC = var_20C & var_260 & ">=chkindate and ChngDate<=" & var_2BC & " AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND ROOMOCC.DOCID='" 
  loc_1757116:   var_374 = var_2FC & Me.Txt.Fields.Item("DocID").Value & "' Order By ChngDate Desc, Sno Desc) AND ROOMOCC.SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_1757167:   unk_42F80C.Execute CStr(var_374 & "' AND ROOMOCC.DOCID='" & Me.Recordset15.Fields.Item("DocID").Value & "')"), var_410, 
  loc_1757172:   Set var_88 = var_410
  loc_17571EB:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1757237:     var_158 = Me.Recordset15.Fields
  loc_1757247:     var_F4 = CVar(var_158.Item("PLANAmt")) 'Address
  loc_175724E:     Proc_6_39_E7C810(var_620 & var_F4, var_F4)
  loc_175727B:     If CBool((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PlanCode"))) <> vbNullString) And (var_620 & var_F4 <> 0)) Then
  loc_17572A8:       var_D4 = Me.Recordset15.Fields.Item("PlanCode")
  loc_17572BD:       var_AC = -1 & Proc_6_38_E68A98(CVar(var_D4), "Select PLan_Package from PlanMast where Code='", var_F4)
  loc_17572CD:       unk_42F80C.Execute 0 & "'", var_158, 
  loc_17572D8:       Set var_94 = var_158
  loc_1757306:       If (var_94.RecordCount > 0) Then
  loc_1757317:         Set var_D0 = Me.Txt
  loc_175731D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4)
  loc_1757325:         var_A8 = var_D4.Text
  loc_175734C:         var_CC = CVar(Me.Recordset15.Fields.Item("mFolioNo")) 'Address
  loc_1757353:         Proc_6_39_E7C810(var_F4)
  loc_1757404:         var_18C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_175742E:         var_1AC = Me.Recordset15.Fields.Item("GuestCode").Value
  loc_1757458:         var_1CC = Me.Recordset15.Fields.Item("DocID").Value
  loc_175747F:         var_154 = CVar(Me.Recordset15.Fields.Item("mFolioNoDocid")) 'Address
  loc_17574CD:         Proc_96_23_1C33AEC(CDate(var_A8), CLng(var_F4), CLng(Me.Recordset15.Fields.Item("FolioNo").Value), CStr(Me.Recordset15.Fields.Item("PlanCode").Value), CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("PLan_Package")))))))
  loc_175751D:       End If
  loc_175751D:     End If
  loc_175752F:     var_D0 = Me.Recordset15.Fields
  loc_1757537:     var_D4 = var_D0.Item("ExtraBed")
  loc_175753F:     var_CC = CVar(var_D4) 'Address
  loc_1757546:     Proc_6_39_E7C810(var_F4, var_CC, CStr(var_18C), CStr(var_1AC))
  loc_1757560:     If CBool(var_F4 <> 0) Then
  loc_1757579:       unk_42F80C.Execute "Select Name from RevMast where ShortName='EXTB'", var_CC, -1
  loc_17575A1:       If (var_D0.RecordCount > 0) Then
  loc_17575B8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D4, var_A8, Me.Txt)
  loc_17575C0:         CStr(var_1CC) = var_D4.Text
  loc_17575EE:         Proc_6_39_E7C810(var_F4, CVar(Me.Recordset15.Fields.Item("mFolioNo")))
  loc_1757618:         var_114 = Me.Recordset15.Fields.Item("FolioNo").Value
  loc_175766C:         var_154 = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_1757696:         var_16C = Me.Recordset15.Fields.Item("GuestCode").Value
  loc_17576C0:         var_17C = Me.Recordset15.Fields.Item("DocID").Value
  loc_17576E7:         var_104 = CVar(Me.Recordset15.Fields.Item("mFolioNoDocid")) 'Address
  loc_175772D:         Proc_96_24_174E2BC(CDate(var_A8), CLng(var_F4), CLng(var_114), CSng(Me.Recordset15.Fields.Item("ExtraBed").Value), CStr(var_154))
  loc_1757771:       End If
  loc_1757771:     End If
  loc_1757771:   End If
  loc_1757777:   var_8C.MoveNext
  loc_175777C:   GoTo loc_1756F7B
  loc_175777F: End If
  loc_175778C: Me.lblDisplay.Caption = "Posting Room Charges Completed"
  loc_175779E: Me.lblDisplay.Refresh
  loc_17577AB: Set var_A4 = Nothing
  loc_17577B3: Set var_98 = Nothing
  loc_17577BB: Set var_88 = Nothing
  loc_17577C3: Set var_8C = Nothing
  loc_17577CB: Set var_90 = Nothing
  loc_17577D3: Set var_94 = Nothing
  loc_17577DB: Set var_A0 = Nothing
  loc_17577E5: Call 0.Method_arg_A4 (CInt(0), CStr(var_16C), CStr(var_17C))
  loc_17577EA: Exit Sub
  loc_17577EB: ' Referenced from: 1755BDC
  loc_17577F3: Set var_D0 = Err()
  loc_17577F9: Call 0.Method_arg_2C (var_A8, Proc_6_38_E68A98(var_104, Proc_6_38_E68A98(var_154)))
  loc_1757812: MsgBox(CVar(var_A8), &H10, var_F4, var_104, var_114)
  loc_1757825: Exit Sub
End Sub

Public Sub Cmd_UnknownEvent_9(Index As Integer) 'EB16D4
  'Data Table: 42F7F4
  Dim var_86 As Integer
  loc_EB164F: var_86 = Index
  loc_EB1658: If (var_86 = 0) Then
  loc_EB1668:   Me.Global.Unload Me
  loc_EB1673: Else
  loc_EB1679:   If (var_86 = 1) Then
  loc_EB167F:     Call Proc_62_23_10A7834(var_8E)
  loc_EB168A:     If (var_8E = 0) Then
  loc_EB16AC:       MsgBox(CVar("There is some unsettled guest bill," & vbCrLf & "First Settle it then Process this operation"), 0, var_C4, var_E4, var_104)
  loc_EB16BF:       Exit Sub
  loc_EB16C0:     End If
  loc_EB16C0:     Call TopCtrl1_UnknownEvent_16()
  loc_EB16CC:     Call 0.Method_arg_A4 (CInt(0))
  loc_EB16D1:   End If
  loc_EB16D1: End If
  loc_EB16D1: Exit Sub
End Sub

Private Sub Form_Load() 'E64CC4
  'Data Table: 42F7F4
  Dim var_8C As TextBox
  loc_E64C7C: On Error Goto loc_E64CBC
  loc_E64C86: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E64C9E: Set var_88 = Me.Txt
  loc_E64CA4: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_E64CAC: var_8C.Text = CStr(MemVar_1F920EC)
  loc_E64CBB: Exit Sub
  loc_E64CBC: ' Referenced from: E64C7C
  loc_E64CBC: Proc_6_60_E62BC4()
  loc_E64CC1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E01CAC
  'Data Table: 42F7F4
  loc_E01CA5: MasterFormExit = 0
  loc_E01CA8: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26254
  'Data Table: 42F7F4
  loc_E26239: If (MasterFormExit = &HFF) Then
  loc_E26249:   Me.Global.Unload Me
  loc_E26251: End If
  loc_E26251: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5F738
  'Data Table: 42F7F4
  loc_E5F6EC: On Error Goto loc_E5F72F
  loc_E5F6F9: If (CLng(KeyCode) = &H1B) Then
  loc_E5F709:   Me.Global.Unload Me
  loc_E5F711:   Exit Sub
  loc_E5F712: End If
  loc_E5F726: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E5F72E: Exit Sub
  loc_E5F72F: ' Referenced from: E5F6EC
  loc_E5F72F: Proc_6_60_E62BC4(Shift)
  loc_E5F734: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E152F0
  'Data Table: 42F7F4
  loc_E152E5: Me.Global.Unload Me
  loc_E152ED: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EC966C
  'Data Table: 42F7F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC95D2: Set var_88 = Me.Txt
  loc_EC95D8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EC95E6: Proc_6_74_E226B0(var_8C)
  loc_EC9601: Set var_88 = Me.Txt
  loc_EC9607: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_EC960F: var_8C.SelStart = 0
  loc_EC9628: Set var_88 = Me.Txt
  loc_EC962E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_EC9649: Set var_90 = Me.Txt
  loc_EC964F: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_EC9657: var_98.SelLength = Len(var_8C.Text)
  loc_EC966A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E3E748
  'Data Table: 42F7F4
  loc_E3E71E: If (Shift = &HD) Then
  loc_E3E729:   Call Txt_Validate(KeyCode)
  loc_E3E73C:   Proc_303_0_FB9B68("	", 0)
  loc_E3E744: End If
  loc_E3E744: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47D44
  'Data Table: 42F7F4
  loc_E47D22: Set var_88 = Me.Txt
  loc_E47D28: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47D36: Proc_6_73_E22704(var_8C)
  loc_E47D42: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E9E200
  'Data Table: 42F7F4
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_E9E19E: If (Cancel = CInt(0)) Then
  loc_E9E1AE:   Set var_90 = Me.Txt
  loc_E9E1B4:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_E9E1DA:   Set var_A0 = Me.Txt
  loc_E9E1E0:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_E9E1E8:   var_A4.Text = Proc_6_34_14ECF20(var_94.Text)
  loc_E9E1FF: End If
  loc_E9E1FF: Exit Sub
End Sub

Public Function MasterFormExitGet() '42FF48
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '42FF57
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '42FF66
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '42FF75
  mVType = Value
End Sub

Public Function VnoRCGet() '42FF84
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '42FF93
  VnoRC = Value
End Sub

Public Function vPrefixGet() '42FFA2
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '42FFB1
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '42FFC0
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '42FFCF
  VprefixRC = Value
End Sub

Public Function DocIDGet() '42FFDE
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '42FFED
  DocID = Value
End Sub

Public Sub Proc_62_23_10A7834
  'Data Table: 42F7F4
  Dim var_B0 As String
  Dim var_150 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_1B0 As String
  Dim var_1D0 As String
  Dim var_240 As Variant
  Dim var_264 As String
  Dim unk_42F80C As Connection15
  Dim var_8C As Recordset15
  Dim var_288 As Fields15
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_29C As Recordset15
  Dim var_2A0 As Fields15
  Dim var_2A4 As Field20
  Dim var_86 As Integer
  loc_10A75E3: var_180 = "convert(char,RoomOcc.DepDate ,103)"
  loc_10A7603: var_190 = IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", var_180)
  loc_10A761D: var_110 = "SELECT Distinct RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot," & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_10A7631: var_1B0 = " as DepDate , GuestProf.Name AS GuestName, GuestProf.GuestStatus, SubGroup.Name AS CompanyName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono,RoomOcc.PlanCode,PlanMast.Plan_package,GuestFolio.DocId ,GuestFolio.MFolioNoDocid"
  loc_10A763A: var_1D0 = " FROM (((((RoomOcc iNNER JOIN RoomMast ON RoomMast.Code = RoomOcc.RoomNo) Left join PlanMast on RoomOcc.PlanCode=PlanMast.Code) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (ROOMOCC.LOGSITE_CODE='"
  loc_10A765C: var_240 = var_110 & " as CheckInDate ," & var_190 & var_1B0 & var_1D0 & CVar(MemVar_1F92078) & "' AND ROOMMAST.LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_10A7669: var_264 = CStr(var_240 & "') AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code")
  loc_10A7673: unk_42F80C.Execute var_264, var_284, -1
  loc_10A767E: Set var_8C = var_288
  loc_10A76AE: ' Referenced from: 10A7815
  loc_10A76BD: If Not(var_8C.EOF) Then
  loc_10A76C6:   var_150 = 0
  loc_10A770B:   var_E0 = "Select Count(*) from PayCharge where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='" & var_8C.Fields.Item("mFolioNoDocid").Value 
  loc_10A7714:   var_F0 = var_E0 & "' Or Folionodocid='" 
  loc_10A773A:   var_110 = var_8C.Fields.Item("DocID").Value
  loc_10A7742:   var_130 = var_F0 & var_110 
  loc_10A7759:   unk_42F80C.Execute CStr(var_130 & "') and Bill_No<>'' and Bill_No is Not NULL"), var_180, -1
  loc_10A7761:   var_29C = var_29C.Fields
  loc_10A7769:   var_150 = var_2A0.Item(var_2A0)
  loc_10A7771:   var_2A4 = var_2A4.Value
  loc_10A77A8:   If (var_190 > 0) Then
  loc_10A77E0:     var_B0 = "Re-Check Room No : "
  loc_10A77E8:     var_E0 = "Select Count(*) from PayCharge where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='" & var_8C.Fields.Item("SearchCode").Value 
  loc_10A77EC:     MsgBox(var_E0, &H40, var_F0, var_110, var_130)
  loc_10A7807:     var_86 = 0
  loc_10A780D:   Else
  loc_10A7810:     var_8C.MoveNext
  loc_10A7815:     GoTo loc_10A76AE
  loc_10A7818:   End If
  loc_10A781A:   var_86 = &HFF
  loc_10A781D: End If
  loc_10A7822: Set var_90 = Nothing
  loc_10A782A: Set var_8C = Nothing
  loc_10A782D: Proc_62_23_10A7834 = var_86
End Sub
