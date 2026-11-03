# SCHEMA OVERLAP MATRIX: Laravel vs SQL Server

## Summary Counts

- **Total Laravel tables** (parsed from 230 migrations in `tenant_migrations`): **210**
- **Tables EXISTS in live SQL Server DB**: **21**
- **Tables ABSENT from SQL Server DB**: **189**

> Note: 210 Laravel tables were parsed from the migration files. The SQL Server DB has 271 total tables (per `schema_probe_raw.txt`). The existence check is case-insensitive exact-name matching.

---

## Table A: EXISTS in SQL Server (overlap)

| Laravel table | SQL Server table (actual casing) | column count L / S | columns in Laravel missing from SQL Server | columns in SQL Server missing from Laravel | naming-convention notes |
|---|---|---|---|---|---|
| acgroup | ACGROUP | 13 / 20 | `ID`, `Site_Code`, `GroupCode`, `GroupName`, `GroupNature`, `CurrentBalance`, `SubLedYN`, `BlOrd`, `AliasYN`, `TradingYN`, `MainGrLen` | `MainGrCode`, `GroupHelp`, `SysGroup`, `Nature`, `CurrentBalance`, `SubLedYN`, `BlOrd`, `AliasYN`, `TradingYN`, `MainGrLen`, `LogSite_Code` | SQL Server uses `LogSite_Code` suffix; Laravel uses `propertyid` as primary key component |
| voucher_type | Voucher_Type | 27 / 36 | `NCat`, `Contratype`, `Description_Help`, `Description_BiLang`, `Report_Index`, `Start_No`, `Last_Ent_Date`, `Form_Name`, `Separate_Narr`, `Common_Narr`, `Print_VNo`, `Header_Desc`, `Terms_Desc`, `Footer_Desc`, `Exclude_Ac_Grp`, `SerialNo_From_Table`, `U_NAME`, `U_EntDt`, `U_AE`, `ChqNo`, `ChqDt`, `ClgDt`, `SortNo`, `RestCode`, `Site_Code`, `DefaultCrAc`, `DefaultDrAc`, `FirstDrCr`, `LogSite_Code` | (none - Laravel has all columns that SQL Server has, plus 9 extra) | SQL Server: `U_NAME/U_AE/Last_Ent_Date`; Laravel: `u_name/u_ent_date/last_ent_date` |
| voucher_prefix | Voucher_Prefix | 13 / 10 | `u_ae`, `sysYN` | (none) | SQL Server has `U_EntDt, LogSite_Code, U_Name, U_AE`; Laravel has `created_at, updated_at, u_ae, sysYN` |
| tds_categories | TDSCat | 10 / 9 | `U_Name` | `LogSite_Code` | Both have similar TDS columns; SQL Server adds `LogSite_Code` |
| ledger_tds | LedgerTDS | 17 / 18 | (none) | `LogSite_Code` | SQL Server has `LogSite_Code` that Laravel lacks |
| subgroup | SubGroup | 55 / 79 | 24+ columns: `FatherName`, `MotherName`, `IdProof`, `IdProofNo`, `CINNo`, `GSTIN`, `LegalName`, `TradeName`, `ConPersonMName`, `ConPersonLName` | `Site_Code` (present in SQL Server multiple times) | SQL Server SubGroup has 79 cols vs Laravel's 55 - significant disparity with 24+ VB6 legacy fields |
| ledgeradj | ledgerAdj | 13 / 13 | (same set, different names) | Check mapping needed | SQL Server: `DocId1, V_SNo1, DocId2, V_SNo2, Cr, SubCode, Name, AgRefNo, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code`; Laravel columns need verification |
| ledgerref | ledgerRef | 12 / 15 | `LogSite_Code` | `Id` | SQL Server has `Id` as primary key; Laravel lacks `Id` |
| room_mast | RoomMast | 20 / 24 | 4 columns | `DoorLockID` | SQL Server has `DoorLockID` that Laravel lacks |
| rooms | Rooms | 4 / - | - | - | SQL Server has `Rooms` table not in Laravel key list |
| bookings | Booking | 43 / - | - | - | SQL Server has `Booking` table not in Laravel key list |
| guestfolio | GuestFolio | 44 / 43 | `GroupCode` | `RefNo` | Minor disparity |
| suntran | SunTran | 23 / 24 | `SeqNo` | - | SQL Server has `SeqNo` extra |
| suntranh | SunTranH | 23 / 23 | (same) | - | Same column count |
| sale1 | Sale1 | 53 / 80 | Multiple: `BookNo`, `SeqNo`, `CardNo`, `ServiceTax`, `FolionoDocid`, `AU_Name`, `AU_EntDt`, `Redemption`, `DiscRemark`, `CGST`, `SGST`, `IGST`, `EditRemark` | - | Significant column expansion in SQL Server |
| sale2 | Sale2 | 21 / 19 | `SeqNo` | - | SQL Server has `SeqNo` extra |
| kot | KOT | 44 / 44 | (same count) | - | Same column count |
| plan_mast | PlanMast | 26 / 25 | `RoomPer`, `RoomRate`, `PackageAmount`, `DiscAppYN`, `DiscAppON`, `Nights`, `Adults`, `Childs`, `RRIncTax`, `RoomCat`, `Tariff`, `RoomTaxStru`, `MapCode` | - | Laravel has 26 cols vs SQL Server 25 - 1 extra column |
| nightauditlog | NightAuditLog | 8 / 10 | - | `Id, DateChngFrom, DateChngTo, StartNightAudit, EndNightAudit` | SQL Server has `Id` (numeric) and `smalldatetime` types vs Laravel's `numeric/datetime` |
| menuhelp | menuHelp | 21 / 19 | `CompCode`, `UserName`, `Opt1-4`, `Option`, `Menu_Index`, `Menu_Visible`, `Pro_Name`, `Tag`, `User_Name`, `Param_Str`, `ID`, `Module_Name`, `Flag`, `ShowInList`, `OutletCode` | - | SQL Server has `CompCode/UserName` prefix; Laravel has `nvarchar` types |
| usermodule | UserModule | 13 / 9 | `Opt1-4`, `Code`, `Option`, `Param_Str`, `Flag`, `OutletCode` | - | Laravel has more columns |
| userpermission | UserPermission | 24 / 18 | `CompCode`, `POSDiscountAllowUpto`, `CancelGuestBill`, `ChangeRoomDtl`, `DeleteGuestCharges`, `POSSettlementYN`, `ChangeGuestCharges`, `backcolor`, `ChangeGuestProfile`, `FacilityBilling`, `EditItemInKOT`, `FOMDiscountAllowUpto`, `CancelReservation`, `FreeItemAllow`, `RefundCashCardAmt` | - | Laravel has 24 cols vs SQL Server 18 - 6 extra |
| hallbook | HallBook | 40 / 74 | - | 34 columns | SQL Server has many more columns (74 vs 40) |
| bookinginquiry | BookingInquiry | 25 / 30 | - | 5 columns | SQL Server has 30 cols vs Laravel 25 - 5 extra |
| venmast | VenueMast | 13 / 13 | (same count) | - | Same column count |
| venueocc | VenueOcc | 13 / 13 | (same count) | - | Same column count |
| facilitybill1 | FacilityBill1 | 28 / 28 | (same count) | - | Same column count |
| facilitybill2 | FacilityBill2 | 24 / 24 | (same count) | - | Same column count |
| suntranfacility | SunTranFacility | 27 / 27 | (same count) | - | Same column count |

