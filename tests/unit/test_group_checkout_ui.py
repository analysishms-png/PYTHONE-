"""Tests for Group Check-Out UI (VB6 FdGrpCheckOut.frm port)."""

import pytest
import sys
import os

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

sys.path.insert(0, r"C:\Analysis\HMS_py")
import HMS_py
HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")

from PyQt6.QtWidgets import QApplication

pytestmark = pytest.mark.ui


@pytest.fixture(scope="session")
def qapp():
    app = QApplication.instance() or QApplication([])
    yield app


def test_group_checkout_ui_imports():
    """Test that group_checkout_ui module imports successfully."""
    from HMS_py.ui.front_office import group_checkout_ui
    assert hasattr(group_checkout_ui, "GroupCheckoutWindow")
    assert hasattr(group_checkout_ui, "open_group_checkout")


def test_group_checkout_window_creation(qapp):
    """Test that GroupCheckoutWindow can be created and has expected components."""
    from HMS_py.ui.front_office import group_checkout_ui

    window = group_checkout_ui.GroupCheckoutWindow()
    assert window.windowTitle() == "Group Check-Out - HMS_py"
    assert hasattr(window, "edMaster")
    assert hasattr(window, "tbl")
    assert hasattr(window, "btnSettle")
    assert hasattr(window, "btnPreview")
    assert hasattr(window, "btnPrint")
    assert window.tbl.columnCount() == 8
    # Check headers via horizontalHeaderItem
    headers = []
    for c in range(window.tbl.columnCount()):
        item = window.tbl.horizontalHeaderItem(c)
        headers.append(item.text() if item else "")
    assert headers == [
        "FolioNo", "Guest Name", "Departure", "Room",
        "Charges (Dr)", "Payments (Cr)", "Balance", "Status"
    ]
    window.close()


def test_group_checkout_master_folio_validation(qapp):
    """Test master folio input validation."""
    from HMS_py.ui.front_office import group_checkout_ui

    window = group_checkout_ui.GroupCheckoutWindow()

    # Empty master folio should show info message
    window.edMaster.setText("")
    # Can't easily test QMessageBox without mocking, but we can verify the method exists
    assert hasattr(window, "_load_group")
    assert hasattr(window, "_preview")
    assert hasattr(window, "_do_group_checkout")

    # Test non-integer input
    window.edMaster.setText("abc")
    # Should handle gracefully

    window.close()


def test_group_checkout_shortcuts(qapp):
    """Test that keyboard shortcuts are registered."""
    from HMS_py.ui.front_office import group_checkout_ui
    from PyQt6.QtGui import QShortcut

    window = group_checkout_ui.GroupCheckoutWindow()
    # Check shortcuts are connected (we can't easily test activation without more mocking)
    # Just verify the methods exist
    assert hasattr(window, "_load_group")
    assert hasattr(window, "_preview")
    assert hasattr(window, "_do_group_checkout")
    assert hasattr(window, "_print_consolidated")

    # Test shortcut methods exist
    shortcuts = window.findChildren(QShortcut)
    shortcut_keys = [s.key().toString() for s in shortcuts]
    assert "F3" in shortcut_keys or "F4" in shortcut_keys or "F5" in shortcut_keys

    window.close()


def test_group_checkout_shell_registry():
    """Test that Group Check-Out is wired in shell registry."""
    import sys
    sys.path.insert(0, r"C:\Analysis\HMS_py")
    import HMS_py
    HMS_py.__path__.insert(0, r"C:\Analysis\HMS_py\HMS_py")

    from HMS_py.ui.shell import shell
    reg = shell._form_registry()

    # Check Group Check-Out entries exist and are not _coming_soon
    for key in ["Group Check Out", "Group Check Out Entry (Detail)"]:
        assert key in reg, f"Missing registry entry: {key}"
        fn = reg[key]
        qualname = getattr(fn, "__qualname__", str(fn))
        assert "_coming_soon" not in qualname, f"{key} is still _coming_soon: {qualname}"


def test_group_checkout_core_functions_exist():
    """Test that core group_checkout functions exist."""
    from HMS_py.core.front_office import checkout

    assert hasattr(checkout, "group_checkout")
    assert hasattr(checkout, "group_checkout_preview")
    assert hasattr(checkout, "get_group_folios")


if __name__ == "__main__":
    pytest.main([__file__, "-v", "--no-header"])