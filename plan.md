# HMS_py Migration Implementation Plan

**Based on:** spec.md, MIGRATION_WORKFLOW.md, vb6-migrate 9-step loop

---

## Phase 4: Night Audit + Finance (GST Critical) — CURRENT

### Milestone 4.1: Voucher Entry Core (Week 1)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 4.1.1 | @vb6-analyst | VB6 analysis: FaVrEnt.frm, FaVoucher.bas SQL + flow | Analysis notes in PARITY_RECONCILIATION.md |
| 4.1.2 | @db-verifier | Schema probe: Voucher, Ledger, LedgerAdj, Enviro, Vtype | All tables exist ✅ |
| 4.1.3 | @core-porter | fa_voucher.py: save_voucher(), auto_vno(), list_vouchers() | Unit tests pass |
| 4.1.4 | @core-porter | fa_voucher.py: validation (balanced dr/cr, valid ledger, period) | Integration tests pass |
| 4.1.5 | @ui-porter | fa_voucher_ui.py: VoucherEntryDialog (grid + buttons) | UI instantiation test |
| 4.1.6 | @registry-wirer | shell.py: "Voucher Entry" → fa_voucher_ui.open_voucher_entry | Registry audit |
| 4.1.7 | @test-engineer | test_fa_voucher.py: 10+ unit + 5 integration | pytest -x -q |
| 4.1.8 | @parity-tester | Re-compare: VB6 FaVrEnt vs Python | PARITY_RECONCILIATION.md entry |
| 4.1.9 | @docs-writer | Update ledgers + status | FORM_MIGRATION_LEDGER.md, MIGRATION_STATUS.md |

### Milestone 4.2: Voucher Environment (Week 1-2)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 4.2.1 | @vb6-analyst | VB6 analysis: FaEnvron.frm | Analysis notes |
| 4.2.2 | @core-porter | fa_enviro.py: load_enviro(), save_enviro(), get_vprefix() | Unit tests |
| 4.2.3 | @ui-porter | fa_enviro_ui.py: VoucherEnvironmentDialog | UI test |
| 4.2.4 | @registry-wirer | shell.py: "Voucher Environment" wiring | Registry audit |
| 4.2.5 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

### Milestone 4.3: TDS Operations (Week 2)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 4.3.1 | @vb6-analyst | VB6 analysis: FaTDSCat.frm, FaTDSChal.frm, FaTDSCertificate.frm | Analysis notes |
| 4.3.2 | @db-verifier | Schema probe: TDSCat, TDSChallan, TDSCertificate | Tables exist? |
| 4.3.3 | @core-porter | fa_tds_ops.py: CRUD for all three | Unit tests |
| 4.3.4 | @ui-porter | scheme_tds_ui.py extend: TDS tabs | UI test |
| 4.3.5 | @registry-wirer | shell.py: TDS menu items wiring | Registry audit |
| 4.3.6 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

### Milestone 4.4: FA Reports + Tally Export (Week 2-3)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 4.4.1 | @core-porter | fa_reports.py: trial_balance(), ledger_report(), voucher_register() | Unit tests |
| 4.4.2 | @core-porter | tally_export.py: generate_tally_xml(voucher_type, period) | Integration test |
| 4.4.3 | @ui-porter | fa_voucher_ui.py: ReportViewer (reuse), tally_export_ui.py | UI test |
| 4.4.4 | @registry-wirer | shell.py: FA Reports, Tally Export wiring | Registry audit |
| 4.4.5 | @parity-tester | Re-compare reports output | PARITY_RECONCILIATION.md |

### Milestone 4.5: Year End Updation (Week 3)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 4.5.1 | @vb6-analyst | VB6 analysis: frmYearEnd.frm | Analysis notes |
| 4.5.2 | @core-porter | year_end.py: year_end_updation() — balance carry-forward | Unit test (mock) |
| 4.5.3 | @ui-porter | year_end_ui.py: YearEndDialog with confirmations | UI test |
| 4.5.4 | @registry-wirer | shell.py: "Year End Updation" wiring | Registry audit |
| 4.5.6 | @parity-tester | Re-compare (careful — destructive) | PARITY_RECONCILIATION.md |

