"""Outbound rates + restrictions push (Phase-4) — RateList → SetRoomRate,
RoomBLockOut → UpdateStopSell.

Design (docs/CHANNEL_PHASE4_RATE_MAPPING.md):
- Rate source: RateList **category-default rows only** (RoomNo='*****') —
  per-room overrides walk-in pricing hai, OTA ko push nahi hota
- Rate pick: Rate1..Rate5 me pehla non-zero; sab 0 → skip + 'unrated'
  report (0-rate push OTA pe free sale = disaster)
- RatePlan resolution (v1):
  1. ChannelRoomMap.RatePlan set → SINGLE plan push (per date ek call),
     rate = default rows me (OccType sorted) pehla non-zero
  2. RatePlan khali → auto-suffix "{roomcat}-{OccType}" per default
     OccType row (e.g. KK002-Single, KK002-Multiple) — deterministic,
     offline-safe; real YCS plan codes Phase-5 provisioning par align
     honge (OPEN item doc §2.2)
- Date expansion flat (RateList me season logic nahi, v1); RateW>0 →
  Sat/Sun ko RateW (weekday/weekend split future-proofed, live data 0)
- Stop-sell: RoomBLockOut valid dated blocks (FromDate<=day<=ToDate),
  RoomCode→RoomMast.RoomCat join, mapped cats only, StopSell=True
  push-only (auto-unblock v2 OPEN); caller order: hamesha inventory-push
  ke BAAD (pehle availability, phir close)
- live-gate + rate-limit (inventory.MAX_PUSH_CALLS shared) + synclog
  audit client ke andar hi hota hai
"""
from __future__ import annotations

import datetime

from HMS_py.core import db, ratelist
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import roommap, synclog
from HMS_py.core.channel.config import USER
from HMS_py.core.channel.inventory import MAX_PUSH_CALLS

WEEKEND_DAYS = {5, 6}          # date.weekday(): Mon=0 .. Sat=5, Sun=6


def _rate_for(row: dict, day: datetime.date) -> float:
    """RateW weekend override (RateW>0, Sat/Sun) → warna Rate1..5 pehla
    non-zero; sab 0 → 0.0 (caller 'unrated' report karta hai)."""
    if day.weekday() in WEEKEND_DAYS:
        w = float(row.get("ratew") or 0)
        if w > 0:
            return w
    for k in ("rate1", "rate2", "rate3", "rate4", "rate5"):
        v = float(row.get(k) or 0)
        if v > 0:
            return v
    return 0.0


def _first_nonzero(defaults: dict[str, dict],
                   day: datetime.date) -> float:
    """Single-plan mode: OccType-sorted default rows me pehla non-zero rate."""
    for occtype in sorted(defaults):
        rate = _rate_for(defaults[occtype], day)
        if rate > 0:
            return rate
    return 0.0


def rate_rows(date_from, date_to=None, cn=None) -> dict:
    """RateList defaults × mapping × date-window → SetRoomRate payloads.

    Returns {"rows": [{roomcat, ezee_room_type, rate_plan, occtype, date,
    rate}], "unrated": [{roomcat, occtype, plan, date}]} — zero-rate rows
    skip hote hain aur 'unrated' me report hote hain (push nahi karte).

    occtype: auto-suffix rows me OccType naam; single-plan (explicit
    RatePlan) rows me None.
    """
    date_to = date_to or date_from
    mappings = {m["roomcat"]: m for m in
                roommap.list_all(cn=cn, only_active=True)}
    rows: list[dict] = []
    unrated: list[dict] = []
    day = date_from
    while day <= date_to:
        for rc, m in sorted(mappings.items()):
            defaults = ratelist.get_default_rates(rc, cn=cn)
            plan = (m.get("rate_plan") or "").strip()
            if plan:
                rate = _first_nonzero(defaults, day)
                if rate > 0:
                    rows.append({"roomcat": rc,
                                 "ezee_room_type": m["ezee_room_type"],
                                 "rate_plan": plan, "occtype": None,
                                 "date": day, "rate": rate})
                else:
                    unrated.append({"roomcat": rc, "occtype": None,
                                    "plan": plan, "date": day})
                continue
            if not defaults:
                # mapped par RateList defaults hi nahi — silent no-push
                # nahi, per-day unrated report (crash nahi)
                unrated.append({"roomcat": rc, "occtype": None,
                                "plan": f"{rc}-?", "date": day})
                continue
            # auto-suffix: "{roomcat}-{OccType}" per default OccType row
            for occtype in sorted(defaults):
                rate = _rate_for(defaults[occtype], day)
                if rate > 0:
                    rows.append({"roomcat": rc,
                                 "ezee_room_type": m["ezee_room_type"],
                                 "rate_plan": f"{rc}-{occtype}",
                                 "occtype": occtype, "date": day,
                                 "rate": rate})
                else:
                    unrated.append({"roomcat": rc, "occtype": occtype,
                                    "plan": f"{rc}-{occtype}", "date": day})
        day += datetime.timedelta(days=1)
    rows.sort(key=lambda r: (r["date"], r["roomcat"], r["rate_plan"]))
    return {"rows": rows, "unrated": unrated}


