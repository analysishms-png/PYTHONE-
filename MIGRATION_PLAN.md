# HMS_py VB6 → Python Migration Plan

**Based on:** `vb6-migrate` skill 9-step loop, `vb6-python-parity` skill recipe  
**Constitution:** VB6 behavioral fidelity, extend existing app, zero DB schema changes, evidence-only

---

## 9-Step Loop Per Module (from vb6-migrate skill)

```
1. Dual Analyze         → Read VB6 <form>.frm event handlers + inline SQL, then find the
                          readable Laravel counterpart in LARAVEL_LOGIC_INDEX.md (see LOGIC_SOURCES.md)
2. Python Core          → Port to core/<domain>.py faithfully
3. Python UI            → Create ui/<domain>_ui.py (grid+buttons or base_master)
4. SQL Verify           → Schema probe first (table absent = BLOCKED-TBL)
5. Permissions          → menuHelp OPT1-4 / User1 rights check
6. Report/Print Chain   → .rpt → existing reports engine
7. Test                 → python -m pytest -x -q
8. VB6 Re-compare       → Side-by-side behavior diff (vb6-python-parity skill)
9. Log Result           → FORM_MIGRATION_LEDGER.md + bugs in MIGRATION_MASTER_BUG_REGISTER.md
```

**Never skip steps 8-9:** Module is DONE only after re-compare + ledger entry.

---

## Phase Execution Order (Priority)

### Phase 2: Front Office Completion (Current - v0.1.2 partial)
| Module | VB6 Forms | Core Target | UI Target | Status | Steps Done |
|--------|-----------|-------------|-----------|--------|------------|
| Room Change | fdRoomChange.frm | fo_ops.py:room_change | fo_sub_forms_ui.py:RoomChangeWindow | ✅ DONE | 1-9 |
| Merge Charge | FrmMergeCharge.frm | fo_ops.py:merge_charge | fo_sub_forms_ui.py:MergeChargeWindow | ✅ DONE | 1-9 |
| Re-Settlement | FdReSetlement.frm | fo_ops.py:re_settlement | fo_sub_forms_ui.py:ReSettlementWindow | ✅ DONE | 1-9 |
| Post Charges | fdPostChrg.frm | folio.py | fd_forms_ui.py | 🔄 PARTIAL | 1-3 |
| Payment/Charge | fdPaymentCharge.frm | folio.py | fd_forms_ui.py | 🔄 PARTIAL | 1-3 |
| Amend Stay | fdAmendEntry.frm | fo_ops.py | fo_sub_forms_ui.py | ⏳ TODO | — |
| Reverse Room Merge | fdRevCheckOut.frm | fo_ops.py | fo_sub_forms_ui.py | ⏳ TODO | — |
| Bill Reprint | fdPrintScreen.frm | reports.py | guest_charges_ui.py | ⏳ TODO | — |

**Next:** Complete Post Charges + Payment/Charge core logic (folio.py), then Amend Stay, Reverse Merge, Bill Reprint.

---

### Phase 3: Night Audit + Finance (GST Critical - P0)

| Module | VB6 Forms | Core Target | UI Target | Dependencies |
|--------|-----------|-------------|-----------|--------------|
| Voucher Entry | FaVrEnt.frm, FaVrEnt.frx | fa_voucher.py | fa_voucher_ui.py | Ledger, Voucher tables |
| Voucher Environment | FaEnvron.frm | fa_enviro.py | fa_enviro_ui.py | Enviro table |
| TDS Operations | FaTDSCat.frm, FaTDSChal.frm, FaTDSCertificate.frm | fa_tds_ops.py | scheme_tds_ui.py | TDS tables |
| FA Reports | FaRepView.frm, FaReports.frm | fa_reports.py | fa_voucher_ui.py:ReportViewer | Ledger, Voucher |
| Tally Export | - | tally_export.py | tally_export_ui.py | Voucher data |
| Year End | frmYearEnd.frm | year_end.py | year_end_ui.py | All FA tables |
| GST/e-Invoice | eInvoice.bas | einvoice.py | einvoice_ui.py | EInvoice table (BLOCKED-TBL) |

**Execution Order:**
1. Voucher Entry core + UI (FaVrEnt port)
2. Voucher Environment (FaEnvron port)
3. TDS Category/Challan/Certificate
4. FA Reports (FaRepView → ReportViewer)
5. Tally XML Export
6. Year End Updation
7. e-Invoice (blocked - table check first)

---