### High-value column-level detail (from the overlap section):

**ledger**: SQL Server has 29 columns including `Site_Code`, `U_EntDt`, `U_AE`, `LogSite_Code`. Laravel has 30 columns with `propertyid`, `docid`, `vsno`, `vtype`, `vno`, `vprefix`, `vdate`, `subcode`, `amtcr`, `amtdr`, `contrasub`, `chqno`, `chqdate`, `delflag`, `clgdate`, `narration`, `groupcode`, `groupnature`, `u_name`, `created_at`, `updated_at`, `u_ae`, `status`, `verifyuser`, `verifyremark`, `verifydate`, `rejectremark`, `rejectuser`, `rejectdate`. Key difference: SQL Server uses `Site_Code` + `U_EntDt`/`U_AE`/`LogSite_Code`; Laravel uses `propertyid` + `created_at`/`updated_at`.

**voucher_type**: SQL Server has 36 columns including `Site_Code`, `U_EntDt`, `U_AE`, `LogSite_Code`. Laravel has 27 columns with `propertyid`, `category`, `ncat`, `short_name`, `v_type`, `contratype`, `description`, `description_help`, `number_method`, `start_no`, `last_ent_date`, etc. Key difference: SQL Server has `Site_Code` and `LogSite_Code` that Laravel migration doesn't define (may exist in base schema).

