"""Inbound OTA bookings (Phase-2): eZee FetchBookings → queue → reservation.

Tasks (docs/CHANNEL_PHASE2_BREAKDOWN.md):
1. parse_ezee_booking — defensive normalize (field names provisioning-
   specific; tolerant dates; missing fields → None)
2. poll_bookings — FetchBookings (cursor-since) → ChannelBookingIn queue
   (EzeeBookingId unique dedup) → cursor update same-transaction
3. accept_booking — queue row → roommap mapping → reservation.insert_draft
   (room-assign NAHI — walk-in pattern) → ProcessedYN='Y' same txn
4. sync_cancellations — OTA cancelled jinke BookingDocId set → cancel

v1 policies (breakdown §Open Questions):
- modified bookings: queue me aate hain, accept nahi hote (log note)
- multi-room: 1 booking = 1 room
- rate: OTA amount/nights as draft RoomRate
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import roommap, synclog
from HMS_py.core.channel.config import PROVIDER, SITE_CODE, USER

_QCOLS = ("Id, Provider, EzeeBookingId, RoomType, RatePlan, GuestName, "
          "GuestEmail, GuestPhone, ArrDate, DepDate, Adults, Children, "
          "Amount, Commission, ProcessedYN, BookingDocId, U_EntDt")


# ---------- Task 1: parser ----------

def _parse_dt(val) -> datetime.datetime | None:
    """Tolerant datetime parse: 'YYYY-MM-DD', 'YYYY-MM-DD HH:MM[:SS]',
    ISO-8601. Fail → None (rawjson me toh hai hi)."""
    if not val:
        return None
    s = str(val).strip()
    if not s:
        return None
    for fmt in ("%Y-%m-%d %H:%M:%S", "%Y-%m-%d %H:%M", "%Y-%m-%d",
                "%Y-%m-%dT%H:%M:%S", "%Y-%m-%dT%H:%M:%S.%f",
                "%d/%m/%Y", "%m/%d/%Y"):
        try:
            return datetime.datetime.strptime(s, fmt)
        except ValueError:
            continue
    try:
        return datetime.datetime.fromisoformat(s.replace("Z", "+00:00"))\
            .replace(tzinfo=None)
    except ValueError:
        return None


def parse_ezee_booking(raw: dict) -> dict:
    """eZee booking JSON → normalized dict (defensive; kabhi raise nahi
    hone ke liye .get() chains)."""
    def _s(key: str) -> str:
        v = raw.get(key)
        return str(v).strip() if v is not None else ""

    def _i(key: str) -> int | None:
        try:
            return int(raw.get(key))
        except (TypeError, ValueError):
            return None

    def _f(key: str) -> float | None:
        try:
            return float(raw.get(key))
        except (TypeError, ValueError):
            return None

    status = _s("Status").capitalize() or "Confirmed"
    return {
        "ezee_booking_id": _s("BookingId"),
        "status": status,                     # Confirmed/Cancelled/Modified
        "room_type": _s("RoomType"),
        "rate_plan": _s("RatePlan"),
        "guest_name": _s("GuestName"),
        "guest_email": _s("GuestEmail"),
        "guest_phone": _s("GuestPhone"),
        "arr_date": _parse_dt(raw.get("CheckIn")),
        "dep_date": _parse_dt(raw.get("CheckOut")),
        "adults": _i("Adults"),
        "children": _i("Children"),
        "amount": _f("TotalAmount"),
        "commission": _f("Commission"),
    }


# ---------- queue helpers ----------

def _map_row(r) -> dict:
    return {"id": r.Id, "provider": r.Provider,
            "ezee_booking_id": r.EzeeBookingId,
            "room_type": r.RoomType or "", "rate_plan": r.RatePlan or "",
            "guest_name": r.GuestName or "", "guest_email": r.GuestEmail or "",
            "guest_phone": r.GuestPhone or "",
            "arr_date": r.ArrDate, "dep_date": r.DepDate,
            "adults": r.Adults, "children": r.Children,
            "amount": float(r.Amount or 0), "commission": float(r.Commission or 0),
            "processed_yn": r.ProcessedYN, "booking_docid": r.BookingDocId or ""}


def queue_list(cn=None, only_unprocessed: bool = False, top: int = 200) -> list[dict]:
    sql = f"SELECT {_QCOLS} FROM ChannelBookingIn WHERE Provider = ? " \
          "AND LogSite_Code = ?"
    params: list = [PROVIDER, SITE_CODE]
    if only_unprocessed:
        sql += " AND ProcessedYN = 'N'"
    sql += " ORDER BY Id DESC"
    rows = db.query(sql, tuple(params), cn=cn)
    return [_map_row(r) for r in rows[:top]]


def _queue_insert(cur, b: dict) -> None:
    cur.execute(
        "INSERT INTO ChannelBookingIn (Provider, EzeeBookingId, RoomType, "
        "RatePlan, GuestName, GuestEmail, GuestPhone, ArrDate, DepDate, "
        "Adults, Children, Amount, Commission, RawJson, ProcessedYN, "
        "Site_Code, U_EntDt, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'N', ?, "
        "getdate(), ?)",
        (PROVIDER, b["ezee_booking_id"], b["room_type"], b["rate_plan"],
         b["guest_name"], b["guest_email"], b["guest_phone"],
         b["arr_date"], b["dep_date"], b["adults"], b["children"],
         b["amount"], b["commission"],
         b.get("_raw_json"), SITE_CODE, SITE_CODE))


# ---------- Task 2: poll + dedup ----------

def poll_bookings(cn=None, user: str = USER, since: str | None = None,
                  client: "client_mod.EzeeClient | None" = None) -> dict:
    """FetchBookings (cursor-since) → queue. Returns summary dict.

    Atomicity: queue inserts + cursor update ek hi connection/txn pe —
    commit ke baad hi cursor aage badhta hai (fail => re-fetch safe, dedup
    unique index se handle).
    """
    cl = client or client_mod.EzeeClient(cn=cn, user=user)
    mode = cl.mode
    if mode in ("no_config", "disabled"):
        return {"fetched": 0, "queued": 0, "skipped": 0, "errors":
                [f"channel {mode} — poll nahi chala"]}

    cfg = cfg_mod.get(cn=cn) or {}
    since_eff = since or (
        cfg.get("last_booking_poll_dt").strftime("%Y-%m-%d %H:%M:%S")
        if cfg.get("last_booking_poll_dt") else None)
    resp = cl.fetch_bookings(since=since_eff)
    if not resp.get("success"):
        return {"fetched": 0, "queued": 0, "skipped": 0,
                "errors": [str(resp.get("error", "fetch fail"))]}

    raws = resp.get("Bookings") or []
    own = cn is None
    if own:
        cn = db.connect()
    queued = skipped = 0
    errors: list[str] = []
    try:
        cur = cn.cursor()
        for raw in raws:
            b = parse_ezee_booking(raw if isinstance(raw, dict) else {})
            b["_raw_json"] = str(raw)
            if not b["ezee_booking_id"]:
                errors.append(f"booking bina BookingId ke skip: "
                              f"{b['guest_name']!r}")
                continue
            try:
                _queue_insert(cur, b)
                queued += 1
            except Exception as e:
                # unique-index dup => already queued (skip, not error)
                if "UX_ChannelBookingIn" in str(e) or "duplicate" in str(e).lower():
                    skipped += 1
                else:
                    errors.append(f"{b['ezee_booking_id']}: {e}")
        # cursor sirf successful poll par (commit ke saath)
        cur.execute(
            "UPDATE ChannelEnviro SET LastBookingPollDt = getdate() "
            "WHERE Provider = ? AND LogSite_Code = ?",
            (PROVIDER, SITE_CODE))
        cn.commit()
    except Exception as e:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        errors.append(f"poll txn fail: {e}")
        return {"fetched": len(raws), "queued": 0, "skipped": 0,
                "errors": errors}
    finally:
        if own:
            cn.close()
    try:
        synclog.log("IN", "FetchBookingsPoll",
                    {"since": since_eff}, {"queued": queued,
                                           "skipped": skipped}, "S",
                    "; ".join(errors[:3]), user=user, cn=None)
    except Exception:
        pass
    return {"fetched": len(raws), "queued": queued, "skipped": skipped,
            "errors": errors}


# ---------- Task 3: accept → reservation ----------

def accept_booking(queue_id: int, roomcat: str | None = None,
                   user: str = USER, cn=None) -> int:
    """Queue row → humari Booking (draft, unassigned). Returns bookno.

    - mapping: roomcat param ya roommap.roomcat_for(ezee_room_type)
    - room assign NAHI hota (draft pattern)
    - idempotent: ProcessedYN='Y' pe ValueError
    - same txn: queue update + booking insert
    """
    from HMS_py.core import reservation as reservation_mod
    own = cn is None
    if own:
        cn = db.connect()
    try:
        rows = db.query(f"SELECT {_QCOLS} FROM ChannelBookingIn "
                        "WHERE Id = ?", (queue_id,), cn=cn)
        if not rows:
            raise ValueError(f"Queue row {queue_id} nahi mili")
        q = _map_row(rows[0])
        if q["processed_yn"] == "Y":
            raise ValueError(
                f"Booking {q['ezee_booking_id']} already accepted "
                f"(bookno ref {q['booking_docid']})")
        rc = (roomcat or "").strip() or roommap.roomcat_for(q["room_type"],
                                                            cn=cn)
        if not rc:
            raise ValueError(
                f"RoomType '{q['room_type']}' ka mapping missing — "
                "ChannelRoomMap me add karo (ya roomcat pass karo)")
        if not q["guest_name"]:
            raise ValueError("OTA booking me GuestName khali hai — reject")
        if not q["arr_date"] or not q["dep_date"]:
            raise ValueError("OTA booking me dates invalid/missing")
        arr = q["arr_date"].date() if isinstance(q["arr_date"],
                                                 datetime.datetime) \
            else q["arr_date"]
        dep = q["dep_date"].date() if isinstance(q["dep_date"],
                                                 datetime.datetime) \
            else q["dep_date"]
        nights = max((dep - arr).days, 1)
        rate = round(float(q["amount"] or 0) / nights, 2)
        bookno = reservation_mod.insert_draft(
            guest_name=q["guest_name"], arr_date=arr, dep_date=dep,
            adults=int(q["adults"] or 1), rooms=1, rate=rate,
            remarks=f"OTA:{PROVIDER}:{q['ezee_booking_id']}",
            user=user, cn=cn, commit=False)
        # docid uncommitted txn me bhi confirm karo (same-cn readback)
        brow = db.query("SELECT DocId FROM Booking WHERE BookNo = ? "
                        "AND Site_Code = ? AND Vprefix = ?",
                        (bookno, SITE_CODE, reservation_mod.VPREFIX), cn=cn)
        docid = brow[0][0] if brow else reservation_mod.make_docid(
            SITE_CODE, reservation_mod.VPREFIX, bookno,
            vtype=reservation_mod.VTYPE)
        db.execute(
            "UPDATE ChannelBookingIn SET ProcessedYN = 'Y', "
            "BookingDocId = ? WHERE Id = ?",
            (docid, queue_id), cn=cn, commit=False)
        cn.commit()
        return bookno
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


# ---------- Task 4: cancellation sync ----------

def sync_cancellations(user: str = USER, cn=None) -> dict:
    """OTA cancelled bookings jinke BookingDocId set hai → cancel.

    Already-cancelled → skip (reservation.cancel guard). Modified →
    v1: ignore (log note). Returns {cancelled, skipped, errors}.
    """
    from HMS_py.core import reservation as reservation_mod
    rows = db.query(
        f"SELECT {_QCOLS} FROM ChannelBookingIn "
        "WHERE Provider = ? AND LogSite_Code = ? AND ProcessedYN = 'Y' "
        "AND (RawJson LIKE '%Cancelled%')",
        (PROVIDER, SITE_CODE), cn=cn)
    cancelled = skipped = 0
    errors: list[str] = []
    for r in rows:
        q = _map_row(r)
        try:
            # BookingDocId -> BookNo direct lookup (same Site/Vprefix scope)
            brow = db.query(
                "SELECT BookNo, Cancel FROM Booking WHERE DocId = ? "
                "AND Site_Code = ?", (q["booking_docid"], SITE_CODE), cn=cn)
            if not brow:
                skipped += 1
                continue
            bookno = int(brow[0][0])
            if str(brow[0][1] or "").upper() == "Y":
                skipped += 1            # already cancelled
                continue
            reservation_mod.cancel(bookno, user="OTA-CANCEL", cn=cn)
            cancelled += 1
        except ValueError as e:
            # already-cancelled etc — skip, not error
            if "already" in str(e).lower():
                skipped += 1
            else:
                errors.append(f"{q['ezee_booking_id']}: {e}")
        except Exception as e:
            errors.append(f"{q['ezee_booking_id']}: {e}")
    return {"cancelled": cancelled, "skipped": skipped, "errors": errors}
