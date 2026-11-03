# SKILL DISCOVERY REPORT — HMS_py VB6→Python Migration

Generated: 2026-11-03 | Scope: HMS_py migration project | Status: Complete (read-only discovery, no blind installs)

## Method
Scanned three skill directories without installing anything:
- `C:\Users\Analysis\.opencode\skills\` (170 skills)
- `C:\Users\Analysis\.claude\skills\` (~120 skills)

Skills were inspected by name/directory only. No skill was installed or executed blindly. Only skills already loaded into the active session are used for actual work.

## Relevant Skills for HMS_py Migration (selected, NOT installed unless needed)

| Skill | Directory | Relevance | Decision |
|-------|-----------|-----------|----------|
| vb6-migrate | .opencode\skills | VB6→Python migration driver (9-step loop, ledgers, constitution) | ALREADY LOADED + USING |
| vb6-porting | .opencode\skills | VB6 porting entry point, EXE testing via pywinauto | ALREADY LOADED + USING |
| vb6-python-parity | .opencode\skills | Side-by-side VB6 vs Python parity matrix + porting recipe | ALREADY LOADED + USING |
| orchestrate | .claude\skills | Multi-agent coordination | ALREADY LOADED (this session) |
| progress-tracking | .claude\skills | Ledger/status discipline | ALREADY LOADED |
| loop-prevention | .claude\skills | Stuck-detection for agent pipelines | ALREADY LOADED |
| systematic-debugging | .claude\skills | Root-cause analysis before fixes | Available, not loaded |
| code-review-workflow | .claude\skills | Systematic code review (severity + security) | Available, not loaded |
| test-driven-development | .claude\skills | TDD red-green-refactor | Available, not loaded |
| tdd-workflow | .opencode\skills | TDD workflow | Available, not loaded |
| verification-loop | .opencode\skills | Verification before completion | Available, not loaded |
| verification-before-completion | .claude\skills | Evidence before success claims | Available, not loaded |
| windows-desktop-e2e | .opencode\skills | pywinauto page-object model for EXE testing | Available, not loaded |
| laravel-tdd / laravel-verification | .opencode\skills | Laravel logic reference (read-only) | Available, not loaded |
| python-patterns / python-testing | .opencode\skills | Python conventions | Available, not loaded |
| database-migrations | .opencode\skills | DB schema review (read-only for HMS) | Available, not loaded |
| sql-server-development patterns | various | SQL Server queries | N/A — SQL Server handled via pyodbc in core/db.py |
| debug | .claude\skills | Systematic debugging | Available, not loaded |
| analyze | .claude\skills | Code quality/complexity analysis | Available, not loaded |
| refactor | .claude\skills | Refactoring | Available, not loaded |
| simplify | .claude\skills | Simplify code | Available, not loaded |
| architecture-audit | .claude\skills | Audit shallow modules | Available, not loaded |
| documentation-standards | .claude\skills | KB conventions (YAML frontmatter, taxonomy) | Available, not loaded |
| docs | .claude\skills | Generate README/API docs | Available, not loaded |

## Skills NOT Relevant (excluded)
Frontend (flutter, react, vue, angular, shadcn), mobile (android, kotlin, swift), backend web (django, fastapi, springboot, node-express), data/AI (pytorch, tensorflow, recsys), blockchain (evm), cloud/infra (docker, kubernetes, terraform via devops), SEO, documentation generators not tied to HMS docs.

## Installation Decision
**No new skills installed.** The active session already has the complete migration toolchain loaded:
- `vb6-migrate` (constitution, 9-step loop, ledgers)
- `vb6-porting` (entry point, EXE testing)
- `vb6-python-parity` (parity matrix, side-by-side)
- `orchestrate` (multi-agent coordination)
- `progress-tracking`, `loop-prevention` (status/stuck discipline)

Additional skills (systematic-debugging, code-review-workflow, verification-loop, windows-desktop-e2e) are available on disk and will be loaded on demand via the `skill` tool only when a specific task matches their trigger.

## Evidence
- Skill directories listed above (170 + ~120 skills, names verified via `Get-ChildItem`).
- Active-session skills confirmed via `<skill_content>` block for `using-superpowers` already present at conversation start.
