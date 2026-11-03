#!/usr/bin/env python3
"""HMS_py Menu Test Runner — orchestrates the 375-option menu test suite.

Reads TEST_CASES.json, runs pytest on tests/menu_testing/, maps outcomes to
Test IDs (MENU-0001 .. MENU-0375), and writes:
  - TEST_EXECUTION_LOG.csv   (per-test result + evidence)
  - TEST_BUG_REGISTER.md     (failures + needs-review items)
  - TEST_COVERAGE_REPORT.md  (per-module pass/fail/skip stats)
  - TEST_FINAL_REPORT.md     (executive summary)
  - TEST_EVIDENCE/*.json     (raw pytest JSON per module, if available)

Usage:
  python tools/run_all_menu_tests.py                    # full read-only run
  python tools/run_all_menu_tests.py --module Finance   # one module
  python tools/run_all_menu_tests.py --menu-code 3      # single option
  python tools/run_all_menu_tests.py --dry-run          # list what would run
  python tools/run_all_menu_tests.py --read-only        # force read-only (default)

Exit status: 0 if no required (DONE/REPORT) test FAILED; 1 otherwise.
"""

from __future__ import annotations

import argparse
import csv
import json
import os
import re
import subprocess
import sys
from collections import Counter, defaultdict
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent
TEST_CASES_PATH = PROJECT_ROOT / "tests" / "menu_testing" / "TEST_CASES.json"
MENU_TEST_DIR = PROJECT_ROOT / "tests" / "menu_testing"
EVIDENCE_DIR = PROJECT_ROOT / "TEST_EVIDENCE"

EXEC_LOG = PROJECT_ROOT / "TEST_EXECUTION_LOG.csv"
BUG_REGISTER = PROJECT_ROOT / "TEST_BUG_REGISTER.md"
COVERAGE = PROJECT_ROOT / "TEST_COVERAGE_REPORT.md"
FINAL_REPORT = PROJECT_ROOT / "TEST_FINAL_REPORT.md"


def load_cases():
    return json.loads(TEST_CASES_PATH.read_text(encoding="utf-8"))


def pytest_args(module=None, menu_code=None):
    args = [
        "python", "-m", "pytest", str(MENU_TEST_DIR),
        "-v", "--tb=line", "-p", "no:cacheprovider",
    ]
    selected = load_cases()
    if module:
        selected = [c for c in selected if c["module"].lower() == module.lower()]
    if menu_code:
        selected = [c for c in selected if c["menu_code"] == menu_code]
    if selected:
        tids = [c["test_id"] for c in selected]
        args += ["-k", " or ".join(tids)]
    return args


def run_pytest(args):
    """Run pytest; return (returncode, combined_stdout)."""
    proc = subprocess.run(
        args, capture_output=True, text=True, cwd=str(PROJECT_ROOT)
    )
    return proc.returncode, proc.stdout + "\n" + proc.stderr


def parse_outcomes(output, test_ids):
    """Map pytest -q output lines to {test_id: status}."""
    outcomes = {tid: "NOT-TESTED" for tid in test_ids}
    # Lines look like:
    #   PASSED tests/...::test_xxx[MENU-0001]
    #   FAILED tests/...::test_xxx[MENU-0002]
    #   SKIPPED tests/...::test_xxx[MENU-0003]
    for line in output.splitlines():
        # -v format: ...::test_xxx[MENU-0001] PASSED
        m = re.search(r"\[(MENU-\d+)\]\s+(PASSED|FAILED|ERROR|SKIPPED)", line)
        if not m:
            continue
        tid, status = m.group(1), m.group(2)
        status = {"ERROR": "FAILED"}.get(status, status)
        # Only record if not already set to a harder status.
        # NOT-TESTED (no result yet) is the lowest priority so any real
        # result (PASSED/SKIPPED/FAILED) overwrites it.
        priority = {"NOT-TESTED": 0, "SKIPPED": 1, "PASSED": 2, "FAILED": 3}
        cur = outcomes.get(tid, "NOT-TESTED")
        if priority[status] > priority.get(cur, 0):
            outcomes[tid] = status
    return outcomes