### Phase 4: POS Completion

| Module | VB6 Forms | Core Target | UI Target | Status |
|--------|-----------|-------------|-----------|--------|
| KOT Entry | RsKOTEntry.frm | pos_kot.py | kot_entry.py | ✅ DONE |
| KOT Transfer | RsKOTTransfer.frm | pos_kot.py:kot_transfer | kot_transfer_ui.py | ✅ DONE |
| Table Change | RsTbChange.frm | pos_kot.py:table_change | kot_transfer_ui.py | ✅ DONE |
| POS Sale Bill | RSSaleBill.frm, RsTouchScreenSaleBill.frm | pos_sales.py | pos_sales_ui.py | ✅ DONE |
| POS Masters | RsMenuItemEntry.frm, RsTableMast.frm, etc. | pos_masters.py | pos_masters_ui.py | 🔄 PARTIAL |
| Kitchen Stock | RsKitchenStk.frm, RsKitchenMaterial.frm | pos_stock.py | pos_stock_ui.py, kitchen_clstk_ui.py | 🔄 PARTIAL |
| Delivery | RsAssignDelivery.frm | pos_delivery.py | pos_delivery_ui.py | ✅ DONE |
| Happy Hours | RsHappyHours.frm | pos_happy.py | pos_happy_ui.py | ✅ DONE |
| Packing | RsPacking.frm | pos_packing.py | pos_packing_ui.py | ✅ DONE |

**Next:** Complete POS Masters (Item Entry, Menu Group/Category/Item, Rate Group), Kitchen Stock.

---

### Phase 5: Inventory Purchase Cycle

| Module | VB6 Forms | Core Target | UI Target | Tables |
|--------|-----------|-------------|-----------|--------|
| Purchase Order | - | purchase.py | purchase_order_ui.py | Purchase, PurchaseReturn |
| Purchase Bill | - | purchase.py | purchase_bill_ui.py | Purchase |
| Stock Receive | RsStoreRecEntry.frm | inventory.py | stock_receive_ui.py | Stock, Purchase |
| Stock Issue | - | inventory.py | stock_issue_ui.py | Issue, Indent1 |
| Stock Adjust | - | inventory.py | stock_adjust_ui.py | StockAdjust |
| Requisition Slip | - | inventory.py | requisition_slip_ui.py | Indent1, StockIssue (RQI) |
| Item Master | ItemEntry.frm | item.py | p2_masters.py:ItemEntry | Item, ItemGroup, ItemCategory |

---

### Phase 6: Members + Smart Card

| Module | VB6 Forms | Core Target | UI Target | Tables |
|--------|-----------|-------------|-----------|--------|
| Member Master | MemberMast.frm | members_masters.py | member_billing_ui.py | MemberMast, MemCategory |
| Corporate Member | CorporateMemberMast.frm | members_masters.py | member_billing_ui.py | CorpMemberMast |
| Facility Master | FacilityMast.frm | members_masters.py | facility_billing_ui.py | FacilityMast |
| Member Billing | - | member_billing.py | member_billing_ui.py | MemberBill, MemberFolio |
| Smart Card Registration | SmartCardRegistration.frm | smartcard_ops.py | registration_entry_ui.py | **SmartCard (BLOCKED-TBL)** |
| Smart Card Recharge | SmartCardRecharge.frm | smartcard_ops.py | registration_entry_ui.py | **SmartCard (BLOCKED-TBL)** |

---

### Phase 7: Banquet/Catering

| Module | VB6 Forms | Core Target | UI Target | Tables |
|--------|-----------|-------------|-----------|--------|
| Venue Master | VenueMast.frm | venue.py | banquet_masters_ui.py | VenueMast, VenueFeature |
| Events | CateringBooking.frm | hall_booking.py | hall_booking_ui.py | **CateringBook, EventMast (BLOCKED-TBL)** |
| Banquet Bill Sundry | - | banquet_ops.py | banquet_ops_ui.py | BanquetSundry |
| Menu Items | - | banquet_ops.py | banquet_ops_ui.py | CatalogMaster, BanquetMenuItem |

---

### Phase 8: HR/Payroll

| Module | VB6 Forms | Core Target | UI Target | Tables |
|--------|-----------|-------------|-----------|--------|
| Employee Master | EmployeeMast.frm | hr_masters.py | hr_members_ui.py | EmployeeMast, EmpCategory, Designation |
| Salary Creation | prSalCreate.frm | hr_payroll.py | hr_payroll_ui.py | Salary, Attendance |
| Holiday Master | HolidayMast.frm | hr_masters.py | hr_members_ui.py | HolidayMast |
| Category Master | CategoryMast.frm | hr_masters.py | hr_members_ui.py | EmpCategory, MemCategory |

