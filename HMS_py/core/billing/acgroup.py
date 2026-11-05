"""ACGROUP CRUD (Account Group master - 31 live rows).
Schema evidence: GroupCode varchar(6) PK, GroupName varchar(50),
GroupNature varchar(1) (A/L), Nature varchar(15), ID int + BlOrd int
(table me hamesha populated, identity NAHI - app khud max+1 likhta hai).
Audit pattern VB6 jaisa: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {"code": 6, "name": 50, "nature": 1, "type": 15}
SELECT_COLS = ("GroupCode, GroupName, GroupNature, Nature, ID, "
               "U_Name, U_EntDt, U_AE")


def _map(r) -> dict:
    return {"code": r.GroupCode, "name": r.GroupName or "",
            "gnature": r.GroupNature or "", "nature": r.Nature or "",
            "id": r.ID, "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}


def _validate(rec: dict, cn=None):
    if len(rec.get("code", "")) > LIMITS["code"]:
        raise ValueError(f"GroupCode max {LIMITS['code']} chars")
    if not rec.get("code", "").strip():
        raise ValueError("GroupCode zaroori hai")
    if len(rec.get("name", "")) > LIMITS["name"]:
        raise ValueError(f"GroupName max {LIMITS['name']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("GroupName zaroori hai")
    gn = (rec.get("gnature") or "").strip().upper()
    if gn and gn not in ("A", "L"):
        raise ValueError("GroupNature 'A' (Asset) ya 'L' (Liability) hona "
                         "chahiye")


def _next_id(cn) -> int:
    row = db.query("SELECT ISNULL(MAX(ID),0)+1 FROM ACGROUP", cn=cn)
    return int(row[0][0])


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM ACGROUP ORDER BY GroupCode", cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM ACGROUP WHERE GroupCode = ?", (code,),
        cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM ACGROUP WHERE GroupCode = ?",
                         (code,), cn=cn))


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec, cn=cn)
    nid = _next_id(cn)
    return db.execute(
        "INSERT INTO ACGROUP (ID, GroupCode, GroupName, GroupNature, "
        "Nature, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code, BlOrd) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (nid, rec["code"], rec["name"],
         (rec.get("gnature") or "").upper(), rec.get("nature", ""),
         SITE_CODE, USER, SITE_CODE, nid), cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec, cn=cn)
    return db.execute(
        "UPDATE ACGROUP SET GroupName = ?, GroupNature = ?, Nature = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE GroupCode = ?",
        (rec["name"], (rec.get("gnature") or "").upper(),
         rec.get("nature", ""), USER, code), cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM ACGROUP WHERE GroupCode = ?", (code,),
                      cn=cn, commit=commit)
