"""Channel Phase-2 + Phase-3 unit tests — mocked db/client (no live DB).

Phase-2: parser, poll (dedup/cursor), accept (mapping/missing/idempotent),
cancellation sync. Phase-3: availability math, push (live-gate, unmapped,
rate-limit), NA auto-push hook.
Run: python -m pytest tests/unit/test_channel_phase23.py -q
"""
import datetime
import os
import sys
from types import SimpleNamespace

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core.channel import booking_in as bi
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import inventory as inv
from HMS_py.core.channel import roommap


# ============================================================
# Phase-2 Task 1: parser
# ============================================================

def test_parse_full_booking():
    raw = client_mod.EzeeClient._MOCK_BOOKINGS[0]
    b = bi.parse_ezee_booking(raw)
    assert b["ezee_booking_id"] == "EZ-1001"
    assert b["status"] == "Confirmed"
    assert b["guest_name"] == "RAMESH KUMAR"
    assert b["arr_date"] == datetime.datetime(2026, 10, 1)
    assert b["dep_date"] == datetime.datetime(2026, 10, 3)
    assert b["adults"] == 2 and b["amount"] == 3600.0


def test_parse_missing_fields_never_raises():
    b = bi.parse_ezee_booking(client_mod.EzeeClient._MOCK_BOOKINGS[3])
    assert b["ezee_booking_id"] == "EZ-1004"
    assert b["guest_name"] == ""
    assert b["arr_date"] is None
    assert b["adults"] is None


def test_parse_dt_formats():
    assert bi._parse_dt("2026-10-01") == datetime.datetime(2026, 10, 1)
    assert bi._parse_dt("2026-10-01 14:30") == datetime.datetime(
        2026, 10, 1, 14, 30)
    assert bi._parse_dt("2026-10-01T14:30:00") == datetime.datetime(
        2026, 10, 1, 14, 30)
    assert bi._parse_dt("") is None
    assert bi._parse_dt("garbage") is None


def test_parse_status_normalizes():
    assert bi.parse_ezee_booking({"BookingId": "X",
                                  "Status": "cancelled"})["status"] == \
        "Cancelled"
    assert bi.parse_ezee_booking({"BookingId": "X"})["status"] == "Confirmed"


# ============================================================
# Phase-2 Task 2: poll
# ============================================================

class MockClient:
    def __init__(self, bookings=None, mode="mock", fail=False):
        self._bookings = bookings if bookings is not None \
            else client_mod.EzeeClient._MOCK_BOOKINGS
        self.mode = mode
        self._fail = fail
        self.calls = []

    def fetch_bookings(self, since=None):
        self.calls.append(since)
        if self._fail:
            return {"success": False, "error": "boom"}
        return {"success": True, "mock": True, "Bookings": self._bookings}


class FakeCur:
    def __init__(self, existing_ids=()):
        self.existing_ids = set(existing_ids)
        self.inserts = []
        self.updates = []

    def execute(self, sql, params=()):
        if "INSERT INTO ChannelBookingIn" in sql:
            eid = params[1]
            if eid in self.existing_ids:
                raise Exception("Violation of UNIQUE KEY "
                                "constraint 'UX_ChannelBookingIn'")
            self.inserts.append(params)
        elif "UPDATE ChannelEnviro" in sql:
            self.updates.append(params)


class FakeCn:
    def __init__(self, existing_ids=()):
        self.cur = FakeCur(existing_ids)
        self.committed = False
        self.rolled = False

    def cursor(self):
        return self.cur
    def commit(self):
        self.committed = True
    def rollback(self):
        self.rolled = True
    def close(self):
        pass


def test_poll_queues_and_updates_cursor(monkeypatch):
    cn = FakeCn()
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "last_booking_poll_dt": None, "mock_yn": "Y"})
    monkeypatch.setattr(bi, "db", SimpleNamespace(connect=lambda: cn))
    cl = MockClient()
    out = bi.poll_bookings(cn=cn, client=cl)
    assert out["queued"] == 4 and out["skipped"] == 0
    assert cn.committed
    assert len(cn.cur.updates) == 1        # cursor update


