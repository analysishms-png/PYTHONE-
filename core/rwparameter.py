"""Reward Points Parameter CRUD (VB6: RewardPointParam1.frm - Members Mgmt).

Schema evidence (moondata.sql + live probe): RWParameter table.
  Code varchar(6) + SNo smallint = PK, Name varchar(50), Category varchar(50),
  RPointOnAmt/RPoint/RPointValue/LimitLow/LimitUp/RedeemPer/AppUpToDiscPer
  float, CompOperator varchar(10), CondApp varchar(25), LimitAppOn varchar(25),
  PointEvalOn varchar(25), Site_Code, U_Name, U_AE, U_EntDt, LogSite_Code.

VB6 evidence (RewardPointParam1.frm):
  fill:   Select * From RWParameter where (LOGSITE_CODE='<site>' or
          LOGSITE_CODE='HO') Order by Sno
  insert: Insert Into RWParameter(Code,Name,Category,Sno,RPointOnAmt,RPoint,
          RPointValue,LimitLow,LimitUp,RedeemPer,AppUpToDiscPer,CompOperator,
          CondApp,LimitAppOn,PointEvalOn,Site_Code,U_Name,U_EntDt,U_AE,
          LogSite_Code) Values(...)
          Code auto: 'RW' + max(CAST(SUBSTRING(Code,3,4) AS NUMERIC))+1
  delete: Delete From RWParameter Where Code='<code>'   (poora code/scheme)
  dupes:  Select Count(*) ... and Name='X'
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
LIMITS = {"code": 6, "name": 50, "category": 50, "compoperator": 10,
          "condapp": 25, "limitappon": 25, "pointevalon": 25}
FLOATS = ("rpointonamt", "rpoint", "rpointvalue", "limitlow", "limitup",
          "redeemper", "appuptodiscper")
SELECT_COLS = ("Code, SNo, Name, Category, RPointOnAmt, RPoint, RPointValue, "
               "LimitLow, LimitUp, RedeemPer, AppUpToDiscPer, CompOperator, "
               "CondApp, LimitAppOn, PointEvalOn, U_Name, U_EntDt, U_AE")


def _map(r) -> dict:
    try:
        g = r
    except AttributeError:
        g = None
    if g is not None:
        return {
            "code": g.Code, "sno": int(g.SNo or 0),
            "name": (g.Name or "").strip(),
            "category": (g.Category or "").strip(),
            "rpointonamt": g.RPointOnAmt or 0, "rpoint": g.RPoint or 0,
            "rpointvalue": g.RPointValue or 0,
            "limitlow": g.LimitLow or 0, "limitup": g.LimitUp or 0,
            "redeemper": g.RedeemPer or 0,
            "appuptodiscper": g.AppUpToDiscPer or 0,
            "compoperator": (g.CompOperator or "").strip(),
            "condapp": (g.CondApp or "").strip(),
            "limitappon": (g.LimitAppOn or "").strip(),
            "pointevalon": (g.PointEvalOn or "").strip(),
            "u_name": g.U_Name or "", "u_ae": g.U_AE or "",
        }
    # tuple fallback
    (code, sno, name, cat, onamt, rpt, rptval, low, up, redeem,
     disc, comp, cond, lapp, pev, un, _, uae) = r
    return {
        "code": code, "sno": int(sno or 0), "name": (name or "").strip(),
        "category": (cat or "").strip(), "rpointonamt": onamt or 0,
        "rpoint": rpt or 0, "rpointvalue": rptval or 0,
        "limitlow": low or 0, "limitup": up or 0, "redeemper": redeem or 0,
        "appuptodiscper": disc or 0, "compoperator": (comp or "").strip(),
        "condapp": (cond or "").strip(), "limitappon": (lapp or "").strip(),
        "pointevalon": (pev or "").strip(), "u_name": un or "",
        "u_ae": uae or "",
    }


def _f(rec: dict, key: str) -> float:
    try:
        return float(rec.get(key) or 0)
    except (TypeError, ValueError):
        raise ValueError(f"{key}: number chahiye")


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Parameter Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Parameter Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    for k in FLOATS:
        _f(rec, k)


def list_all(cn=None) -> list[dict]:
    """VB6 fill: site + HO rows, SNo order."""
    rows = db.query(
        "SELECT " + SELECT_COLS + " FROM RWParameter "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY Code, SNo", (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT " + SELECT_COLS + " FROM RWParameter "
        "WHERE Code = ? ORDER BY SNo", (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM RWParameter WHERE Code = ?", (code,), cn=cn))


def next_code(cn=None) -> str:
    """VB6 auto-code: 'RW' + max(CAST(SUBSTRING(Code,3,4)),0)+1."""
    rows = db.query(
        "SELECT IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),0)+1 AS n "
        "FROM RWParameter WHERE ISNumeric(SUBSTRING(Code,3,4)) = 1 "
        "AND Site_Code = ?", (SITE_CODE,), cn=cn)
    n = rows[0].n if rows and getattr(rows[0], "n", None) is not None else 1
    return f"RW{int(n):04d}"[:LIMITS["code"]]


def name_used(name: str, exclude: str = "", cn=None) -> bool:
    """VB6 duplicate guard: Count(*) ... and Name='X'."""
    q = ("SELECT Count(*) AS c FROM RWParameter "
         "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Name = ?")
    params = [SITE_CODE, name]
    if exclude:
        q += " AND Code <> ?"
        params.append(exclude)
    return bool(db.query(q, tuple(params), cn=cn)[0].c)


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    db.require_absent("RWParameter", "Code", rec["code"], "Parameter Code")
    if name_used(rec["name"], cn=cn):
        raise ValueError(f"Name '{rec['name']}' pehle se maujood hai")
    return db.execute(
        "INSERT INTO RWParameter (Code, SNo, Name, Category, RPointOnAmt, "
        "RPoint, RPointValue, LimitLow, LimitUp, RedeemPer, AppUpToDiscPer, "
        "CompOperator, CondApp, LimitAppOn, PointEvalOn, Site_Code, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "getdate(), 'A', ?)",
        (rec["code"], int(rec.get("sno") or 1), rec["name"],
         rec.get("category", ""), _f(rec, "rpointonamt"), _f(rec, "rpoint"),
         _f(rec, "rpointvalue"), _f(rec, "limitlow"), _f(rec, "limitup"),
         _f(rec, "redeemper"), _f(rec, "appuptodiscper"),
         rec.get("compoperator", ""), rec.get("condapp", ""),
         rec.get("limitappon", ""), rec.get("pointevalon", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    if name_used(rec["name"], exclude=code, cn=cn):
        raise ValueError(f"Name '{rec['name']}' pehle se maujood hai")
    return db.execute(
        "UPDATE RWParameter SET Name = ?, Category = ?, RPointOnAmt = ?, "
        "RPoint = ?, RPointValue = ?, LimitLow = ?, LimitUp = ?, "
        "RedeemPer = ?, AppUpToDiscPer = ?, CompOperator = ?, CondApp = ?, "
        "LimitAppOn = ?, PointEvalOn = ?, U_Name = ?, U_EntDt = getdate(), "
        "U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("category", ""), _f(rec, "rpointonamt"),
         _f(rec, "rpoint"), _f(rec, "rpointvalue"), _f(rec, "limitlow"),
         _f(rec, "limitup"), _f(rec, "redeemper"),
         _f(rec, "appuptodiscper"), rec.get("compoperator", ""),
         rec.get("condapp", ""), rec.get("limitappon", ""),
         rec.get("pointevalon", ""), USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6: Delete From RWParameter Where Code='<code>' (saare SNo)."""
    return db.execute(
        "DELETE FROM RWParameter WHERE Code = ?", (code,),
        cn=cn, commit=commit)
