# AGENT DISCOVERY REPORT — HMS_py VB6→Python Migration

Generated: 2026-11-03 | Status: Complete

## Available Subagents (OpenCode native)
| Agent | Trigger / Purpose | Used In HMS_py Migration |
|-------|-------------------|--------------------------|
| orchestrator | Multi-agent coordination & task orchestration | YES — this session (Orchestrator/CEO) |
| explorer | Fast codebase search + external docs/web research | YES — LOGIC dir recon |
| fixer | Bounded, well-defined implementation (multi-file/mechanical) | YES — parity matrix matcher fix |
| designer | UI/UX design, review, implementation | Reserved (not yet needed) |
| backend-dev | APIs, services, validation, persistence | Available |
| frontend-dev | UI components, styling, accessibility | Available |
| code-reviewer | Review without editing | Available |
| oracle | Strategic technical advisor / escalation | Available |
| test-engineer | Focused tests for features/regressions/edge cases | YES — menu testing suite |
| ai-toolkit-* variants | 50+ specialized agents (security, performance, data, etc.) | Available on demand |

## Agent Hierarchy in Use (CEO-led)
```
@hms-ceo (Orchestrator)  ← this session
  └─ @system-architect   (LOGIC_SOURCES.md constitution, dual-source rule)
  ├─ @vb6-analyst        (VB6 .frm/.bas analysis — FaVrEnt.frm read)
  ├─ @laravel-analyst    (Laravel controllers/services as rule reference — LARAVEL_LOGIC_INDEX.md built)
  ├─ @database-auditor   (SQL Server schema probe — schema_probe_raw.txt built)
  ├─ @dependency-analyst  (menuHelp ↔ shell wiring — MENU_MODULE_CHECKLIST.md built)
  ├─ @python-core-developer (core/fa_voucher.py, core/reservation.py advance_deposit)
  ├─ @pyqt6-ui-developer  (ui/fa_voucher_ui.py exists)
  ├─ @report-developer    (core/reports.py engine — 258 reports)
  ├─ @test-engineer       (tests/menu_testing/ suite built + run)
  ├─ @ui-automation-tester (headless PyQt6 smoke tests in suite)
  ├─ @integration-tester  (live-DB tests run)
  ├─ @parity-tester       (VB6_PARITY_MATRIX.txt regenerated)
  ├─ @regression-tester   (full pytest suite run — 656 passed)
  ├─ @debugging-engineer  (fixed parity matrix matcher, conftest, core/__init__.py)
  ├─ @bug-manager         (MIGRATION_MASTER_BUG_REGISTER.md — BUG-026..033)
  ├─ @migration-documentation-manager (ledgers + status updated)
  └─ @release-manager     (not yet — no module fully complete)
```

## Agent Assignment Rule
Per the mandate: one module in active migration status at a time; agents assigned per task, not duplicated. No new agents created — existing OpenCode subagents + the loaded skills cover the full workflow.

## Evidence
- Subagent sessions launched: Laravel logic index (ses_e6044f4...), schema overlap matrix (ses_e6044f4...), parity matrix fix (ses_e6043e7...), menu index fixes (ses_e6044f4...).
- All agents reused existing skills; no agent duplicated responsibility.
