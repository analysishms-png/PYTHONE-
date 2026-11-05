"""ChannelRoomMap CRUD — RoomCat.Code <-> eZee room-type mapping.

Review-fix guards:
- FK: RoomCat.Code live table me hona chahiye (RoomCat, NOT RoomCatMast)
- Unique: (Provider, LogSite_Code, RoomCat, EzeeRoomType) — UX index bhi,
  insert pe pre-check (friendly error)
"""
from __future__ import annotations

from HMS_py.core import db
from HMS_py.core.channel.config import PROVIDER, SITE_CODE, USER

_COLS = ("Id, Provider, RoomCat, EzeeRoomType, RatePlan, ActiveYN")


def _map(r) -> dict:
    return {"id": r.Id, "provider": r.Provider,
            "roomcat": r.RoomCat, "ezee_room_type": r.EzeeRoomType,
            "rate_plan": (r.RatePlan or "").strip(), "active_yn": r.ActiveYN}


def _validate(rec: dict, cn=None, exclude_id: int | None = None):
    rc = str(rec.get("roomcat") or "").strip()
    if not rc:
        raise ValueError("RoomCat zaroori hai")
    if len(rc) > 6:
        raise ValueError("RoomCat max 6 chars")
    rows = db.query("SELECT 1 FROM RoomCat WHERE Code = ?", (rc,), cn=cn)
    if not rows:
        raise ValueError(f"RoomCat '{rc}' live DB me nahi mila (FK guard)")
    et = str(rec.get("ezee_room_type") or "").strip()
    if not et:
        raise ValueError("EzeeRoomType zaroori hai")
    if len(et) > 50:
        raise ValueError("EzeeRoomType max 50 chars")
    # duplicate guard (unique index UX_ChannelRoomMap ka friendly version)
    dup_sql = ("SELECT Id FROM ChannelRoomMap WHERE Provider = ? "
               "AND LogSite_Code = ? AND RoomCat = ? AND EzeeRoomType = ?")
    params = [PROVIDER, SITE_CODE, rc, et]
    if exclude_id:
        dup_sql += " AND Id <> ?"
        params.append(exclude_id)
    if db.query(dup_sql, tuple(params), cn=cn):
        raise ValueError(f"Mapping already exists: {rc} <-> {et}")


def list_all(cn=None, only_active: bool = False) -> list[dict]:
    sql = f"SELECT {_COLS} FROM ChannelRoomMap WHERE Provider = ? " \
          "AND LogSite_Code = ?"
    params: list = [PROVIDER, SITE_CODE]
    if only_active:
        sql += " AND ActiveYN = 'Y'"
    sql += " ORDER BY RoomCat"
    return [_map(r) for r in db.query(sql, tuple(params), cn=cn)]


def get(map_id: int, cn=None) -> dict | None:
    rows = db.query(f"SELECT {_COLS} FROM ChannelRoomMap WHERE Id = ?",
                    (map_id,), cn=cn)
    return _map(rows[0]) if rows else None


def insert(rec: dict, cn=None, commit: bool = True, user: str = USER) -> int:
    """Insert mapping; returns new Id (SCOPE_IDENTITY, rowcount nahi)."""
    _validate(rec, cn=cn)
    own = cn is None
    if own:
        cn = db.connect()
    try:
        cur = cn.cursor()
        cur.execute(
            "INSERT INTO ChannelRoomMap (Provider, RoomCat, EzeeRoomType, "
            "RatePlan, ActiveYN, Site_Code, U_Name, U_EntDt, U_AE, "
            "LogSite_Code) VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?); "
            "SELECT CAST(SCOPE_IDENTITY() AS INT);",
            (PROVIDER, str(rec["roomcat"]).strip(),
             str(rec["ezee_room_type"]).strip(),
             str(rec.get("rate_plan") or "").strip(),
             str(rec.get("active_yn") or "Y").upper(),
             SITE_CODE, user, SITE_CODE))
        cur.nextset()                          # INSERT ke baad SELECT result
        new_id = int(cur.fetchone()[0])
        if commit:
            cn.commit()
        return new_id
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


def update(map_id: int, rec: dict, cn=None, commit: bool = True,
           user: str = USER) -> int:
    _validate(rec, cn=cn, exclude_id=map_id)
    return db.execute(
        "UPDATE ChannelRoomMap SET RoomCat = ?, EzeeRoomType = ?, "
        "RatePlan = ?, ActiveYN = ?, U_Name = ?, U_EntDt = getdate(), "
        "U_AE = 'E' WHERE Id = ?",
        (str(rec["roomcat"]).strip(), str(rec["ezee_room_type"]).strip(),
         str(rec.get("rate_plan") or "").strip(),
         str(rec.get("active_yn") or "Y").upper(), user, map_id),
        cn=cn, commit=commit)


def delete(map_id: int, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM ChannelRoomMap WHERE Id = ?",
                      (map_id,), cn=cn, commit=commit)


def ezee_type_for(roomcat: str, cn=None) -> str | None:
    """Booking-in mapping ke liye: RoomCat -> active eZee type (ya None)."""
    rows = db.query(
        "SELECT EzeeRoomType FROM ChannelRoomMap WHERE Provider = ? "
        "AND LogSite_Code = ? AND RoomCat = ? AND ActiveYN = 'Y'",
        (PROVIDER, SITE_CODE, str(roomcat or "").strip()), cn=cn)
    return (rows[0][0] or "").strip() if rows else None


def roomcat_for(ezee_room_type: str, cn=None) -> str | None:
    """Inbound booking ke liye: eZee type -> humara RoomCat (ya None)."""
    rows = db.query(
        "SELECT RoomCat FROM ChannelRoomMap WHERE Provider = ? "
        "AND LogSite_Code = ? AND EzeeRoomType = ? AND ActiveYN = 'Y'",
        (PROVIDER, SITE_CODE, str(ezee_room_type or "").strip()), cn=cn)
    return (rows[0][0] or "").strip() if rows else None
