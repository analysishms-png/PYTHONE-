"""Wave 5-7 UI windows + SundryType save-flow tests.

UI tests offscreen Qt pe, DB offline-graceful (DB down ho to skip —
existing test_ui_walkthroughs.py convention). Core SundryType tests
db_transaction fixture use karte hain (conftest: BEGIN + ROLLBACK per
test — production data untouched, master-prompt safety rules).

Covers:
- fd_forms_ui: 10 openers + grid population + registry captions
- posting_forms_ui: 4 openers + registry captions
- walkin_rack_ui: 4 openers + registry captions
- core.sundry_type: vtype_for, add_entry guards (required/duplicate/
  unknown-code), rollback safety, next_sno, list_entries
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

# modal-hang guard (offscreen pe hidden C++ modals hang karte hain —
# verify_fd_forms.py pattern; windows construction ke dauran dialogs
# khol sakti hain, e.g. DB errors)
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
    """UI tests ke dauran modals stub; baad me originals restore (dusri
    test files pe leak na ho)."""
    import PyQt6.QtWidgets as W
    saved = {n: getattr(W.QMessageBox, n)
             for n in ("information", "warning", "critical", "question")}
    saved_exec = W.QDialog.exec
    _stub_msgboxes()
    yield
    for n, fn in saved.items():
        setattr(W.QMessageBox, n, fn)
    W.QDialog.exec = saved_exec


def _qapp():
    global _QAPP
    if _QAPP is None:
        from PyQt6.QtWidgets import QApplication
        _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


def _db_up() -> bool:
    try:
        from HMS_py.core import db
        db.query("SELECT 1")
        return True
    except Exception:
        return False


DB = pytest.mark.skipif(not _db_up(), reason="DB offline")


# =================================================================
# fd_forms_ui (Wave 5)
# =================================================================
class TestFdFormsUi:
    def test_ten_openers_construct_and_close(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        for fn in (m.open_amend_stay, m.open_lookup_reservation,
                   m.open_room_checkout, m.open_guest_ledger,
                   m.open_guest_ledger_summ, m.open_group_checkout,
                   m.open_group_detail_checkout, m.open_lookup_room,
                   m.open_depart_sundry, m.open_facility_sundry):
            w = fn()
            assert w is not None
            w.close()

    def test_lookup_reservation_search_populates_grid(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        w = m.open_lookup_reservation()
        try:
            w.txt_search.setText("PYT")
            w._search()
            assert w.grid.columnCount() == 7
        finally:
            w.close()

    def test_group_detail_checkout_has_balance_column(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        w = m.open_group_detail_checkout()
        try:
            w._fill()
            assert w.grid.columnCount() >= 6
        finally:
            w.close()

    def test_sundry_windows_have_add_flow(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        for cls in (m.DepartSundryWindow, m.FacilitySundryWindow):
            w = cls()
            try:
                assert w.windowTitle() == "Outlet Bill Sundry Setting"
                assert hasattr(w, "cmb_sundry")
                assert hasattr(w, "grid")
            finally:
                w.close()

    def test_registry_captions_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Amend Stay", "Look Up Reservation By Guest Name",
                    "Room Check Out", "Guest Ledger",
                    "Summerized Guest Ledger", "Room Check Out Entry",
                    "Look Up Room", "Depart Sundry Setting"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"


# =================================================================
# posting_forms_ui (Wave 6)
# =================================================================
class TestPostingFormsUi:
    def test_four_openers_construct_and_close(self):
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        for fn in (m.open_post_chrg, m.open_payment_charge,
                   m.open_re_settlement, m.open_rev_checkout):
            w = fn()
            assert w is not None
            w.close()

    def test_receipts_grid_columns(self):
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_payment_charge()
        try:
            assert w.grid.columnCount() == 9
        finally:
            w.close()

    def test_registry_captions_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Post Charges /Payments", "Post Charges & Payment",
                    "Post Charges/Payment", "Check Out Cancel"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"


# =================================================================
# walkin_rack_ui (Wave 7)
# =================================================================
class TestWalkinRackUi:
    def test_four_openers_construct_and_close(self):
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        for fn in (m.open_room_view, m.open_display_rack,
                   m.open_roomocc_lookup, m.open_walkin_entry):
            w = fn()
            assert w is not None
            w.close()

    def test_walkin_requires_name(self, monkeypatch):
        from HMS_py.ui import walkin_rack_ui as m
        from PyQt6.QtWidgets import QMessageBox
        _qapp()
        w = m.open_walkin_entry()
        try:
            w.txt_name.setText("")
            seen = []

            def _fake_warn(*a, **k):
                seen.append(a)
                return QMessageBox.StandardButton.Ok
            monkeypatch.setattr(QMessageBox, "warning", _fake_warn)
            w._checkin()
            assert seen, "empty-name warning expected"
        finally:
            w.close()

    def test_walkin_entry_uses_progressive_steps(self, monkeypatch):
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        monkeypatch.setattr(m.roomstatus, "room_rack", lambda: [])
        w = m.open_walkin_entry()
        try:
            assert w.step_stack.currentIndex() == 0
            w.btn_next.click()
            assert w.step_stack.currentIndex() == 0
            w.txt_name.setText("PYT Wizard Guest")
            w.btn_next.click()
            assert w.step_stack.currentIndex() == 1
            w.btn_next.click()
            assert w.step_stack.currentIndex() == 2
            assert "PYT Wizard Guest" in w.lbl_review.text()
        finally:
            w.close()

    def test_front_office_walkin_routes_to_entry(self, monkeypatch):
        from HMS_py.ui import frontoffice, shell, walkin_rack_ui
        calls = []

        def _fake_entry(parent=None, user="PYADMIN"):
            calls.append((parent, user))
            return object()

        monkeypatch.setattr(walkin_rack_ui, "open_walkin_entry", _fake_entry)
        monkeypatch.setattr(frontoffice, "open_checkin",
                            lambda *a, **k: pytest.fail(
                                "WalkIn CheckIn must use the VB6 entry window"))
        reg = shell._form_registry()
        reg["WalkIn CheckIn"](None)
        reg["Check In"](None)
        assert calls == [(None, "PYADMIN"), (None, "PYADMIN")]

    def test_walkin_entry_has_visual_hierarchy(self, monkeypatch):
        from PyQt6.QtWidgets import QFrame
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        monkeypatch.setattr(m.roomstatus, "room_rack", lambda: [])
        w = m.open_walkin_entry()
        try:
            assert w.findChild(QFrame, "walkinHeader") is not None
            assert w.findChild(QFrame, "stepBar") is not None
            assert w.btn_next.property("accent") is True
            assert w.btn_checkin.property("success") is True
        finally:
            w.close()

    def test_room_view_tiles_render(self):
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        w = m.open_room_view()
        try:
            assert w.info.text() != ""
        finally:
            w.close()

    def test_registry_captions_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Room View", "Display Rack",
                    "Reservation Look Up Room Wise",
                    "Walk In / Check In Entry"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"


# =================================================================
# core.sundry_type — SundryType save-flow (rollback-safe)
# =================================================================
class TestSundryTypeCore:
    def test_vtype_for(self):
        from HMS_py.core import sundry_type as st
        assert st.vtype_for("depart") == "KKPURC"
        assert st.vtype_for("facility") == "FACL"

    @DB
    def test_add_entry_and_duplicate_guard(self, db_transaction):
        from HMS_py.core import db, sundry_type as st
        cn = db_transaction
        # pick a SundryMast code jo KKPURC me abhi use NAHI ho raha
        # (VB6 duplicate-guard live data pe bhi deterministic test ho)
        rows = db.query(
            "SELECT TOP 1 RTRIM(m.Code) FROM SundryMast m WHERE NOT EXISTS "
            "(SELECT 1 FROM SundryType s WHERE s.V_Type = 'KKPURC' AND "
            "s.SundryCode = m.Code) ORDER BY m.Code", cn=cn)
        if not rows:
            pytest.skip("SundryMast me free code hi nahi (sab KKPURC me)")
        code = rows[0][0]
        before = db.query(
            "SELECT COUNT(*) FROM SundryType WHERE V_Type = 'KKPURC'",
            cn=cn)[0][0]
        st.add_entry("depart", code, "TEST DISP", cn=cn, commit=False)
        after = db.query(
            "SELECT COUNT(*) FROM SundryType WHERE V_Type = 'KKPURC'",
            cn=cn)[0][0]
        assert after == before + 1
        # duplicate must raise
        with pytest.raises(ValueError, match="Duplicate"):
            st.add_entry("depart", code, "AGAIN", cn=cn, commit=False)
        # unknown sundry code must raise
        with pytest.raises(ValueError, match="SundryMast"):
            st.add_entry("depart", "ZZZZZZ", "X", cn=cn, commit=False)

    @DB
    def test_add_entry_rollback_no_residue(self, db_connection):
        from HMS_py.core import db, sundry_type as st
        cn = db_connection
        code = db.query(
            "SELECT TOP 1 RTRIM(Code) FROM SundryMast ORDER BY Code",
            cn=cn)[0][0]
        before = db.query(
            "SELECT COUNT(*) FROM SundryType", cn=cn)[0][0]
        st.add_entry("facility", code, "RB TEST", cn=cn, commit=False)
        mid = db.query("SELECT COUNT(*) FROM SundryType", cn=cn)[0][0]
        assert mid == before + 1, "uncommitted row visible in-txn"
        cn.rollback()
        after = db.query("SELECT COUNT(*) FROM SundryType", cn=cn)[0][0]
        assert after == before, "residue after rollback!"

    @DB
    def test_next_sno_monotonic(self, db_transaction):
        from HMS_py.core import db, sundry_type as st
        cn = db_transaction
        code = db.query(
            "SELECT TOP 1 RTRIM(Code) FROM SundryMast ORDER BY Code",
            cn=cn)[0][0]
        s1 = st.next_sno("FACL", cn=cn)
        st.add_entry("facility", code, "SNO TEST", cn=cn, commit=False)
        s2 = st.next_sno("FACL", cn=cn)
        assert s2 == s1 + 1

    @DB
    def test_list_entries_shape(self, db_transaction):
        from HMS_py.core import sundry_type as st
        rows = st.list_entries("depart", cn=db_transaction)
        for r in rows:
            assert set(r) >= {"vtype", "sundrycode", "sno", "dispname",
                              "sundry_name", "rev_name", "postyn"}
            assert r["vtype"] == "KKPURC"
