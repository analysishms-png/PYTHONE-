# HMS_py Migration Tasks

**Source:** plan.md, MIGRATION_WORKFLOW.md  
**Format:** Dependency-ordered, agent-assigned, status-tracked

---

## Phase 4: Night Audit + Finance (Current Sprint)

### Sprint 4.1: Voucher Entry Core

- [ ] **TASK-4.1.1** @vb6-analyst: Analyze FaVrEnt.frm, FaVoucher.bas
  - Extract: Form_Load SQL, CmdSave_Click sequence, validation rules
  - Output: PARITY_RECONCILIATION.md analysis section
  - Depends: —
  - Status: ⏳ TODO

- [ ] **TASK-4.1.2** @db-verifier: Schema probe Voucher, Ledger, LedgerAdj, Enviro, Vtype
  - Query: `SELECT TOP 1 * FROM <table>` for each
  - Output: Confirm all exist in MIGRATION_STATUS.md
  - Depends: TASK-4.1.1
  - Status: ⏳ TODO

- [ ] **TASK-4.1.3** @core-porter: Implement fa_voucher.py core
  - Functions: `save_voucher()`, `auto_vno()`, `list_vouchers()`, `get_voucher()`, `delete_voucher()`
  - VB6 fidelity: Balanced dr/cr check, valid ledger codes, period open check, U_Name/U_EntDt/U_AE audit
  - Depends: TASK-4.1.2
  - Status: ⏳ TODO

- [ ] **TASK-4.1.4** @core-porter: Implement fa_voucher.py validation helpers
  - `validate_balanced(voucher_lines)`, `validate_ledger_exists(code)`, `validate_period_open(vdate)`
  - Race-safe VNo via `db.next_vno('Voucher', vtype, vprefix, site, cn=cn)`
  - Depends: TASK-4.1.3
  - Status: ⏳ TODO

- [ ] **TASK-4.1.5** @ui-porter: Create fa_voucher_ui.py VoucherEntryDialog
  - Grid: Date, VType, VNo, Narration, Ledger, Dr, Cr
  - Buttons: New, Save, Delete, Print, Close (VB6 captions)
  - Factory: `open_voucher_entry(parent=None)`
  - Depends: TASK-4.1.3
  - Status: ⏳ TODO

- [ ] **TASK-4.1.6** @registry-wirer: Wire in shell.py _form_registry()
  - Key: "Voucher Entry" → `fa_voucher_ui.open_voucher_entry`
  - Depends: TASK-4.1.5
  - Status: ⏳ TODO

- [ ] **TASK-4.1.7** @test-engineer: Write tests
  - Unit: test_fa_voucher.py (mock DB, 10+ tests)
  - Integration: test_fa_voucher_live.py (live DB, 5 tests)
  - UI: test_fa_voucher_ui.py (instantiation)
  - Depends: TASK-4.1.3, TASK-4.1.5
  - Status: ⏳ TODO

- [ ] **TASK-4.1.8** @parity-tester: VB6 re-compare
  - Scenario: Create voucher with 2 lines (Dr/Cr balanced), save, verify DB
  - Document in PARITY_RECONCILIATION.md
  - Depends: TASK-4.1.7
  - Status: ⏳ TODO

- [ ] **TASK-4.1.9** @docs-writer: Update ledgers
  - FORM_MIGRATION_LEDGER.md: FaVrEnt.frm row → DONE
  - PROCEDURE_MIGRATION_LEDGER.md: save_voucher procedure row
  - MIGRATION_STATUS.md: Phase 4.1 complete
  - Depends: TASK-4.1.8
  - Status: ⏳ TODO

### Sprint 4.2: Voucher Environment

- [ ] **TASK-4.2.1** @vb6-analyst: Analyze FaEnvron.frm
  - Extract: Form_Load (load enviro), CmdSave_Click (save enviro)
  - Depends: —
  - Status: ⏳ TODO

- [ ] **TASK-4.2.2** @core-porter: Implement fa_enviro.py
  - Functions: `load_enviro()`, `save_enviro()`, `get_current_year()`, `get_vprefix()`
  - Depends: TASK-4.2.1
  - Status: ⏳ TODO

- [ ] **TASK-4.2.3** @ui-porter: Create fa_enviro_ui.py VoucherEnvironmentDialog
  - Fields: Year, VPrefix, Current Period, Voucher Types config
  - Depends: TASK-4.2.2
  - Status: ⏳ TODO

