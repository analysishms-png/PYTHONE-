"""Pytest fixtures for night audit DB isolation (S001)."""

import datetime
import os
import sys
from types import SimpleNamespace

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core import db, nightaudit as na


@pytest.fixture(autouse=True)
def isolate_db(monkeypatch):
    """Autouse fixture: mock db.connect to return isolated connection."""
    original_connect = db.connect
    original_query = db.query
    original_execute = db.execute

    class IsolatedCn:
        def __init__(self):
            self._committed = False
            self._rolled_back = False
            self._closed = False
            self._queries = []

        def commit(self):
            self._committed = True

        def rollback(self):
            self._rolled_back = True

        def close(self):
            self._closed = True

        def cursor(self):
            # Simple cursor mock
            class MockCursor:
                def __init__(self):
                    self._rows = []
                    self._index = 0
                
                def fetchone(self):
                    if self._index < len(self._rows):
                        row = self._rows[self._index]
                        self._index += 1
                        return row
                    return None
                
                def fetchall(self):
                    return list(self._rows)
                
                def execute(self, sql, params=None):
                    pass
            
            return MockCursor()

    def isolated_connect():
        cn = IsolatedCn()
        # Override query to use the isolated connection's cursor
        def isolated_query(sql, params=(), cn=None):
            # Use the connection's cursor to fetch data
            cursor = cn.cursor()
            # For our tests, just return empty initially - tests will monkeypatch db.query
            return cursor
        cn.query = isolated_query
        return cn

    db.connect = isolated_connect
    db.query = original_query
    db.execute = original_execute

    yield

    # Teardown: restore originals
    db.connect = original_connect
    db.query = original_query
    db.execute = original_execute


def _roomocc_row(docid="DKKCHK   2025    1001", folio=11, roomno="101", mfolio=0):
    """Create a simple tuple row object (uncharged_rooms expects subscriptable rows)."""
    return (docid, folio, roomno, mfolio)


def test_uncharged_rooms_maps_rows(monkeypatch):
    """Test uncharged_rooms with mocked DB rows."""
    from HMS_py.core import nightaudit as na
    test_rows = [_roomocc_row("D1", 11, "101 "), _roomocc_row("D2", 12, "102", 3)]
    monkeypatch.setattr(db, "query", lambda *a, **k: test_rows)
    
    out = na.uncharged_rooms(datetime.date(2026, 8, 3))
    assert len(out) == 2
    assert out[0]["roomno"] == "101"          # RTRIM applied
    assert out[1]["folio"] == 12
    assert out[1]["mfolio"] == 3


def test_uncharged_rooms_empty_ok(monkeypatch):
    """Test uncharged_rooms returns empty list when no rows."""
    from HMS_py.core import nightaudit as na
    monkeypatch.setattr(db, "query", lambda *a, **k: [])
    
    assert na.uncharged_rooms(datetime.date(2026, 8, 3)) == []


def test_cancel_tentative_disabled_when_days_zero(monkeypatch):
    """Test cancel_tentative_no_shows returns empty when TentativeDays=0."""
    import HMS_py.core.enviro as enviro_mod
    monkeypatch.setattr(enviro_mod, "get_setting",
                        lambda *a, **k: 0)

    result = na.cancel_tentative_no_shows(datetime.date(2026, 8, 3))
    assert result == []


def test_cancel_tentative_expires_only_expired(monkeypatch):
    """Test cancel_tentative_no_shows cancels only expired tentative bookings."""
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


def test_run_night_audit_blocks_on_uncharged(monkeypatch, isolate_db):
    """Test run_night_audit blocks when uncharged rooms exist."""
    from HMS_py.core import nightaudit as na

    # Mock uncharged_rooms to return charged rooms (block NA)
    orig_uncharged = na.uncharged_rooms
    na.uncharged_rooms = lambda *a, **k: [{"docid": "D1", "folio": 1,
                                              "roomno": "999", "mfolio": 0}]

    # Mock flags
    orig_flags = na.get_night_audit_flags
    na.get_night_audit_flags = lambda cn=None: {"kot_at_na": "No",
                                                  "pos_bill_at_na": "No"}

    # Mock cancel_tentative
    orig_cancel = na.cancel_tentative_no_shows
    na.cancel_tentative_no_shows = lambda *a, **k: []

    # Mock post functions to raise
    posted_calls = []
    def boom(*a, **k):
        posted_calls.append(a)
        raise AssertionError("posting nahi hona chahiye tha")
    orig_post_room = na.post_room_charges_for_date
    orig_post_pos = na.post_pos_revenue_for_date
    na.post_room_charges_for_date = boom
    na.post_pos_revenue_for_date = boom

    class FakeCn:
        def commit(self):
            pass
        def rollback(self):
            pass
        def close(self):
            pass
        def cursor(self):
            class MockCursor:
                def fetchall(self):
                    return []
            return MockCursor()

    orig_connect = db.connect
    db.connect = lambda: FakeCn()

    try:
        res = na.run_night_audit(datetime.date(2026, 8, 3), commit=True)
        assert not res["success"]
        assert any("Charge Posting" in e for e in res["errors"])
        assert not posted_calls
    finally:
        # Restore all mocks
        na.uncharged_rooms = orig_uncharged
        na.get_night_audit_flags = orig_flags
        na.cancel_tentative_no_shows = orig_cancel
        na.post_room_charges_for_date = orig_post_room
        na.post_pos_revenue_for_date = orig_post_pos
        db.connect = orig_connect