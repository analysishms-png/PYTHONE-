
Public Sub Proc_154_0_FDAA68
  'Data Table: 41CB9C
  Dim var_24C As Variant
  loc_FDA8E7: var_98 = arg_10
  loc_FDA8ED: var_9C = arg_14
  loc_FDA8FB: var_BC = Ucase(var_98)
  loc_FDA9AC: var_24C = (var_BC = Ucase("AcGroup")) Or (Ucase(var_98) = Ucase("EPABX_Data")) Or (Ucase(var_98) = Ucase("ledgerRef")) Or (Ucase(var_98) = Ucase("MarketSeg"))
  loc_FDA9CD: If CBool(var_24C) Then
  loc_FDA9D0:   Result = arg_10: Exit Sub
  loc_FDA9D4: End If
  loc_FDA9DD: If (arg_1C = 0) Then
  loc_FDAA01:   Me.Connection15.Execute "INSERT INTO " & var_98 & var_9C, var_BC, -1
  loc_FDAA16: Else
  loc_FDAA1F:   If (arg_1C = 2) Then
  loc_FDAA43:     Me.Connection15.Execute "DELETE FROM " & var_98 & var_9C, var_BC, -1
  loc_FDAA58:   Else
  loc_FDAA61:     If (arg_1C = 1) Then
  loc_FDAA64:     End If
  loc_FDAA64:   End If
  loc_FDAA64: End If
  loc_FDAA64: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_154_1_F523D4(arg_C, arg_10, arg_14) 'F523D4
  'Data Table: 41CB9C
  loc_F522CB: var_94 = arg_14
  loc_F522DC: var_90 = "[" & arg_10 & "]"
  loc_F522E5: var_9C = arg_C
  loc_F522F0: If (var_9C = "Number") Then
  loc_F52301:   var_88 = var_90 & "=" & var_94
  loc_F5230A: Else
  loc_F52312:   If (var_9C = "Date/Time") Then
  loc_F5232A:     var_88 = var_90 & "=#" & var_94 & "#"
  loc_F52337:   Else
  loc_F5233F:     If (var_9C = "Text") Then
  loc_F52357:       var_88 = var_90 & "='" & var_94 & "'"
  loc_F52364:     Else
  loc_F5236C:       If (var_9C = "Yes/No") Then
  loc_F5237D:         var_88 = var_90 & "=" & var_94
  loc_F52386:       Else
  loc_F5238E:         If (var_9C = "Currency") Then
  loc_F5239F:           var_88 = var_90 & "=" & var_94
  loc_F523A8:         Else
  loc_F523B0:           If (var_9C = "Memo") Then
  loc_F523C8:             var_88 = var_90 & "='" & var_94 & "'"
  loc_F523D2:           End If
  loc_F523D2:         End If
  loc_F523D2:       End If
  loc_F523D2:     End If
  loc_F523D2:   End If
  loc_F523D2: End If
  loc_F523D2: Exit Sub
End Sub

Public Sub Proc_154_2_EE62BC(arg_C, arg_10) 'EE62BC
  'Data Table: 41CB9C
  Dim var_A4 As Variant
  loc_EE620D: var_90 = arg_10
  loc_EE6213: var_94 = arg_C
  loc_EE621E: If (var_94 = "Number") Then
  loc_EE6224:   var_88 = var_90
  loc_EE622A: Else
  loc_EE6232:   If (var_94 = "Date/Time") Then
  loc_EE6238:     var_A4 = var_90
  loc_EE6240:     Proc_6_7_F25D88(var_B4)
  loc_EE6249:     var_88 = CStr(var_B4)
  loc_EE6252:   Else
  loc_EE625A:     If (var_94 = "Text") Then
  loc_EE626B:       var_88 = "'" & var_90 & "'"
  loc_EE6274:     Else
  loc_EE627C:       If (var_94 = "Yes/No") Then
  loc_EE6282:         var_88 = var_90
  loc_EE6288:       Else
  loc_EE6290:         If (var_94 = "Currency") Then
  loc_EE6296:           var_88 = var_90
  loc_EE629C:         Else
  loc_EE62A4:           If (var_94 = "Memo") Then
  loc_EE62B5:             var_88 = "'" & var_90 & "'"
  loc_EE62BB:           End If
  loc_EE62BB:         End If
  loc_EE62BB:       End If
  loc_EE62BB:     End If
  loc_EE62BB:   End If
  loc_EE62BB: End If
  loc_EE62BB: Exit Sub