def test_poll_dedup_skips_existing(monkeypatch):
    # pehli booking already queued (unique index hit)
    cn = FakeCn(existing_ids={"EZ-1001"})
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "last_booking_poll_dt": None, "mock_yn": "Y"})
    monkeypatch.setattr(bi, "db", SimpleNamespace(connect=lambda: cn))
    out = bi.poll_bookings(cn=cn, client=MockClient())
    assert out["queued"] == 3
    assert out["skipped"] == 1


def test_poll_no_config_noop(monkeypatch):
    cl = NoCfgClient()
    out = bi.poll_bookings(client=cl)
    assert out["queued"] == 0 and "no_config" in out["errors"][0]


def test_poll_fetch_fail(monkeypatch):
    cn = FakeCn()
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "last_booking_poll_dt": None, "mock_yn": "Y"})
    out = bi.poll_bookings(cn=cn, client=MockClient(fail=True))
    assert out["queued"] == 0 and out["errors"]


class NoCfgClient(MockClient):
    def __init__(self):
        super().__init__()
        self.mode = "no_config"


# ============================================================
# Phase-2 Task 3: accept
# ============================================================

def _queue_row(qid=9, eid="EZ-1001", name="RAMESH KUMAR",
               room_type="Superior DLX", processed="N", docid=""):
    return SimpleNamespace(
        Id=qid, Provider="EZEE", EzeeBookingId=eid, RoomType=room_type,
        RatePlan="EP", GuestName=name, GuestEmail="e@x", GuestPhone="p",
        ArrDate=datetime.datetime(2026, 10, 1),
        DepDate=datetime.datetime(2026, 10, 3),
        Adults=2, Children=0, Amount=3600.0, Commission=180.0,
        ProcessedYN=processed, BookingDocId=docid, U_EntDt=None)


class FakeCn2:
    def commit(self):
        pass
    def rollback(self):
        pass
    def close(self):
        pass


def test_accept_requires_mapping(monkeypatch):
    monkeypatch.setattr(bi, "db", SimpleNamespace(
        query=lambda *a, **k: [_queue_row()],
        execute=lambda *a, **k: 1,
        connect=lambda: FakeCn2()))
    monkeypatch.setattr(roommap, "roomcat_for", lambda *a, **k: None)
    with pytest.raises(ValueError, match="mapping missing"):
        bi.accept_booking(9)


def test_accept_rejects_empty_guest(monkeypatch):
    monkeypatch.setattr(bi, "db", SimpleNamespace(
        query=lambda *a, **k: [_queue_row(name="")],
        execute=lambda *a, **k: 1,
        connect=lambda: FakeCn2()))
    monkeypatch.setattr(roommap, "roomcat_for",
                        lambda *a, **k: "KK002")
    with pytest.raises(ValueError, match="GuestName"):
        bi.accept_booking(9)


def test_accept_idempotent(monkeypatch):
    monkeypatch.setattr(bi, "db", SimpleNamespace(
        query=lambda *a, **k: [_queue_row(processed="Y", docid="DX")],
        execute=lambda *a, **k: 1,
        connect=lambda: FakeCn2()))
    with pytest.raises(ValueError, match="already accepted"):
        bi.accept_booking(9)


