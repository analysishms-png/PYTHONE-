#!/usr/bin/env python3
"""Parse MENU_MODULE_CHECKLIST.md and emit structured test data.

Reads the 375-option checklist, assigns Test IDs MENU-0001..MENU-0375,
and emits:
  - tests/menu_testing/TEST_CASES.json   (all test cases)
  - TESTING_MASTER_MATRIX.csv            (master matrix)
  - TEST_CASE_SUMMARY.md                 (human summary)
"""

from __future__ import annotations

import csv
import json
import re
import sys
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent
CHECKLIST = PROJECT_ROOT / "MENU_MODULE_CHECKLIST.md"
OUT_DIR = PROJECT_ROOT / "tests" / "menu_testing"
OUT_JSON = OUT_DIR / "TEST_CASES.json"
OUT_CSV = PROJECT_ROOT / "TESTING_MASTER_MATRIX.csv"
OUT_SUMMARY = PROJECT_ROOT / "TEST_CASE_SUMMARY.md"

# Capture everything from here on to allow resumption / incremental builds.
HEADER_RE = re.compile(r"^\| (?P<code>[^|]+?)\| (?P<flag>[^|]+?)\| (?P<option>[^|]+?)\| (?P<module>[^|]*?)\| (?P<param>[^|]*?)\| (?P<vb6>[^|]*?)\| (?P<status>[^|]*?)\| (?P<target>[^|]*?)\|$")
SECTION_RE = re.compile(r"^### (?P<module>.+?) ?→ ?(?P<subsection>.+?)$")
MODULE_RE = re.compile(r"^## (?P<module>.+?)\s*\(\d+ options? · \d+ missing\)$")


def _clean(s: str) -> str:
    return (s or "").strip()


def parse_checklist(path: Path) -> list[dict]:
    text = path.read_text(encoding="utf-8")
    lines = text.splitlines()

    cases: list[dict] = []
    current_module = ""
    current_subsection = ""

    for line in lines:
        m = MODULE_RE.match(line)
        if m:
            current_module = _clean(m.group("module"))
            current_subsection = ""
            continue
        m = SECTION_RE.match(line)
        if m:
            current_module = _clean(m.group("module"))
            current_subsection = _clean(m.group("subsection"))
            continue
        m = HEADER_RE.match(line)
        if not m:
            continue
        code = _clean(m.group("code"))
        if not code or code.lower() == "code":
            continue
        case = {
            "test_id": "",  # assigned later
            "menu_code": code,
            "flag": _clean(m.group("flag")),
            "option": _clean(m.group("option")),
            "module": current_module,
            "subsection": current_subsection,
            "param": _clean(m.group("param")),
            "vb6_form": _clean(m.group("vb6")) or "—",
            "status": _clean(m.group("status")),
            "python_target": _clean(m.group("target")) or "—",
        }
        cases.append(case)

    # Assign Test IDs in file order
    for i, c in enumerate(cases, start=1):
        c["test_id"] = f"MENU-{i:04d}"

    return cases


def write_json(cases: list[dict], path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(cases, indent=2, ensure_ascii=False), encoding="utf-8")


def write_csv(cases: list[dict], path: Path) -> None:
    fields = [
        "test_id", "menu_code", "module", "subsection", "option", "flag",
        "param", "vb6_form", "status", "python_target",
    ]
    with path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for c in cases:
            w.writerow({k: c.get(k, "") for k in fields})


def write_summary(cases: list[dict], path: Path) -> None:
    from collections import Counter
    mod_counts: dict[str, Counter] = {}
    for c in cases:
        mod_counts.setdefault(c["module"], Counter())[c["status"]] += 1
    total = len(cases)
    lines: list[str] = []
    lines.append("# Test Case Summary — 375 Menu Options")
    lines.append("")
    lines.append(f"Total test cases: {total}")
    lines.append("")
    lines.append("| Module | Total | DONE | DONE? | REPORT | MISSING |")
    lines.append("|---|---:|---:|---:|---:|---:|")
    grand = Counter()
    for module in sorted(mod_counts):
        c = mod_counts[module]
        grand.update(c)
        lines.append(
            f"| {module} | {sum(c.values())} | {c.get('DONE',0)} | {c.get('DONE?',0)} | "
            f"{c.get('REPORT',0)} | {c.get('MISSING',0)} |"
        )
    lines.append(
        f"| **TOTAL** | {total} | {grand.get('DONE',0)} | {grand.get('DONE?',0)} | "
        f"{grand.get('REPORT',0)} | {grand.get('MISSING',0)} |"
    )
    lines.append("")
    lines.append("Test IDs: MENU-0001 .. MENU-0375 (assigned in checklist file order).")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> None:
    cases = parse_checklist(CHECKLIST)
    print(f"Parsed {len(cases)} menu options from checklist")
    write_json(cases, OUT_JSON)
    write_csv(cases, OUT_CSV)
    write_summary(cases, OUT_SUMMARY)
    print(f"Wrote {OUT_JSON}")
    print(f"Wrote {OUT_CSV}")
    print(f"Wrote {OUT_SUMMARY}")
    # Sanity: report any module totals that differ from checklist header
    from collections import Counter
    mod_counts: dict[str, Counter] = {}
    for c in cases:
        mod_counts.setdefault(c["module"], Counter())[c["status"]] += 1
    for module in sorted(mod_counts):
        c = mod_counts[module]
        total = sum(c.values())
        missing = c.get("MISSING", 0)
        print(f"  {module}: {total} options, {missing} MISSING")


if __name__ == "__main__":
    main()
