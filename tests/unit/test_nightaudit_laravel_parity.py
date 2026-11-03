"""Night Audit Laravel-parity guards (uncharged_rooms, cancel_tentative_no_shows).

No live DB — db mocks (unit). Laravel evidence:
CompanyController@submitnightaudit lines ~15230 (uncharged) & ~15310 (noshow).
Run: python -m pytest tests/unit/test_nightaudit_laravel_parity.py -q
"""
import datetime
import os
import sys
from types import SimpleNamespace

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core import db, nightaudit as na


def _roomocc_row(docid="DKKCHK   2025    1001", folio=11, roomno="101"):
    return SimpleNamespace(_asdict=lambda: None, DocId=docid, FolioNo=folio,
                           **{"": None}) if False else SimpleNamespace(
        DocId=docid, FolioNo=folio, **{"": None})


class FakeRow:
    """db.query row emulate: index + attribute dono access."""
    def __init__(self, *vals):
        self._vals = vals
    def __getitem__(self, i):
        return self._vals[i]
    def __getattr__(self, name):
        # attribute access bhi index-based row pe chal jaye
        raise AttributeError(name)


def test_uncharged_rooms_maps_rows(monkeypatch):
    rows = [FakeRow("D1", 11, "101 ", 0), FakeRow("D2", 12, "102", 3)]
    monkeypatch.setattr(db, "query", lambda *a, **k: rows)
    out = na.uncharged_rooms(datetime.date(2026, 8, 3))
    assert len(out) == 2
    assert out[0]["roomno"] == "101"          # RTRIM applied
    assert out[1]["folio"] == 12
    assert out[1]["mfolio"] == 3


def test_uncharged_rooms_empty_ok(monkeypatch):
    monkeypatch.setattr(db, "query", lambda *a, **k: [])
    assert na.uncharged_rooms(datetime.date(2026, 8, 3)) == []


def test_cancel_tentative_disabled_when_days_zero(monkeypatch):
    # enviro.get_setting patch (function-level import hai)
    import HMS_py.core.enviro as enviro_mod
    monkeypatch.setattr(enviro_mod, "get_setting",
                        lambda *a, **k: 0)
    called = {"n": 0}

    def fake_query(*a, **k):
        called["n"] += 1
        return []
    monkeypatch.setattr(db, "query", fake_query)
    assert na.cancel_tentative_no_shows(datetime.date(2026, 8, 3)) == []
    assert called["n"] == 0     # days<=0 => query hi nahi chala


def test_cancel_tentative_expires_only_expired(monkeypatch):
    import HMS_py.core.enviro as enviro_mod
    monkeypatch.setattr(enviro_mod, "get_setting",
                        lambda *a, **k: 2)  # 2 days
    na_date = datetime.date(2026, 8, 5)
    rows = [
        ("BKEXP",  datetime.date(2026, 8, 1)),   # expiry 08-03 <= 08-05 cancel
        ("BKKEEP", datetime.date(2026, 8, 4)),   # expiry 08-06 > 08-05 keep
        ("BKNOENT", None),                        # skip None ent dt
    ]
    monkeypatch.setattr(db, "query", lambda *a, **k: rows)
    execs = []

    def fake_exec(sql, params=(), cn=None, commit=True):
        execs.append((sql, params))
        return 1
    monkeypatch.setattr(db, "execute", fake_exec)
    cancelled = na.cancel_tentative_no_shows(na_date, commit=False)
    assert cancelled == ["BKEXP"]
    assert len(execs) == 1
    assert "NOSHOW" in execs[0][0] and "No Show" in execs[0][0]


def test_run_night_audit_blocks_on_uncharged(monkeypatch):
    # uncharged_rooms jab non-empty ho -> run_night_audit error me hard-stop
    monkeypatch.setattr(na, "uncharged_rooms",
                        lambda *a, **k: [{"docid": "D1", "folio": 1,
                                          "roomno": "999", "mfolio": 0}])
    monkeypatch.setattr(na, "get_night_audit_flags",
                        lambda cn=None: {"kot_at_na": "No",
                                         "pos_bill_at_na": "No"})
    monkeypatch.setattr(na, "cancel_tentative_no_shows",
                        lambda *a, **k: [])
    posted_calls = []

    def boom(*a, **k):
        posted_calls.append(a)
        raise AssertionError("posting nahi hona chahiye tha")
    monkeypatch.setattr(na, "post_room_charges_for_date", boom)
    monkeypatch.setattr(na, "post_pos_revenue_for_date", boom)

    class FakeCn:
        def commit(self):
            pass
        def rollback(self):
            pass
        def close(self):
            pass
    monkeypatch.setattr(db, "connect", lambda: FakeCn())
    res = na.run_night_audit(datetime.date(2026, 8, 3), commit=True)
    assert not res["success"]
    assert any("Charge Posting" in e for e in res["errors"])
    assert not posted_calls
