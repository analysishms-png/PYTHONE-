VERSION 5.00
Begin VB.Form frmYearEnd
  Caption = "Year End Updation"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmYearEnd.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 5130
  ClientHeight = 3810
  Begin CommandButton Command1
    Caption = "Create CSV"
    Left = 1755
    Top = 2160
    Width = 1560
    Height = 390
    Visible = 0   'False
    TabIndex = 0
  End
  Begin BtnEnh Head
    Left = 7200
    Top = 3375
    Width = 2475
    Height = 1245
    TabIndex = 2
  End
  Begin BtnEnh CmdYrUpdate
    Left = 4635
    Top = 3375
    Width = 2475
    Height = 1245
    TabIndex = 3
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 1
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

Attribute VB_Name = "frmYearEnd"


Private Sub Form_Load() 'E075C0
  'Data Table: 423F04
  loc_E075B7: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E075BC: Exit Sub
End Sub

Private Sub Form_Resize() 'E75AA8
  'Data Table: 423F04
  loc_E75A52: Call 0.Method_arg_50 (var_88)
  loc_E75A64: Me.LblFormCaption.Caption = var_88
  loc_E75A7D: Me.LblFormCaption.Left = CDbl(0)
  loc_E75A8B: Call 0.Method_arg_100 (var_90)
  loc_E75A9D: Me.LblFormCaption.Width = var_90
  loc_E75AA5: Exit Sub
  loc_E75AA6: CExtInstUnk
End Sub

