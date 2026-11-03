# LOGIC_SOURCES — Dual-Source Rule (VB6 + Laravel)

**Status:** Immutable addendum to `spec.md` constitution, adopted 2026-11-03.
**Applies to:** every module port from now on.

---

## 1. The two sources

| | Source A — VB6 | Source B — Laravel |
|---|---|---|
| Path | `LOGIC/VISUALBASIC/` (321 `.frm`, 32 `.bas`) | `LOGIC/analysishms-master/` (Laravel 10, PHP 8.1, MySQL) |
| State | Decompiled P-code: `loc_XXXX:`, `var_NN` — logic/SQL readable, names are noise | Clean, readable MVC: routes → controller → service → model |
| Target DB | **SQL Server** — same DB the Python app writes (`KailashData2526`) | **MySQL**, multi-tenant (`propertyid` + tenant DB) |
| Strength | Exact desktop behavior: field order, enable/disable rules, commit sequence, print layout, keyboard flow | Exact business rules: formulas, validation order, edge cases, report SQL, column definitions |
| Weakness | Obfuscated identifiers; some logic unrecoverable | Different schema dialect; multi-tenant assumptions that do **not** exist in the desktop app |

Neither source is optional. VB6 alone leaves rules unreadable; Laravel alone would produce a web app wearing a desktop skin.

---

## 2. Authority split (conflict resolution)

| Question | Authority | Rule |
|---|---|---|
| What does the screen look like / which fields, order, enable rules? | **VB6** | Laravel Blade views are not a UI reference. |
| What is the exact DB write (tables, columns, order, transaction boundary)? | **VB6** | Live SQL Server schema is final arbiter. |
| What is the calculation / formula / rounding? | **Laravel** if VB6 is unreadable; else **VB6** | State which you used in the ledger entry. |
| What are the validation rules and their order? | **Laravel** (explicit `$request->validate` / service guards) | Then confirm VB6 does not contradict. |
| What is the report SQL / aggregation? | **Laravel** `resources/views/queries/**` + report controllers | Cross-check totals against VB6 report logic. |
| Which columns does a table have? | **Live SQL Server** (`_qa/schema_probe_raw.txt`) | Laravel migrations are only a cross-check for tables that are absent. |
| Does a feature exist at all? | **VB6 form inventory** (scope) | Laravel-only modules are out of scope unless the user opts in. |