---

## Phase 5: POS Completion

### Milestone 5.1: POS Masters Complete (Week 4)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 5.1.1 | @vb6-analyst | VB6: RsMenuItemEntry.frm, RsTableMast.frm, RsGravyItemEntry.frm | Analysis |
| 5.1.2 | @core-porter | pos_masters.py: complete Item Entry, Menu Group/Category, Rate Group | Unit tests |
| 5.1.3 | @ui-porter | pos_masters_ui.py: complete all master forms | UI tests |
| 5.1.4 | @registry-wirer | shell.py: wire all POS master leaves | Registry audit |
| 5.1.5 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

### Milestone 5.2: Kitchen Stock + Material (Week 4)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 5.2.1 | @vb6-analyst | VB6: RsKitchenStk.frm, RsKitchenMaterial.frm | Analysis |
| 5.2.2 | @core-porter | pos_stock.py: kitchen_stock_update(), material_consumption() | Unit tests |
| 5.2.3 | @ui-porter | pos_stock_ui.py, kitchen_clstk_ui.py complete | UI tests |
| 5.2.4 | @registry-wirer | shell.py: wire Kitchen Stock leaves | Registry audit |
| 5.2.5 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

---

## Phase 6: Inventory Purchase Cycle

### Milestone 6.1: Purchase Order → Bill → Receive (Week 5)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 6.1.1 | @vb6-analyst | VB6: pPOrder.frm, Purchase.frm, RsStoreRecEntry.frm | Analysis |
| 6.1.2 | @db-verifier | Schema probe: Purchase, PurchaseReturn, StockReceive, Indent1 | Tables exist ✅ |
| 6.1.3 | @core-porter | purchase.py: create_po(), create_purchase_bill() | Unit tests |
| 6.1.4 | @core-porter | inventory.py: receive_purchase(), link_po_to_receive() | Unit tests |
| 6.1.5 | @ui-porter | purchase_order_ui.py, purchase_bill_ui.py, stock_receive_ui.py | UI tests |
| 6.1.6 | @registry-wirer | shell.py: wire Purchase leaves | Registry audit |
| 6.1.7 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

### Milestone 6.2: Stock Issue + Adjust + Opening (Week 5)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 6.2.1 | @core-porter | inventory.py: issue_stock(), adjust_stock(), opening_stock() | Unit tests |
| 6.2.2 | @ui-porter | stock_issue_ui.py, stock_adjust_ui.py complete | UI tests |
| 6.2.3 | @registry-wirer | shell.py: wire Stock Issue/Adjust/Opening | Registry audit |
| 6.2.4 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

---

## Phase 7: Front Office Remaining

### Milestone 7.1: Post Charges + Payment Core Extraction (Week 6)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 7.1.1 | @vb6-analyst | VB6: fdPostChrg.frm, fdPaymentCharge.frm save sequences | Analysis |
| 7.1.2 | @core-porter | folio.py: post_charge(), make_payment(), list_charges(), list_payments() | Unit tests |
| 7.1.3 | @ui-porter | fd_forms_ui.py: refactor to use folio.py core | UI tests |
| 7.1.4 | @parity-tester | Re-compare Post Charges + Payment | PARITY_RECONCILIATION.md |

### Milestone 7.2: Amend Stay + Reverse Checkout (Week 6)

| Task | Agent | Deliverable | Validation |
|------|-------|-------------|------------|
| 7.2.1 | @vb6-analyst | VB6: fdAmendEntry.frm, FdRevCheckOut.frm | Analysis |
| 7.2.2 | @core-porter | fo_ops.py: amend_stay(), reverse_checkout() | Unit tests |
| 7.2.3 | @ui-porter | fo_sub_forms_ui.py: AmendStayWindow, ReverseCheckoutWindow | UI tests |
| 7.2.4 | @registry-wirer | shell.py: wire Amend Stay, Reverse Checkout | Registry audit |
| 7.2.5 | @parity-tester | Re-compare | PARITY_RECONCILIATION.md |