- [ ] **TASK-4.2.4** @registry-wirer: Wire "Voucher Environment" in shell.py
  - Depends: TASK-4.2.3
  - Status: ⏳ TODO

- [ ] **TASK-4.2.5** @parity-tester: Re-compare
  - Depends: TASK-4.2.4
  - Status: ⏳ TODO

### Sprint 4.3: TDS Operations

- [ ] **TASK-4.3.1** @vb6-analyst: Analyze FaTDSCat.frm, FaTDSChal.frm, FaTDSCertificate.frm
  - Depends: —
  - Status: ⏳ TODO

- [ ] **TASK-4.3.2** @db-verifier: Schema probe TDSCat, TDSChallan, TDSCertificate
  - Depends: TASK-4.3.1
  - Status: ⏳ TODO

- [ ] **TASK-4.3.3** @core-porter: Implement fa_tds_ops.py
  - CRUD for all three masters
  - Depends: TASK-4.3.2
  - Status: ⏳ TODO

- [ ] **TASK-4.3.4** @ui-porter: Extend scheme_tds_ui.py with TDS tabs
  - Depends: TASK-4.3.3
  - Status: ⏳ TODO

- [ ] **TASK-4.3.5** @registry-wirer: Wire TDS menu items
  - Depends: TASK-4.3.4
  - Status: ⏳ TODO

- [ ] **TASK-4.3.6** @parity-tester: Re-compare
  - Depends: TASK-4.3.5
  - Status: ⏳ TODO

### Sprint 4.4: FA Reports + Tally Export

- [ ] **TASK-4.4.1** @core-porter: Implement fa_reports.py
  - `trial_balance()`, `ledger_report(ledger_code, from_date, to_date)`, `voucher_register(vtype, from_date, to_date)`
  - Depends: TASK-4.1.3 (fa_voucher core)
  - Status: ⏳ TODO

- [ ] **TASK-4.4.2** @core-porter: Implement tally_export.py
  - `generate_tally_xml(voucher_type, period)` — GST-compliant XML
  - Depends: TASK-4.1.3
  - Status: ⏳ TODO

- [ ] **TASK-4.4.3** @ui-porter: Extend fa_voucher_ui.py ReportViewer, create tally_export_ui.py
  - Depends: TASK-4.4.1, TASK-4.4.2
  - Status: ⏳ TODO

- [ ] **TASK-4.4.4** @registry-wirer: Wire FA Reports, Tally Export
  - Depends: TASK-4.4.3
  - Status: ⏳ TODO

- [ ] **TASK-4.4.5** @parity-tester: Re-compare reports output
  - Depends: TASK-4.4.4
  - Status: ⏳ TODO

### Sprint 4.5: Year End Updation

- [ ] **TASK-4.5.1** @vb6-analyst: Analyze frmYearEnd.frm
  - Depends: —
  - Status: ⏳ TODO

- [ ] **TASK-4.5.2** @core-porter: Implement year_end.py
  - `year_end_updation()` — balance carry-forward, new year Enviro insert
  - Destructive — requires extra confirmations
  - Depends: TASK-4.5.1
  - Status: ⏳ TODO

- [ ] **TASK-4.5.3** @ui-porter: Create year_end_ui.py YearEndDialog
  - Multiple confirmations, backup prompt, progress display
  - Depends: TASK-4.5.2
  - Status: ⏳ TODO

- [ ] **TASK-4.5.4** @registry-wirer: Wire "Year End Updation"
  - Depends: TASK-4.5.3
  - Status: ⏳ TODO

- [ ] **TASK-4.5.5** @parity-tester: Re-compare (careful — use test DB)
  - Depends: TASK-4.5.4
  - Status: ⏳ TODO

---

## Phase 5: POS Completion

### Sprint 5.1: POS Masters Complete

- [ ] **TASK-5.1.1** @vb6-analyst: Analyze RsMenuItemEntry.frm, RsTableMast.frm, RsGravyItemEntry.frm
- [ ] **TASK-5.1.2** @core-porter: Complete pos_masters.py
- [ ] **TASK-5.1.3** @ui-porter: Complete pos_masters_ui.py
- [ ] **TASK-5.1.4** @registry-wirer: Wire POS master leaves
- [ ] **TASK-5.1.5** @parity-tester: Re-compare

### Sprint 5.2: Kitchen Stock + Material