def test_accept_creates_reservation(monkeypatch):
    qrow = _queue_row()
    q_by_id = {9: qrow}
    captured = {}

    def fake_query(sql, params=(), cn=None):
        if "FROM ChannelBookingIn" in sql:
            return [q_by_id[params[0]]]
        if "SELECT DocId FROM Booking" in sql:
            return [("DKKRES   2026    000042",)]
        return []
    monkeypatch.setattr(bi, "db", SimpleNamespace(query=fake_query,
                                                  execute=lambda *a, **k: 1))

    class FakeCn2:
        def commit(self):
            pass
        def rollback(self):
            pass
        def close(self):
            pass

    def fake_insert_draft(**kw):
        captured.update(kw)
        return 42
    monkeypatch.setattr("HMS_py.core.reservation.insert_draft",
                        fake_insert_draft)
    monkeypatch.setattr("HMS_py.core.reservation.make_docid",
                        lambda *a, **k: "DKKRES   2026    000042")
    bookno = bi.accept_booking(9, roomcat="KK002", cn=FakeCn2())
    assert bookno == 42
    assert captured["guest_name"] == "RAMESH KUMAR"
    assert captured["arr_date"] == datetime.date(2026, 10, 1)
    assert captured["dep_date"] == datetime.date(2026, 10, 3)
    assert captured["rate"] == 1800.0          # 3600 / 2 nights
    assert "OTA:EZEE:EZ-1001" in captured["remarks"]
    assert captured["commit"] is False          # same-txn discipline


# ============================================================
# Phase-2 Task 4: cancellations
# ============================================================

def test_sync_cancellations_flow(monkeypatch):
    qrow = _queue_row(processed="Y", docid="DKKRES   2026    000042")
    # fake_query: ChannelBookingIn list + Booking lookup (DocId -> BookNo)
    def fake_query(sql, params=(), cn=None):
        if "FROM ChannelBookingIn" in sql:
            return [qrow]
        if "FROM Booking WHERE DocId" in sql:
            return [(42, "N")]
        return []
    monkeypatch.setattr(bi, "db", SimpleNamespace(
        query=fake_query, execute=lambda *a, **k: 1))
    cancels = []
    monkeypatch.setattr("HMS_py.core.reservation.cancel",
                        lambda bookno, user="OTA-CANCEL", cn=None: (
                            cancels.append((bookno, user)), 1)[1])
    out = bi.sync_cancellations()
    assert out["cancelled"] == 1
    assert cancels == [(42, "OTA-CANCEL")]


def test_sync_cancellations_already_cancelled_skips(monkeypatch):
    qrow = _queue_row(processed="Y", docid="DKKRES   2026    000042")
    def fake_query(sql, params=(), cn=None):
        if "FROM ChannelBookingIn" in sql:
            return [qrow]
        if "FROM Booking WHERE DocId" in sql:
            return [(42, "Y")]
        return []
    monkeypatch.setattr(bi, "db", SimpleNamespace(
        query=fake_query, execute=lambda *a, **k: 1))
    out = bi.sync_cancellations()
    assert out["cancelled"] == 0 and out["skipped"] == 1


# ============================================================
# Phase-3: availability + push
# ============================================================

def test_free_rooms_math(monkeypatch):
    def fake_query(sql, params=(), cn=None):
        if "FROM RoomMast WHERE Type" in sql:
            return [("KK002", 8), ("KK003", 22), ("ZZZ", 5)]
        if "JOIN RoomMast R ON" in sql:
            return [("KK002", 3)]              # 3 occupied
        if "RoomBLockOut" in sql:
            return [("KK003", 2)]              # 2 blocked
        return []
    monkeypatch.setattr(inv, "db", SimpleNamespace(query=fake_query))
    out = inv.free_rooms_by_cat(datetime.date(2026, 10, 1))
    assert out["free"]["KK002"] == 5
    assert out["free"]["KK003"] == 20
    assert out["free"]["ZZZ"] == 5
    assert out["unmapped"] == ["KK002", "KK003", "ZZZ"]  # sab "unmapped" here
    # clamp: occupied > total
    def fake_query2(sql, params=(), cn=None):
        if "FROM RoomMast WHERE Type" in sql:
            return [("KK002", 2)]
        if "JOIN RoomMast R ON" in sql:
            return [("KK002", 5)]
        return []
    monkeypatch.setattr(inv, "db", SimpleNamespace(query=fake_query2))
    assert inv.free_rooms_by_cat(datetime.date(2026, 10, 1))["free"][
        "KK002"] == 0