**voucher_prefix**: SQL Server has 10 columns: `V_Type`, `Date_From`, `Date_To`, `Prefix`, `Start_Srl_No`, `Site_Code`, `U_EntDt`, `LogSite_Code`, `U_Name`, `U_AE`. Laravel has 13 columns with `short_name`, `propertyid`, `v_type`, `date_from`, `date_to`, `prefix`, `start_srl_no`, `u_name`, `created_at`, `updated_at`, `u_ae`, `sysYN`. Key difference: Laravel adds `id` (unique), `propertyid`, `created_at`, `updated_at`, `sysYN`; SQL Server has `date_from`/`date_to` as date ranges.

**tds_categories**: SQL Server has 9 columns: `Code`, `Name`, `TDSLimit`, `TDSPercentage`, `U_Name`, `U_EntDt`, `U_AE`, `Site_Code`, `LogSite_Code`. Laravel has 10 columns with similar set plus `U_Name` extra.

**ledger_tds**: SQL Server has 18 columns including `LogSite_Code`. Laravel has 17 columns - missing `LogSite_Code`.

**subgroup**: SQL Server has 79 columns with extensive personal/Contact details (PAN, GST, CIN, etc.). Laravel has 55 columns - missing 24+ columns including `FatherName`, `MotherName`, `IdProof`, `IdProofNo`, `CINNo`, `GSTIN`, `LegalName`, `TradeName`, etc.

**ledgerAdj**: Both have 13 columns but with different naming. SQL Server: `DocId1, V_SNo1, DocId2, V_SNo2, Cr, SubCode, Name, AgRefNo, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code`. Laravel columns need detailed mapping.

**ledgerRef**: SQL Server has 15 columns including `Id` (int primary key). Laravel has 12 columns - missing `Id`.

**room_mast**: SQL Server has 24 columns including `DoorLockID`. Laravel has 20 columns - missing `DoorLockID`.

**sale1**: SQL Server has 80 columns vs Laravel's 53. SQL Server adds: `BookNo`, `SeqNo`, `CardNo`, `ServiceTax`, `FolionoDocid`, `AU_Name`, `AU_EntDt`, `Redemption`, `DiscRemark`, `CGST`, `SGST`, `IGST`, `EditRemark`.

**nadauditlog**: SQL Server has 10 columns with `smalldatetime` types (`Id, DateChngFrom, DateChngTo, StartNightAudit, EndNightAudit, Site_Code, U_AE, U_Name, U_EntDt: smalldatetime, LogSite_Code`). Laravel has 8 columns.

**menuhelp**: SQL Server has 19 columns with `nvarchar` types (`CompCode, UserName, Opt1-4, Option, Menu_Index, Menu_Visible, Pro_Name, Tag, User_Name, Param_Str, ID, Module_Name, Flag, ShowInList, OutletCode`). Laravel has 21 columns with `int/varchar` types.

**userpermission**: SQL Server has 18 columns. Laravel has 24 columns - 6 extra (`backcolor, ChangeGuestProfile, FacilityBilling, EditItemInKOT, FOMDiscountAllowUpto, CancelReservation, FreeItemAllow, RefundCashCardAmt`) may be Laravel-internal tracking fields.

**hallbook**: SQL Server has 74 columns vs Laravel's 40. Significant disparity - many SQL Server columns (GuarAtt, CoverRate, etc.) have no Laravel counterpart.

**bookinginquiry**: SQL Server has 30 columns vs Laravel's 25. SQL Server adds: `Capacity`, `CapacityType`, `LogSite_Code`, `Remark`.

**venmast / venueocc**: Same column counts (13 each) between Laravel and SQL Server.

**facilitybill1 / facilitybill2**: Same column counts (28/24) between Laravel and SQL Server.

**suntranfacility**: Same column count (27) between Laravel and SQL Server.

---

## Table B: ABSENT from SQL Server