End Sub

Public Sub Proc_154_3_E5AEBC(arg_C) 'E5AEBC
  'Data Table: 41CB9C
  loc_E5AEAC: var_88 = CStr(IIf(IsNull(arg_C), vbNullString, arg_C))
  loc_E5AEB8: Exit Sub
End Sub

Public Sub Proc_154_4_F329F4(arg_C, arg_10) 'F329F4
  'Data Table: 41CB9C
  Dim var_8C As Long
  Dim var_AC As Variant
  loc_F328DB: var_8C = arg_C
  loc_F328E7: If Not (var_8C = 1) Then
  loc_F328F3:   If Not (var_8C = 2) Then
  loc_F328FF:     If Not (var_8C = 3) Then
  loc_F3290B:       If Not (var_8C = 4) Then
  loc_F32917:         If Not (var_8C = 5) Then
  loc_F32923:           If Not (var_8C = 6) Then
  loc_F3292F:             If (var_8C = &H11) Then
  loc_F32932:             End If
  loc_F32932:           End If
  loc_F32932:         End If
  loc_F32932:       End If
  loc_F32932:     End If
  loc_F32932:   End If
  loc_F3293A:   var_88 = CStr(arg_10)
  loc_F32940: Else
  loc_F32949:   If Not (var_8C = 7) Then
  loc_F32955:     If (var_8C = &H87) Then
  loc_F32958:     End If
  loc_F3295E:     Proc_6_7_F25D88(var_AC, arg_10)
  loc_F32967:     var_88 = CStr(var_AC)
  loc_F32970:   Else
  loc_F32979:     If Not (var_8C = &HA) Then
  loc_F32985:       If Not (var_8C = &HC8) Then
  loc_F32991:         If Not (var_8C = &HCA) Then
  loc_F3299D:           If Not (var_8C = &H81) Then
  loc_F329A9:             If Not (var_8C = &H82) Then
  loc_F329B5:               If (var_8C = &H312) Then
  loc_F329B8:               End If
  loc_F329B8:             End If
  loc_F329B8:           End If
  loc_F329B8:         End If
  loc_F329B8:       End If
  loc_F329D1:       var_88 = CStr("'" & arg_10 & "'")
  loc_F329DE:     Else
  loc_F329E7:       If (var_8C = 0) Then
  loc_F329ED:         var_88 = "NULL"
  loc_F329F0:       End If
  loc_F329F0:     End If
  loc_F329F0:   End If
  loc_F329F0: End If
  loc_F329F0: Exit Sub
End Sub

Public Sub Proc_154_5_10E33A4
  'Data Table: 41CB9C
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_88 As Recordset15
  Dim var_FC As String
  Dim var_120 As String
  Dim var_150 As String
  loc_10E3147: var_AC = arg_1C
  loc_10E31C4: Me.Connection15.Execute "Select * From TransIn Where TableName='" & arg_10 & "'", var_C4, -1
  loc_10E31F3: If (var_C8.RecordCount > 0) Then
  loc_10E320A:   var_B0 = "Insert Into TransDel(TableName,PK1_Name,PK1_Type,PK1_Value,PK2_Name,PK2_Type,PK2_Value,PK3_Name,PK3_Type,PK3_Value,PK4_Name,PK4_Type,PK4_Value,PK5_Name,PK5_Type,PK5_Value,UName,UEntDt,UAE) " & "VALUES ('"
  loc_10E3261:   var_FC = var_B0 & arg_10 & "','" & arg_14 & "'," & CStr(arg_18) & "," & Proc_154_4_F329F4(arg_18) & ",'" & arg_20 & "'," & CStr(arg_24)
  loc_10E329E:   var_120 = var_FC & "," & Proc_154_4_F329F4(arg_24, arg_28) & ",'" & arg_2C & "'," & CStr(arg_30) & "," & Proc_154_4_F329F4(arg_30, arg_34)
  loc_10E32EE:   var_150 = var_120 & ",'" & arg_38 & "'," & CStr(arg_3C) & "," & Proc_154_4_F329F4(arg_3C, Proc_154_5_10E33A40) & ",'" & Proc_154_5_10E33A44 & "'," & CStr(Proc_154_5_10E33A48)
  loc_10E3317:   Proc_6_104_ED5D18(var_C4, CVar(var_150 & "," & Proc_154_4_F329F4(Proc_154_5_10E33A48, Proc_154_5_10E33A4C) & ",'" & MemVar_1F920C8 & "',"), var_1B4, -1)
  loc_10E3323:   var_AC = ",'A')"
  loc_10E3333:   Me.Connection15.Execute CStr(var_C8 & var_C4 & var_AC), var_C8, var_AC
  loc_10E339B: End If
  loc_10E33A0: Set var_88 = Nothing
  loc_10E33A3: Exit Sub