def _mk_live_client():
    return _mkc({"mock_yn": "N", "enabled_yn": "Y", "hotel_code": "HC",
                 "user_agent": "UA"})


def _mkc(cfg):
    c = client_mod.EzeeClient.__new__(client_mod.EzeeClient)
    c.cn = None
    c.user = "TEST"
    c.cfg = cfg
    c._secret = "S"
    return c


def test_push_inventory_not_live_skips():
    c = _mkc({"mock_yn": "Y", "enabled_yn": "N", "hotel_code": "HC"})
    out = inv.push_inventory(datetime.date(2026, 10, 1), client=c)
    assert out["skipped_reason"].startswith("mode=")


def test_push_inventory_payloads_and_unmapped(monkeypatch):
    pushes = []

    class LiveClient:
        mode = "live"
        def update_room_inventory(self, room_type, date_iso, rooms):
            pushes.append((room_type, date_iso, rooms))
            return {"success": True, "mock": True}

    monkeypatch.setattr(inv, "free_rooms_by_cat", lambda day, cn=None: {
        "free": {"KK002": 5, "KKXXX": 3}, "unmapped": ["KKXXX"]})
    monkeypatch.setattr(roommap, "list_all", lambda cn=None,
                        only_active=False: [
                            {"roomcat": "KK002",
                             "ezee_room_type": "Superior DLX"}])
    monkeypatch.setattr(inv, "synclog", SimpleNamespace(
        log=lambda *a, **k: 1))
    out = inv.push_inventory(datetime.date(2026, 10, 1),
                             client=LiveClient())
    assert out["pushed"] == 1
    assert pushes == [("Superior DLX", "2026-10-01", 5)]
    assert out["unmapped"] == ["KKXXX"]


def test_push_inventory_rate_limit(monkeypatch):
    pushes = []

    class LiveClient:
        mode = "live"
        def update_room_inventory(self, room_type, date_iso, rooms):
            pushes.append(date_iso)
            return {"success": True}

    # cap ko chhota patch karo (5) — 30-din window me sirf 5 push ho
    monkeypatch.setattr(inv, "MAX_PUSH_CALLS", 5)
    monkeypatch.setattr(inv, "free_rooms_by_cat", lambda day, cn=None: {
        "free": {"KK002": 5}, "unmapped": []})
    monkeypatch.setattr(roommap, "list_all", lambda cn=None,
                        only_active=False: [
                            {"roomcat": "KK002",
                             "ezee_room_type": "SDLX"}])
    monkeypatch.setattr(inv, "synclog", SimpleNamespace(
        log=lambda *a, **k: 1))
    out = inv.push_inventory(datetime.date(2026, 10, 1),
                             datetime.date(2026, 12, 31),
                             client=LiveClient())
    assert len(pushes) == 5
    assert out["calls"] == 5
    assert pushes == ["2026-10-01", "2026-10-02", "2026-10-03",
                      "2026-10-04", "2026-10-05"]


def test_na_autopush_flag_off(monkeypatch):
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "auto_push_yn": "N"})
    assert inv.maybe_auto_push_after_na(datetime.date(2026, 10, 1)) is None


def test_na_autopush_flag_on_calls_push(monkeypatch):
    monkeypatch.setattr(cfg_mod, "get", lambda cn=None: {
        "auto_push_yn": "Y", "push_window_days": 30})
    monkeypatch.setattr(cfg_mod, "is_live_ready", lambda cn=None: True)
    called = {}
    monkeypatch.setattr(inv, "push_inventory",
                        lambda f, t=None, user="U", cn=None: (
                            called.__setitem__("range", (f, t)),
                            {"pushed": 9})[1])
    out = inv.maybe_auto_push_after_na(datetime.date(2026, 10, 1))
    assert out["pushed"] == 9
    assert called["range"][1] == datetime.date(2026, 10, 31)
