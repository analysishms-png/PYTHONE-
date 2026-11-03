"""Ledger Accounts CRUD (VB6: 'Ledger Accounts' - Main Setup -> Finance).

Schema: SubGroup table (actual ledger master in this DB).
  SubCode varchar(8) PK, Name varchar(75), ShortName varchar(10),
  GroupCode varchar(6) FK->ACGROUP, GroupNature varchar(1),
  Nature varchar(15), Category varchar(1),
  Add1/Add2/Add3 varchar(50), CityCode varchar(6),
  Phone varchar(35), Mobile varchar(24), EMail varchar(50),
  PANNo varchar(20), GSTIN varchar(30),
  ActiveYN smallint, CreditLimit int, CreditDays int,
  U_Name varchar(10), U_EntDt datetime, U_AE varchar(1),
  LogSite_Code varchar(2).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {
    "code": 8, "name": 75, "short": 10, "group": 6, "nature": 15,
    "phone": 35, "mobile": 24, "email": 50, "pan": 20, "gstin": 30,
    "add1": 50, "add2": 50, "add3": 50, "city": 6,
}
SELECT_COLS = (
    "SubCode, Name, ShortName, GroupCode, GroupNature, Nature, Category, "
    "Add1, Add2, Add3, CityCode, Phone, Mobile, EMail, PANNo, GSTIN, "
    "ActiveYN, CreditLimit, CreditDays, U_Name, U_EntDt, U_AE"
)


def _map(r) -> dict:
    try:
        return {
            "code": r.SubCode, "name": (r.Name or "").strip(),
            "short": (r.ShortName or "").strip(),
            "group": r.GroupCode or "",
            "group_nature": r.GroupNature or "",
            "nature": r.Nature or "",
            "category": r.Category or "",
            "add1": (r.Add1 or "").strip(),
            "add2": (r.Add2 or "").strip(),
            "add3": (r.Add3 or "").strip(),
            "city": r.CityCode or "",
            "phone": (r.Phone or "").strip(),
            "mobile": (r.Mobile or "").strip(),
            "email": (r.EMail or "").strip(),
            "pan": (r.PANNo or "").strip(),
            "gstin": (r.GSTIN or "").strip(),
            "active": r.ActiveYN or 1,
            "credit_limit": r.CreditLimit or 0,
            "credit_days": r.CreditDays or 0,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        lc, ln, sn, gc, gnat, nat, cat, a1, a2, a3, cc, ph, mob, em, \
            pan, gst, act, cl, cd, un, _, uae = r
        return {
            "code": lc, "name": (ln or "").strip(),
            "short": (sn or "").strip(), "group": gc or "",
            "group_nature": gnat or "", "nature": nat or "",
            "category": cat or "",
            "add1": (a1 or "").strip(), "add2": (a2 or "").strip(),
            "add3": (a3 or "").strip(), "city": cc or "",
            "phone": (ph or "").strip(), "mobile": (mob or "").strip(),
            "email": (em or "").strip(), "pan": (pan or "").strip(),
            "gstin": (gst or "").strip(),
            "active": act or 1, "credit_limit": cl or 0,
            "credit_days": cd or 0,
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("SubCode zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")


def list_all(cn=None, top: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(top)} {SELECT_COLS} FROM SubGroup "
        "ORDER BY SubCode", cn=cn)
    return [_map(r) for r in rows]


def search(name_part: str, cn=None, top: int = 100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(top)} {SELECT_COLS} FROM SubGroup "
        "WHERE Name LIKE ? ORDER BY Name",
        (f"%{name_part}%",), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM SubGroup WHERE SubCode = ?",
        (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM SubGroup WHERE SubCode = ?", (code,), cn=cn))


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    db.require_absent("SubGroup", "SubCode", rec["code"], "Ledger Code")
    return db.execute(
        "INSERT INTO SubGroup (SubCode, Name, ShortName, GroupCode, "
        "GroupNature, Nature, Category, Add1, Add2, Add3, CityCode, "
        "Phone, Mobile, EMail, PANNo, GSTIN, ActiveYN, "
        "CreditLimit, CreditDays, Site_Code, U_Name, U_EntDt, U_AE, "
        "LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("short", ""),
         rec.get("group", ""), rec.get("group_nature", ""),
         rec.get("nature", ""), rec.get("category", ""),
         rec.get("add1", ""), rec.get("add2", ""), rec.get("add3", ""),
         rec.get("city", ""), rec.get("phone", ""),
         rec.get("mobile", ""), rec.get("email", ""),
         rec.get("pan", ""), rec.get("gstin", ""),
         rec.get("active", 1), rec.get("credit_limit", 0),
         rec.get("credit_days", 0), SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    return db.execute(
        "UPDATE SubGroup SET Name = ?, ShortName = ?, GroupCode = ?, "
        "GroupNature = ?, Nature = ?, Category = ?, "
        "Add1 = ?, Add2 = ?, Add3 = ?, CityCode = ?, "
        "Phone = ?, Mobile = ?, EMail = ?, PANNo = ?, GSTIN = ?, "
        "ActiveYN = ?, CreditLimit = ?, CreditDays = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE SubCode = ?",
        (rec["name"], rec.get("short", ""),
         rec.get("group", ""), rec.get("group_nature", ""),
         rec.get("nature", ""), rec.get("category", ""),
         rec.get("add1", ""), rec.get("add2", ""), rec.get("add3", ""),
         rec.get("city", ""), rec.get("phone", ""),
         rec.get("mobile", ""), rec.get("email", ""),
         rec.get("pan", ""), rec.get("gstin", ""),
         rec.get("active", 1), rec.get("credit_limit", 0),
         rec.get("credit_days", 0), USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM SubGroup WHERE SubCode = ?", (code,),
        cn=cn, commit=commit)
