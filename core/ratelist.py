"""RateList CRUD (VB6 FrmRoomCatMast CmdRate + resGroup/resRoomType rate lookups).

VB6 evidence (FrmRoomCatMast.frm decompiled):
- Fill:  SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType,
         RT.RateW, RT.RateM FROM RateList AS RT
         where (RT.LOGSITE_CODE='<site>' or RT.LOGSITE_CODE='HO')
         and RT.RoomCat='<cat>' AND RT.CODE='*' AND RT.RoomNo='*****'
- Save:  Delete From RateList Where RoomCat='<cat>'  (full replace, ek
         transaction me) -> phir har row INSERT (U_AE='A', getdate()).
- Delete cascade (category delete): Delete From RateList Where RoomCat='<cat>'
- Lookup semantics (resRoomType/resGroup): category default row
  RoomNo='*****', per-room override rows RoomNo='<room>'.

Live schema (MOONData2627.RateList, 62 rows):
  RoomCat, RoomNo, Code, OccType, Rate1..Rate5, RateW, RateM,
  Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code.
Code hamesha '*' (VB6 fill filter CODE='*').
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

LIMITS = {"roomcat": 6, "roomno": 8, "occtype": 15}
DEFAULT_ROOMNO = "*****"   # VB6: category-level default row
DEFAULT_CODE = "*"         # VB6 fill: AND RT.CODE='*'
OCC_TYPES = ("Single", "Double", "Multiple", "Extra Person")
RATE_KEYS = ("rate1", "rate2", "rate3", "rate4", "rate5", "ratew", "ratem")

COLS = ("RoomCat, RoomNo, Code, OccType, "
        "Rate1, Rate2, Rate3, Rate4, Rate5, RateW, RateM")


def _map(r) -> dict:
    return {
        "roomcat": r.RoomCat, "roomno": r.RoomNo, "code": r.Code,
        "occtype": r.OccType,
        "rate1": r.Rate1, "rate2": r.Rate2, "rate3": r.Rate3,
        "rate4": r.Rate4, "rate5": r.Rate5,
        "ratew": r.RateW, "ratem": r.RateM,
    }


def _validate_row(row: dict):
    if not str(row.get("roomcat", "")).strip():
        raise ValueError("RoomCat zaroori hai")
    if len(str(row["roomcat"])) > LIMITS["roomcat"]:
        raise ValueError(f"RoomCat max {LIMITS['roomcat']} chars")
    roomno = str(row.get("roomno") or DEFAULT_ROOMNO).strip() or DEFAULT_ROOMNO
    if len(roomno) > LIMITS["roomno"]:
        raise ValueError(f"RoomNo max {LIMITS['roomno']} chars")
    occtype = str(row.get("occtype", "")).strip()
    if not occtype:
        raise ValueError("OccType zaroori hai (Single/Double/Multiple/Extra Person)")
    if len(occtype) > LIMITS["occtype"]:
        raise ValueError(f"OccType max {LIMITS['occtype']} chars")
    for k in RATE_KEYS:
        try:
            v = float(row.get(k) or 0)
        except (TypeError, ValueError):
            raise ValueError(f"{k} number hona chahiye")
        if v < 0:
            raise ValueError(f"{k} negative nahi ho sakta")
    return roomno, occtype


def list_for_category(roomcat: str, cn=None) -> list[dict]:
    """VB6 fill (CODE='*' + site/HO scope), sab RoomNo rows (default + overrides)."""
    rows = db.query(
        f"SELECT {COLS} FROM RateList "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND RoomCat = ? "
        "AND Code = ? ORDER BY RoomNo, OccType",
        (SITE_CODE, roomcat, DEFAULT_CODE), cn=cn)
    return [_map(r) for r in rows]


def get_default_rates(roomcat: str, cn=None) -> dict[str, dict]:
    """RoomNo='*****' category-default rows, OccType -> rates dict (VB6 fill)."""
    out: dict[str, dict] = {}
    for r in list_for_category(roomcat, cn=cn):
        if r["roomno"] == DEFAULT_ROOMNO:
            out[r["occtype"]] = r
    return out


def resolve_rates(roomcat: str, roomno: str, occtype: str,
                  cn=None) -> dict | None:
    """Per-room override -> category default ('*****') fallback (VB6 lookup)."""
    rows = list_for_category(roomcat, cn=cn)
    fallback = None
    for r in rows:
        if r["occtype"].lower() != (occtype or "").lower():
            continue
        if r["roomno"] == str(roomno):
            return r
        if r["roomno"] == DEFAULT_ROOMNO:
            fallback = r
    return fallback


def save_category_rates(rows: list[dict], roomcat: str | None = None,
                        user: str = USER, cn=None,
                        commit: bool = True) -> int:
    """VB6 CmdSave: DELETE WHERE RoomCat -> INSERT har row (ek transaction).

    rows: [{roomno, occtype, rate1..rate5, ratew, ratem}] — roomcat per-row
    ya top-level `roomcat` arg se.
    Returns: inserted row count. Same connection me chalta hai (skill note:
    transaction ke andar dusra connection = self-deadlock).
    """
    if not rows:
        raise ValueError("Kam se kam ek rate row chahiye")
    own = cn is None
    if own:
        cn = db.connect()
    try:
        inserted = 0
        first_cat = (roomcat or "").strip()
        seen_pairs: set[tuple] = set()
        for raw in rows:
            rc = str(raw.get("roomcat") or first_cat or "").strip()
            if not rc:
                raise ValueError("RoomCat zaroori hai")
            roomno, occtype = _validate_row({**raw, "roomcat": rc})
            pair = (rc, roomno, occtype)
            if pair in seen_pairs:
                raise ValueError(
                    f"Duplicate rate row: {rc}/{roomno}/{occtype}")
            seen_pairs.add(pair)
        # VB6: poori category ka delete -> reinsert
        db.execute("DELETE FROM RateList WHERE RoomCat = ?",
                   (first_cat or rows[0].get("roomcat"),),
                   cn=cn, commit=False)
        for raw in rows:
            rc = str(raw.get("roomcat") or first_cat)
            roomno = str(raw.get("roomno") or DEFAULT_ROOMNO).strip() \
                or DEFAULT_ROOMNO
            db.execute(
                f"INSERT INTO RateList ({COLS}, Site_Code, U_Name, U_EntDt, "
                "U_AE, LogSite_Code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "?, ?, getdate(), 'A', ?)",
                (rc, roomno, DEFAULT_CODE, str(raw.get("occtype", "")).strip(),
                 float(raw.get("rate1") or 0), float(raw.get("rate2") or 0),
                 float(raw.get("rate3") or 0), float(raw.get("rate4") or 0),
                 float(raw.get("rate5") or 0), float(raw.get("ratew") or 0),
                 float(raw.get("ratem") or 0),
                 SITE_CODE, user, SITE_CODE),
                cn=cn, commit=False)
            inserted += 1
        if commit:
            cn.commit()
        return inserted
    except Exception:
        if own and cn is not None:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own and cn is not None:
            cn.close()


def delete_for_category(roomcat: str, cn=None, commit: bool = True) -> int:
    """VB6 category delete cascade: Delete From RateList Where RoomCat=.."""
    return db.execute("DELETE FROM RateList WHERE RoomCat = ?",
                      (roomcat,), cn=cn, commit=commit)
