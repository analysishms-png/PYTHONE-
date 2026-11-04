"""Tests for the Advance Deposit dialog (VB6 frmAdvanceDepDialog.frm).

UI layer: dialog builds offscreen, combos are populated from live masters,
the voucher-prefix label follows the selected date/site, and the shell
registry wires the caption to a real opener.

Core layer: the read-only lookups filter by advance voucher type.
"""
from __future__ import annotations

import os
import sys
from pathlib import Path

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

pytestmark = pytest.mark.unit

_QAPP = None


@pytest.fixture(autouse=True)
def _modal_guard():
    """Never let a message box or modal exec block the test run."""
    import PyQt6.QtWidgets as W

    saved = (W.QDialog.exec, W.QMessageBox.information, W.QMessageBox.warning,
             W.QMessageBox.critical, W.QMessageBox.question)
    W.QDialog.exec = lambda self, *a, **k: W.QDialog.DialogCode.Rejected
    W.QMessageBox.information = staticmethod(lambda *a, **k: W.QMessageBox.StandardButton.Ok)
    W.QMessageBox.warning = staticmethod(lambda *a, **k: W.QMessageBox.StandardButton.Ok)
    W.QMessageBox.critical = staticmethod(lambda *a, **k: W.QMessageBox.StandardButton.Ok)
    W.QMessageBox.question = staticmethod(lambda *a, **k: W.QMessageBox.StandardButton.Yes)
    yield
    (W.QDialog.exec, W.QMessageBox.information, W.QMessageBox.warning,
     W.QMessageBox.critical, W.QMessageBox.question) = saved


def _qapp():
    global _QAPP
    from PyQt6.QtWidgets import QApplication

    _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


@pytest.fixture
def dialog():
    _qapp()
    from HMS_py.ui.front_office.advance_deposit_ui import AdvanceDepositDialog

    dlg = AdvanceDepositDialog()
    yield dlg
    dlg.close()


# ---------------------------------------------------------------------------
# Module surface
# ---------------------------------------------------------------------------
def test_module_exports_open_advance_deposit():
    from HMS_py.ui.front_office import advance_deposit_ui as mod

    assert callable(mod.open_advance_deposit)
    assert callable(mod.AdvanceDepositDialog)


def test_shell_registry_wires_advance_deposit():
    from HMS_py.ui.shell import shell

    registry = shell._form_registry()
    opener = registry.get("Advance Deposit")
    assert opener is not None, "Advance Deposit missing from _form_registry()"
    assert "_coming_soon" not in getattr(opener, "__qualname__", ""), (
        "Advance Deposit still wired to _coming_soon")


# ---------------------------------------------------------------------------
# Dialog construction
# ---------------------------------------------------------------------------
def test_dialog_populates_choices_from_live_masters(dialog):
    assert dialog.windowTitle() == "Advance Deposit"
    assert dialog.cmb_vtype.count() >= 1
    assert dialog.cmb_paytype.count() >= 1
    assert dialog.cmb_tax.count() >= 1  # "(none)" at minimum


def test_dialog_starts_with_entry_disabled(dialog):
    assert dialog.ed_amount.isEnabled() is False
    assert dialog.btn_post.isEnabled() is False


def test_prefix_label_tracks_voucher_date(dialog):
    """ADRES prefix is only valid inside its Voucher_Prefix date window."""
    from PyQt6.QtCore import QDate

    index = next(
        (i for i in range(dialog.cmb_vtype.count())
         if isinstance(dialog.cmb_vtype.itemData(i), dict)
         and dialog.cmb_vtype.itemData(i).get("vtype") == "ADRES"),
        None,
    )
    if index is None:
        pytest.skip("ADRES voucher type not present in this database")

    dialog.cmb_vtype.setCurrentIndex(index)

    dialog.de_vdate.setDate(QDate(2024, 6, 1))
    _qapp().processEvents()
    assert dialog.lbl_prefix.text().strip() == "2024"

    dialog.de_vdate.setDate(QDate.currentDate())
    _qapp().processEvents()
    assert "none valid" in dialog.lbl_prefix.text().lower()


def test_selecting_target_enables_entry(dialog):
    if dialog.tbl_targets.rowCount() == 0:
        pytest.skip("no booking or in-house folio available in this database")
    dialog.tbl_targets.selectRow(0)
    _qapp().processEvents()
    assert dialog.ed_amount.isEnabled() is True
    assert dialog._current is not None
    assert dialog._current["docid"] in dialog.lbl_target.text()


# ---------------------------------------------------------------------------
# Core lookups
# ---------------------------------------------------------------------------
def test_advance_voucher_types_only_advance_types():
    from HMS_py.core.front_office import reservation

    types = reservation.advance_voucher_types()
    if not types:
        pytest.skip("no advance voucher type in this database")
    for row in types:
        assert "advance" in row["description"].lower()
        assert row["vtype"]
        assert row["site"]


def test_advance_pay_types_excludes_hold():
    from HMS_py.core.front_office import reservation

    rows = reservation.advance_pay_types()
    if not rows:
        pytest.skip("no payment type in this database")
    assert all(r["paytype"].lower() != "hold" for r in rows)
    assert all(r["code"] for r in rows)


def _insert_paycharge(cn, docid, vtype, sno, amt_cr=0.0, amt_dr=0.0,
                      site="BB", ref="PYTADVUI01"):
    from HMS_py.core import db

    db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, "
        "Vdate, VTime, GuestProf, Comments, PayCode, PayType, AmtCr, AmtDr, "
        "RoomCat, RoomType, RoomNo, FolioNo, RestCode, BillAmount, U_Name, "
        "U_EntDt, U_AE, LogSite_Code, RefDocID, TaxStru, TaxPer) "
        "VALUES (?, ?, ?, 1, ?, '2024', getdate(), '00:00', 'BB000001', "
        "'PYT', 'BBCASH', 'Cash', ?, ?, '', '', '', 1, 'FOMBB', ?, 'PYADMIN', "
        "getdate(), 'A', ?, ?, '', 0)",
        (docid, sno, vtype, site, amt_cr, amt_dr, amt_cr,
         site, ref),
        cn=cn, commit=False)


@pytest.mark.database
def test_list_advance_deposits_filters_by_voucher_type(db_transaction):
    from HMS_py.core.front_office import reservation

    _insert_paycharge(db_transaction, "PYTADVUID1", "ADRES", 1, amt_cr=5000.0)
    _insert_paycharge(db_transaction, "PYTADVUID2", "AR1", 2, amt_dr=1000.0)
    _insert_paycharge(db_transaction, "PYTADVUID3", "IPOS", 3, amt_cr=999.0)

    rows = reservation.list_advance_deposits("PYTADVUI01", cn=db_transaction)
    assert [r["vtype"] for r in rows] == ["ADRES", "AR1"]
    assert [r["amt_cr"] for r in rows] == [5000.0, 0.0]
    assert [r["amt_dr"] for r in rows] == [0.0, 1000.0]

    totals = reservation.advance_totals("PYTADVUI01", cn=db_transaction)
    assert totals == {"advance": 5000.0, "refund": 1000.0, "net": 4000.0,
                      "count": 2}


@pytest.mark.database
def test_list_advance_deposits_empty_docid(db_transaction):
    from HMS_py.core.front_office import reservation

    assert reservation.list_advance_deposits("", cn=db_transaction) == []
    assert reservation.advance_totals("", cn=db_transaction)["count"] == 0
