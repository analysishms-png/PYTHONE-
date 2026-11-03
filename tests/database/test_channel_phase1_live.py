"""Channel Phase-1 LIVE round-trip: ensure_tables -> config -> roommap ->
synclog. Cleanup restores pre-test state (rows deleted; tables reh jaate
hain — integration ke liye hi banaye hain).
Run: python -m pytest tests/database/test_channel_phase1_live.py -q
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core import db
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import roommap, synclog
from HMS_py.core.channel.ensure import ensure_tables


@pytest.fixture(scope="module")
def cn():
    conn = db.connect()
    ensure_tables(cn=conn, commit=True)
    yield conn
    conn.close()


@pytest.fixture()
def cleanup(cn):
    yield
    cur = cn.cursor()
    # test leftovers: PYT* roommaps, TEST* logs, EZEE enviro (hamesha)
    cur.execute("DELETE FROM ChannelRoomMap WHERE EzeeRoomType LIKE 'PYT%'")
    cur.execute("DELETE FROM ChannelSyncLog WHERE RequestType LIKE 'TEST%'")
    cur.execute("DELETE FROM ChannelSyncLog WHERE RequestType IN "
                "('FetchBookings', 'FetchRoomInformation', "
                "'UpdateRoomInventory', 'SetRoomRate', 'UpdateStopSell', "
                "'UpdateMinStay')")
    cur.execute("DELETE FROM ChannelEnviro WHERE Provider = 'EZEE'")
    cn.commit()


def _snap(cn):
    cur = cn.cursor()
    out = {}
    for t in ("ChannelEnviro", "ChannelRoomMap", "ChannelSyncLog"):
        cur.execute(f"SELECT COUNT(*) FROM {t}")
        out[t] = cur.fetchone()[0]
    return out


def test_ensure_tables_idempotent(cn):
    first = ensure_tables(cn=cn, commit=False)
    cn.commit()
    second = ensure_tables(cn=cn)
    # dono baar chalna chahiye (IF NOT EXISTS), same count report ho
    assert len(first) == len(second)
    assert len(first) >= 9         # 4 tables + 5 indexes (exact DDL count)
    cur = cn.cursor()
    cur.execute("SELECT name FROM sys.tables WHERE name LIKE 'Channel%'")
    names = {r[0] for r in cur.fetchall()}
    assert {"ChannelEnviro", "ChannelRoomMap", "ChannelSyncLog",
            "ChannelBookingIn"} <= names


def test_config_upsert_roundtrip_and_secret(cn, cleanup):
    snap = _snap(cn)
    try:
        cfg_id = cfg_mod.save({
            "hotel_code": "HC-TEST", "auth_code": "TOKEN-XYZ",
            "base_url": "https://live.ipms247.com",
            "poll_interval_min": 10, "enabled_yn": "N", "mock_yn": "Y",
            "user_agent": "HMSpy-Test/1.0",
        }, cn=cn)
        cfg = cfg_mod.get(cn=cn)
        assert cfg["hotel_code"] == "HC-TEST"
        assert cfg["poll_interval_min"] == 10
        assert "auth" not in cfg and "secret" not in cfg   # masked
        # secret round-trip (DPAPI ya XOR fallback)
        assert cfg_mod.get_secret(cn=cn) == "TOKEN-XYZ"
        # update path: secret re-give nahi kiya to existing rehta hai
        cfg_mod.save({"hotel_code": "HC-TEST2", "poll_interval_min": 20,
                      "enabled_yn": "N", "mock_yn": "Y"}, cn=cn)
        cfg2 = cfg_mod.get(cn=cn)
        assert cfg2["hotel_code"] == "HC-TEST2"
        assert cfg2["poll_interval_min"] == 20
        assert cfg_mod.get_secret(cn=cn) == "TOKEN-XYZ"    # preserved
        assert cfg2["id"] == cfg_id
        # poll cursor
        cfg_mod.set_poll_cursor("2026-09-25T10:00:00", "chg-7", cn=cn)
        assert cfg_mod.get(cn=cn)["last_change_id"] == "chg-7"
    finally:
        db.execute("DELETE FROM ChannelEnviro WHERE Provider = 'EZEE'",
                   cn=cn)
    assert _snap(cn) == snap


def test_roommap_crud_guards(cn, cleanup):
    # FK guard: nonexistent RoomCat
    with pytest.raises(ValueError, match="FK guard"):
        roommap.insert({"roomcat": "ZZZZZZ", "ezee_room_type": "T1"}, cn=cn)
    # real RoomCat chahiye — pehli live row use karo
    rows = db.query("SELECT TOP 1 Code FROM RoomCat ORDER BY Code", cn=cn)
    assert rows, "RoomCat khali hai — mapping test ke liye category chahiye"
    rc = rows[0][0]
    map_id = roommap.insert({"roomcat": rc, "ezee_room_type": "PYT-EZEE-T1",
                             "rate_plan": "EP"}, cn=cn)
    # duplicate guard
    with pytest.raises(ValueError, match="already exists"):
        roommap.insert({"roomcat": rc, "ezee_room_type": "PYT-EZEE-T1"},
                       cn=cn)
    # update + lookup helpers
    roommap.update(map_id, {"roomcat": rc, "ezee_room_type": "PYT-EZEE-T1",
                            "rate_plan": "CP"}, cn=cn)
    assert roommap.ezee_type_for(rc, cn=cn) == "PYT-EZEE-T1"
    assert roommap.roomcat_for("PYT-EZEE-T1", cn=cn) == rc
    assert roommap.get(map_id, cn=cn)["rate_plan"] == "CP"
    assert roommap.delete(map_id, cn=cn) == 1
    assert roommap.ezee_type_for(rc, cn=cn) is None


def test_synclog_and_idempotency(cn, cleanup):
    import datetime
    now = datetime.datetime.now()
    # since-window me: dedupe is test ke fresh logs pe hi ho
    lid = synclog.log("OUT", "TEST-Fetch", '{"a":1}', '{"ok":true}', "S",
                      cn=cn)
    same = synclog.find_same_hash('{"a":1}', since_dt=now.replace(microsecond=0),
                                  cn=cn)
    assert same == lid
    different = synclog.find_same_hash('{"other":1}',
                                       since_dt=now, cn=cn)
    assert different is None
    recent = synclog.list_recent(top=5, cn=cn)
    assert any(r["request_type"] == "TEST-Fetch" for r in recent)
    with pytest.raises(ValueError):
        synclog.purge_older_than(7, cn=cn)


def test_client_live_roundtrip_mock_mode(cn, cleanup):
    # config mock-mode me save karo, client se call, audit log verify
    cfg_mod.save({"hotel_code": "HC-LIVE-TEST", "auth_code": "TOK",
                  "enabled_yn": "N", "mock_yn": "Y"}, cn=cn)
    cl = client_mod.EzeeClient(cn=cn)
    assert cl.mode == "mock"
    resp = cl.fetch_bookings(since="2026-09-01")
    assert resp["success"] and resp["mock"]
    inv = cl.update_room_inventory("SDLX", "2026-10-01", 3)
    assert inv["success"] and inv["mock"]
    # audit rows aayi
    recent = synclog.list_recent(top=5, cn=cn)
    types = {r["request_type"] for r in recent}
    assert {"FetchBookings", "UpdateRoomInventory"} <= types
    # live-ready ladder: mock on => not live
    assert not cfg_mod.is_live_ready(cn=cn)
    db.execute("DELETE FROM ChannelEnviro WHERE Provider = 'EZEE'", cn=cn)
