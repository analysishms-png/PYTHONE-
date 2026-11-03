"""Banquet write-path tests (rollback-safe, no live data mutated).

Covers the two write flows behind Banquet > Operation UIs:
  - hall_advance_receive -> PayChargeH VType='AD' (base + 2.5% CGST + 2.5% SGST)
  - hallsale1_create_from_booking -> HallSale1 header (46-col insert)

Bug this guards against: the HallSale1 INSERT once missed the RoundOff
value, shifting every later value by one (date landed in numeric NetAmt ->
22018 operand type clash).
"""
from __future__ import annotations

import pytest

from HMS_py.core import banquet_ops as bops

pytestmark = pytest.mark.database

BOOK = "DKKIBOOK 2026      23"  # live booking: GuarAtt=125, CoverRate=1680


def _count(cur, sql: str, *p) -> int:
    cur.execute(sql, p)
    return int(cur.fetchone()[0])


def test_hall_advance_receive_inserts_three_rows(db_transaction):
    cn = db_transaction
    cur = cn.cursor()
    before = _count(cur, "SELECT COUNT(*) FROM PayChargeH WHERE VType='AD'")

    res = bops.hall_advance_receive(BOOK, 1000.0, "KKCASH",
                                    cn=cn, commit=False)

    assert res["docid"].startswith("DKKAD")
    assert res["vno"] >= 1
    assert res["cgst"] == pytest.approx(25.0)
    assert res["sgst"] == pytest.approx(25.0)
    assert res["total"] == pytest.approx(1050.0)

    assert _count(cur, "SELECT COUNT(*) FROM PayChargeH WHERE VType='AD'") \
        == before + 3

    base = cur.execute(
        "SELECT PayCode, AmtCr, ContraDocID FROM PayChargeH "
        "WHERE DocId=? AND SNo=1", (res["docid"],)).fetchone()
    assert base[0] == "KKCASH"
    assert float(base[1]) == pytest.approx(1000.0)
    assert base[2] == BOOK            # advance booking se link hota hai

    tax = cur.execute(
        "SELECT PayCode, AmtCr FROM PayChargeH "
        "WHERE DocId=? AND SNo IN (2,3) ORDER BY SNo",
        (res["docid"],)).fetchall()
    assert [r[0] for r in tax] == ["KKCGSS", "KKSGSS"]
    assert float(tax[0][1]) == pytest.approx(25.0)
    assert float(tax[1][1]) == pytest.approx(25.0)

    cn.rollback()
    assert _count(cur, "SELECT COUNT(*) FROM PayChargeH WHERE VType='AD'") \
        == before


def test_hallsale1_create_from_booking_header(db_transaction):
    cn = db_transaction
    cur = cn.cursor()
    before_bills = _count(cur, "SELECT COUNT(*) FROM HallSale1")
    before_vno = _count(
        cur,
        "SELECT ISNULL(MAX(VNo),0) FROM HallSale1 "
        "WHERE VType='IDC' AND Vprefix='2026' AND Site_Code='KK'")

    docid = bops.hallsale1_create_from_booking(
        BOOK, "IDC", "KKBANQ", cn=cn, commit=False)

    row = cur.execute(
        "SELECT VNo, Party, Total, NetAmt, Advance, BookDocId, RestCode, "
        "NoOfPax, RatePerPax, U_AE "
        "FROM HallSale1 WHERE DocId=?", (docid,)).fetchone()
    (vno, party, total, netamt, advance, bookdocid, rest,
     pax, rateper, u_ae) = row

    assert docid.startswith("DKKIDC")
    assert vno == before_vno + 1                     # VNo HallSale1 se aata hai
    assert bookdocid == BOOK
    assert rest == "KKBANQ"
    assert u_ae == "A"
    # HallBook1 empty hai -> header fallback: GuarAtt x CoverRate = 125x1680
    assert float(total) == pytest.approx(210000.0)
    assert float(netamt) == pytest.approx(210000.0)
    assert int(pax) == 125
    assert float(rateper) == pytest.approx(1680.0)
    # Advance = booking ka AD total
    assert float(advance) == pytest.approx(
        bops.hall_advance_total(BOOK, cn=cn))

    assert _count(cur, "SELECT COUNT(*) FROM HallSale1") == before_bills + 1

    cn.rollback()
    assert _count(cur, "SELECT COUNT(*) FROM HallSale1") == before_bills


def test_amounts_from_booking_fallback_chain():
    # NetAmount bhara hua ho to wahi
    assert bops._amounts_from_booking(
        {"netamt": 388500.0, "amount": 388500.0, "total": 0.0}
    )["netamt"] == pytest.approx(388500.0)
    # Total=0, Amount=0 -> GuarAtt x CoverRate
    a = bops._amounts_from_booking(
        {"total": 0.0, "amount": 0.0, "guaratt": 125, "cover_rate": 1680.0})
    assert a["total"] == pytest.approx(210000.0)
    assert a["netamt"] == pytest.approx(210000.0)
    # sab zero -> 0, crash nahi
    a2 = bops._amounts_from_booking({})
    assert a2["total"] == 0.0 and a2["netamt"] == 0.0
