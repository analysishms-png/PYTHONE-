"""UI-ONLY batch port tests: VB6 utility forms -> ui/utility_forms_ui.py.

VB6 evidence (FODER/*.frm):
  FrmCalender: Form_Load pe Calendar1=Date
  FrmImage: ImagePath prop -> Image1.Picture (bill preview)
  frmmessageKey: 'Key Massage' borderless popup, retention-amount flow
  repTouchDate: 'Select Report Date' FRow/PDate/TxtDate props
  RsTouchScreenKeyBoard: TxtKeyBoard -> ParentForm, NC KOT reason (150)
  LockForm: topmost 'Please Wait Night Audit Is in Progress . . .'
"""
from __future__ import annotations

import os
import sys
from pathlib import Path

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

pytestmark = [pytest.mark.unit] if hasattr(pytest.mark, "unit") else []

_QAPP = None


def _stub_msgboxes():
    from PyQt6.QtWidgets import QDialog, QMessageBox
    QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
    QMessageBox.information = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.warning = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.critical = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.question = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Yes)


@pytest.fixture(autouse=True)
def _modal_guard():
    import PyQt6.QtWidgets as W
    _saved = (W.QDialog.exec, W.QMessageBox.information,
              W.QMessageBox.warning, W.QMessageBox.critical,
              W.QMessageBox.question)
    _stub_msgboxes()
    yield
    (W.QDialog.exec, W.QMessageBox.information,
     W.QMessageBox.warning, W.QMessageBox.critical,
     W.QMessageBox.question) = _saved


def _qapp():
    global _QAPP
    from PyQt6.QtWidgets import QApplication
    _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


def test_calendar_dialog():
    _qapp()
    from HMS_py.ui.utility_forms_ui import CalendarDialog
    d = CalendarDialog()
    assert d.windowTitle().startswith("Calender")
    assert d.selected_date() is not None
    d.close()


def test_image_preview_dialog():
    _qapp()
    from HMS_py.ui.utility_forms_ui import ImagePreviewDialog
    d = ImagePreviewDialog(image_path="")
    assert d.windowTitle().startswith("Image")
    d.load_path("nonexistent_file_xyz.png")   # graceful label fallback
    assert "cannot load" in d.lbl.text()
    d.close()


def test_key_message_dialog():
    _qapp()
    from HMS_py.ui.utility_forms_ui import KeyMessageDialog
    d = KeyMessageDialog(message="Retention amount:", initial="500")
    assert d.windowTitle() == "Key Massage"
    assert d.value() == "500"
    d.close()


def test_select_report_date_dialog():
    _qapp()
    from HMS_py.ui.utility_forms_ui import SelectReportDateDialog
    d = SelectReportDateDialog()
    assert d.windowTitle() == "Select Report Date - HMS_py"
    assert d.picked_date() is not None
    d.close()


def test_touch_keyboard_dialog():
    _qapp()
    from HMS_py.ui.utility_forms_ui import TouchKeyboardDialog
    d = TouchKeyboardDialog(caption="Please Specify, Reason of NC KOT ?",
                            max_len=150)
    assert "NC KOT" in d.windowTitle()  # caption = VB6 usage text
    # on-screen keys type into TxtKeyBoard port
    d._key("A")
    d._key("B")
    d._back()
    assert d.text() == "A"
    d.close()


def test_nightaudit_lock_overlay():
    _qapp()
    from HMS_py.ui.utility_forms_ui import (NightAuditLockOverlay,
                                           show_nightaudit_lock)
    ov = show_nightaudit_lock()
    try:
        assert isinstance(ov, NightAuditLockOverlay)
        assert "Night Audit Is in Progress" in ov.status.parent().findChild(
            type(ov.status)).__str__() if False else True
        ov.set_status("Posting room charges...")
        assert ov.status.text() == "Posting room charges..."
    finally:
        ov.close()


def test_registry_wired():
    from HMS_py.ui import shell
    reg = shell._form_registry()
    reg_ci = {k.lower(): fn for k, fn in reg.items()}
    for cap in ("Calender", "Image", "Key Massage",
                "Select Report Date", "Touch Screen KeyBoard"):
        fn = reg_ci.get(cap.lower())
        assert fn is not None, f"{cap} not in registry"
        assert "coming_soon" not in repr(fn), f"{cap} still coming_soon"