- [ ] **TASK-5.2.1** @vb6-analyst: Analyze RsKitchenStk.frm, RsKitchenMaterial.frm
- [ ] **TASK-5.2.2** @core-porter: Complete pos_stock.py
- [ ] **TASK-5.2.3** @ui-porter: Complete pos_stock_ui.py, kitchen_clstk_ui.py
- [ ] **TASK-5.2.4** @registry-wirer: Wire Kitchen Stock leaves
- [ ] **TASK-5.2.5** @parity-tester: Re-compare

---

## Phase 6: Inventory Purchase Cycle

### Sprint 6.1: Purchase Order → Bill → Receive

- [ ] **TASK-6.1.1** @vb6-analyst: Analyze pPOrder.frm, Purchase.frm, RsStoreRecEntry.frm
- [ ] **TASK-6.1.2** @db-verifier: Schema probe Purchase, PurchaseReturn, StockReceive, Indent1
- [ ] **TASK-6.1.3** @core-porter: Implement purchase.py (PO, Purchase Bill)
- [ ] **TASK-6.1.4** @core-porter: Implement inventory.py receive_purchase(), link_po_to_receive()
- [ ] **TASK-6.1.5** @ui-porter: Create purchase_order_ui.py, purchase_bill_ui.py
- [ ] **TASK-6.1.6** @registry-wirer: Wire Purchase leaves
- [ ] **TASK-6.1.7** @parity-tester: Re-compare

### Sprint 6.2: Stock Issue + Adjust + Opening

- [ ] **TASK-6.2.1** @core-porter: Complete inventory.py (issue, adjust, opening)
- [ ] **TASK-6.2.2** @ui-porter: Complete stock_issue_ui.py, stock_adjust_ui.py
- [ ] **TASK-6.2.3** @registry-wirer: Wire Stock Issue/Adjust/Opening
- [ ] **TASK-6.2.4** @parity-tester: Re-compare

---

## Phase 7: Front Office Remaining

### Sprint 7.1: Post Charges + Payment Core Extraction

- [ ] **TASK-7.1.1** @vb6-analyst: Analyze fdPostChrg.frm, fdPaymentCharge.frm save sequences
- [ ] **TASK-7.1.2** @core-porter: Implement folio.py post_charge(), make_payment(), list_charges(), list_payments()
- [ ] **TASK-7.1.3** @ui-porter: Refactor fd_forms_ui.py to use folio.py core
- [ ] **TASK-7.1.4** @parity-tester: Re-compare Post Charges + Payment

### Sprint 7.2: Amend Stay + Reverse Checkout

- [ ] **TASK-7.2.1** @vb6-analyst: Analyze fdAmendEntry.frm, FdRevCheckOut.frm
- [ ] **TASK-7.2.2** @core-porter: Implement fo_ops.py amend_stay(), reverse_checkout()
- [ ] **TASK-7.2.3** @ui-porter: Create AmendStayWindow, ReverseCheckoutWindow in fo_sub_forms_ui.py
- [ ] **TASK-7.2.4** @registry-wirer: Wire Amend Stay, Reverse Checkout
- [ ] **TASK-7.2.5** @parity-tester: Re-compare

---

## Phases 8-12: Remaining Domains (Placeholder Tasks)

- [ ] **TASK-8.1** Members: Member Master, Corporate, Facility, Billing
- [ ] **TASK-9.1** Banquet: Events, Catalog, Bill Sundry (blocked tables)
- [ ] **TASK-10.1** HR/Payroll: Verify complete
- [ ] **TASK-11.1** EPABX/SMS/Door: Call Entry blocked, Door Lock blocked
- [ ] **TASK-12.1** Utility: Data Transfer, Menu Copy, POS Delete
- [ ] **TASK-12.2** Reports: 70+ report parity

---

## Task Status Legend

| Status | Meaning |
|--------|---------|
| ⏳ TODO | Not started |
| 🔄 IN_PROGRESS | Actively working |
| 🔍 REVIEW | Submitted, awaiting verification |
| ✅ DONE | Verified complete |
| 🚫 BLOCKED | Waiting on dependency |
| ❌ CANCELLED | Explicitly abandoned |

---

## Current Sprint Focus: Phase 4.1 (Voucher Entry Core)

**Next Actions:**
1. TASK-4.1.1 @vb6-analyst — Analyze FaVrEnt.frm, FaVoucher.bas
2. TASK-4.1.2 @db-verifier — Schema probe
3. TASK-4.1.3 @core-porter — fa_voucher.py core implementation