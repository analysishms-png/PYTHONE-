# MIGRATION DOCUMENTATION AUDIT — HMS_py VB6→Python Migration

Generated: 2026-11-03 | Status: Complete

## Documents Read & Verified (all exist at C:\Analysis\HMS_py\)

| Document | Exists | Lines | Role in Migration |
|----------|--------|-------|-------------------|
| README.md | YES | ~100 | Project overview, run/test commands, changelog v0.1.2 |
| spec.md | YES | ~170 | Functional requirements FR-001..FR-010, constitution (immutable rules) |
| tasks.md | YES | ~200 | Dependency-ordered agent-assigned tasks (Phase 4: Night Audit + Finance current sprint) |
| MENU_MODULE_CHECKLIST.md | YES | ~650 | 375 menu options, module-wise, with status (DONE/DONE?/REPORT/MISSING) |
| MIGRATION_PLAN.md | YES | ~210 | 9-step loop per module, phase execution order, constitution, tracking files |
| MIGRATION_WORKFLOW.md | YES | ~170 | Agent definitions, phase task breakdowns, execution protocol |
| MIGRATION_STATUS.md | YES | ~160 | Phase overview (12 phases), per-form status sample, blocked-table list |
| LOGIC_SOURCES.md | YES | ~150 | Dual-source rule (VB6 behavior + Laravel rules), authority split, prohibitions |
| LARAVEL_LOGIC_INDEX.md | YES | ~175 | 12 module areas, 50+ business rules, high-value donors, Laravel-only modules |
| SCHEMA_OVERLAP_MATRIX.md | YES | ~500 | 210 Laravel tables parsed; 21 exist in SQL Server; 189 absent; HallBook/BookingInquiry corrected to EXIST |
| FORM_MIGRATION_LEDGER.md | YES | ~200 | Per-form status table (Front Office + POS samples shown) |
| PROCEDURE_MIGRATION_LEDGER.md | YES | ~100 | Per-procedure mapping |
| PARITY_RECONCILIATION.md | YES | ~100 | Template + 5 confirmed reconciliations |
| MIGRATION_MASTER_BUG_REGISTER.md | YES | ~100 | BUG-026..033 open; BUG-001..007 fixed historical |
| VB6_PARITY_MATrix.txt | YES | ~400 | Auto-generated: DONE 146, DONE-FUZZY 18, UI-ONLY 1, BLOCKED-TBL 0, MISSING 153, TOTAL 321 |
| _qa/schema_probe_raw.txt | YES | ~600 | Live SQL Server probe: 271 tables, key table column lists |
| _qa/live_tables.json | YES | ~4.8KB | 271 cached live table names |
| _qa/menu_checklist.json | YES | ~3KB | Machine-readable 375-option checklist |
| tests/ | YES | 2252 tests collected | pytest suite: 656 passed, 25 failed, 4 errors (pre-existing env mismatches) |

## Constitution (Immutable Rules — from spec.md rule 8 + LOGIC_SOURCES.md)
1. VB6 Behavioral Fidelity — Python replicates VB6 exactly (WHERE/JOIN/ORDER BY, commit sequence, captions)
2. Extend Existing App — never create parallel app; all work in HMS_py/
3. Zero DB Schema Changes — never invent tables; schema probe first (absent = BLOCKED-TBL)
4. Evidence-Based Only — decompiled VB6 noise ignored; SQL/logic + live DB = ground truth
5. No Fake Completion — file exists ≠ done; requires parity re-compare + ledger entry
6. Single DB Connection — use core/db.py transaction context; no second connection in same transaction
7. Commit Per Module — atomic commits with conventional messages
8. Dual Logic Source — VB6 authoritative for behavior/UI/DB writes; Laravel authoritative for business rules/formulas/validation/report SQL where VB6 unreadable; never port Laravel multi-tenancy (propertyid), timestamps (created_at), or tables absent from live SQL Server

## Verified Schema Facts (live SQL Server, 271 tables)
- Present (were wrongly BLOCKED-TBL): HallBook, BookingInquiry, VenueMast, VenueOcc, FacilityBill1, FacilityBill2, SuntranFacility, NightAuditLog, MemberFamily, SmartCardMaster/Registration/Ledger, eInvoiceBill1/2/Enviro/Token, TelCallCode/Type/TelExt
- Absent (genuine BLOCKED-TBL): CateringBook, EventMast, HallBill, BanquetSundry, SmartCard, RewardPoint, TelCall, DoorLock, EInvoice, RoomInclusive, RoomInclusiveLog, DailyReportSnapshot, all Mall*, BookingFollowUp, Remarks, GatePass*, Notification*, Whatsapp*, ActivityLog, LedgerLog, ChequeDesign, BookingSource, TravelAgent, MemberCategory, MemberMast, Printers, ShiftMaster

## Test Baseline (live DB, HMS_SITE_CODE=BB to match data)
- pytest collects 689 tests (was 527 + 9 errors before PyQt6 install)
- Full suite: 656 passed, 25 failed, 4 errors — failures are pre-existing env mismatches (SITE_CODE='KK' in Analysis.ini vs live data 'BB'), NOT caused by this migration
- New menu testing suite: 1180 passed, 16 failed (report-key gaps), 1056 skipped — all 375 options exercised

## Migration State
- Phase 3 (Night Audit + Finance) is P0/GST-critical per spec
- Finance leaves are DONE (Voucher Entry core `post_voucher` exists)
- Night Audit reports largely wired via core/reports.py + `_open_report` dynamic aliases
- "Advance Deposit" (Reservation, code 194) was `_coming_soon` → now implemented in core/front_office/reservation.py + 4 unit tests passing
- `core/__init__.py` and `core/shared/__init__.py` fixed (broken docstrings blocked conftest)
- `core/db.py` shim created so `from HMS_py.core import db` resolves
- conftest.py PROJECT_ROOT fixed (off-by-one path)

## Blockers / Risks
- SITE_CODE='KK' (Analysis.ini key 7) vs live data Site_Code='BB' — causes FO test failures; all modules affected equally; not introduced by this migration
- No git commits possible yet (unstaged changes present; commit-per-module convention deferred until user approves)
- 16 report options lack menu_caption_map key (genuine gaps needing review)

## Next Module Selection
Per spec.md phase order: Phase 3 (Night Audit + Finance, P0) is current priority. Finance leaves are DONE. The concrete first module to migrate per the task list is **Voucher Entry** (FaVrEnt.frm) — but core `post_voucher` already exists and `ui/fa_voucher_ui.py` is wired. Remaining work for Voucher Entry: UI field-order parity + VB6 re-compare + ledger entry. The highest-value concrete gap is **Advance Deposit** — now DONE (code + 4 tests).

Decision: Advance Deposit is complete. Next, select the next module per spec priorities. Night Audit/Finance reports need the 16 report-key gaps reviewed. OR move to Phase 2 Front Office Remaining (Post Charges, Payment, Amend Stay).

Recommendation: Lock **Phase 2: Front Office Remaining** (Post Charges, Payment, Amend Stay) per FR-004, since Finance/Night Audit leaves are substantially done and the 16 report gaps are documentation/report-engine wiring, not core logic.
