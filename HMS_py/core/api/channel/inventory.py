"""Outbound inventory push (Phase-3): free rooms → eZee UpdateRoomInventory.

Breakdown (docs/CHANNEL_CONFIG_UI_DESIGN.md Part B):
- free_rooms_by_cat: per RoomCat per date — RoomMast total − in-house
  (RoomOcc overlap, room_occ rules) − RoomBLockOut; negative clamp 0
- push_inventory: mapped room-types pe per-date UpdateRoomInventory;
  not-live skip; ~200 calls/run rate-limit; synclog audited (client)
- v1: 30-day window, NA-trigger optional (AutoPushYN), manual button
"""
from __future__ import annotations

import datetime

from HMS_py.core import db
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import roommap, synclog
from HMS_py.core.channel.config import PROVIDER, SITE_CODE, USER

MAX_PUSH_CALLS = 200          # rate-limit guard (breakdown Task B2)


def free_rooms_by_cat(day, cn=None) -> dict:
    """Ek date ke liye per-RoomCat free rooms (live DB math).

    Returns {'free': {roomcat: n}, 'unmapped': [roomcat...]}.
    Rules: RoomMast.Type='RO' active total − in-house overlap (RoomOcc
    ChkOutDate IS NULL, ChkInDate<=day<ChkOutDate ya ChkOutDate IS NULL)
    − valid RoomBLockOut (FromDate<=day<=ToDate).
    """
    day = day if isinstance(day, datetime.date) else \
        day.date() if isinstance(day, datetime.datetime) else day
    # totals per cat (RO rooms)
    totals = {r[0]: int(r[1] or 0) for r in db.query(
        "SELECT RoomCat, COUNT(*) FROM RoomMast WHERE Type = 'RO' "
        "GROUP BY RoomCat", cn=cn)}
    # occupied per cat on `day`
    occupied = {r[0]: int(r[1] or 0) for r in db.query(
        "SELECT R.RoomCat, COUNT(*) FROM RoomOcc RO "
        "JOIN RoomMast R ON R.Code = RO.RoomNo AND R.Site_Code = RO.Site_Code "
        "WHERE RO.ChkInDate IS NOT NULL AND RO.ChkInDate <= ? "
        "AND (RO.ChkOutDate IS NULL OR RO.ChkOutDate > ?) "
        "AND RO.Type IS NULL "
        "GROUP BY R.RoomCat",
        (datetime.datetime.combine(day, datetime.time(0, 0)),
         datetime.datetime.combine(day, datetime.time(0, 0))), cn=cn)}
    # valid blocks per cat (RoomBLockOut.RoomCode -> RoomMast.RoomCat)
    blocked = {r[0]: int(r[1] or 0) for r in db.query(
        "SELECT RM.RoomCat, COUNT(*) FROM RoomBLockOut B "
        "JOIN RoomMast RM ON RM.Code = B.RoomCode "
        "AND RM.Site_Code = B.Site_Code "
        "WHERE B.FromDate <= ? AND B.ToDate >= ? GROUP BY RM.RoomCat",
        (day, day), cn=cn)}
    free: dict[str, int] = {}
    for rc, total in totals.items():
        n = total - occupied.get(rc, 0) - blocked.get(rc, 0)
        free[rc] = max(n, 0)
    return {"free": free, "unmapped": sorted(free)}


def push_inventory(date_from, date_to=None, user: str = USER, cn=None,
                   client: "client_mod.EzeeClient | None" = None) -> dict:
    """Mapped room-types ke liye per-date inventory push.

    - not live-ready => {'skipped': reason} (mock client pass karke
      dry-run payloads verify kar sakte ho)
    - rate-limit: MAX_PUSH_CALLS se zyada calls nahi
    - unmapped RoomCat skip + report
    Returns {pushed, failed, skipped, calls, unmapped}
    """
    date_to = date_to or date_from
    cl = client or client_mod.EzeeClient(cn=cn, user=user)
    if cl.mode != "live":
        return {"pushed": 0, "failed": 0, "skipped": 0, "calls": 0,
                "unmapped": [], "skipped_reason": f"mode={cl.mode}"}

    mappings = {m["roomcat"]: m for m in roommap.list_all(cn=cn,
                                                          only_active=True)}
    pushed = failed = calls = 0
    unmapped: set[str] = set()
    day = date_from
    while day <= date_to and calls < MAX_PUSH_CALLS:
        fr = free_rooms_by_cat(day, cn=cn)
        for rc, n in fr["free"].items():
            if calls >= MAX_PUSH_CALLS:
                break
            m = mappings.get(rc)
            if not m:
                unmapped.add(rc)
                continue
            try:
                resp = cl.update_room_inventory(
                    m["ezee_room_type"], day.isoformat(), n)
                calls += 1
                if resp.get("success"):
                    pushed += 1
                else:
                    failed += 1
            except Exception as e:
                calls += 1
                failed += 1
                synclog.log("OUT", "UpdateRoomInventory", None, None, "F",
                            str(e), user=user, cn=None)
        day += datetime.timedelta(days=1)
    return {"pushed": pushed, "failed": failed, "skipped": 0, "calls": calls,
            "unmapped": sorted(unmapped)}


def maybe_auto_push_after_na(na_date, user: str = USER, cn=None) -> dict | None:
    """NA ke baad auto-push (sirf AutoPushYN='Y' + live-ready par)."""
    cfg = cfg_mod.get(cn=cn)
    if not cfg or cfg.get("auto_push_yn") != "Y":
        return None
    if not cfg_mod.is_live_ready(cn=cn):
        return None
    days = int(cfg.get("push_window_days") or 30)
    return push_inventory(na_date, na_date + datetime.timedelta(days=days),
                          user=user, cn=cn)