**Hard rule:** when VB6 and Laravel disagree on a *computation*, the VB6 value is what the desktop app must produce (users' historical data depends on it); when VB6 is unreadable, use Laravel and log `source=laravel` in `PROCEDURE_MIGRATION_LEDGER.md`.

---

## 3. Hard prohibitions (Laravel → Python)

Never copy these into Python code or SQL:

1. `propertyid` — SQL Server uses `Site_Code` (+ `LogSite_Code` for audit).
2. `created_at` / `updated_at` — SQL Server uses `U_EntDt`, `U_Name`, `U_AE`, `LogSite_Code`.
3. `id` autoincrement PKs — VB6 tables use composite keys (`DocId` + `V_SNo`, `V_Type` + `V_No` + `Site_Code`).
4. MySQL syntax — no `LIMIT` in `TOP` position, no backtick identifiers, no `ON DUPLICATE KEY`, no `DATE_FORMAT`.
5. Eloquent soft-delete `delflag` semantics where the SQL Server table has no such column.
6. Multi-tenant scoping — the desktop app is single-property per DB; do not add tenant filters.
7. Any table from `SCHEMA_OVERLAP_MATRIX.md` §"ABSENT" — inventing its schema violates the zero-schema-change rule (mark `BLOCKED-TBL`).

---

## 4. Identifier mapping cheatsheet

| Laravel (MySQL) | SQL Server (VB6) |
|---|---|
| `ledger.docid`, `vno`, `vsno`, `vtype`, `vprefix`, `vdate` | `Ledger.DocId`, `V_No`, `V_SNo`, `V_Type`, `v_Prefix`, `V_Date` |
| `ledger.amtdr` / `amtcr` / `subcode` / `contrasub` | `Ledger.AmtDr` / `AmtCr` / `SubCode` / `ContraSub` |
| `ledger.groupcode` / `groupnature` / `narration` / `u_name` | `Ledger.GroupCode` / `GroupNature` / `Narration` / `U_Name` |
| `voucher_type.v_type` / `category` / `description` / `number_method` | `Voucher_Type.V_Type` / `Category` / `Description` / `Number_Method` |
| `voucher_prefix.v_type` / `date_from` / `date_to` / `prefix` / `start_srl_no` | `Voucher_Prefix.V_Type` / `Date_From` / `Date_To` / `Prefix` / `Start_Srl_No` |
| `tds_categories.code` / `tdspercentage` / `tdslimit` | `TDSCat.Code` / `TDSPercentage` / `TDSLimit` |
| `room_mast` / `rooms` | `RoomMast` |
| `booking` / `bookings` | `Booking` (verify per-module; probe before use) |

Always confirm the real casing with `SELECT name FROM sys.tables` — SQL Server is case-insensitive but the Python codebase uses the VB6 casing.

---

## 5. Verified schema facts (2026-11-03 probe, live DB)

- **271 tables** in `KailashData2526`.
- Present (earlier wrongly listed as BLOCKED-TBL): `HallBook`, `BookingInquiry`, `VenueMast`, `VenueOcc`, `FacilityBill1`, `FacilityBill2`, `SuntranFacility`, `NightAuditLog`, `MemberFamily`.
- Absent: `CateringBook`, `EventMast`, `HallBill`, `BanquetSundry`, `SmartCard`, `RewardPoint`, `TelCall`, `DoorLock`, `EInvoice`, `RoomInclusive`, `RoomInclusiveLog`, `DailyReportSnapshot`, all `Mall*`, `BookingFollowUp`, `Remarks`, `GatePass*`, `Notification*`, `Whatsapp*`, `ActivityLog`, `LedgerLog`, `ChequeDesign`, `BookingSource`, `TravelAgent`, `MemberCategory`, `MemberMast`, `Printers`, `ShiftMaster`.
- Raw evidence: `_qa/schema_probe_raw.txt`. Per-table overlap: `SCHEMA_OVERLAP_MATRIX.md`.

Consequence: Laravel's newer modules (Mall, Channel Manager, Notifications/WhatsApp, Performance monitoring, Support tickets, ESSl attendance, Booking follow-up, Gate Pass, Smart Card recharge) are **`N/A-OUT-OF-SCOPE`** for the desktop port — they cannot be written without a schema change, and VB6 has no counterpart.

**Decision (2026-11-03, user-confirmed):** VB6 scope is ported first. Laravel-only modules are deferred; revisiting them requires a separate phase with explicitly approved schema additions.

---

## 6. Revised 9-step loop

```
1. Dual Analyze     → VB6 form/bas (behavior) + locate Laravel counterpart via LARAVEL_LOGIC_INDEX.md (rules)
2. Python Core      → port faithfully; cite source in docstring (source=vb6 | laravel)
3. Python UI        → ui/<domain>_ui.py following VB6 field order/labels (never Blade layout)
4. SQL Verify       → probe live DB; absent = BLOCKED-TBL; confirm columns via _qa/schema_probe_raw.txt
5. Permissions      → menuHelp OPT1-4 / User1 rights (VB6 semantics)
6. Report/Print     → VB6 .rpt layout; Laravel report SQL only for aggregation logic
7. Test             → python -m pytest -x -q
8. Dual Re-compare  → VB6 behavior diff + numeric spot-check of any Laravel-derived formula
9. Log Result       → FORM_MIGRATION_LEDGER.md (+ source column), bugs in MIGRATION_MASTER_BUG_REGISTER.md
```

---

## 7. Where to look first

- `LARAVEL_LOGIC_INDEX.md` — module → Laravel files → tables → rules → Python target.
- `SCHEMA_OVERLAP_MATRIX.md` — Laravel table → SQL Server table, column diffs, absent list.
- `_qa/schema_probe_raw.txt` — raw live-schema dump.
- `VB6_PARITY_MATRIX.txt` — VB6 form → Python wiring status (regenerate after each module).
