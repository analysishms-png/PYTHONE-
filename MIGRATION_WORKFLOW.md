# HMS_py VB6 → Python Migration — Multi-Agent Workflow

**Orchestrator:** This file defines the agent coordination for the migration project.

---

## Agent Definitions

| Agent ID | Skill | Domain | Responsibility |
|----------|-------|--------|----------------|
| `@vb6-analyst` | vb6-python-parity | VB6 Analysis | Extract form logic, SQL, table deps from LOGIC/VISUALBASIC/ |
| `@core-porter` | vb6-migrate | Core Logic | Port VB6 business logic to HMS_py/core/*.py |
| `@ui-porter` | vb6-migrate | UI Forms | Create PyQt6 forms in HMS_py/ui/*_ui.py |
| `@db-verifier` | vb6-migrate | Database | Schema probe, table existence, live DB verification |
| `@parity-tester` | vb6-python-parity | Parity Testing | Side-by-side VB6 vs Python behavior comparison |
| `@test-engineer` | test-driven-development | Unit/Integration Tests | Write pytest tests for core + UI |
| `@registry-wirer` | vb6-migrate | Shell Registry | Wire forms in ui/shell.py _form_registry() |
| `@bug-tracker` | code-review-workflow | Bug Management | Maintain MIGRATION_MASTER_BUG_REGISTER.md |
| `@docs-writer` | documentation-standards | Documentation | Update MIGRATION_STATUS.md, ledgers, parity matrix |

---

## Phase 4: Night Audit + Finance (Current Priority - P0)

### Task Breakdown

| Task ID | Agent | Description | Files | Dependencies | Status |
|---------|-------|-------------|-------|--------------|--------|
| NA-001 | @vb6-analyst | Analyze FaVrEnt.frm, FaVoucher.bas, FaEnvron.frm | LOGIC/VISUALBASIC/FaVrEnt.frm, FaVoucher.bas, FaEnvron.frm | — | ⏳ TODO |
| NA-002 | @db-verifier | Probe Voucher, Ledger, LedgerAdj, Enviro, Vtype, TDS tables | — | NA-001 | ⏳ TODO |
| NA-003 | @core-porter | Port Voucher Entry core to fa_voucher.py | HMS_py/core/fa_voucher.py | NA-002 | ⏳ TODO |
| NA-004 | @core-porter | Port Voucher Environment to fa_enviro.py | HMS_py/core/fa_enviro.py | NA-002 | ⏳ TODO |
| NA-005 | @core-porter | Port TDS ops to fa_tds_ops.py | HMS_py/core/fa_tds_ops.py | NA-002 | ⏳ TODO |
| NA-006 | @ui-porter | Create Voucher Entry UI | HMS_py/ui/fa_voucher_ui.py | NA-003 | ⏳ TODO |
| NA-007 | @ui-porter | Create Voucher Environment UI | HMS_py/ui/fa_enviro_ui.py | NA-004 | ⏳ TODO |
| NA-008 | @ui-porter | Create TDS UI | HMS_py/ui/scheme_tds_ui.py (extend) | NA-005 | ⏳ TODO |
| NA-009 | @registry-wirer | Wire in shell.py _form_registry() | HMS_py/ui/shell.py | NA-006, NA-007, NA-008 | ⏳ TODO |
| NA-010 | @test-engineer | Write unit + integration tests | HMS_py/tests/unit/test_fa_voucher.py | NA-003, NA-006 | ⏳ TODO |
| NA-011 | @parity-tester | VB6 re-compare for Voucher Entry | PARITY_RECONCILIATION.md | NA-010 | ⏳ TODO |
| NA-012 | @bug-tracker | Log any diffs to bug register | MIGRATION_MASTER_BUG_REGISTER.md | NA-011 | ⏳ TODO |
| NA-013 | @docs-writer | Update ledgers + status | FORM_MIGRATION_LEDGER.md, MIGRATION_STATUS.md | NA-011 | ⏳ TODO |

---

## Phase 5: POS Completion

### Task Breakdown

| Task ID | Agent | Description | Files | Dependencies | Status |
|---------|-------|-------------|-------|--------------|--------|
| POS-001 | @vb6-analyst | Analyze RsMenuItemEntry.frm, RsKitchenStk.frm, RsGravyItemEntry.frm | LOGIC/VISUALBASIC/*.frm | — | ⏳ TODO |
| POS-002 | @db-verifier | Probe POSItem, POSItemRate, KitchenClearStk, Stock tables | — | POS-001 | ⏳ TODO |
| POS-003 | @core-porter | Complete pos_masters.py (Item Entry, Menu Group/Category) | HMS_py/core/pos_masters.py | POS-002 | ⏳ TODO |
| POS-004 | @core-porter | Complete pos_stock.py (Kitchen Stock, Material) | HMS_py/core/pos_stock.py | POS-002 | ⏳ TODO |
| POS-005 | @ui-porter | Complete pos_masters_ui.py | HMS_py/ui/pos_masters_ui.py | POS-003 | ⏳ TODO |
| POS-006 | @ui-porter | Complete pos_stock_ui.py, kitchen_clstk_ui.py | HMS_py/ui/pos_stock_ui.py, kitchen_clstk_ui.py | POS-004 | ⏳ TODO |
| POS-007 | @registry-wirer | Wire POS masters in shell.py | HMS_py/ui/shell.py | POS-005, POS-006 | ⏳ TODO |
| POS-008 | @test-engineer | Write POS tests | HMS_py/tests/unit/test_pos_*.py | POS-003, POS-005 | ⏳ TODO |
| POS-009 | @parity-tester | VB6 re-compare POS | PARITY_RECONCILIATION.md | POS-008 | ⏳ TODO |

---

## Phase 6: Inventory Purchase Cycle

### Task Breakdown

| Task ID | Agent | Description | Files | Dependencies | Status |
|---------|-------|-------------|-------|--------------|--------|
| INV-001 | @vb6-analyst | Analyze pPOrder.frm, Purchase.frm, StockReceive.frm | LOGIC/VISUALBASIC/*.frm | — | ⏳ TODO |
| INV-002 | @db-verifier | Probe Purchase, PurchaseReturn, StockReceive, Indent1, Issue | — | INV-001 | ⏳ TODO |
| INV-003 | @core-porter | Complete purchase.py (PO, Purchase Bill) | HMS_py/core/purchase.py | INV-002 | ⏳ TODO |
| INV-004 | @core-porter | Complete inventory.py (Issue, Adjust, Opening Stock) | HMS_py/core/inventory.py | INV-002 | ⏳ TODO |
| INV-005 | @ui-porter | Create purchase_order_ui.py, purchase_bill_ui.py | HMS_py/ui/purchase_order_ui.py, purchase_bill_ui.py | INV-003 | ⏳ TODO |
| INV-006 | @ui-porter | Complete stock_issue_ui.py, stock_adjust_ui.py | HMS_py/ui/stock_issue_ui.py, stock_adjust_ui.py | INV-004 | ⏳ TODO |
| INV-007 | @registry-wirer | Wire in shell.py | HMS_py/ui/shell.py | INV-005, INV-006 | ⏳ TODO |
| INV-008 | @test-engineer | Write inventory tests | HMS_py/tests/unit/test_inventory.py | INV-003, INV-005 | ⏳ TODO |

---

## Phase 7: Front Office Remaining (Post Charges, Payment, Amend Stay)

### Task Breakdown

| Task ID | Agent | Description | Files | Dependencies | Status |
|---------|-------|-------------|-------|--------------|--------|
| FO-001 | @vb6-analyst | Analyze fdPostChrg.frm, fdPaymentCharge.frm, fdAmendEntry.frm, FdRevCheckOut.frm | LOGIC/VISUALBASIC/*.frm | — | ⏳ TODO |
| FO-002 | @core-porter | Extract folio logic from fd_forms_ui.py to folio.py | HMS_py/core/folio.py | FO-001 | ⏳ TODO |
| FO-003 | @core-porter | Implement amend_stay, reverse_checkout in fo_ops.py | HMS_py/core/fo_ops.py | FO-001 | ⏳ TODO |
| FO-004 | @ui-porter | Update fd_forms_ui.py to use folio.py core | HMS_py/ui/fd_forms_ui.py | FO-002 | ⏳ TODO |
| FO-005 | @ui-porter | Create Amend Stay, Reverse Checkout UI | HMS_py/ui/fo_sub_forms_ui.py (extend) | FO-003 | ⏳ TODO |
| FO-006 | @registry-wirer | Wire in shell.py | HMS_py/ui/shell.py | FO-004, FO-005 | ⏳ TODO |
| FO-007 | @test-engineer | Write FO tests | HMS_py/tests/unit/test_fo_ops.py | FO-002, FO-003 | ⏳ TODO |
| FO-008 | @parity-tester | VB6 re-compare | PARITY_RECONCILIATION.md | FO-007 | ⏳ TODO |

---

## Execution Protocol

### Daily Standup (Automated)
```bash
# Run parity matrix to track progress
python tools/generate_parity_matrix.py

# Run all tests
python -m pytest -x -q

# Check bug register
cat MIGRATION_MASTER_BUG_REGISTER.md | grep -A5 "OPEN"
```

### Agent Handoff Format
When completing a task, agent MUST:
1. Update relevant ledger (FORM_MIGRATION_LEDGER.md or PROCEDURE_MIGRATION_LEDGER.md)
2. Commit changes: `git add <files> && git commit -m "feat: <module> <task> complete"`
3. Run tests: `python -m pytest -x -q`
4. Update MIGRATION_STATUS.md phase summary
5. Handoff to next agent with clear status

### Quality Gates (Per Module)
- [ ] Schema probe passed (table exists)
- [ ] Core logic ported (VB6 SQL + commit sequence preserved)
- [ ] UI created (PyQt6, VB6 captions verbatim)
- [ ] Registry wired (exact menu caption key)
- [ ] Unit tests pass (mock-based)
- [ ] Integration tests pass (live DB)
- [ ] UI instantiation test pass
- [ ] VB6 re-compare complete (PARITY_RECONCILIATION.md entry)
- [ ] Bugs logged (MIGRATION_MASTER_BUG_REGISTER.md)
- [ ] Ledgers updated

---

## Communication Channels

| Channel | Purpose |
|---------|---------|
| `MIGRATION_STATUS.md` | Live phase/form status dashboard |
| `VB6_PARITY_MATRIX.txt` | Auto-generated full matrix (run `python tools/generate_parity_matrix.py`) |
| `MIGRATION_MASTER_BUG_REGISTER.md` | All bugs with severity, status |
| `PARITY_RECONCILIATION.md` | Side-by-side diff evidence |
| `FORM_MIGRATION_LEDGER.md` | Per-form mapping + status |
| `PROCEDURE_MIGRATION_LEDGER.md` | Per-procedure mapping + status |

---

## Escalation Rules

| Situation | Action |
|-----------|--------|
| Table absent (BLOCKED-TBL) | Document in ledger, skip to next, notify orchestrator |
| VB6 logic unclear (decompiled noise) | @vb6-analyst deep-dive, document assumptions, proceed |
| Parity diff CRITICAL/HIGH | Stop, file bug, fix Python side only, re-compare |
| Test failure > 2 attempts | @test-engineer + @core-porter pair debug |
| Scope creep (new feature request) | Reject — migration only, no new features |

---

## Quick Commands

```bash
# Full status check
python tools/generate_parity_matrix.py && cat MIGRATION_STATUS.md

# Run tests for specific module
python -m pytest HMS_py/tests/unit/test_fo_ops.py -v

# Headless smoke test
HMS_FORCE_HEADLESS=1 python -m HMS_py.main

# Check open bugs
grep "OPEN" MIGRATION_MASTER_BUG_REGISTER.md

# Update parity matrix (run after each module)
python tools/generate_parity_matrix.py
```