End Sub

Public Sub Proc_154_6_FAFD3C
  'Data Table: 41CB9C
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_13C As Variant
  Dim var_1BC As Variant
  loc_FAFC13: Me.Connection15.Execute "Select * From Ledger Where V_Type='" & arg_10 & "' and SubCode= '" & arg_14 & "'", var_B8, -1
  loc_FAFC1E: Set var_88 = var_BC
  loc_FAFC32: ' Referenced from: FAFD2E
  loc_FAFC41: If Not(var_88.EOF) Then
  loc_FAFC68:   var_BC = var_88.Fields
  loc_FAFCB7:   var_13C = "Insert Into TransDel(TableName,PK1,PK2,UName,UEntDt,UAE) Values ('Ledger','" & var_BC.Item("DocID").Value & "'," & var_88.Fields.Item("V_SNo").Value 
  loc_FAFCDA:   Proc_6_104_ED5D18(var_1AC, var_13C & ",'" & CVar(MemVar_1F920C8) & "',", var_1FC)
  loc_FAFCE2:   var_1BC = -1 & var_1AC 
  loc_FAFCF6:   Me.Connection15.Execute CStr(var_1BC & ",'A')"), var_200, var_BC
  loc_FAFD29:   var_88.MoveNext
  loc_FAFD2E:   GoTo loc_FAFC32
  loc_FAFD31: End If
  loc_FAFD36: Set var_88 = Nothing
  loc_FAFD39: Exit Sub
End Sub

