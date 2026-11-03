"""Daily attendance (VB6 prAttend Attend table) parity tests.

Round-trip: probe row snapshot -> insert temp (PYT emp) -> update -> delete
-> verify restore. Live DB, read-mostly.
Run: python -m pytest tests/database/test_attendance_parity.py -q
"""
import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core import db, hr_payroll

TEST_EMP = "PYTATT01"
TODAY = datetime.date(2026, 9, 25)


@pytest.fixture(scope="module")
def cn():
    conn = db.connect()
    yield conn
    conn.close()


@pytest.fixture()
def cleanup(cn):
    yield
    cur = cn.cursor()
    cur.execute("DELETE FROM Attend WHERE Emp_Code = ?", (TEST_EMP,))
    cn.commit()


def test_list_returns_live_rows(cn):
    rows = hr_payroll.list_attendance(limit=10, cn=cn)
    assert len(rows) == 10          # Attend table 1323 live rows
    r = rows[0]
    assert r["emp_code"] and r["v_date"] is not None
    assert "firstshift" in r and "secondshift" in r
    assert "emp_name" in r          # join worked


def test_insert_get_update_delete_round_trip(cn, cleanup):
    # clean slate for test emp
    hr_payroll.delete_attendance(TEST_EMP, TODAY, cn=cn)
    # insert (VB6 duplicate guard test pehle)
    rec = hr_payroll.insert_attendance(TEST_EMP, TODAY, "P", "P", cn=cn)
    assert rec["firstshift"] == "P" and rec["secondshift"] == "P"
    with pytest.raises(ValueError):
        hr_payroll.insert_attendance(TEST_EMP, TODAY, "A", "A", cn=cn)
    # update
    rec2 = hr_payroll.update_attendance(
        TEST_EMP, TODAY, {"firstshift": "A", "secondshift": "H"}, cn=cn)
    assert rec2["firstshift"] == "A" and rec2["secondshift"] == "H"
    # delete + verify gone
    hr_payroll.delete_attendance(TEST_EMP, TODAY, cn=cn)
    assert hr_payroll.get_attendance(TEST_EMP, TODAY, cn=cn) is None


def test_emp_code_required(cn):
    with pytest.raises(ValueError):
        hr_payroll.insert_attendance("", TODAY, "P", "P", cn=cn)
    with pytest.raises(ValueError):
        hr_payroll.insert_attendance(TEST_EMP, "", "P", "P", cn=cn)