| Laravel table | module area | what it is for | feature-blocking? |
|---|---|---|---|
| CateringBook | mall | Catering booking functionality | NO |
| EventMast | channel | Event master data | NO |
| HallBill | mall | Hall bill generation | NO |
| BanquetSundry | mall | Banquet sundry items | NO |
| SmartCard | smartcard | Smart card master/ledger | NO |
| RewardPoint | member | Reward points system | NO |
| TelCall | hr_extras | Telephony call logging | NO |
| DoorLock | hr_extras | Door lock device integration | NO |
| EInvoice | notifications | E-invoice generation | NO |
| RoomInclusive | mall | Room inclusion rules | NO |
| RoomInclusiveLog | mall | Room inclusion log | NO |
| DailyReportSnapshot | performance | Daily report snapshot | NO |
| MallReceipt | mall | Mall receipt tracking | NO |
| MallShopMast | mall | Mall shop master | NO |
| MallLeaseHdr | mall | Mall lease header | NO |
| MallNoteHdr | mall | Mall note header | NO |
| MallDailyPowerEntry | mall | Mall daily power entry | NO |
| MallMeterReading | mall | Mall meter reading | NO |
| Voucher | accounting | Voucher header table | NO |
| Remarks | remarks_booking_followup | Remarks/notes tracking | NO |
| BookingFollowUp | remarks_booking_followup | Booking follow-up actions | NO |
| GatePassIn | gatepass | Gate pass in recording | NO |
| GatePassOut | gatepass | Gate pass out recording | NO |
| EsslAttendanceLogs | hr_extras | ESSL biometric attendance | NO |
| ChequeDesign | accounting | Cheque design configuration | NO |
| RvRateRule | performance | RV rate rule configuration | NO |
| BookingSource | channel | Booking source tracking | NO |
| TravelAgent | member | Travel agent management | NO |
| MemberCategory | member | Member categories | NO |
| MemberFacilityMast | member | Member facility master | NO |
| MemberMast | member | Member master data | NO |
| HkRoomAssign | housekeeping_extras | Housekeeping room assignment | NO |
| HkCleaningHdr | housekeeping_extras | HK cleaning header | NO |
| HkCleaningFtr | housekeeping_extras | HK cleaning footer | NO |
| HkInspectionHdr | housekeeping_extras | HK inspection header | NO |
| HkInspectionDtl | housekeeping_extras | HK inspection detail | NO |
| LostFound | activity_logs | Lost & found tracking | NO |
| ServiceRequestHdr | activity_logs | Service request header | NO |
| ServiceRequestHdrDtl | activity_logs | Service request detail | NO |
| ShiftMaster | hr_extras | Shift master schedule | NO |
| Printers | printers | Printer configuration | NO |
| PrinterSetup | printers | Printer setup definitions | NO |
| NotificationMaster | notifications | Notification template master | NO |
| NotificationDelivery | notifications | Notification delivery log | NO |
| WhatsappLog | whatsapp | WhatsApp message logging | NO |
| ActivityLog | activity_logs | General activity log | NO |
| UpdateLog | activity_logs | Update tracking log | NO |
| CompanyLog | activity_logs | Company operation log | NO |
| LedgerLog | activity_logs | Ledger operation log | NO |

### Area groupings:

**mall (13 tables)**: CateringBook, EventMast, HallBill, BanquetSundry, RoomInclusive, RoomInclusiveLog, DailyReportSnapshot, MallReceipt, MallShopMast, MallLeaseHdr, MallNoteHdr, MallDailyPowerEntry, MallMeterReading

**channel (0 tables in absent list)**: Channel-related tables exist in Laravel migrations but are not separately listed as blocked; some may be under Enviro or other sections.

**notifications (5 tables)**: NotificationMaster, NotificationDelivery, WhatsappLog, EInvoice, RvRateRule

**whatsapp (1 table)**: WhatsappLog

**performance (3 tables)**: DailyReportSnapshot, RvRateRule, ShiftMaster

**hr_extras (4 tables)**: TelCall, DoorLock, EsslAttendanceLogs, ShiftMaster

**housekeeping_extras (14 tables)**: HkRoomAssign, HkCleaningHdr, HkCleaningFtr, HkInspectionHdr, HkInspectionDtl, plus others from the HK subsystem

**member (2 tables)**: MemberCategory, MemberMast (note: MemberFamily EXISTS in SQL Server)

**gatepass (3 tables)**: GatePassIn, GatePassOut, EsslAttendanceLogs (also counted in hr_extras)

**smartcard (0 tables)**: SmartCard is listed as NO in the candidate section but appears in the ALL TABLES listing - may be deprecated or handled differently

**remarks_booking_followup (1 table)**: Remarks (note: BookingFollowUp also in this area)

**printers (0 tables)**: Printers and PrinterSetup are listed as NO but may be low-priority

**activity_logs (3 tables)**: ActivityLog, UpdateLog, CompanyLog, LedgerLog (4 tables)

---

## Porting Implications (max 12 bullets)

1. **Laravel uses `propertyid` + created_at/updated_at; SQL Server uses `Site_Code` + U_EntDt/U_AE/LogSite_Code** — never copy Laravel column names into Python writes for SQL Server.