---

### Phase 9: EPABX + SMS + Door Lock

| Module | VB6 Forms | Core Target | UI Target | Tables |
|--------|-----------|-------------|-----------|--------|
| Call Type Master | TelCallTypeMast.frm | epabx_masters.py | epabx_ui.py | TelCallTypeMast |
| Extension Master | TelExtensionMast.frm | epabx_masters.py | epabx_ui.py | TelExtensionMast |
| Call Entry | TelCallEntry.frm | epabx_ops.py | epabx_ui.py | **TelCall (BLOCKED-TBL)** |
| Com Port Config | ComPortProperties.frm | comport_config.py | comport_ui.py | ComPort |
| Door Lock | FrmGodrejLockSettings.frm | door_lock.py, godrej_locks.py | door_lock_ui.py | **DoorLock (BLOCKED-TBL)** |
| SMS | SMSModule.bas | sms_comm.py, sms_http.py | sms_ui.py, sms_http_ui.py | SMSOutbox |

---

### Phase 10: Utility/Main Setup Completion

| Module | VB6 Forms | Core Target | UI Target | Tables |
|--------|-----------|-------------|-----------|--------|
| Company Profile | CompMast.frm | company_profile.py | company_profile_ui.py | CompMast |
| System Config | - | sys_config.py | sys_config_ui.py | RWParameter |
| DB Backup | - | db_backup.py | db_backup_ui.py | — |
| DB Maintenance | - | db_maintenance.py | db_maintenance_ui.py | — |
| Block Master | FrmBlockMast.frm | - | block_master_ui.py | BlockMast |
| Reward Points | RewardPointParam1.frm | - | - | **RewardPoint (BLOCKED-TBL)** |
| Sundry Master | SundryMast.frm | sundry.py | p2_masters.py:SundryMast | Sundry |
| Voucher Sundry | VoucherSundrySetting.frm | sundry_type.py | p2_masters.py | VoucherSundry |

---

## Implementation Rules (Constitution)

1. **Schema probe FIRST** — `db.query("SELECT TOP 1 * FROM <table>")` before any port. Absent = BLOCKED-TBL, document, STOP.
2. **Core before UI** — Business logic in `core/<domain>.py`, UI only calls core helpers.
3. **VB6 fidelity** — Copy WHERE/JOIN/ORDER BY, INSERT/UPDATE order, commit sequence exactly.
4. **Single DB connection** — Use `core/db.py` transaction context manager; no second connection in same transaction.
5. **Registry wire** — Exact VB6 menu caption as key in `shell.py:_form_registry()`.
6. **Case-insensitive lookup** — menuHelp lowercases; use `_reg_ci` pattern.
7. **Commit per module** — `git add <files> && git commit -m "feat: <module> ..."`
8. **Tests** — Unit tests (mock) + live-DB integration tests + UI instantiation tests.
9. **Re-compare** — Side-by-side with VB6 (vb6-python-parity skill) before marking DONE.

---

## Tracking Files (Created by Migration)

| File | Purpose |
|------|---------|
| `MIGRATION_STATUS.md` | Live phase/form status (this file's sibling) |
| `MIGRATION_PLAN.md` | This file — phased execution plan |
| `FORM_MIGRATION_LEDGER.md` | Per-form: VB6→Python mapping, status, diff notes |
| `PROCEDURE_MIGRATION_LEDGER.md` | Per-procedure: VB6 Sub/Function → Python function |
| `MIGRATION_MASTER_BUG_REGISTER.md` | All bugs found during migration |
| `PARITY_RECONCILIATION.md` | Side-by-side diff results (step 8) |
| `VB6_PARITY_MATRIX.txt` | Auto-generated full matrix (vb6-python-parity skill) |
| `specs/00X-*.md` | Per-feature parity specs (one per major module) |

---

## Quick Start Commands

```bash
# Generate parity matrix (run from project root)
python tools/generate_parity_matrix.py

# Run all tests
python -m pytest -x -q

# Run specific module tests
python -m pytest HMS_py/tests/unit/test_<module>.py -v

# Headless form smoke test
HMS_FORCE_HEADLESS=1 python -m HMS_py.main

# Check migration status
cat MIGRATION_STATUS.md
```