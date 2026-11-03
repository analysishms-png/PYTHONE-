# -*- coding: utf-8 -*-
"""Sidebar click -> menubar menuHelp load verify (live DB, offscreen UI).

Port of _qa/verify_menuhelp_sidebar.py as pytest (marked `slow` + `database`):
  - SA: sidebar menuHelp-primary, har module click -> menubar titles ==
    mh.menubar_for() output (module-wise), AUTO_OPEN safe-open stubbed.
  - Restricted user (pehla non-SA menuHelp user): sirf apne modules,
    koi fallback leak nahi.

Runs only when a live DB is reachable; otherwise skip (CI-safe).
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "..")))
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

import pytest

pytestmark = [pytest.mark.slow, pytest.mark.database]


def _db_available() -> bool:
    try:
        from HMS_py.core import db
        db.query("SELECT 1")
        return True
    except Exception:
        return False


_requires_db = pytest.mark.skipif(not _db_available(), reason="live DB not reachable")


def _make_app():
    from PyQt6.QtWidgets import QApplication
    return QApplication.instance() or QApplication(sys.argv)


def _click_module(win, mod_target: str):
    btn = next((b for b in win._side_buttons
                if str(b.property("mod_target") or "").strip().lower()
                == mod_target.strip().lower()), None)
    assert btn is not None, f"sidebar button missing: {mod_target}"
    win._on_sidebar_click(btn.property("mod_target"), btn)


def _menu_titles(win) -> set[str]:
    return {a.text().strip().lower() for a in win.menuBar().actions()}


@_requires_db
def test_sidebar_click_menubar_menuhelp_sa(qapp=None):
    """SA: har sidebar module click -> menubar = mh.menubar_for(module)."""
    app = qapp or _make_app()
    from HMS_py.core import menu_help as mh
    from HMS_py.ui.sidebar_buttons import build_all_buttons
    from HMS_py.ui.shell import MainWindow

    win = MainWindow("SA", {"name": "Verify", "short": "VFY", "year": "2026-27"})
    app.processEvents()
    # Modal forms offscreen me hang karte hain — stub (menubar path waise hi)
    win._safe_open = lambda name: None  # type: ignore[method-assign]
    try:
        btns = build_all_buttons("SA")
        assert btns["MODULES"], "no sidebar modules"
        mh_l1 = {s["name"].lower() for s in mh.sidebar_sources("SA")
                 if s.get("opt1")}
        side_targets = {b["mod_target"].lower() for b in btns["MODULES"]}
        assert not (mh_l1 - side_targets), f"menuHelp L1 missing: {mh_l1 - side_targets}"

        for b in btns["MODULES"]:
            target = b["mod_target"]
            _click_module(win, target)
            app.processEvents()
            expected = {g["name"].strip().lower()
                        for g in mh.menubar_for(target, "SA")}
            if not expected:
                continue  # menuless module (fallback leaf) — click ne crash nahi kiya
            loaded = _menu_titles(win)
            missing = expected - loaded
            assert not missing, f"{target}: menubar me missing groups: {missing}"
    finally:
        win.close()


@_requires_db
def test_sidebar_restricted_user_no_leak(qapp=None):
    """Restricted user: sidebar = sirf uske menuHelp modules (no fallback leak)."""
    app = qapp or _make_app()
    from HMS_py.core import menu_help as mh
    from HMS_py.ui.sidebar_buttons import build_all_buttons
    from HMS_py.ui.shell import MainWindow

    non_sa = [u for u in mh.users_with_rights() if u.upper() != "SA"]
    if not non_sa:
        pytest.skip("koi restricted menuHelp user nahi")
    user = non_sa[0]
    rows = mh.entries(user)
    if mh.full_access(user):
        pytest.skip(f"{user} ke effective rows nahi (SA fallback)")

    win = MainWindow(user, {"name": "Verify", "short": "VFY", "year": "2026-27"})
    app.processEvents()
    win._safe_open = lambda name: None  # type: ignore[method-assign]
    try:
        allowed = {r["caption"] for r in rows}
        side = [b["mod_target"] for b in build_all_buttons(user)["MODULES"]]
        leak = [t for t in side if mh._norm_caption(t) not in allowed]
        assert not leak, f"{user}: fallback leak: {leak}"
    finally:
        win.close()