Public Sub Proc_154_7_13DE5C4
  'Data Table: 41CB9C
  Dim unk_41CBCC As Connection15
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_F8 As String
  Dim var_104 As String
  Dim var_114 As String
  Dim var_17C As String
  Dim var_1E4 As String
  Dim var_1F0 As String
  Dim var_224 As String
  Dim var_234 As String
  Dim var_26C As String
  Dim var_274 As String
  loc_13DDCEC: unk_41CBCC.Execute "SELECT Table_Name,Search_Field,UniqueField,SiteCode,LogSiteCode FROM Table_SearchField WHERE IsNull(Search_Field,'')<>''", var_B0, -1
  loc_13DDCF7: Set var_8C = var_B4
  loc_13DDD00: ' Referenced from: 13DE5B7
  loc_13DDD0F: If Not(var_8C.EOF) Then
  loc_13DDD24:   var_B4 = var_8C.Fields
  loc_13DDD34:   var_B0 = CVar(var_B4.Item("Table_Name")) 'Address
  loc_13DDD77:   var_F8 = var_B4 & Proc_6_38_E68A98(var_B0, "CREATE TRIGGER Tr_") & "_A ON " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name")))
  loc_13DDD8C:   var_104 = var_F8 & "  " & "FOR Insert AS " & "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), @UDate DateTime, @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) "
  loc_13DDDA8:   var_114 = var_104 & "IF EXISTS (SELECT * FROM Inserted)      " & "   BEGIN  " & "   Set @UDate = (SELECT GetDate()) " & "   DECLARE Insert_Cursor CURSOR FOR "
  loc_13DDE14:   var_17C = var_114 & "   SELECT [" & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Search_Field"))) & "]," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("UniqueField")))
  loc_13DDE80:   var_1E4 = var_17C & "," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SiteCode"))) & "," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("LogSiteCode")))
  loc_13DDE95:   var_1F0 = var_1E4 & " FROM Inserted i " & "   OPEN Insert_Cursor " & "   FETCH NEXT FROM Insert_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DDEAA:   var_224 = var_1F0 & "   WHILE @@FETCH_STATUS = 0 " & "       BEGIN  " & "           IF NOT EXISTS(SELECT * FROM Log_TableRecords WHERE UniqueKey = @UniqueKey AND TableName = '"
  loc_13DDEE7:   var_234 = var_224 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name"))) & "' And AED='A' AND UpdateDate =@UDate) " & "               BEGIN "
  loc_13DDF24:   var_26C = var_234 & "                   EXEC Create_LogTableRecords  '" & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name"))) & "','A',@Code,@UniqueKey,@SiteCode,@LogSiteCode "
  loc_13DDF32:   var_274 = var_26C & "               END " & "           FETCH NEXT FROM Insert_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DDFE6:   unk_41CBCC.Execute var_274 & "       END " & "       CLOSE Insert_Cursor " & "       DEALLOCATE Insert_Cursor " & "   END ", var_B0, -1
  loc_13DE003:   var_B4 = var_8C.Fields
  loc_13DE013:   var_B0 = CVar(var_B4.Item("Table_Name")) 'Address
  loc_13DE056:   var_F8 = var_B4 & Proc_6_38_E68A98(var_B0, "CREATE TRIGGER Tr_") & "_E ON " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name")))
  loc_13DE06B:   var_104 = var_F8 & "  " & "FOR Update AS " & "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), @UDate DateTime, @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) "
  loc_13DE087:   var_114 = var_104 & "IF EXISTS (SELECT * FROM Inserted)      " & "   BEGIN  " & "   Set @UDate = (SELECT GetDate()) " & "   DECLARE Update_Cursor CURSOR FOR "
  loc_13DE0F3:   var_17C = var_114 & "   SELECT [" & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Search_Field"))) & "]," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("UniqueField")))
  loc_13DE15F:   var_1E4 = var_17C & "," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SiteCode"))) & "," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("LogSiteCode")))
  loc_13DE174:   var_1F0 = var_1E4 & " FROM Inserted i " & "   OPEN Update_Cursor " & "   FETCH NEXT FROM Update_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DE189:   var_224 = var_1F0 & "   WHILE @@FETCH_STATUS = 0 " & "       BEGIN  " & "           IF NOT EXISTS(SELECT * FROM Log_TableRecords WHERE UniqueKey = @UniqueKey AND TableName = '"
  loc_13DE1C6:   var_234 = var_224 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name"))) & "' And AED='E' AND UpdateDate =@UDate) " & "               BEGIN "
  loc_13DE203:   var_26C = var_234 & "                   EXEC Create_LogTableRecords  '" & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name"))) & "','E',@Code,@UniqueKey,@SiteCode,@LogSiteCode "
  loc_13DE211:   var_274 = var_26C & "               END " & "           FETCH NEXT FROM Update_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DE2C5:   unk_41CBCC.Execute var_274 & "       END " & "       CLOSE Update_Cursor " & "       DEALLOCATE Update_Cursor " & "   END ", var_B0, -1
  loc_13DE2E2:   var_B4 = var_8C.Fields
  loc_13DE2F2:   var_B0 = CVar(var_B4.Item("Table_Name")) 'Address
  loc_13DE335:   var_F8 = var_B4 & Proc_6_38_E68A98(var_B0, "CREATE TRIGGER Tr_") & "_D ON " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name")))
  loc_13DE34A:   var_104 = var_F8 & "  " & "FOR Delete AS " & "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), @UDate DateTime, @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) "
  loc_13DE366:   var_114 = var_104 & "IF EXISTS (SELECT * FROM Deleted) " & "   BEGIN  " & "   Set @UDate = (SELECT GetDate()) " & "   DECLARE Delete_Cursor CURSOR FOR "
  loc_13DE3D2:   var_17C = var_114 & "   SELECT [" & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Search_Field"))) & "]," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("UniqueField")))
  loc_13DE43E:   var_1E4 = var_17C & "," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SiteCode"))) & "," & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("LogSiteCode")))
  loc_13DE453:   var_1F0 = var_1E4 & " FROM Deleted i " & "   OPEN Delete_Cursor " & "   FETCH NEXT FROM Delete_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DE468:   var_224 = var_1F0 & "   WHILE @@FETCH_STATUS = 0 " & "       BEGIN  " & "           IF NOT EXISTS(SELECT * FROM Log_TableRecords WHERE UniqueKey = @UniqueKey AND TableName = '"
  loc_13DE4A5:   var_234 = var_224 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name"))) & "' And AED='D' AND UpdateDate =@UDate) " & "               BEGIN "
  loc_13DE4E2:   var_26C = var_234 & "                   EXEC Create_LogTableRecords  '" & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Table_Name"))) & "','D',@Code,@UniqueKey,@SiteCode,@LogSiteCode "
  loc_13DE4F0:   var_274 = var_26C & "               END " & "           FETCH NEXT FROM Delete_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DE5A4:   unk_41CBCC.Execute var_274 & "       END " & "       CLOSE Delete_Cursor " & "       DEALLOCATE Delete_Cursor " & "   END ", var_B0, -1
  loc_13DE5B2:   var_8C.MoveNext
  loc_13DE5B7:   GoTo loc_13DDD00
  loc_13DE5BA: End If
  loc_13DE5BF: Set var_8C = Nothing
  loc_13DE5C2: Exit Sub
End Sub

Public Sub Proc_154_8_F64CD4
  'Data Table: 41CB9C
  Dim unk_41CBCC As Connection15
  Dim var_B0 As String
  Dim var_BC As String
  Dim var_C8 As String
  Dim var_D8 As String
  Dim var_E0 As String
  Dim var_E8 As String
  Dim var_EC As String
  loc_F64C00: unk_41CBCC.Execute "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Create_LogTableRecords') " & " Drop Procedure Create_LogTableRecords ", var_A8, -1
  loc_F64C12: var_B0 = "CREATE PROCEDURE dbo.Create_LogTableRecords     @TableName NVARCHAR(128),   @AED NVARCHAR(1),   @SearchKey NVARCHAR(21), @UniqueKey NVARCHAR(max), @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) AS  " & "   BEGIN    "
  loc_F64C27: var_BC = var_B0 & "       SET NOCOUNT ON;      " & "       DECLARE @Transaction_Id BIGINT;      " & "       DECLARE @SearchField NVARCHAR(128);      "
  loc_F64C3C: var_C8 = var_BC & "       DECLARE @UniqueField NVARCHAR(max);      " & "       DECLARE @UpdateDate DATETIME;            " & "       DECLARE @mCreateLogYn BIT ; "
  loc_F64C58: var_D8 = var_C8 & "       SET @mCreateLogYn=1 " & "       IF (@mCreateLogYn=1) " & "       Begin " & "           SET @Transaction_Id=(SELECT transaction_id FROM sys.dm_tran_current_transaction)   "
  loc_F64C66: var_E0 = var_D8 & "           SET @SearchField=(SELECT Search_Field FROM Table_SearchField WHERE TABLE_NAME =@TableName)   " & "           SET @UniqueField=(SELECT UniqueField FROM Table_SearchField WHERE TABLE_NAME =@TableName)    "
  loc_F64C74: var_E8 = var_E0 & "           SET @UpdateDate=(SELECT GetDate())               " & "           INSERT INTO Log_TableRecords            "
  loc_F64C7B: var_EC = var_E8 & "           (Transaction_Id,SearchKey,AED,UpdateDate,TableName,Site,Site_Code,LogSite_Code,UploadDate,SearchField, UniqueKey, UniqueField)    VALUES (@Transaction_Id,@searchkey,@aed,@updatedate,@tablename,'',@SiteCode,@LogSiteCode,Null,@searchfield,@UniqueKey,@UniqueField)    "
  loc_F64CC7: unk_41CBCC.Execute var_EC & "       end " & "   END  ", var_A8, -1
  loc_F64CD2: Exit Sub
End Sub