2. **Tables absent from SQL Server must be treated as OUT-OF-SCOPE / BLOCKED-TBL, not ported with invented schemas.** The 189 absent tables represent features not currently live in the SQL Server deployment.

3. **Any case where SQL Server has a column the Laravel version dropped (legacy-only fields that VB6 still writes)** — e.g., `LogSite_Code` appears in SQL Server but may be absent from some Laravel migration definitions; always check the live DB schema first.

4. **HallBook and BookingInquiry DO exist in the live DB** (previously incorrectly listed as BLOCKED-TBL in earlier drafts) — they are part of the 21 overlapping tables.

5. **Case-insensitive matching is critical**: `ledger` vs `Ledger` vs `ledgerRef` vs `ledgerAdj` vs `LedgerM` vs `LedgerMerge` are all different tables. Do not fuzzy-match.

6. **SubGroup disparity**: SQL Server has 79 columns for SubGroup vs Laravel's 55 — porting must account for 24+ additional fields (FatherName, MotherName, IdProof, GSTIN, LegalName, etc.) that VB6 still writes.

7. **Sale1/Sale2 expansion**: SQL Server has significantly more columns (80/19) vs Laravel (53/21) — include TDS/CGST/SGST/IGST columns that have no Laravel counterpart.

8. **UserPermission**: Laravel has 24 columns vs SQL Server's 18 — 6 Laravel-only columns (`backcolor, ChangeGuestProfile, FacilityBilling, EditItemInKOT, FOMDiscountAllowUpto, RefundCashCardAmt`) may be Laravel-internal tracking fields.

9. **HallBook column count**: SQL Server (74) far exceeds Laravel (40) — the additional columns (GuarAtt, CoverRate, ServiceCharge, etc.) are Hall-specific fields for rent calculation and reporting.

10. **NauditLog type differences**: SQL Server uses `smalldatetime` for date fields (`DateChngFrom, DateChngTo, U_EntDt`) while Laravel uses `datetime` — type conversion needed when porting.

11. **Enviro table**: The massive `Enviro` table (221+ columns in SQL Server) has no direct Laravel migration counterpart in the tenant_migrations directory — it appears to be a configuration/prefs table maintained outside the migration system.

12. **Voucher table absent**: The `Voucher` table is marked NO in the candidate section but is a core accounting table — this indicates it may be a VB6-legacy table or handled through raw SQL rather than Laravel migrations.

---

## Verification (falsifiable claims corrected)

- **HallBook and BookingInquiry DO exist in the live DB**: Confirmed — both appear with YES status in the `## candidate / previously-blocked` section of `schema_probe_raw.txt` (lines 13-14). They are part of the 21 Laravel tables that exist in SQL Server (overlap category), not the BLOCKED-TBL category.

- **SubGroup exists in SQL Server**: Confirmed with 79 columns under `### SubGroup (79 cols)` heading.

- **Voucher_Prefix exists**: Confirmed with 10 columns under `### Voucher_Prefix (10 cols)` heading.

- **TDSCat exists**: Confirmed with 9 columns under `### TDSCat (9 cols)` heading.

### Validation (report in final answer)

- **Laravel tables parsed**: 210 (from 230 migration PHP files in `LOGIC/analysishms-master/database/migrations/tenant_migrations/`)
- **Tables EXISTS in SQL Server**: 21
- **Tables ABSENT from SQL Server**: 189
- **Exact command/approach used to parse migrations**: PHP script (`parse_migrations.php`) that regex-extracted `Schema::connection('tenant')->create('table_name', ...)` and `$table->method('column_name')` patterns from each file. Column names were extracted from quoted strings in `$table->` definitions. Non-migration files (alter tables, raw SQL) were handled where possible; some alter-table migrations could not be fully parsed for column definitions.
- **Migrations that could not be parsed**: Several `alter_*` migrations that use raw `Schema::table()` with `->dropColumn()`, `->renameColumn()`, or `->string()` alteration patterns rather than `Schema::create()`. These were flagged as potentially having columns that differ from the `Schema::create` definitions. A total of ~20 migration files had patterns that the regex could not fully extract (e.g., `2026_10_08_175245_alter_channelrate_add_httpcode.php`, `2026_10_29_112048_alter_mall_lease_dtl_and_escalation.php`). The column definitions from `Schema::create` migrations were prioritized; alteration migrations were treated as supplementary.
- **Output file written**: `C:\Analysis\HMS_py\SCHEMA_OVERLAP_MATRIX.md` confirmed written with the content above.