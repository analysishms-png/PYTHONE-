"""Pilot/module manual completeness checker. Exit 0 = complete."""
from __future__ import annotations
import argparse
import json
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parents[2]

REQUIRED = ["_logic.json", "TEST_RESULTS.md", "README.md", "DATABASE.md",
            "FRONTEND.md", "BACKEND.md", "TEST_PLAN.md",
            "01_Masters/README.md", "02_Operations/README.md",
            "03_Reports/README.md", "screenshots/manifest.json"]


def check(module_key: str, root: pathlib.Path | None = None) -> list[str]:
    from HMS_py.tools.manual_pipeline.capture_module import validate_image
    base = (root or ROOT / "MODULE_MANUALS_2026") / module_key
    problems: list[str] = []
    for rel in REQUIRED:
        if not (base / rel).exists():
            problems.append(f"missing {rel}")
    man = base / "screenshots" / "manifest.json"
    if man.exists():
        data = json.loads(man.read_text(encoding="utf-8"))
        if data.get("failed"):
            problems.append(f"manifest failed leaves: {data['failed']}")
        shots = [base / "screenshots" / it["file"]
                 for it in data.get("items", []) if it.get("status") == "ok"]
        if not shots:
            problems.append("no successful screenshots")
        bad = [p.name for p in shots if not validate_image(p)]
        if bad:
            problems.append(f"invalid screenshots: {bad}")
    for rel in REQUIRED:
        f = base / rel
        if f.suffix == ".md" and f.exists():
            text = f.read_text(encoding="utf-8")
            if "TBD" in text or "TODO" in text:
                problems.append(f"placeholder (TBD/TODO) in {rel}")
    return problems


def main(argv=None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    a = ap.parse_args(argv)
    problems = check(a.module)
    if problems:
        print(f"{a.module}: INCOMPLETE")
        for p in problems:
            print("  -", p)
        return 1
    print(f"{a.module}: COMPLETE")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
