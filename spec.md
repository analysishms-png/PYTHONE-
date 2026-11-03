# HMS_py VB6 → Python Migration Specification

## Project Overview

**Project:** HMS_py — Hotel Management System (Python port of VB6 HMS)  
**Source:** `LOGIC/VISUALBASIC/` — 321 .frm, 32 .bas, .frx, .cls files (decompiled VB6)  
**Target:** `HMS_py/` — PyQt6 + pyodbc, same SQL Server database (`KailashData2526`/`Moondata2627`)  
**Constraint:** Zero schema changes, VB6 behavioral fidelity, extend existing Python app

## Current State (2026-11-03)

- **Core Infrastructure:** ✅ Complete (db, auth, company, menu, shell, theme)
- **Front Office:** 🔄 131 forms DONE per parity matrix; Post Charges, Payment, Amend Stay pending
- **POS:** 🔄 Core sales/KOT/transfer done; Masters, Kitchen Stock partial
- **Night Audit/Finance:** ⏳ Not started (GST critical path)
- **Inventory:** 🔄 Masters done; Purchase cycle partial
- **Members/Banquet/HR/EPABX/Utility:** Various states per ledger

## Migration Constitution (Immutable)

1. **VB6 Behavioral Fidelity** — Python must replicate VB6 behavior exactly (WHERE/JOIN/ORDER BY, commit sequence, captions)
2. **Extend Existing App** — Never create parallel app; all work in `HMS_py/`
3. **Zero DB Schema Changes** — Never invent tables; schema probe first (absent = BLOCKED-TBL)
4. **Evidence-Based Only** — Decompiled VB6 noise ignored; SQL/logic flow + live DB = ground truth
5. **No Fake Completion** — File exists ≠ done; requires parity re-compare + ledger entry
6. **Single DB Connection** — Use `core/db.py` transaction context; no second connection in same transaction
7. **Commit Per Module** — Atomic commits with conventional messages
8. **Dual Logic Source** — VB6 (`LOGIC/VISUALBASIC/`) is authoritative for desktop behavior, UI and DB writes; Laravel (`LOGIC/analysishms-master/`) is authoritative for business rules, formulas, validation and report SQL where VB6 is unreadable. Never port Laravel's multi-tenancy (`propertyid`), timestamps (`created_at`), or tables absent from the live SQL Server DB. Full rules: `LOGIC_SOURCES.md`.

## Functional Requirements

### FR-001: Night Audit + Finance (GST Compliance) — P0
- Voucher Entry (FaVrEnt) — full CRUD with validation
- Voucher Environment (FaEnvron) — year/period, vtype config
- TDS Operations — Category, Challan, Certificate
- FA Reports — Trial Balance, Ledger, Voucher Register
- Tally XML Export — GST-compliant
- Year End Updation — balance carry-forward

### FR-002: POS Completion — P1
- Menu Item Entry — full master with rate groups
- Kitchen Stock — consumption tracking, material update
- Gravy/Combo Items — recipe management

### FR-003: Inventory Purchase Cycle — P1
- Purchase Order → Purchase Bill → Stock Receive
- Stock Issue on Requisition → Stock Adjust
- Opening Stock Entry

### FR-004: Front Office Remaining — P1
- Post Charges — extract folio logic from UI to core
- Payment/Charge — extract folio logic from UI to core
- Amend Stay — booking date/room changes
- Reverse Check Out — undo checkout
- Bill Reprint — folio print via reports engine

### FR-005: Members + Smart Card — P2
- Member Master, Corporate Member, Facility Master
- Member Billing — folio integration
- Smart Card — BLOCKED-TBL (table absent)

### FR-006: Banquet/Catering — P2
- Venue Master, Features — DONE
- Events/Booking — BLOCKED-TBL (CateringBook, EventMast absent)
- Banquet Bill Sundry — BLOCKED-TBL

### FR-007: HR/Payroll — P2
- Employee Master, Designation, Category — DONE
- Salary Creation — DONE (attendance → salary)
- Holiday Master — DONE

### FR-008: EPABX + SMS + Door Lock — P3
- Call Type/Extension/Code/Control Master — DONE
- Call Entry — BLOCKED-TBL (TelCall absent)
- SMS HTTP — DONE
- Door Lock — BLOCKED-TBL (DoorLock absent)

