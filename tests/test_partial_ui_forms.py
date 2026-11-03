"""PARTIAL-bucket UI ports: FaGlobeNarr Global Narration (pehla batch).

VB6 evidence (FODER/FaGlobeNarr.frm):
  - Form_Load: 'Select Name From NarrMast Order by name'
  - TxtSearch type-to-filter + Enter(0x0D)=select+exit, Esc(0x1B)=cancel
  - hint label verbatim: '{Press <Esc> For Cancel && Exit} ...'
Python:
  - ui/partial_forms_ui.GlobalNarrationWindow (search + Enter/Esc + picker)
  - ui/fa_voucher_ui.open_global_narration_picker (FaVrEnt '...' button)
  - shell registry 'Global Narration' caption wired
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


class TestGlobalNarration:
    def test_window_construct_and_load(self):
        from HMS_py.ui.partial_forms_ui import GlobalNarrationWindow
        _qapp()
        w = GlobalNarrationWindow()
        try:
            assert w.windowTitle() == "Global Narration"
            assert hasattr(w, "ed_search")
            assert hasattr(w, "grid")
            assert w.grid.rowCount() >= 0
        finally:
            w.close()

    def test_search_filter_hides_nonmatching_rows(self):
        from HMS_py.ui.partial_forms_ui import GlobalNarrationWindow
        _qapp()
        w = GlobalNarrationWindow()
        try:
            w._filter("zzz_no_match_zzz")
            hidden = [w.grid.isRowHidden(r) for r in range(w.grid.rowCount())]
            assert w.grid.rowCount() == 0 or any(hidden), \
                "non-match filter ke saath kuch rows hidden honi chahiye"
            w._filter("")  # reset
            assert not any(w.grid.isRowHidden(r)
                           for r in range(w.grid.rowCount()))
        finally:
            w.close()

    def test_enter_accepts_selected_row(self):
        from HMS_py.ui.partial_forms_ui import GlobalNarrationWindow
        _qapp()
        w = GlobalNarrationWindow()
        try:
            if w.grid.rowCount() == 0:
                pytest.skip("NarrMast khali hai")
            w.grid.setCurrentCell(0, 0)
            expected = w.grid.item(0, 0).text()
            w._accept_selected()  # Enter parity — window band ho jayegi
            assert w.selected_name == expected
        finally:
            w.close()

    def test_voucher_narration_button_exists(self):
        from HMS_py.ui import fa_voucher_ui as fvu
        _qapp()
        w = fvu.VoucherEntryDialog()
        try:
            assert hasattr(w, "edNarr")
            assert hasattr(w, "_pick_global_narration")
        finally:
            w.close()

    def test_registry_global_narration_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        fn = reg.get("Global Narration")
        assert fn is not None, "Global Narration registry me nahi"
        assert "coming_soon" not in repr(fn), "Global Narration coming_soon"

    def test_registry_pfui_batch_wired(self):
        """partial_forms_ui ke saare ports VB6-exact captions par wired."""
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Group Accounts Entry", "Ledger Accounts Entry",
                    "Magic", "Finance Reports", "Cheque/DD Clearing Entry",
                    "Adjustment Delete", "Location wise Opening Stock Entry",
                    "T.D.S.Category Entry"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"

    def test_sweep_style_open_and_close(self):
        """Sweep harness jaisa: construct+show+close — koi exception nahi."""
        from HMS_py.ui.partial_forms_ui import GlobalNarrationWindow
        _qapp()
        w = GlobalNarrationWindow()
        try:
            w.show()
            from PyQt6.QtWidgets import QApplication
            QApplication.processEvents()
            w._filter("a")
            QApplication.processEvents()
        finally:
            w.close()

    def test_pfui_windows_construct_and_close(self):
        """Har pfui opener ka window construct+close (sweep parity)."""
        from HMS_py.ui import partial_forms_ui as pfui
        from PyQt6.QtWidgets import QApplication
        _qapp()
        for open_fn in (pfui.open_group_accounts, pfui.open_ledger_accounts,
                        pfui.open_magic, pfui.open_fa_reports,
                        pfui.open_cheque_dd_clearing,
                        pfui.open_adjustment_delete,
                        pfui.open_location_opening_stock,
                        pfui.open_tds_category):
            w = open_fn()
            try:
                QApplication.processEvents()
                assert w is not None
            finally:
                w.close()
                QApplication.processEvents()


class TestGuestCharges:
    """VB6 fdPrintScreen port (core: folio.charges_summary_*)."""

    def test_core_browser_and_detail(self):
        from HMS_py.core import folio
        rows = folio.charges_summary_folios("")
        assert isinstance(rows, list)
        if not rows:
            pytest.skip("koi folio nahi")
        d = folio.charges_summary_detail(rows[0]["folio"])
        assert d["folio"] == rows[0]["folio"]
        assert abs((d["dr"] - d["cr"]) - d["net"]) < 0.011
        for x in d["rows"]:
            assert "revname" in x and "dr" in x and "cr" in x

    def test_core_search_filter(self):
        from HMS_py.core import folio
        rows = folio.charges_summary_folios("")
        if rows and rows[0]["guest"]:
            needle = rows[0]["guest"][:4]
            hit = folio.charges_summary_folios(needle, top=20)
            assert isinstance(hit, list)

    def test_ui_construct_select_and_close(self):
        from HMS_py.ui.guest_charges_ui import GuestChargesWindow
        from PyQt6.QtWidgets import QApplication
        _qapp()
        w = GuestChargesWindow()
        try:
            QApplication.processEvents()
            if w.tbl_folios.rowCount() == 0:
                pytest.skip("koi folio nahi")
            w.tbl_folios.setCurrentCell(0, 0)
            w._on_folio()
            QApplication.processEvents()
            assert w.tbl_charges.rowCount() > 0
            assert "Folio" in w.lbl.text()
        finally:
            w.close()

    def test_registry_guest_charges_wired(self):
        from HMS_py.ui import shell
        fn = shell._form_registry().get("Guest Charges Summary")
        assert fn is not None, "Guest Charges Summary registry me nahi"
        assert "coming_soon" not in repr(fn)