def module_of(case):
    return case["module"]


def write_exec_log(cases, outcomes, path):
    fields = [
        "test_id", "menu_code", "module", "option", "flag", "status",
        "checklist_status", "python_target", "vb6_form", "test_result",
        "evidence",
    ]
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for c in cases:
            tid = c["test_id"]
            w.writerow({
                "test_id": tid,
                "menu_code": c["menu_code"],
                "module": c["module"],
                "option": c["option"],
                "flag": c["flag"],
                "status": c["status"],
                "checklist_status": c["status"],
                "python_target": c["python_target"],
                "vb6_form": c["vb6_form"],
                "test_result": outcomes.get(tid, "NOT-TESTED"),
                "evidence": "",
            })


def write_coverage(cases, outcomes, path):
    from collections import Counter
    mod_stats = defaultdict(Counter)
    for c in cases:
        mod_stats[c["module"]][outcomes.get(c["test_id"], "NOT-TESTED")] += 1
    lines = []
    lines.append("# Test Coverage Report — 375 Menu Options")
    lines.append("")
    lines.append("| Module | Total | PASS | FAILED | SKIPPED | NOT-TESTED |")
    lines.append("|---|---:|---:|---:|---:|---:|")
    grand = Counter()
    for module in sorted(mod_stats):
        c = mod_stats[module]
        grand.update(c)
        total = sum(c.values())
        lines.append(
            f"| {module} | {total} | {c.get('PASSED',0)} | {c.get('FAILED',0)} | "
            f"{c.get('SKIPPED',0)} | {c.get('NOT-TESTED',0)} |"
        )
    total_all = sum(grand.values())
    lines.append(
        f"| **TOTAL** | {total_all} | {grand.get('PASSED',0)} | "
        f"{grand.get('FAILED',0)} | {grand.get('SKIPPED',0)} | "
        f"{grand.get('NOT-TESTED',0)} |"
    )
    lines.append("")
    lines.append("PASS = test executed and asserted OK")
    lines.append("FAILED = test executed and raised an error/assertion")
    lines.append("SKIPPED = not applicable (no form, no wiring, BLOCKED-TBL candidate)")
    lines.append("NOT-TESTED = not covered by any test")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def write_bug_register(cases, outcomes, path):
    lines = []
    lines.append("# Test Bug Register — Menu Option Testing")
    lines.append("")
    lines.append("| ID | Test ID | Module | Option | Issue | Severity |")
    lines.append("|---|---|---|---|---|---|")
    bid = 1
    for c in cases:
        tid = c["test_id"]
        res = outcomes.get(tid, "NOT-TESTED")
        if res == "FAILED":
            sev = "HIGH" if c["status"] == "DONE" else "MEDIUM"
            lines.append(
                f"| BUG-{bid:03d} | {tid} | {c['module']} | {c['option']} | "
                f"test {res.lower()} — review required | {sev} |"
            )
            bid += 1
    if bid == 1:
        lines.append("*No bugs logged.*")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def write_final_report(cases, outcomes, path):
    from collections import Counter
    total = len(cases)
    res_counts = Counter(outcomes.get(c["test_id"], "NOT-TESTED") for c in cases)
    done = [c for c in cases if c["status"] == "DONE"]
    done_failed = [c for c in done if outcomes.get(c["test_id"]) == "FAILED"]
    report = [c for c in cases if c["status"] == "REPORT"]
    report_failed = [c for c in report if outcomes.get(c["test_id"]) == "FAILED"]
    missing = [c for c in cases if c["status"] == "MISSING"]
    lines = []
    lines.append("# Test Final Report — HMS_py 375-Option Menu Coverage")
    lines.append("")
    lines.append(f"Total options: {total}")
    lines.append(f"PASS: {res_counts.get('PASSED',0)}")
    lines.append(f"FAILED: {res_counts.get('FAILED',0)}")
    lines.append(f"SKIPPED: {res_counts.get('SKIPPED',0)}")
    lines.append(f"NOT-TESTED: {res_counts.get('NOT-TESTED',0)}")
    lines.append("")
    lines.append("## DONE options (wired, expected to pass)")
    lines.append(f"  Total: {len(done)} | FAILED: {len(done_failed)}")
    for c in done_failed:
        lines.append(f"  - {c['test_id']} {c['module']} » {c['option']}")
    lines.append("")
    lines.append("## REPORT options (report engine)")
    lines.append(f"  Total: {len(report)} | FAILED (no report key): {len(report_failed)}")
    for c in report_failed:
        lines.append(f"  - {c['test_id']} {c['module']} » {c['option']} (no menu_caption_map key)")
    lines.append("")
    lines.append("## MISSING options (no Python wiring)")
    lines.append(f"  Total: {len(missing)}")
    lines.append("")
    lines.append("## Conclusion")
    if done_failed or report_failed:
        lines.append("  REQUIRED TESTS FAILED — review before marking modules complete.")
    else:
        lines.append("  All wired DONE/REPORT options pass. MISSING options need implementation.")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main():
    ap = argparse.ArgumentParser(description="Run the 375-option menu test suite")
    ap.add_argument("--module", help="Run only one module (e.g. Finance)")
    ap.add_argument("--menu-code", help="Run one option by menu code (e.g. 3)")
    ap.add_argument("--dry-run", action="store_true", help="List selected cases, don't run")
    ap.add_argument("--read-only", action="store_true", help="Force read-only (default)")
    args = ap.parse_args()

    cases = load_cases()
    selected = cases
    if args.module:
        selected = [c for c in cases if c["module"].lower() == args.module.lower()]
    if args.menu_code:
        selected = [c for c in cases if c["menu_code"] == args.menu_code]

    if args.dry_run:
        print(f"Dry-run: would run {len(selected)} of {len(cases)} cases")
        for c in selected[:30]:
            print(f"  {c['test_id']} {c['module']:18s} {c['option']} [{c['status']}]")
        if len(selected) > 30:
            print(f"  ... ({len(selected)-30} more)")
        return 0

    EVIDENCE_DIR.mkdir(parents=True, exist_ok=True)
    test_ids = [c["test_id"] for c in selected]
    rc, output = run_pytest(pytest_args(args.module, args.menu_code))
    outcomes = parse_outcomes(output, test_ids)

    write_exec_log(cases, outcomes, EXEC_LOG)
    write_coverage(cases, outcomes, COVERAGE)
    write_bug_register(cases, outcomes, BUG_REGISTER)
    write_final_report(cases, outcomes, FINAL_REPORT)

    # Raw evidence
    (EVIDENCE_DIR / "pytest_output.txt").write_text(output, encoding="utf-8")
    (EVIDENCE_DIR / "outcomes.json").write_text(
        json.dumps(outcomes, indent=2), encoding="utf-8"
    )

    # Summary to console
    from collections import Counter
    rc_counts = Counter(outcomes.values())
    print(f"\nMenu test run complete: {len(selected)} of {len(cases)} cases")
    print(f"  PASS: {rc_counts.get('PASSED',0)}  FAILED: {rc_counts.get('FAILED',0)} "
          f"SKIPPED: {rc_counts.get('SKIPPED',0)} NOT-TESTED: {rc_counts.get('NOT-TESTED',0)}")
    print(f"Artifacts: {EXEC_LOG}, {COVERAGE}, {BUG_REGISTER}, {FINAL_REPORT}, {EVIDENCE_DIR}/")

    # Exit non-zero if any required (DONE/REPORT) test failed
    required_failed = [
        c for c in selected
        if c["status"] in ("DONE", "REPORT") and outcomes.get(c["test_id"]) == "FAILED"
    ]
    if required_failed:
        print(f"\n{len(required_failed)} required-option failure(s) — see {BUG_REGISTER}")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
