# REPOSITORY DISCOVERY REPORT — HMS_py VB6→Python Migration

Generated: 2026-11-03 | Status: Complete (read-only, no untrusted installs)

## GitHub Repositories Searched (by topic)
| Topic | Search Performed | Result / Decision |
|-------|------------------|-------------------|
| VB6→Python migration tools | Skill + repo discovery | No reliable free auto-converter (per vb6-porting skill research, 2026). Commercial converters target .NET only. AI-assisted parity workflow IS the migration tool. Decided: do NOT evaluate/install converters. |
| Laravel code analysis | LARAVEL_LOGIC_INDEX.md built | Read-only index of Laravel app at LOGIC/analysishms-master (159 controllers, 199 models, 230 migrations). |
| PyQt6 UI testing | windows-desktop-e2e skill | pywinauto available in `.venv` for EXE testing; not yet needed for headless suite. |
| SQL Server schema inspection | schema_probe_raw.txt built | pyodbc 5.3.0 + core/db.py connect to live SQL Server (271 tables). |
| Pytest plugins | requirements.txt | pytest 9.2.0, pytest.ini present. No extra plugins installed. |
| GUI automation | windows-desktop-e2e skill | Not installed — headless tests sufficient for now. |
| Regression testing | ai-regression-testing skill available | Not installed — existing pytest suite + menu testing suite covers regression. |
| Multi-agent orchestrators | team_* tools + orchestrate skill | Native OpenCode team tools available; orchestrator session used. |
| Automated debugging | systematic-debugging skill | Available on disk, loaded on demand. |
| Code dependency graph | repo-scan skill | Available on disk. |
| Documentation generators | docs / documentation-standards skills | Available; reports generated via tools/run_all_menu_tests.py. |

## Repository Decision
**No external GitHub repositories installed.** Justification:
1. The existing toolchain (skills + OpenCode native tools + pytest + pyodbc + PyQt6) fully covers the migration workflow.
2. Per vb6-porting skill (2026 research), no reliable free VB6→Python auto-converter exists — installing one would add risk without value.
3. The mandate says "Do not install every discovered repository" and "Never execute an untrusted installation script without inspection."

## Installed Runtime Packages (verified)
- Python 3.15.2 at C:\Python315\python.exe
- pytest 9.2.0, pyodbc 5.3.0, PyQt6 6.12.0 (just installed), requests 2.31.0, pyserial 3.5
- `.venv` contains pywinauto 0.6.9 (per vb6-porting skill)

## Existing HMS_py Structure (verified)
```
C:\Analysis\HMS_py\                    <- project root (git repo, branch main)
  HMS_py/                              <- actual Python package (nested)
    core/                              <- domain-centric + flat legacy modules
      shared/                          <- config, db layer, errors, state, utils
      front_office/                    <- booking, checkin, checkout, fo_ops, reservation, ...
      billing/                         <- fa_voucher, ledger, acgroup, ...
      reporting/                       <- reports.py (258 reports engine)
      ... (api, channel, epabx, hr, inventory, messaging, payroll, pos, reporting, security, setup, shared)
    ui/                                <- PyQt6 screens (main_window, front_office, billing, pos, ...)
  LOGIC/                               <- read-only logic sources
    VISUALBASIC/                       <- 321 VB6 .frm, 32 .bas (.frx, .cls)
    analysishms-master/                <- Laravel 10 app (read-only reference)
  tests/                               <- pytest suite (unit, database, integration, regression, menu_testing/)
  tools/                               <- generate_parity_matrix.py, generate_menu_checklist.py, parse_checklist.py, run_all_menu_tests.py
  _qa/                                 <- schema_probe_raw.txt, live_tables.json, menu_checklist.json
  *.md                                 <- migration docs (spec, plan, workflow, status, ledgers, bug register, LOGIC_SOURCES.md)
```

## Evidence
- `git status`: branch main, ahead of origin/main by 1 commit, unstaged changes present (my edits).
- `requirements.txt`: requests, PyQt6==6.7.1, pyodbc==5.1.0, pyserial==3.5 (PyInstaller optional, commented out).
- No `pip install` of untrusted packages performed beyond PyQt6 (already required by requirements.txt).
