# HMS_py Migration Master Plan

**Project:** VB6 + Laravel → Python/PyQt6 Hotel Management System  
**Date:** 2026-11-03  
**Status:** Phase 4 (Night Audit + Finance) starting  

---

## Executive Summary

- **Total VB6 Forms:** 321
- **Total Menu Options:** 375
- **Currently DONE (parity verified):** 146 forms + 18 fuzzy = ~51%
- **Currently MISSING:** 153 forms
- **BLOCKED-TBL:** 3 forms (RewardPoint table missing)
- **Target:** 100% in-scope migration with VB6 behavioral fidelity

---

## Migration Phases (Priority Order)

### Phase 1: Core Infrastructure ✅ COMPLETE
- db.py, auth.py, company.py, menu.py, shell.py, theme.py
- Foundation complete, all tests passing

### Phase 2: Front Office 🔄 IN PROGRESS
- Check-in, Check-out, Room Status, Walk-in — ✅ DONE
- Room Change, Merge Charge, Re-Settlement — ✅ DONE (v0.1.2)
- **Pending:** Post Charges, Payment/Charge, Amend Stay, Reverse Check Out, Bill Reprint

### Phase 3: Point of Sale 🔄 IN PROGRESS
- KOT Entry, KOT Transfer, Table Change — ✅ DONE
- POS Sale Bill, Split Bill — ✅ DONE
- **Pending:** POS Masters (Menu Item, Rate Group), Kitchen Stock

### Phase 4: Night Audit + Finance ⏳ **NEXT — P0 (GST Critical)**
| Milestone | VB6 Source | Python Target | Duration |
|-----------|------------|---------------|----------|
| 4.1 Voucher Entry Core | FaVrEnt.frm, FaVoucher.bas | fa_voucher.py + fa_voucher_ui.py | Week 1 |
| 4.2 Voucher Environment | FaEnvron.frm | fa_enviro.py + fa_enviro_ui.py | Week 1-2 |
| 4.3 TDS Operations | FaTDSCat.frm, FaTDSChal.frm, FaTDSCertificate.frm | fa_tds_ops.py + scheme_tds_ui.py | Week 2 |
| 4.4 FA Reports + Tally Export | FaRepView.frm, FaReports.frm | fa_reports.py + tally_export.py | Week 2-3 |
| 4.5 Year End Updation | frmYearEnd.frm | year_end.py + year_end_ui.py | Week 3 |

### Phase 5: POS Completion
| Milestone | VB6 Source | Python Target |
|-----------|------------|---------------|
| 5.1 POS Masters Complete | RsMenuItemEntry.frm, RsTableMast.frm, RsGravyItemEntry.frm | pos_masters.py + pos_masters_ui.py |
| 5.2 Kitchen Stock + Material | RsKitchenStk.frm, RsKitchenMaterial.frm | pos_stock.py + pos_stock_ui.py |

### Phase 6: Inventory Purchase Cycle
| Milestone | VB6 Source | Python Target |
|-----------|------------|---------------|
| 6.1 Purchase Order → Bill → Receive | pPOrder.frm, Purchase.frm, RsStoreRecEntry.frm | purchase.py + inventory.py |
| 6.2 Stock Issue + Adjust + Opening | StockIssue.frm, StockAdjust.frm, OpeningStock.frm | inventory.py + UI |

### Phase 7: Front Office Remaining
| Milestone | VB6 Source | Python Target |
|-----------|------------|---------------|
| 7.1 Post Charges + Payment Core Extraction | fdPostChrg.frm, fdPaymentCharge.frm | folio.py |
| 7.2 Amend Stay + Reverse Checkout | fdAmendEntry.frm, FdRevCheckOut.frm | fo_ops.py + fo_sub_forms_ui.py |

### Phase 8-12: Remaining Domains (Parallelizable)
| Phase | Domain | Key Forms | Blockers |
|-------|--------|-----------|----------|
| 8 | Members | MemberMast, CorpMember, Facility, Billing | SmartCard BLOCKED-TBL |
| 9 | Banquet | Events, Catalog, Bill Sundry | CateringBook, EventMast BLOCKED-TBL |
| 10 | HR/Payroll | Employee, Salary, Holiday | Mostly DONE |
| 11 | EPABX/SMS/Door | Call Entry, Door Lock | TelCall, DoorLock BLOCKED-TBL |
| 12 | Utility/Reports | Data Transfer, Menu Copy, 70+ reports | Report engine extension |

---

## Quality Gates (Per Module — Non-Negotiable)