### FR-009: Utility/Main Setup Completion — P3
- Company Profile, System Config, DB Backup/Maintenance — DONE
- Block Master — DONE
- Reward Points — BLOCKED-TBL
- Sundry/Voucher Sundry — DONE
- Data Transfer, Menu Item Copy, POS Bill Deletion — TODO

### FR-010: Reports Engine Full Parity — P3
- 70+ report types — port from VB6 Crystal Reports to print-to-file engine

## Non-Functional Requirements

### NFR-001: Performance
- Form open < 500ms (headless)
- DB query < 200ms (p95)
- Report generation < 5s for 1000 rows

### NFR-002: Reliability
- All writes in transactions with rollback on error
- Race-safe VNo generation (UPDLOCK/HOLDLOCK)
- Connection timeout 30s, lock timeout 5s

### NFR-003: Maintainability
- Core logic separate from UI (testable)
- Type hints on all public functions
- Ruff clean, mypy --strict clean

### NFR-004: Testability
- 137+ unit tests (mock, no DB)
- 162+ live-DB integration tests
- 62+ UI instantiation tests

## Acceptance Criteria

| Criterion | Metric |
|-----------|--------|
| Parity Matrix DONE % | > 90% (currently ~41%) |
| BLOCKED-TBL documented | 100% |
| CRITICAL/HIGH bugs | 0 open |
| Test pass rate | 100% |
| Ruff violations | 0 |
| MyPy errors | 0 |

## Technical Architecture

```
HMS_py/
├── core/           # 113 modules — business logic, DB access
│   ├── db.py       # Config, connection, transaction, context
│   ├── *.py        # Domain modules (folio, checkin, pos_sales, etc.)
├── ui/             # 101 modules — PyQt6 forms
│   ├── shell.py    # Main window, login, company, registry
│   ├── *_ui.py     # Form modules
│   ├── theme.py    # Styling
├── tests/          # Pytest suite
│   ├── unit/       # 137 mock tests
│   ├── integration/ # 162 live-DB tests
├── tools/          # Migration utilities
├── LOGIC/VISUALBASIC/ # VB6 source (reference only)
├── _qa/            # Business logic docs, baselines
```

## Data Flow

```
User Action (UI)
    ↓
Core Function (core/*.py)
    ↓
db.transaction() context
    ↓
Parameterized SQL (SELECT/INSERT/UPDATE/DELETE)
    ↓
SQL Server (KailashData2526)
    ↓
Result → Core → UI
```

## Security

- SQL injection prevention: parameterized queries only, identifier validation
- Auth: VB6-compatible UserMast login + menuHelp permissions (OPT1-4)
- Audit: U_Name, U_EntDt, U_AE fields on all writes

## Migration Phases (Execution Order)

1. **Phase 4:** Night Audit + Finance (GST) — FR-001
2. **Phase 5:** POS Completion — FR-002
3. **Phase 6:** Inventory Purchase Cycle — FR-003
4. **Phase 7:** Front Office Remaining — FR-004
5. **Phase 8:** Members + Smart Card — FR-005
6. **Phase 9:** Banquet — FR-006
7. **Phase 10:** HR/Payroll — FR-007
8. **Phase 11:** EPABX/SMS/Door — FR-008
9. **Phase 12:** Utility/Setup/Reports — FR-009, FR-010

## Definition of Done (Per Module)

- [ ] Schema probe passed
- [ ] Core logic ported (VB6 SQL + commit sequence)
- [ ] UI created (PyQt6, VB6 captions)
- [ ] Registry wired (exact menu caption)
- [ ] Unit tests pass
- [ ] Integration tests pass
- [ ] UI instantiation test pass
- [ ] VB6 re-compare complete (PARITY_RECONCILIATION.md)
- [ ] Bugs logged (MIGRATION_MASTER_BUG_REGISTER.md)
- [ ] Ledgers updated (FORM_MIGRATION_LEDGER.md, PROCEDURE_MIGRATION_LEDGER.md)
- [ ] Git commit with conventional message

---

**Spec Version:** 1.0  
**Date:** 2026-11-03  
**Status:** Active — Phase 4 (Night Audit + Finance) starting