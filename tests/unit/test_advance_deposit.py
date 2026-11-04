"""Unit tests for Reservation advance_deposit (VB6 frmAdvanceDepDialog.frm).

Covers: validation guards + PayCharge insert path.
Run with live DB (db_transaction fixture rolls back each test).
"""
import pytest
from datetime import date

pytestmark = pytest.mark.database


def _insert_folio(cn, docid="PYTADVF001", booking_docid="PYTADVB001", site="BB"):
    from HMS_py.core import db
    db.execute(
        "INSERT INTO GuestFolio (DocId, FolioNo, Vtype, Vdate, Site_Code, Vprefix, "
        "GuestProf, Name, BookingDocId, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, 1, 'CHK', getdate(), ?, '2026', 'BB000001', 'PYT Test Guest', "
        "?, 'PYADMIN', getdate(), 'A', ?)",
        (docid, site, booking_docid, site), cn=cn, commit=False)


def test_advance_deposit_requires_docid(reservation_module):
    with pytest.raises(ValueError, match="DocId zaroori"):
        reservation_module.advance_deposit(docid="", vtype="ADRES", paytype="BBNT",
                                           amount=1000.0, site="BB")


def test_advance_deposit_booking_not_found(reservation_module):
    with pytest.raises(ValueError, match="nahi mila"):
        reservation_module.advance_deposit(docid="NO-SUCH-BOOKING", vtype="ADRES",
                                           paytype="BBNT", amount=1000.0, site="BB")


def test_advance_deposit_inserts_paycharge(reservation_module, db_transaction):
    from HMS_py.core import db
    _insert_folio(db_transaction)
    # ADRES Voucher_Prefix is valid FY 2024-25; use an in-range vdate.
    res = reservation_module.advance_deposit(
        docid="PYTADVB001", vtype="ADRES", paytype="BBNT",
        amount=5000.0, advtype="ADV", narration="PYT advance",
        user="PYADMIN", site="BB", vdate=date(2024, 6, 1),
        cn=db_transaction, commit=False)
    assert res["vno"] == 1
    assert res["amount"] == 5000.0
    assert res["advtype"] == "ADV"
    rows = db.query(
        "SELECT DocId, AmtCr, AmtDr, PayCode FROM PayCharge WHERE DocId = ?",
        (res["docid"],), cn=db_transaction)
    assert len(rows) == 1
    assert rows[0].AmtCr == 5000.0
    assert rows[0].AmtDr == 0.0
    assert rows[0].PayCode == "BBNT"


def test_advance_deposit_refund_posts_debit(reservation_module, db_transaction):
    from HMS_py.core import db
    _insert_folio(db_transaction)
    res = reservation_module.advance_deposit(
        docid="PYTADVB001", vtype="ADRES", paytype="BBNT",
        amount=2500.0, advtype="Refund", narration="PYT refund",
        user="PYADMIN", site="BB", vdate=date(2024, 6, 1),
        cn=db_transaction, commit=False)
    rows = db.query(
        "SELECT AmtCr, AmtDr FROM PayCharge WHERE DocId = ? AND SNo = 1",
        (res["docid"],), cn=db_transaction)
    assert len(rows) == 1
    assert rows[0].AmtDr == 2500.0
    assert rows[0].AmtCr == 0.0