1. **Schema probe passed** — `SELECT TOP 1 * FROM <table>` for every table
2. **Core logic ported** — VB6 SQL + commit sequence preserved exactly
3. **UI created** — PyQt6, VB6 captions verbatim, field order preserved
4. **Registry wired** — Exact menu caption key in `shell.py:_form_registry()`
5. **Unit tests pass** — Mock-based, no DB
6. **Integration tests pass** — Live DB (where authorized)
7. **UI instantiation test pass** — Headless form creation
8. **VB6 re-compare complete** — PARITY_RECONCILIATION.md entry
9. **Bugs logged** — MIGRATION_MASTER_BUG_REGISTER.md
10. **Ledgers updated** — FORM_MIGRATION_LEDGER.md, PROCEDURE_MIGRATION_LEDGER.md
11. **Git commit** — Atomic, conventional message

---

## Automation Infrastructure (Already Built)

| Tool | Purpose |
|------|---------|
| `tools/generate_parity_matrix.py` | VB6 forms ↔ Python registry ↔ Live DB |
| `tools/generate_menu_checklist.py` | MenuHelp → MENU_MODULE_CHECKLIST.md |
| `tools/manual_pipeline/run_module_tests.py` | 4-layer test runner (L1-L3) |
| `tools/manual_pipeline/collect_logic.py` | VB6 logic extraction |
| `HMS_FORCE_HEADLESS=1 python -m HMS_py.main` | Headless smoke test |

---

## Current Sprint: Phase 4.1 — Voucher Entry Core

### Tasks (Dependency-Ordered)

| Task ID | Agent | Description | Dependencies | Status |
|---------|-------|-------------|--------------|--------|
| 4.1.1 | @vb6-analyst | Analyze FaVrEnt.frm, FaVoucher.bas (Form_Load, CmdSave_Click, validation) | — | ⏳ READY |
| 4.1.2 | @db-verifier | Schema probe: Voucher, Ledger, LedgerM, LedgerAdj, Enviro, Voucher_Type, Voucher_Prefix, TDSCat, SubGroup, ACGroup | 4.1.1 | ⏳ PENDING |
| 4.1.3 | @core-porter | Implement fa_voucher.py: save_voucher(), auto_vno(), list_vouchers(), get_voucher(), delete_voucher() | 4.1.2 | ⏳ PENDING |
| 4.1.4 | @core-porter | Implement validation: balanced dr/cr, valid ledger, period open, race-safe VNo | 4.1.3 | ⏳ PENDING |
| 4.1.5 | @ui-porter | Create fa_voucher_ui.py: VoucherEntryDialog (grid + buttons, VB6 captions) | 4.1.3 | ⏳ PENDING |
| 4.1.6 | @registry-wirer | Wire "Voucher Entry" in shell.py _form_registry() | 4.1.5 | ⏳ PENDING |
| 4.1.7 | @test-engineer | Write tests: unit (10+), integration (5), UI instantiation | 4.1.3, 4.1.5 | ⏳ PENDING |
| 4.1.8 | @parity-tester | VB6 re-compare: create voucher, save, verify DB | 4.1.7 | ⏳ PENDING |
| 4.1.9 | @docs-writer | Update ledgers + MIGRATION_STATUS.md | 4.1.8 | ⏳ PENDING |

---

## Success Metrics

| Metric | Target |
|--------|--------|
| Parity Matrix DONE % | +15% per phase (currently ~51%) |
| CRITICAL/HIGH bugs | 0 at phase end |
| Test pass rate | 100% |
| Ruff/MyPy clean | Yes |
| Ledger completeness | 100% for completed forms |

---

## Risk Register

| Risk | Impact | Likelihood | Mitigation |
|------|--------|------------|------------|
| VB6 decompiled logic ambiguous | HIGH | HIGH | Deep-dive analysis, document assumptions, live DB verification |
| Missing tables (BLOCKED-TBL) | MEDIUM | HIGH | Early schema probe, document, skip gracefully |
| Parity diffs in finance (GST) | CRITICAL | MEDIUM | Extra re-compare rigor, CA review if needed |
| Test environment DB unavailable | HIGH | LOW | Mock-first unit tests, CI with test DB |
| Scope creep (new features) | MEDIUM | MEDIUM | Strict constitution: migration only |

---

## Timeline

| Phase | Duration | Start | End |
|-------|----------|-------|-----|
| 4: Night Audit + Finance | 3 weeks | 2026-11-03 | 2026-11-24 |
| 5: POS Completion | 2 weeks | 2026-11-24 | 2026-12-08 |
| 6: Inventory Purchase | 2 weeks | 2026-12-08 | 2026-12-22 |
| 7: FO Remaining | 2 weeks | 2026-12-22 | 2027-01-05 |
| 8-12: Remaining | 6 weeks | 2027-01-05 | 2027-02-16 |
| **Total** | **~15 weeks** | | |