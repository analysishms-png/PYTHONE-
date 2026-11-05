# Migration Master Bug Register

**Format:** `| ID | Module | Severity | Description | VB6 Evidence | Python Location | Status | Date |`

---

## Severity Levels
- **CRITICAL** — Data loss, wrong calculations, security issue
- **HIGH** — Functional failure, blocks user workflow
- **MEDIUM** — Incorrect behavior, workaround exists
- **LOW** — Cosmetic, minor UX difference from VB6

---

## Open Bugs

| ID | Module | Severity | Description | VB6 Evidence | Python Location | Status | Date |
|----|--------|----------|-------------|--------------|-----------------|--------|------|
| BUG-026 | pos_sales | HIGH | `vals[50]` duplicate index access causes IndexError on certain bill layouts | RSSaleBill.frm grid population | pos_sales.py line ~XXX | OPEN | 2026-11-03 |
| BUG-027 | inventory | MEDIUM | Hardcoded supplier `KK000265` in purchase logic | Purchase.frm supplier selection | inventory.py line ~XXX | OPEN | 2026-11-03 |
| BUG-028 | folio | MEDIUM | Post Charges core logic inline in UI (fd_forms_ui.py) not extracted to folio.py | fdPostChrg.frm save sequence | fd_forms_ui.py, folio.py | OPEN | 2026-11-03 |
| BUG-029 | folio | MEDIUM | Payment/Charge core logic inline in UI (fd_forms_ui.py) not extracted to folio.py | fdPaymentCharge.frm save sequence | fd_forms_ui.py, folio.py | OPEN | 2026-11-03 |
| BUG-030 | fa_voucher | HIGH | Voucher Entry (FaVrEnt) core partial - missing validation, commit sequence | FaVrEnt.frm CmdSave_Click | fa_voucher.py, fa_voucher_ui.py | FIXED | 2026-11-03 |
| BUG-031 | fa_enviro | MEDIUM | Voucher Environment (FaEnvron) partial - year/period handling differs | FaEnvron.frm Form_Load | fa_enviro.py, fa_enviro_ui.py | FIXED | 2026-11-03 |
| BUG-034 | year_end | HIGH | Year End Updation missing Company row creation, Voucher_Prefix reset, menuHelp/menuHelp1 copy, UserPermission copy | frmYearEnd.frm CmdYrUpdate_Click | year_end.py | OPEN | 2026-11-03 |
| BUG-032 | pos_masters | LOW | Menu Item Entry (RsMenuItemEntry) missing rate group assignment | RsMenuItemEntry.frm | pos_masters_ui.py, pos_masters.py | OPEN | 2026-11-03 |
| BUG-033 | pos_stock | MEDIUM | Kitchen Stock (RsKitchenStk) consumption update missing material tracking | RsKitchenStk.frm | pos_stock_ui.py, pos_stock.py | OPEN | 2026-11-03 |

---

## Fixed Bugs (Historical)

| ID | Module | Severity | Description | Fix | Date |
|----|--------|----------|-------------|-----|------|
| BUG-001 | db | CRITICAL | Connection leak in transaction context | Fixed in db.py transaction() | 2026-09-15 |
| BUG-002 | checkin | HIGH | Room status not updated to 'Occupied' on check-in | Added RoomMast update | 2026-09-16 |
| BUG-003 | checkout | HIGH | Outstanding balance not blocking checkout | Added balance guard | 2026-09-17 |
| BUG-004 | pos_kot | MEDIUM | KOT transfer not updating RoomCat for Room Service | Added RoomOcc lookup | 2026-09-18 |
| BUG-005 | pos_kot | MEDIUM | Table change not setting audit fields | Added U_Name1/U_EntDt1/U_AE1='E' | 2026-09-18 |
| BUG-006 | fo_ops | HIGH | Room Change not re-linking PlanDetails | Added PlanDetails delete/re-insert | 2026-09-22 |
| BUG-007 | fo_ops | HIGH | Merge Charge not updating PayCharge FolioNoDocId | Added ContraDocID mesh | 2026-09-22 |
| BUG-008 | fo_ops | HIGH | Re-Settlement race condition on VNo | Used db.next_vno with UPDLOCK/HOLDLOCK | 2026-09-22 |
| BUG-009 | db | HIGH | Hardcoded SITE_CODE="KK" in 83 modules | Centralized get_site_code() | 2026-09-21 |
| BUG-010 | db | HIGH | MAX(VNo)+1 race condition | Centralized db.next_vno() | 2026-09-21 |
| BUG-011 | checkout | MEDIUM | Invalid column name error handling | Specific pyodbc error 207 catch | 2026-09-21 |
| BUG-012 | taxstru | MEDIUM | Grid silently skipping invalid rows | Explicit ValueError with row number | 2026-09-21 |
| BUG-013 | kot_entry | MEDIUM | Invalid SNo/Qty/Rate silent zero | Explicit ValueError | 2026-09-21 |
| BUG-014 | reservation | MEDIUM | Non-numeric BookNo crash | Guard in _selected_bookno() | 2026-09-21 |
| BUG-015 | checkout | MEDIUM | Folio selection None/empty crash | Safe helpers in checkout_ui.py | 2026-09-21 |

---

## Bug Triage Process

1. **Discover** — During parity re-compare (step 8) or testing
2. **Log** — Add to this register with VB6 evidence reference
3. **Prioritize** — CRITICAL/HIGH block release; MEDIUM/LOW scheduled
4. **Fix** — Python side only; never modify LOGIC/VISUALBASIC/
5. **Verify** — Re-run parity re-compare; update ledger
6. **Close** — Mark FIXED with date and commit reference

---

## VB6 Evidence Reference Format

| Format | Example |
|--------|---------|
| Form event | `fdCheckIn.frm:CmdSave_Click` |
| Module procedure | `FOMModule.bas:Proc_146_1_1334068` |
| SQL query | `FaVrEnt.frm:INSERT INTO Voucher...` |
| Variable assignment | `FaVoucher.bas:var_VNo = ...` |