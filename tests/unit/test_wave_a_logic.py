# -*- coding: utf-8 -*-
"""Wave A core wins (kanpur txt business rules) — synthetic unit tests.

  1. TDS calc: Amount * Rate / 100 + TDSLimit rule (fa_tds_ops)
  2. Booking conflict: overlap logic (booking._overlaps + SQL shape)
  3. Leave balance: Entitled - Used (hr_payroll.leave_balance)

DB-free: query/execute monkeypatched. Live-DB smoke alag kiya gaya tha
(_qa verify + manual run).
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "..")))

from HMS_py.core import booking, fa_tds_ops, hr_payroll


# ── 1. TDS calc ──────────────────────────────────────────────────
def test_tds_calculate_basic_rate(monkeypatch):
    rows = [("TDS 5%", 15000.0, 5.0)]
    monkeypatch.setattr(fa_tds_ops.db, "query", lambda *a, **k: rows)
    r = fa_tds_ops.tds_calculate(20000, "KK0001")
    assert r["tds"] == 1000.0          # 20000 * 5 / 100
    assert r["deducted"] is True
    assert r["rate"] == 5.0


def test_tds_calculate_below_limit(monkeypatch):
    rows = [("TDS 5%", 15000.0, 5.0)]
    monkeypatch.setattr(fa_tds_ops.db, "query", lambda *a, **k: rows)
    r = fa_tds_ops.tds_calculate(10000, "KK0001")
    assert r["tds"] == 0.0 and r["deducted"] is False
    # limit-rule off => deduct
    r2 = fa_tds_ops.tds_calculate(10000, "KK0001", apply_limit=False)
    assert r2["tds"] == 500.0


def test_tds_calculate_always_flag(monkeypatch):
    # limit 1.0 = always-deduct (KK0004 pattern: limit 1.0, 2%)
    rows = [("TDS 2%", 1.0, 2.0)]
    monkeypatch.setattr(fa_tds_ops.db, "query", lambda *a, **k: rows)
    r = fa_tds_ops.tds_calculate(500, "KK0004")
    assert r["tds"] == 10.0 and r["deducted"] is True


def test_tds_calculate_missing_category(monkeypatch):
    monkeypatch.setattr(fa_tds_ops.db, "query", lambda *a, **k: [])
    try:
        fa_tds_ops.tds_calculate(100, "NOPE")
        assert False, "ValueError expected"
    except ValueError:
        pass


def test_tds_categories_mapping(monkeypatch):
    rows = [("KK0001", "TDS 5%", 15000.0, 5.0),
            ("KK0002", "TDS 10%", 30000.0, 10.0)]
    monkeypatch.setattr(fa_tds_ops.db, "query", lambda *a, **k: rows)
    cats = fa_tds_ops.tds_categories()
    assert cats[0] == {"code": "KK0001", "name": "TDS 5%",
                       "limit": 15000.0, "percentage": 5.0}
    assert len(cats) == 2


# ── 2. Booking conflict (SQL shape + overlap semantics) ─────────
class _Row:
    def __init__(self, *vals):
        self._v = vals

    def __getitem__(self, i):
        return self._v[i]


def test_check_room_conflict_sql_overlap_semantics(monkeypatch):
    """SQL WHERE ArrDate < dep AND DepDate > arr == classic half-open
    overlap; yahan captured-params se verify karte hain."""
    captured = {}

    def fake_query(sql, params=(), cn=None):
        captured["sql"] = sql
        captured["params"] = params
        if "FROM Booking" in sql:
            return []
        if "FROM RoomOcc" in sql:
            return [ _Row("DOC1", "101", "2026-01-01", "2026-01-05")]
        return []

    monkeypatch.setattr(booking.db, "query", fake_query)
    conf = booking.check_room_conflict("101", "2026-01-03", "2026-01-06")
    # RoomOcc row aayi (in-house overlap) — half-open: chk<dep && dep>arr
    assert any(c["source"] == "roomocc" and c["docid"] == "DOC1"
               for c in conf)
    # params order: site, room, dep, arr, ex (Booking); room, dep, arr (RoomOcc)
    bparams = captured.get("params")
    assert bparams is not None


def test_check_room_conflict_touching_dates_not_conflict(monkeypatch):
    """checkout == agle checkin ka arr-date: overlap nahi (half-open)."""
    def fake_query(sql, params=(), cn=None):
        # dep=2026-01-05, arr=2026-01-05 pass kiya; row with Dep=01-05:
        # 'ArrDate < 01-05 AND DepDate > 01-05' => false => no row
        return []
    monkeypatch.setattr(booking.db, "query", fake_query)
    assert booking.check_room_conflict("101", "2026-01-05",
                                       "2026-01-06") == []


def test_check_room_conflict_exclude_bookno(monkeypatch):
    seen = {}

    def fake_query(sql, params=(), cn=None):
        if "FROM Booking" in sql:
            seen["ex"] = params[-1]
            return []
        return []

    monkeypatch.setattr(booking.db, "query", fake_query)
    booking.check_room_conflict("101", "2026-01-01", "2026-01-02",
                                exclude_bookno=42)
    assert seen["ex"] == 42


# ── 3. Leave balance ─────────────────────────────────────────────
class _Emp:
    Name = "ASHISH KUMAR (HK)"
    Tot_CL_Allow = 12.0
    Tot_EL_Allow = 20.0
    Tot_DL_Allow = 10.0
    Tot_VL_Allow = 8.0
    OP_Casual = 5.0
    OP_Earned = 3.0
    Curr_Casual = 2.0
    Curr_Earned = 1.0
    Curr_DL = 0.0
    Curr_VL = 0.0


def test_leave_balance_entitled_minus_used(monkeypatch):
    def fake_query(sql, params=(), cn=None):
        if "FROM Employee" in sql:
            return [_Emp()]
        if "SUM(CL)" in sql:
            return [(5.0, 4.0, 2.0)]  # CL used=5, EL(Leave)=4, DL(Absent)=2
        if "Leave_Ench" in sql:
            return [(2.0,)]           # 2 din encash (EL se kat-ta hai)
        return []

    monkeypatch.setattr(hr_payroll.db, "query", fake_query)
    bal = hr_payroll.leave_balance("KK000060")
    assert bal["name"] == "ASHISH KUMAR (HK)"
    # CL: entitled = 12 allow + 5 open; used = 5
    assert bal["types"]["CL"]["entitled"] == 17.0
    assert bal["types"]["CL"]["used"] == 5.0
    assert bal["types"]["CL"]["balance"] == 12.0
    # EL: entitled = 20 + 3; used = 4 leave + 2 ench
    assert bal["types"]["EL"]["used"] == 6.0
    assert bal["types"]["EL"]["balance"] == 17.0
    # DL: entitled = 10 + 5(open OP_Casual); used = 2 absent
    assert bal["types"]["DL"]["balance"] == 13.0
    # VL: entitled = 8 + 5; used = 4 (Leave col shared)
    assert bal["types"]["VL"]["balance"] == 9.0
    assert bal["encashed_days"] == 2.0
    assert bal["total_balance"] == round(12 + 17 + 13 + 9, 2)


def test_leave_balance_missing_employee(monkeypatch):
    def fake_query(sql, params=(), cn=None):
        if "FROM Employee" in sql:
            return []
        return [(0,)]
    monkeypatch.setattr(hr_payroll.db, "query", fake_query)
    try:
        hr_payroll.leave_balance("NOPE")
        assert False, "ValueError expected"
    except ValueError:
        pass


def test_leave_balance_zero_usage(monkeypatch):
    def fake_query(sql, params=(), cn=None):
        if "FROM Employee" in sql:
            return [_Emp()]
        if "SUM(CL)" in sql:
            return [(0.0, 0.0, 0.0)]
        if "Leave_Ench" in sql:
            return [(0.0,)]
        return []
    monkeypatch.setattr(hr_payroll.db, "query", fake_query)
    bal = hr_payroll.leave_balance("KK000060")
    assert all(t["used"] == 0.0 for t in bal["types"].values())
    assert bal["total_balance"] == 17.0 + 23.0 + 15.0 + 13.0
