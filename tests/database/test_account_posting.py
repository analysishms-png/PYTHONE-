"""A/C Posting driver (VB6 fdNDAcPostChrg) - rollback-safe DB tests."""
from __future__ import annotations

import datetime

import pytest

from HMS_py.core import nightaudit as na

pytestmark = pytest.mark.database

FUTURE = datetime.date(2031, 3, 10)   # inhouse/POS data nahi hoga


def test_account_posting_daily_range(db_transaction):
    cn = db_transaction
    seen = []

    def progress(done, total, date):
        seen.append((done, total, str(date)))

    res = na.account_posting(FUTURE, FUTURE + datetime.timedelta(days=2),
                             mode="Daily Bill wise Posting", cn=cn,
                             commit=False, progress=progress)
    assert res["mode"] == "Daily Bill wise Posting"
    assert res["dates"] == 3
    assert len(seen) == 3 and seen[0][1] == 3
    assert res["errors"] == []
    cn.rollback()


def test_account_posting_summary_mode(db_transaction):
    cn = db_transaction
    res = na.account_posting(FUTURE, FUTURE,
                             mode="Summary Posting", cn=cn, commit=False)
    assert res["mode"] == "Summary Posting"
    assert res["dates"] == 1
    cn.rollback()


def test_account_posting_bad_range(db_transaction):
    cn = db_transaction
    with pytest.raises(ValueError) as e:
        na.account_posting(FUTURE, FUTURE - datetime.timedelta(days=1),
                           mode="Daily Bill wise Posting", cn=cn,
                           commit=False)
    assert "Posting Dates" in str(e.value)


def test_rename_bill_no(db_transaction):
    cn = db_transaction
    with pytest.raises(ValueError):
        na.rename_bill_no("", "NEW1", cn=cn, commit=False)
    with pytest.raises(ValueError):
        na.rename_bill_no("OLD1", " ", cn=cn, commit=False)
    # Bill_No varchar(8) -> over-length ka saaf error (8152 se pehle)
    with pytest.raises(ValueError) as e:
        na.rename_bill_no("1", "WAY_TOO_LONG_BILL_NO", cn=cn, commit=False)
    assert "8" in str(e.value)
    # nonexistent bill -> 0 rows, koi error nahi
    assert na.rename_bill_no("NOSUCHB", "NEWB1", cn=cn, commit=False) == 0
    cn.rollback()


def test_rename_bill_no_updates_rows(db_transaction):
    from HMS_py.core import db
    cn = db_transaction
    cn.cursor().execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, Vdate, "
        "Bill_No) VALUES (?, 1, 'RC', 999999, ?, ?, 'OLD001')",
        ("TESTBILL  1", db.get_site_code(), "2031-01-01"))
    n = na.rename_bill_no("OLD001", "NEW001", cn=cn, commit=False)
    assert n == 1
    cn.rollback()