def push_rates(date_from, date_to=None, user: str = USER, cn=None,
               client: "client_mod.EzeeClient | None" = None) -> dict:
    """SetRoomRate push — live-gate + rate-limit (MAX_PUSH_CALLS shared).

    not live => {'skipped_reason': 'mode=...'} (mock client pass karke
    dry-run payloads verify kar sakte ho).
    Returns {pushed, failed, skipped, calls, unrated[, skipped_reason]}.
    """
    date_to = date_to or date_from
    cl = client or client_mod.EzeeClient(cn=cn, user=user)
    if cl.mode != "live":
        return {"pushed": 0, "failed": 0, "skipped": 0, "calls": 0,
                "unrated": 0, "skipped_reason": f"mode={cl.mode}"}
    rr = rate_rows(date_from, date_to, cn=cn)
    pushed = failed = calls = 0
    for row in rr["rows"]:
        if calls >= MAX_PUSH_CALLS:
            break
        try:
            resp = cl.set_room_rate(row["ezee_room_type"], row["rate_plan"],
                                    row["date"].isoformat(), row["rate"])
            calls += 1
            if resp.get("success"):
                pushed += 1
            else:
                failed += 1
        except Exception as e:
            calls += 1
            failed += 1
            synclog.log("OUT", "SetRoomRate", None, None, "F", str(e),
                        user=user, cn=None)
    return {"pushed": pushed, "failed": failed, "skipped": 0,
            "calls": calls, "unrated": len(rr["unrated"])}


def stop_sell_rows(date_from, date_to=None, cn=None) -> list[dict]:
    """RoomBLockOut valid blocks ∩ date-window → per-date stop-sell payloads
    (sirf mapped cats; unmapped skip).

    Returns [{roomcat, ezee_room_type, date}] sorted by (date, roomcat).
    """
    date_to = date_to or date_from
    mappings = {m["roomcat"]: m for m in
                roommap.list_all(cn=cn, only_active=True)}
    blocks = db.query(
        "SELECT RM.RoomCat, B.FromDate, B.ToDate FROM RoomBLockOut B "
        "JOIN RoomMast RM ON RM.Code = B.RoomCode "
        "AND RM.Site_Code = B.Site_Code "
        "WHERE B.ToDate >= ? AND B.FromDate <= ?",
        (date_from, date_to), cn=cn)
    out: list[dict] = []
    for row in blocks:
        m = mappings.get(str(row[0] or "").strip())
        if not m:
            continue
        start = row[1].date() if isinstance(row[1], datetime.datetime) \
            else row[1]
        end = row[2].date() if isinstance(row[2], datetime.datetime) \
            else row[2]
        day = max(start, date_from)
        while day <= min(end, date_to):
            out.append({"roomcat": str(row[0]).strip(),
                        "ezee_room_type": m["ezee_room_type"], "date": day})
            day += datetime.timedelta(days=1)
    out.sort(key=lambda r: (r["date"], r["roomcat"]))
    return out


def push_stop_sell(date_from, date_to=None, user: str = USER, cn=None,
                   client: "client_mod.EzeeClient | None" = None) -> dict:
    """UpdateStopSell(True) push — live-gate + rate-limit.

    ORDER RULE: hamesha push_inventory ke BAAD call karo (pehle
    availability, phir close) — UI aur NA-hook dono is order ko follow
    karte hain. v1: sirf StopSell=True (auto-unblock v2 OPEN).
    """
    date_to = date_to or date_from
    cl = client or client_mod.EzeeClient(cn=cn, user=user)
    if cl.mode != "live":
        return {"pushed": 0, "failed": 0, "skipped": 0, "calls": 0,
                "skipped_reason": f"mode={cl.mode}"}
    rows = stop_sell_rows(date_from, date_to, cn=cn)
    pushed = failed = calls = 0
    for row in rows:
        if calls >= MAX_PUSH_CALLS:
            break
        try:
            resp = cl.update_stop_sell(row["ezee_room_type"],
                                       row["date"].isoformat(), True)
            calls += 1
            if resp.get("success"):
                pushed += 1
            else:
                failed += 1
        except Exception as e:
            calls += 1
            failed += 1
            synclog.log("OUT", "UpdateStopSell", None, None, "F", str(e),
                        user=user, cn=None)
    return {"pushed": pushed, "failed": failed, "skipped": 0,
            "calls": calls}