---

## Phase 8-12: Remaining Domains (Parallelizable)

These phases can run in parallel once Phase 4-7 core patterns are established:

| Phase | Domain | Key Forms | Blockers |
|-------|--------|-----------|----------|
| 8 | Members | MemberMast, CorpMember, Facility, Billing | SmartCard BLOCKED-TBL |
| 9 | Banquet | Events, Catalog, Bill Sundry | CateringBook, EventMast BLOCKED-TBL |
| 10 | HR/Payroll | Already mostly DONE | — |
| 11 | EPABX/SMS/Door | Call Entry BLOCKED-TBL, DoorLock BLOCKED-TBL | Hardware tables absent |
| 12 | Utility/Reports | Data Transfer, Menu Copy, POS Delete, 70+ reports | Report engine extension |

---

## Resource Allocation

| Agent | Max Parallel Tasks | Current Assignment |
|-------|-------------------|-------------------|
| @vb6-analyst | 2 | Phase 4.1 → 4.2 → 4.3 |
| @core-porter | 3 | Phase 4.1, 4.2, 4.3 parallel |
| @ui-porter | 3 | Phase 4.1, 4.2, 4.3 parallel |
| @db-verifier | 1 | On-demand per phase |
| @registry-wirer | 1 | On-demand per phase |
| @test-engineer | 2 | Per milestone |
| @parity-tester | 1 | Per milestone (sequential) |
| @bug-tracker | 1 | Continuous |
| @docs-writer | 1 | Continuous |

---

## Risk Register

| Risk | Impact | Likelihood | Mitigation |
|------|--------|------------|------------|
| VB6 decompiled logic ambiguous | HIGH | HIGH | @vb6-analyst deep-dive; document assumptions; live DB verification |
| Missing tables (BLOCKED-TBL) | MEDIUM | HIGH | Early schema probe; document; skip gracefully |
| Parity diffs in finance (GST) | CRITICAL | MEDIUM | Extra re-compare rigor; CA review if needed |
| Test environment DB unavailable | HIGH | LOW | Mock-first unit tests; CI with test DB |
| Scope creep (new features) | MEDIUM | MEDIUM | Strict constitution: migration only |

---

## Success Metrics (Per Phase)

| Metric | Target |
|--------|--------|
| Parity Matrix DONE % | +15% per phase |
| CRITICAL/HIGH bugs | 0 at phase end |
| Test pass rate | 100% |
| Ruff/MyPy clean | Yes |
| Ledger completeness | 100% for completed forms |

---

## Timeline Summary

| Phase | Duration | Start | End |
|-------|----------|-------|-----|
| 4: Night Audit + Finance | 3 weeks | 2026-11-03 | 2026-11-24 |
| 5: POS Completion | 2 weeks | 2026-11-24 | 2026-12-08 |
| 6: Inventory Purchase | 2 weeks | 2026-12-08 | 2026-12-22 |
| 7: FO Remaining | 2 weeks | 2026-12-22 | 2027-01-05 |
| 8-12: Remaining | 6 weeks | 2027-01-05 | 2027-02-16 |

**Total: ~15 weeks to feature parity**

---

## Next Immediate Actions (Today)

1. [ ] Run parity matrix: `python tools/generate_parity_matrix.py`
2. [ ] @vb6-analyst: Analyze FaVrEnt.frm, FaVoucher.bas, FaEnvron.frm
3. [ ] @db-verifier: Probe Voucher, Ledger, LedgerAdj, Enviro, Vtype, TDSCat, TDSChallan, TDSCertificate
4. [ ] @core-porter: Start fa_voucher.py port (save_voucher, auto_vno, validation)
5. [ ] Update MIGRATION_STATUS.md with Phase 4 start