Private Sub CmdYrUpdate_UnknownEvent_9 '17D98F4
  'Data Table: 423F04
  Dim var_124 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_13C As String
  Dim var_140 As String
  Dim unk_423F11 As Connection15
  Dim var_88 As Variant
  Dim var_138 As Variant
  Dim var_E4 As Variant
  Dim var_98 As Double
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_158 As Variant
  Dim var_200 As Variant
  Dim var_1B0 As Variant
  Dim var_210 As Variant
  Dim var_148 As Variant
  Dim var_8A As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_29C As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_34C As Variant
  Dim var_3B4 As Variant
  Dim var_41C As Variant
  Dim var_484 As Variant
  Dim var_4A4 As Variant
  Dim var_4A8 As Fields15
  Dim var_4CC As Variant
  Dim var_5BC As Variant
  Dim var_5E0 As Fields15
  Dim var_694 As Variant
  Dim var_958 As Fields15
  Dim var_99C As Variant
  Dim var_C94 As Variant
  Dim var_FB4 As Variant
  Dim var_B0 As Recordset15
  Dim var_FFC As Double
  Dim var_1004 As Double
  Dim var_100C As Double
  Dim var_1014 As Double
  Dim var_101C As Double
  Dim var_1024 As Double
  Dim var_1F0 As Variant
  Dim var_26C As Variant
  Dim var_3A4 As Variant
  Dim var_40C As Variant
  Dim var_4DC As Variant
  Dim var_544 As Variant
  Dim var_614 As Variant
  Dim var_664 As Variant
  Dim var_2D4 As Variant
  Dim var_474 As Variant
  Dim var_B4 As Recordset15
  Dim var_33C As Variant
  loc_17D7B4A: var_124 = (MemVar_1F920B8 = 1)
  loc_17D7B6E: var_F4 = Format(MemVar_1F920EC, "dd/MMM/yyyy")
  loc_17D7B7E: var_114 = (var_F4 > CDate(MemVar_1F920FC))
  loc_17D7B82: var_134 = 1 And var_114
  loc_17D7B91: If CBool(var_134) Then
  loc_17D7B9C:   If (MemVar_1F92070 <> MemVar_1F92078) Then
  loc_17D7BB2:     var_E4 = "You can't close year for different Site"
  loc_17D7BB8:     MsgBox(var_E4, &H50, var_F4, var_114, var_134)
  loc_17D7BC8:     Exit Sub
  loc_17D7BC9:   End If
  loc_17D7BD8:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_17D7C04:   unk_423F11.Execute "Select * From Company Where Comp_Code='" & MemVar_1F92128 & "'", var_E4, -1
  loc_17D7C0F:   Set var_88 = Me.CmdYrUpdate
  loc_17D7C33:   If (var_88.RecordCount > 0) Then
  loc_17D7C6D:     var_98 = CDate(DateAdd("YYYY", CDbl(1), CVar(var_88.Fields.Item("Start_Dt"))))
  loc_17D7CB1:     var_A0 = CDate(DateAdd("YYYY", CDbl(1), CVar(var_88.Fields.Item("End_Dt"))))
  loc_17D7CE6:     var_AC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ActiveEpabx")), var_A0, var_98)
  loc_17D7CFE:     var_138 = var_88.Fields
  loc_17D7D7D:     var_158 = (Left(Trim(CVar(Proc_6_38_E68A98(CVar(var_138.Item("CYear")), var_138))), 4) + 1)
  loc_17D7D8A:     var_200 = CVar(CStr(var_158) & "-") 'String
  loc_17D7DAA:     var_1B0 = (Right(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CYear")), 1))), 2) + 1)
  loc_17D7DBE:     var_210 = (1 + Format(CVar(CStr(var_1B0)), "00"))
  loc_17D7DC3:     var_A4 = CStr(var_210)
  loc_17D7E0C:     var_148 = var_88.Fields.Item("PYear")
  loc_17D7E14:     var_E4 = CVar(var_148) 'Address
  loc_17D7E1D:     var_F4 = CVar(Proc_6_38_E68A98(var_E4, 1)) 'String
  loc_17D7E47:     var_170 = CVar(var_88.Fields.Item("PYear")) 'Address
  loc_17D7E83:     var_158 = (Left(Trim(var_F4), 4) + 1)
  loc_17D7E90:     var_200 = CVar(CStr(var_158) & "-") 'String
  loc_17D7EB0:     var_1B0 = (Right(Trim(CVar(Proc_6_38_E68A98(var_170, var_200))), 2) + 1)
  loc_17D7EBC:     var_1F0 = Format(CVar(CStr(var_1B0)), "00")
  loc_17D7EC4:     var_210 = (1 + var_1F0)
  loc_17D7EC9:     var_A8 = CStr(var_210)
  loc_17D7F01:     var_D4 = 0
  loc_17D7F20:     unk_423F11.Execute "Select Max(Cast(Comp_Code As Integer))+1 As Code From Company", var_E4, -1
  loc_17D7F28:     var_138 = var_138.Fields
  loc_17D7F30:     var_D4 = var_148.Item(var_148)
  loc_17D7F38:     var_15C = var_15C.Value
  loc_17D7F4A:     var_8A = CInt(Proc_6_38_E68A98(var_F4, var_F4, 1))
  loc_17D7F67:     var_13C = "Insert into Company (Comp_Code,Comp_Name,CentralData_Path,Repo_Path,Start_Dt,End_Dt,address1,address2,city,phone,fax,lstno,lstdate,cstno,cstdate,cyear,pyear,Pin,SName,U_Name,U_EntDt,U_AE,FGLNO,SerialKeyNo,SiteCode,SiteName,SiteCodeDisplay,ActiveEpabx,PanNo,TinNo,GSTIN,StateCode,State,DivisionCode,Mobile,Email,LegalName,TradeName,Comp_Id) " & " Values ('"
  loc_17D7F7A:     var_F4 = CVar(var_13C & CStr(var_8A) & "','") 'String
  loc_17D7F83:     var_C4 = "Comp_Name"
  loc_17D7F8F:     var_138 = var_88.Fields
  loc_17D7F9F:     var_E4 = var_138.Item(var_C4).Value
  loc_17D7FAB:     var_D4 = "',"
  loc_17D7FDA:     Proc_6_17_EAA2B0(var_170, CVar(var_88.Fields.Item("CentralData_Path")), var_F4 & var_E4 & var_D4)
  loc_17D8015:     Proc_6_17_EAA2B0(var_1B0, CVar(var_88.Fields.Item("Repo_Path")), var_8A & var_170 & ",")
  loc_17D8035:     Proc_6_7_F25D88(var_1F0, var_98)
  loc_17D8055:     Proc_6_7_F25D88(var_26C, var_A0)
  loc_17D8090:     Proc_6_17_EAA2B0(var_2D4, CVar(var_88.Fields.Item("Address1")))
  loc_17D80CB:     Proc_6_17_EAA2B0(var_33C, CVar(var_88.Fields.Item("Address2")))
  loc_17D8106:     Proc_6_17_EAA2B0(var_3A4, CVar(var_88.Fields.Item("City")))
  loc_17D8141:     Proc_6_17_EAA2B0(var_40C, CVar(var_88.Fields.Item("Phone")))
  loc_17D817C:     Proc_6_17_EAA2B0(var_474, CVar(var_88.Fields.Item("Fax")))
  loc_17D8184:     var_484 = var_200 & var_1B0 & "," & var_1F0 & "," & var_26C & "," & var_2D4 & "," & var_33C & "," & var_3A4 & "," & var_40C & "," & var_474 
  loc_17D81B7:     Proc_6_17_EAA2B0(var_4DC, CVar(var_88.Fields.Item("LstNo")))
  loc_17D81F2:     Proc_6_17_EAA2B0(var_544, CVar(var_88.Fields.Item("LstDate")))
  loc_17D822D:     Proc_6_17_EAA2B0(var_5AC, CVar(var_88.Fields.Item("CstNo")))
  loc_17D8268:     Proc_6_17_EAA2B0(var_614, CVar(var_88.Fields.Item("CstDate")))
  loc_17D8288:     Proc_6_17_EAA2B0(var_664, var_A4)
  loc_17D8299:     var_694 = var_484 & "," & var_4DC & "," & var_544 & "," & var_5AC & "," & var_614 & "," & var_664 & "," 
  loc_17D82A8:     Proc_6_17_EAA2B0(var_6B4, var_A8)
  loc_17D82E3:     Proc_6_17_EAA2B0(var_71C, CVar(var_88.Fields.Item("Pin")))
  loc_17D831E:     Proc_6_17_EAA2B0(var_784, CVar(var_88.Fields.Item("SName")))
  loc_17D8359:     Proc_6_17_EAA2B0(var_7EC, CVar(var_88.Fields.Item("U_Name")))
  loc_17D8394:     Proc_6_7_F25D88(var_854, CVar(var_88.Fields.Item("U_EntDt")))
  loc_17D83CF:     Proc_6_17_EAA2B0(var_8BC, CVar(var_88.Fields.Item("U_AE")))
  loc_17D840A:     Proc_6_17_EAA2B0(var_924, CVar(var_88.Fields.Item("FGLNo")))
  loc_17D842E:     var_958 = var_88.Fields
  loc_17D8445:     Proc_6_17_EAA2B0(var_98C, CVar(var_958.Item("SerialKeyNo")))
  loc_17D844D:     var_99C = var_694 & var_6B4 & "," & var_71C & "," & var_784 & "," & var_7EC & "," & var_854 & "," & var_8BC & "," & var_924 & "," & var_98C 
  loc_17D8480:     Proc_6_17_EAA2B0(var_9F4, CVar(var_88.Fields.Item("SiteCode")))
  loc_17D84BB:     Proc_6_17_EAA2B0(var_A5C, CVar(var_88.Fields.Item("SiteName")))
  loc_17D84F6:     Proc_6_17_EAA2B0(var_AC4, CVar(var_88.Fields.Item("SiteCodeDisplay")))
  loc_17D8531:     Proc_6_17_EAA2B0(var_B2C, CVar(var_88.Fields.Item("ActiveEpabx")))
  loc_17D856C:     Proc_6_17_EAA2B0(var_B94, CVar(var_88.Fields.Item("PanNo")))
  loc_17D85A7:     Proc_6_17_EAA2B0(var_BFC, CVar(var_88.Fields.Item("TINNo")))
  loc_17D85E2:     Proc_6_17_EAA2B0(var_C64, CVar(var_88.Fields.Item("GSTIN")))
  loc_17D85F3:     var_C94 = var_99C & "," & var_9F4 & "," & var_A5C & "," & var_AC4 & "," & var_B2C & "," & var_B94 & "," & var_BFC & "," & var_C64 & "," 
  loc_17D861D:     Proc_6_17_EAA2B0(var_CCC, CVar(var_88.Fields.Item("StateCode")))
  loc_17D8658:     Proc_6_17_EAA2B0(var_D34, CVar(var_88.Fields.Item("State")))
  loc_17D8693:     Proc_6_17_EAA2B0(var_D9C, CVar(var_88.Fields.Item("DivisionCode")))
  loc_17D86CE:     Proc_6_17_EAA2B0(var_E04, CVar(var_88.Fields.Item("Mobile")))
  loc_17D8709:     Proc_6_17_EAA2B0(var_E6C, CVar(var_88.Fields.Item("Email")))
  loc_17D8744:     Proc_6_17_EAA2B0(var_ED4, CVar(var_88.Fields.Item("Legalname")))
  loc_17D877F:     Proc_6_17_EAA2B0(var_F3C, CVar(var_88.Fields.Item("TradeName")))
  loc_17D87BA:     Proc_6_17_EAA2B0(var_FA4, CVar(var_88.Fields.Item("Comp_Id")))
  loc_17D87C2:     var_FB4 = var_C94 & var_CCC & "," & var_D34 & "," & var_D9C & "," & var_E04 & "," & var_E6C & "," & var_ED4 & "," & var_F3C & "," & var_FA4 
  loc_17D87D0:     var_90 = CStr(var_FB4 & ")")
  loc_17D8966:     unk_423F11.Execute var_90, var_E4, -1
  loc_17D8979:     If (var_AC = "Y") Then
  loc_17D89A0:       unk_423F11.Execute "Update Company Set ActiveEpabx='' Where Comp_Code='" & MemVar_1F92128 & "'", var_E4, -1
  loc_17D89B2:     End If
  loc_17D89D6:     unk_423F11.Execute "Select * From menuHelp Where CompCode='" & MemVar_1F92128 & "'", var_E4, -1
  loc_17D89E1:     Set var_B0 = var_138
  loc_17D8A05:     If (var_B0.RecordCount > 0) Then
  loc_17D8A08:       ' Referenced from: 17D8F86
  loc_17D8A17:       If Not(var_B0.EOF) Then
  loc_17D8A2C:         var_138 = var_B0.Fields
  loc_17D8A3C:         var_E4 = var_138.Item("userName").Value
  loc_17D8AE0:         var_100C = Val(CStr(var_B0.Fields.Item("Opt3").Value))
  loc_17D8B16:         var_1014 = Val(CStr(var_B0.Fields.Item("Opt4").Value))
  loc_17D8B4C:         var_101C = Val(CStr(var_B0.Fields.Item("Code").Value))
  loc_17D8B82:         var_1024 = Val(CStr(var_B0.Fields.Item("Menu_Index").Value))
  loc_17D8BAB:         Proc_6_17_EAA2B0(var_33C, CVar(var_B0.Fields.Item("Option")), var_1024, var_101C, var_1014, var_100C)
  loc_17D8C37:         var_5E0 = var_B0.Fields
  loc_17D8D4A:         var_13C = "INSERT INTO menuHelp (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,Menu_Index,[Option],Param_Str,ShowInList,Flag,OutletCode,Menu_Visible,Pro_Name,Tag,User_Name,ID,Module_Name) " & " VALUES('"
  loc_17D8D8B:         var_1A0 = CVar(var_13C & CStr(var_8A) & "','") & var_E4 & "'," & CVar(Val(CStr(var_B0.Fields.Item("Opt1").Value))) & "," & CVar(Val(CStr(var_B0.Fields.Item("Opt2").Value))) 
  loc_17D8DDB:         var_2E4 = var_1A0 & "," & CVar(var_100C) & "," & CVar(var_1014) & "," & CVar(var_101C) & "," & CVar(var_1024) 
  loc_17D8DFB:         var_3A4 = var_2E4 & "," & var_33C & ",'" & var_B0.Fields.Item("param_str").Value 
  loc_17D8E14:         var_40C = var_3A4 & "','" & var_B0.Fields.Item("ShowInList").Value & "','" 
  loc_17D8E34:         var_4A4 = var_40C & var_B0.Fields.Item("Flag").Value & "','" & var_5E0.Item("OutletCode").Value & "','" 
  loc_17D8E3B:         var_4DC = var_4A4 & var_B0.Fields.Item("Menu_Visible").Value 
  loc_17D8E6B:         var_5BC = var_4DC & "','" & var_B0.Fields.Item("Pro_Name").Value & "','" & var_B0.Fields.Item("Tag").Value & "','" & var_B0.Fields.Item("USER_NAME").Value 
  loc_17D8EA2:         unk_423F11.Execute CStr(var_5BC & "','" & var_B0.Fields.Item("ID").Value & "','" & var_B0.Fields.Item("Module_name").Value & "')"), var_694, -1
  loc_17D8F81:         var_B0.MoveNext
  loc_17D8F86:         GoTo loc_17D8A08
  loc_17D8F89:       End If
  loc_17D8F89:     End If
  loc_17D8FAD:     unk_423F11.Execute "Select * From menuHelp1 Where CompCode='" & MemVar_1F92128 & "'", var_E4, -1
  loc_17D8FB8:     Set var_B0 = var_138
  loc_17D8FDC:     If (var_B0.RecordCount > 0) Then
  loc_17D8FDF:       ' Referenced from: 17D939E
  loc_17D8FEE:       If Not(var_B0.EOF) Then
  loc_17D9003:         var_138 = var_B0.Fields
  loc_17D902A:         var_15C = var_B0.Fields
  loc_17D904B:         var_FFC = Val(CStr(var_15C.Item("Opt1").Value))
  loc_17D9070:         var_190 = var_B0.Fields.Item("Opt2").Value
  loc_17D9081:         var_1004 = Val(CStr(var_190))
  loc_17D90B7:         var_100C = Val(CStr(var_B0.Fields.Item("Opt3").Value))
  loc_17D90ED:         var_1014 = Val(CStr(var_B0.Fields.Item("Opt4").Value))
  loc_17D9123:         var_101C = Val(CStr(var_B0.Fields.Item("Code").Value))
  loc_17D914C:         Proc_6_17_EAA2B0(var_2E4, CVar(var_B0.Fields.Item("menuNAME")), var_101C, var_1014, var_100C, var_1004, var_FFC)
  loc_17D9184:         var_1024 = Val(CStr(var_B0.Fields.Item("menuINDEX").Value))
  loc_17D9196:         var_4A8 = var_B0.Fields
  loc_17D91AD:         Proc_6_17_EAA2B0(var_3A4, CVar(var_4A8.Item("MenuCaption")), var_1024, var_138, var_958)
  loc_17D91D8:         Proc_6_17_EAA2B0(var_40C, CVar(var_B0.Fields.Item("param_str")), var_1004, var_FFC)
  loc_17D9218:         var_13C = "INSERT INTO menuHelp1 (CompCode,UserName,Opt1,Opt2,Opt3,Opt4,Code,MenuName,MenuIndex,MenuCaption,Param_Str,Flag) " & " VALUES('"
  loc_17D922B:         var_F4 = CVar(var_13C & CStr(var_8A) & "','") 'String
  loc_17D9245:         var_170 = var_F4 & var_138.Item("userName").Value & "'," & CVar(var_FFC) 
  loc_17D929E:         var_2C4 = var_170 & "," & CVar(var_1004) & "," & CVar(var_100C) & "," & CVar(var_1014) & "," & CVar(var_101C) & "," 
  loc_17D92A5:         var_304 = var_2C4 & var_2E4 
  loc_17D92B9:         var_34C = var_304 & "," & CVar(var_1024) 
  loc_17D92C9:         var_3B4 = var_34C & "," & var_3A4 
  loc_17D92D9:         var_41C = var_3B4 & "," & var_40C 
  loc_17D92F2:         var_484 = var_41C & ",'" & var_B0.Fields.Item("Flag").Value & "')" 
  loc_17D9300:         unk_423F11.Execute CStr(var_484), var_4A4, -1
  loc_17D9399:         var_B0.MoveNext
  loc_17D939E:         GoTo loc_17D8FDF
  loc_17D93A1:       End If
  loc_17D93A1:     End If
  loc_17D93CE:     var_138 = var_88.Fields
  loc_17D93E5:     Proc_6_7_F25D88(var_F4, CVar(var_138.Item("Start_Dt")), CVar("Select * From Voucher_Prefix Where Site_Code='" & MemVar_1F92070 & "' and date_From="), var_170, -1)
  loc_17D93F6:     var_158 = var_15C & var_F4 & vbNullString 
  loc_17D9404:     unk_423F11.Execute CStr(var_158), var_5E0, var_138
  loc_17D940F:     Set var_B4 = var_15C
  loc_17D942F:     ' Referenced from: 17D9573
  loc_17D943E:     If Not(var_B4.EOF) Then
  loc_17D9450:       var_138 = var_B4.Fields
  loc_17D9460:       var_E4 = CVar(var_138.Item("V_Type")) 'Address
  loc_17D9467:       var_F4 = Trim(var_E4)
  loc_17D9477:       Proc_6_7_F25D88(var_158, var_98)
  loc_17D9487:       Proc_6_7_F25D88(var_190, var_A0)
  loc_17D94CF:       var_134 = "Insert into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,LogSite_Code) values('" & var_F4 & "'," 
  loc_17D94D6:       var_170 = var_134 & var_158 
  loc_17D94EF:       var_1B0 = var_170 & "," & var_190 & ",'" 
  loc_17D94FF:       var_200 = var_1B0 & Format(var_98, "yyyy") & "',0,'" 
  loc_17D9525:       var_29C = var_200 & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_17D9533:       unk_423F11.Execute CStr(var_29C), var_2C4, -1
  loc_17D956E:       var_B4.MoveNext
  loc_17D9573:       GoTo loc_17D942F
  loc_17D9576:     End If
  loc_17D959A:     unk_423F11.Execute "Select * From UserPermission Where CompCode='" & MemVar_1F92128 & "'", var_E4, -1
  loc_17D95A5:     Set var_B4 = var_138
  loc_17D95B5:     ' Referenced from: 17D988A
  loc_17D95C4:     If Not(var_B4.EOF) Then
  loc_17D95E0:       var_140 = "Insert into UserPermission (CompCode,UserName,LogSite_Code,POSDiscountAllowUpto,CancelGuestBill,ChangeRoomDtl,DeleteGuestCharges,Site_Code,POSSettlementYN,EditItemInKOT,ChangeGuestCharges) values('" & CStr(var_8A)
  loc_17D95E7:       var_114 = CVar(var_140 & "',") 'String
  loc_17D95F9:       var_138 = var_B4.Fields
  loc_17D9610:       Proc_6_17_EAA2B0(var_F4, CVar(var_138.Item("userName")), var_114, var_4DC, -1, var_4A8)
  loc_17D9618:       var_134 = var_138 & var_F4 
  loc_17D9630:       Proc_6_17_EAA2B0(var_170, MemVar_1F92078, var_134 & ",", var_15C)
  loc_17D966B:       Proc_6_39_E7C810(var_1B0, CVar(var_B4.Fields.Item("POSDiscountAllowUpto")), 1 & var_170 & ",")
  loc_17D96A6:       Proc_6_17_EAA2B0(var_200, CVar(var_B4.Fields.Item("CancelGuestBill")), 1 & var_1B0 & ",")
  loc_17D96E1:       Proc_6_17_EAA2B0(var_29C, CVar(var_B4.Fields.Item("ChangeRoomDtl")))
  loc_17D971C:       Proc_6_17_EAA2B0(var_304, CVar(var_B4.Fields.Item("DeleteGuestCharges")))
  loc_17D973C:       Proc_6_17_EAA2B0(var_34C, MemVar_1F92078)
  loc_17D9777:       Proc_6_17_EAA2B0(var_3B4, CVar(var_B4.Fields.Item("POSSettlementYN")))
  loc_17D97B2:       Proc_6_17_EAA2B0(var_41C, CVar(var_B4.Fields.Item("EditItemInKOT")))
  loc_17D97ED:       Proc_6_17_EAA2B0(var_484, CVar(var_B4.Fields.Item("ChangeGuestCharges")))
  loc_17D97FE:       var_4CC = var_138 & var_200 & "," & var_29C & "," & var_304 & "," & var_34C & "," & var_3B4 & "," & var_41C & "," & var_484 & ")" 
  loc_17D980C:       unk_423F11.Execute CStr(var_4CC), var_138, 
  loc_17D9885:       var_B4.MoveNext
  loc_17D988A:       GoTo loc_17D95B5
  loc_17D988D:     End If
  loc_17D98AE:     MsgBox("Year End Updation Complete ", &H40, "Validation", var_114, var_134)
  loc_17D98BE:   End If
  loc_17D98CB:   Me.Global.Unload Me
  loc_17D98D8:   Set var_88 = Nothing
  loc_17D98E0:   Set var_B0 = Nothing
  loc_17D98E8:   Set var_B4 = Nothing
  loc_17D98EB: End If
  loc_17D98EB: Exit Sub
  loc_17D98EC: Proc_6_60_E62BC4()
  loc_17D98F1: Exit Sub
End Sub

Private Sub Head_UnknownEvent_9 'E15388
  'Data Table: 423F04
  Dim var_7301 As Double
  loc_E1537D: Me.Global.Unload Me
  loc_E15385: Exit Sub
  loc_E15386: var_7301 = 
End Sub
