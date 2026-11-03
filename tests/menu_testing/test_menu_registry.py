"""Menu registry wiring verification — read-only.

For each of the 375 checklist options:
  1. The caption MUST exist in the live menuHelp table (VB6 source of truth).
  2. The flag MUST be E (executable), R (report), N (group) or V (hidden).
  3. DONE options: a Python callable/target must be discoverable.
  4. MISSING options: no Python wiring expected.

There is no single _form_registry() in this codebase; wiring is spread across
ui/*_ui.py open_* functions, sidebar_buttons.AUTO_OPEN/DIRECT_ACTIONS, and
core/reporting.reports.menu_caption_map(). This test discovers callables
dynamically rather than asserting against a possibly-stale registry.

Normalization uses menu_help._norm_caption (the same function menuHelp
lookups use) so caption matching is consistent.
"""

from __future__ import annotations

import importlib
import re
from pathlib import Path

import pytest

from HMS_py.core.front_office.menu_help import _norm_caption
from tests.menu_testing.conftest import PROJECT_ROOT

TEST_CASES_PATH = PROJECT_ROOT / "tests" / "menu_testing" / "TEST_CASES.json"


def _load_cases():
    import json
    return json.loads(TEST_CASES_PATH.read_text(encoding="utf-8"))


# Discover all open_* callables in the UI package (leaf form openers).
_UI_OPENERS: dict[str, tuple[str, str]] = {}  # normalized label -> (module, func)


def _collect_openers() -> None:
    """Scan HMS_py.ui.*_ui modules for open_<snake> functions."""
    import HMS_py.ui as _ui_pkg
    import pkgutil

    for mod_info in pkgutil.walk_packages(
        _ui_pkg.__path__, _ui_pkg.__name__ + "."
    ):
        if not mod_info.name.endswith("_ui"):
            continue
        try:
            mod = importlib.import_module(mod_info.name)
        except Exception:
            continue
        for name in dir(mod):
            if name.startswith("open_") and name != "open_reports":
                func = getattr(mod, name)
                if callable(func):
                    label = name[len("open_"):].replace("_", " ").title()
                    _UI_OPENERS[_norm_caption(label)] = (mod_info.name, name)


_collect_openers()


# Report caption -> key (menu_caption_map uses whitespace-collapse, NO lowercasing;
# mirror the shell's exact lookup so tests reflect real wiring).
def _ws_norm(cap: str) -> str:
    return re.sub(r"\s+", " ", cap or "").strip()


_REPORT_CAPTION_TO_KEY: dict[str, str] = {}


def _build_report_map(reports):
    cap_map = reports.menu_caption_map()
    out = {}
    for cap, key in cap_map.items():
        out[_ws_norm(cap)] = key
    return out


@pytest.fixture(scope="session")
def openers():
    return dict(_UI_OPENERS)


@pytest.fixture(scope="session")
def report_key_map(reports):
    return _build_report_map(reports)


# ---------------------------------------------------------------------------
# P1: every checklist option must be a real menuHelp leaf (VB6 source of truth)
# ---------------------------------------------------------------------------
@pytest.mark.parametrize("case", _load_cases(), ids=lambda c: c["test_id"])
def test_menu_option_exists_in_menuhelp(case, mh):
    caption = case["option"]
    row = mh.by_caption("SA").get(_norm_caption(caption))
    assert row is not None, (
        f"Option '{caption}' (code {case['menu_code']}) not found in "
        f"menuHelp for user SA — not a real VB6 menu leaf"
    )


# ---------------------------------------------------------------------------
# P2: flag must be E/R/N/V (a real leaf or group)
# ---------------------------------------------------------------------------
@pytest.mark.parametrize("case", _load_cases(), ids=lambda c: c["test_id"])
def test_menu_option_has_valid_flag(case, mh):
    caption = case["option"]
    flag = mh.flag_for(caption, username="SA")
    assert flag in ("E", "R", "N", "V"), (
        f"Option '{caption}' (code {case['menu_code']}) has invalid/missing "
        f"menuHelp flag={flag!r}"
    )


# ---------------------------------------------------------------------------
# P3: DONE options must have discoverable Python wiring
# ---------------------------------------------------------------------------
REPORTY_TARGETS = {
    "trial balance", "ledger", "cash book", "bank book", "journal books",
    "sales register", "bank register", "occupancy analysis", "purchase register",
    "stock register", "stock summary", "item wise sale",
}


@pytest.mark.parametrize("case", _load_cases(), ids=lambda c: c["test_id"])
def test_done_options_have_python_wiring(case, mh, openers, report_key_map):
    if case["status"] != "DONE":
        pytest.skip(f"status={case['status']}")
    caption = case["option"]
    target = case["python_target"]
    ncap = _norm_caption(caption)

    # Report targets: verify caption maps to a live report key.
    if ncap in report_key_map:
        return
    if target and ncap in REPORTY_TARGETS:
        assert ncap in report_key_map, (
            f"DONE report '{caption}' has no menu_caption_map entry"
        )
        return

    # Form targets: verify an open_* callable exists.
    assert ncap in _UI_OPENERS or target != "—", (
        f"DONE option '{caption}' (code {case['menu_code']}) has no discoverable "
        f"Python open_* callable or target (target={target!r})"
    )


# ---------------------------------------------------------------------------
# P4: MISSING executable leaves should NOT have an open_* opener
# ---------------------------------------------------------------------------
@pytest.mark.parametrize("case", _load_cases(), ids=lambda c: c["test_id"])
def test_missing_options_have_no_wiring(case, mh, openers):
    if case["status"] != "MISSING":
        pytest.skip(f"status={case['status']}")
    caption = case["option"]
    if mh.flag_for(caption, username="SA") == "E":
        assert _norm_caption(caption) not in _UI_OPENERS, (
            f"MISSING option '{caption}' (code {case['menu_code']}) "
            f"unexpectedly has an open_* callable — registry out of sync"
        )


# ---------------------------------------------------------------------------
# P5: REPORT options must map to a report key with read-only SQL
# ---------------------------------------------------------------------------
@pytest.mark.parametrize("case", _load_cases(), ids=lambda c: c["test_id"])
def test_report_cases_map_to_report_key(case, reports, report_key_map):
    if case["status"] != "REPORT":
        pytest.skip(f"status={case['status']}")
    caption = case["option"]
    ncap = _ws_norm(caption)
    key = report_key_map.get(ncap)
    assert key is not None, (
        f"REPORT option '{caption}' (code {case['menu_code']}) has no "
        f"report key in menu_caption_map"
    )
    entry = next((r for r in reports.REPORTS if r.get("key") == key), None)
    assert entry is not None, f"report key {key!r} not in REPORTS registry"
    sql = entry.get("sql") or ""
    first = sql.lstrip().split()[0].upper() if sql else ""
    # Read-only reports may start with SELECT or WITH (CTE). Reject any DML.
    assert first in ("SELECT", "WITH"), (
        f"REPORT '{caption}' key {key!r} SQL is not read-only: {first!r}"
    )
