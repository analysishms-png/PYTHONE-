"""4-layer test runner -> TEST_RESULTS.md + RUN_TEST_LOG.md append.

Layers:
  L1  unit (no DB)          pytest tests/unit
  L2  db pytest (rollback)  pytest tests/database
  L2b front-office flow     pytest tests/test_front_office.py
  L2c db script tests       python tests/database/<each main()-style file>
  L3  UI offscreen          pytest tests/test_wave_ui_forms.py tests/test_ui_walkthroughs.py

Usage:
  python -m HMS_py.tools.manual_pipeline.run_module_tests --module 04_FrontOffice
"""
from __future__ import annotations
import argparse
import datetime as dt
import pathlib
import re
import subprocess
import sys
import time

ROOT = pathlib.Path(__file__).resolve().parents[2]   # png\HMS_py
PKG_ROOT = ROOT.parent                                # png (sys.path entry)

SUMMARY_RE = re.compile(r"(\d+) (passed|failed|error|skipped)")

DB_SCRIPTS = [
    "tests/database/test_enviro.py",
    "tests/database/test_fa_voucher.py",
    "tests/database/test_inventory_registers.py",
    "tests/database/test_main_setup_plan.py",
    "tests/database/test_receive_payment.py",
    "tests/database/test_reports_engine.py",
    "tests/database/test_room_pk_fixes.py",
    "tests/database/test_scheme_tds.py",
    "tests/database/test_tally_export.py",
]

LAYER_CMDS: dict[str, list[str]] = {
    "L1": [sys.executable, "-m", "pytest", "tests/unit", "-q", "--tb=line"],
    "L2": [sys.executable, "-m", "pytest", "tests/database", "-q", "--tb=line"],
    "L2b": [sys.executable, "-m", "pytest", "tests/test_front_office.py",
            "-q", "--tb=line"],
    "L3": [sys.executable, "-m", "pytest", "tests/test_wave_ui_forms.py",
           "tests/test_ui_walkthroughs.py", "-q", "--tb=line"],
}


def parse_pytest_summary(line: str) -> tuple[int, str] | None:
    m = SUMMARY_RE.search(line or "")
    if not m:
        return None
    return int(m.group(1)), m.group(2)


def _tail_summary(text: str) -> str:
    for ln in reversed(text.strip().splitlines()):
        if parse_pytest_summary(ln):
            return ln.strip()
    last = text.strip().splitlines()
    return last[-1].strip() if last else "(no output)"


def _run(cmd: list[str], cwd: pathlib.Path, timeout: int = 900) -> dict:
    t0 = time.time()
    try:
        p = subprocess.run(cmd, cwd=str(cwd), capture_output=True,
                           text=True, timeout=timeout)
        out = (p.stdout or "") + (p.stderr or "")
        return {"exit": p.returncode, "out": out,
                "seconds": round(time.time() - t0, 1)}
    except subprocess.TimeoutExpired:
        return {"exit": 124, "out": "TIMEOUT", "seconds": timeout}


def run_layers(layers: list[str]) -> list[dict]:
    records: list[dict] = []
    for lay in layers:
        if lay == "L2c":
            for f in DB_SCRIPTS:
                r = _run([sys.executable, str(ROOT / f)], cwd=PKG_ROOT)
                records.append({
                    "layer": f"L2c:{pathlib.Path(f).stem}",
                    "cmd": f"python {f}",
                    "exit": r["exit"],
                    "summary": _tail_summary(r["out"]),
                    "seconds": r["seconds"],
                })
            continue
        cmd = LAYER_CMDS[lay]
        r = _run(cmd, cwd=ROOT)
        records.append({
            "layer": lay,
            "cmd": " ".join(cmd[1:]),
            "exit": r["exit"],
            "summary": _tail_summary(r["out"]),
            "seconds": r["seconds"],
        })
    return records


def render_results(module_key: str, records: list[dict]) -> str:
    now = dt.datetime.now().isoformat(timespec="seconds")
    lines = [f"# TEST_RESULTS — {module_key}", "",
             f"Generated: {now}  |  Python {sys.version.split()[0]}  |  "
             f"DB: Moondata2627", "",
             "| Layer | Command | Exit | Result | Sec |",
             "|---|---|---|---|---|"]
    for r in records:
        status = "PASS" if r["exit"] == 0 else "FAIL"
        lines.append(f"| {r['layer']} | `{r['cmd']}` | {r['exit']} | "
                     f"{status}: {r['summary']} | {r['seconds']} |")
    lines += ["", "## Notes", "- FAIL layers rahe to unhe "
              "`00_GLOBAL/RUN_TEST_LOG.md` me known-issue note karo "
              "(silent skip nahi).", ""]
    return "\n".join(lines)


def append_run_log(records: list[dict]) -> None:
    log = ROOT / "MODULE_MANUALS_2026" / "00_GLOBAL" / "RUN_TEST_LOG.md"
    now = dt.datetime.now().isoformat(timespec="seconds")
    with log.open("a", encoding="utf-8") as fh:
        for r in records:
            status = "PASS" if r["exit"] == 0 else "FAIL"
            fh.write(f"{now} | {r['layer']} | {r['cmd']} | exit={r['exit']} "
                     f"| {status} {r['summary']} | {r['seconds']}s\n")


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    ap.add_argument("--layers", default="L1,L2,L2b,L2c,L3")
    a = ap.parse_args(argv)
    layers = [x.strip() for x in a.layers.split(",") if x.strip()]
    records = run_layers(layers)
    out = (ROOT / "MODULE_MANUALS_2026" / a.module / "TEST_RESULTS.md")
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(render_results(a.module, records), encoding="utf-8")
    append_run_log(records)
    fails = [r for r in records if r["exit"] != 0]
    print(f"wrote {out}  layers={len(records)} fails={len(fails)}")
    for r in fails:
        print(f"  FAIL {r['layer']}: {r['summary']}")
    return 1 if fails else 0


if __name__ == "__main__":
    raise SystemExit(main())
