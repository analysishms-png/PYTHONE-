"""Headless UI smoke tests — read-only.

Instantiates each DONE option's open_* dialog (offscreen platform) and
verifies it opens without exception. Does NOT click buttons or write data.
Skipped if PyQt6 is unavailable or offscreen fails.
"""

from __future__ import annotations

import importlib
import os
import re
from pathlib import Path

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from tests.menu_testing.conftest import PROJECT_ROOT

TEST_CASES_PATH = PROJECT_ROOT / "tests" / "menu_testing" / "TEST_CASES.json"


def _load_cases():
    import json
    return json.loads(TEST_CASES_PATH.read_text(encoding="utf-8"))


def _collect_openers():
    import HMS_py.ui as _ui_pkg
    import pkgutil
    out = {}
    import re

    def _norm(s):
        return re.sub(r"[^a-z0-9]", "", (s or "").lower())

    for mod_info in pkgutil.walk_packages(_ui_pkg.__path__, _ui_pkg.__name__ + "."):
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
                    out[_norm(label)] = (mod_info.name, name, func)
    return out


_OPENERS = _collect_openers()

try:
    from PyQt6.QtWidgets import QApplication
    _APP = QApplication.instance() or QApplication([])
    _PYQT6 = True
except Exception:
    _PYQT6 = False


def pytest_generate_tests(metafunc):
    if "case" in metafunc.fixturenames:
        import json
        cases = json.loads(TEST_CASES_PATH.read_text(encoding="utf-8"))
        # Only DONE options with a discoverable open_* opener
        eligible = [
            c for c in cases
            if c["status"] == "DONE"
            and re.sub(r"[^a-z0-9]", "", c["option"].lower()) in _OPENERS
        ]
        metafunc.parametrize("case", eligible, ids=lambda c: c["test_id"])


@pytest.mark.ui
def test_ui_form_opens_headless(case):
    """Open the DONE option's dialog headless; must not raise."""
    if not _PYQT6:
        pytest.skip("PyQt6 not available")
    label = re.sub(r"[^a-z0-9]", "", case["option"].lower())
    _module, _name, func = _OPENERS[label]
    try:
        dlg = func()
        assert dlg is not None
        # Give the event loop a chance to process show events
        try:
            _APP.processEvents()
        except Exception:
            pass
        dlg.close()
    except Exception as exc:
        pytest.fail(f"UI form for '{case['option']}' raised: {exc}")
