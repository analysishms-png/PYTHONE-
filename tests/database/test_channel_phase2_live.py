"""Channel Phase-2 LIVE end-to-end: mock poll -> queue -> accept ->
humari Booking (rollback-safe cleanup).

Run: python -m pytest tests/database/test_channel_phase2_live.py -q
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

import pytest

from HMS_py.core import db
from HMS_py.core.channel import booking_in as bi
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import roommap
from HMS_py.core.channel.ensure import ensure_tables


@pytest.fixture(scope="module")
def cn():
    conn = db.connect()
    ensure_tables(cn=conn)
    yield conn
    conn.close()


@pytest.fixture()
def cleanup(cn):
    yield
    cur = cn.cursor()
    cur.execute("DELETE FROM Booking WHERE Remarks LIKE 'OTA:EZEE:EZ-%'")
    cur.execute("DELETE FROM ChannelBookingIn WHERE EzeeBookingId "
                "LIKE 'EZ-%'")
    cur.execute("DELETE FROM ChannelRoomMap WHERE EzeeRoomType = "
                "'Superior DLX'")
    cur.execute("DELETE FROM ChannelEnviro WHERE Provider = 'EZEE'")
    cur.execute("DELETE FROM ChannelSyncLog WHERE RequestType LIKE "
                "'Fetch%' OR RequestType LIKE 'Update%'")
    cn.commit()


def _get_map_id(cn):
    rows = db.query(
        "SELECT Id FROM ChannelRoomMap WHERE EzeeRoomType = "
        "'Superior DLX' AND LogSite_Code = ?", (cfg_mod.SITE_CODE,), cn=cn)
    return rows[0][0] if rows else None


def test_end_to_end_mock_poll_queue_accept(cn, cleanup):
    # setup: mock-mode config + room mapping (real RoomCat)
    rc = db.query("SELECT TOP 1 Code FROM RoomCat ORDER BY Code", cn=cn)[0][0]
    cfg_mod.save({"hotel_code": "HC-E2E", "auth_code": "TOK",
                  "enabled_yn": "N", "mock_yn": "Y"}, cn=cn)
    roommap.insert({"roomcat": rc, "ezee_room_type": "Superior DLX",
                    "rate_plan": "EP"}, cn=cn)
    assert _get_map_id(cn)
    bcount_before = db.query("SELECT COUNT(*) FROM Booking", cn=cn)[0][0]

    # 1) poll: 4 mock bookings -> queue (4 unique)
    out = bi.poll_bookings(cn=cn)
    assert out["queued"] == 4, out
    # 2) re-poll: sab dedup skip
    out2 = bi.poll_bookings(cn=cn)
    assert out2["queued"] == 0 and out2["skipped"] == 4, out2
    # 3) queue state
    queued = bi.queue_list(cn=cn, only_unprocessed=True)
    assert len(queued) == 4
    # 4) accept confirmed booking (EZ-1001)
    target = next(q for q in queued if q["ezee_booking_id"] == "EZ-1001")
    bookno = bi.accept_booking(target["id"], cn=cn)
    assert isinstance(bookno, int) and bookno > 0
    # booking verify
    row = db.query("SELECT GuestName, NoDays, RoomRate, Remarks, Cancel "
                   "FROM Booking WHERE BookNo = ? AND Site_Code = ?",
                   (bookno, cfg_mod.SITE_CODE), cn=cn)[0]
    assert row[0] == "RAMESH KUMAR"
    assert int(row[1]) == 2                              # 2 nights
    assert float(row[2]) == 1800.0                       # 3600/2
    assert "OTA:EZEE:EZ-1001" in row[3]
    assert str(row[4]).upper() != "Y"
    # 5) idempotent accept
    with pytest.raises(ValueError, match="already accepted"):
        bi.accept_booking(target["id"], cn=cn)
    # 6) no-name booking reject hota hai (EZ-1004)
    bad = next(q for q in queued if q["ezee_booking_id"] == "EZ-1004")
    with pytest.raises(ValueError, match="GuestName"):
        bi.accept_booking(bad["id"], cn=cn)
    # 7) booking count delta exactly +1
    assert db.query("SELECT COUNT(*) FROM Booking", cn=cn)[0][0] == \
        bcount_before + 1
    # cleanup fixture OTA bookings delete karega


def test_cancellation_sync_marks_cancelled(cn, cleanup):
    rc = db.query("SELECT TOP 1 Code FROM RoomCat ORDER BY Code", cn=cn)[0][0]
    cfg_mod.save({"hotel_code": "HC-E2E", "auth_code": "TOK",
                  "enabled_yn": "N", "mock_yn": "Y"}, cn=cn)
    roommap.insert({"roomcat": rc, "ezee_room_type": "Superior DLX"},
                   cn=cn)
    bi.poll_bookings(cn=cn)
    # cancelled OTA booking (EZ-1002) accept karo
    q = next(x for x in bi.queue_list(cn=cn)
             if x["ezee_booking_id"] == "EZ-1002")
    bookno = bi.accept_booking(q["id"], cn=cn)
    # ab sync_cancellations: RawJson me Status=Cancelled -> booking cancel
    out = bi.sync_cancellations(cn=cn)
    assert out["cancelled"] == 1, out
    row = db.query("SELECT Cancel, ResStatus FROM Booking WHERE BookNo = ?",
                   (bookno,), cn=cn)[0]
    assert str(row[0]).upper() == "Y"
    # dobara sync: skip (already cancelled)
    out2 = bi.sync_cancellations(cn=cn)
    assert out2["cancelled"] == 0
