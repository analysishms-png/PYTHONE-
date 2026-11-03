"""SundryType CRUD — VB6 DepartSundry/FacilitySundry save-flow parity.

VB6 evidence (frm line refs):
- DepartSundry.frm:1810-1825 — 22-col 'Insert Into SundryType (V_Type,
  AppDate,SundryCode,SNo,DispName,CalcFormula,PerOrAmt,RoundOff,SValue,
  Limit,RevCode,Nature,CalcSign,SysYN,Grp,U_Name,U_EntDt,U_AE,AutoManual,
  SiteCode,PostYN,LogSite_Code)'; V_Type = site+'PURC' (KKPURC),
  AutoManual='A', U_AE='A'; CommitTrans per grid row (:1525EEC).
- FacilitySundry.frm:1677-1678 — same 22-col INSERT, V_Type='FACL'
  (literal in VALUES clause).
- FacilitySundry.frm:1442-1445 — display JOIN: SundryType SP
  LEFT JOIN Voucher_type VT ON SP.V_Type=VT.V_Type
  LEFT JOIN SundryMast SM ON SP.SundryCode=SM.Code
  LEFT JOIN RevMast RM ON SP.RevCode=RM.Code
  Order by SP.AppDate, VT.Description.
- No DELETE flow found in either frm (evidence-based scope: add/view).
- Live schema: V_Type varchar(6), SundryCode varchar(6), SNo int,
  DispName varchar(20), CalcFormula varchar(50), PerOrAmt varchar(1),
  RoundOff varchar(1), SValue float, Limit float, RevCode varchar(6),
  Nature varchar(20), CalcSign varchar(1), SysYN varchar(1),
  Grp varchar(1), AutoManual varchar(1), SiteCode varchar(2),
  PostYN varchar(5), LogSite_Code varchar(2).

Guards (VB6 frm:2135 count-check parity): duplicate (V_Type, SundryCode)
+ SNo uniqueness per V_Type. All writes rollback-safe (cn/commit params).
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

PURC_SUFFIX = "PURC"   # DepartSundry: V_Type = site + 'PURC' (KKPURC)
FACL_VTYPE = "FACL"    # FacilitySundry: literal 'FACL'

_COLS = ("V_Type, AppDate, SundryCode, SNo, DispName, CalcFormula, "
         "PerOrAmt, RoundOff, SValue, Limit, RevCode, Nature, CalcSign, "
         "SysYN, Grp, U_Name, U_EntDt, U_AE, AutoManual, SiteCode, "
         "PostYN, LogSite_Code")


def vtype_for(kind: str, site: str = SITE_CODE) -> str:
    """'depart' -> site+'PURC' (KKPURC); 'facility' -> 'FACL'."""
    k = (kind or "").strip().lower()
    if k in ("facility", "facl", "f"):
        return FACL_VTYPE
    return f"{site}{PURC_SUFFIX}"[:6]


def list_entries(kind: str, cn=None, top: int = 500) -> list[dict]:
    """VB6 frm:1442 4-table JOIN display, Order by AppDate, VT.Description."""
    vt = vtype_for(kind)
    rows = db.query(
        "SELECT TOP (?) SP.V_Type, CONVERT(varchar(11), SP.AppDate, 103), "
        "SP.SundryCode, SM.Name, SP.SNo, SP.DispName, SP.CalcFormula, "
        "SP.PerOrAmt, SP.RoundOff, SP.SValue, SP.Limit, SP.RevCode, "
        "RM.Name, SP.Nature, SP.CalcSign, SP.SysYN, SP.PostYN "
        "FROM SundryType SP "
        "LEFT JOIN Voucher_type VT ON SP.V_Type = VT.V_Type "
        "LEFT JOIN SundryMast SM ON SP.SundryCode = SM.Code "
        "LEFT JOIN RevMast RM ON SP.RevCode = RM.Code "
        "WHERE SP.V_Type = ? ORDER BY SP.AppDate, VT.Description, SP.SNo",
        (int(top), vt), cn=cn)
    return [{
        "vtype": (r[0] or "").strip(), "appdate": r[1],
        "sundrycode": (r[2] or "").strip(), "sundry_name": (r[3] or "").strip(),
        "sno": int(r[4] or 0), "dispname": (r[5] or "").strip(),
        "calcformula": (r[6] or "").strip(),
        "peroramt": (r[7] or "").strip(), "roundoff": (r[8] or "").strip(),
        "svalue": float(r[9] or 0), "limit": float(r[10] or 0),
        "revcode": (r[11] or "").strip(), "rev_name": (r[12] or "").strip(),
        "nature": (r[13] or "").strip(), "calcsign": (r[14] or "").strip(),
        "sysyn": (r[15] or "").strip(), "postyn": (r[16] or "").strip(),
    } for r in rows]


def next_sno(vtype: str, cn=None) -> int:
    """MAX(SNo)+1 within the V_Type (VB6 grid-row SNo pattern)."""
    rows = db.query(
        "SELECT MAX(SNo) FROM SundryType WHERE V_Type = ?", (vtype,), cn=cn)
    return int(rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


def add_entry(kind: str, sundrycode: str, dispname: str, cn=None,
              commit: bool = True, user: str = USER,
              site: str = SITE_CODE, calcformula: str = "",
              peroramt: str = "A", roundoff: str = "N",
              svalue: float = 0.0, limit: float = 0.0,
              revcode: str = "", nature: str = "",
              calcsign: str = "+", sysyn: str = "N", grp: str = "N",
              postyn: str = "Yes", appdate=None) -> int:
    """VB6 22-col INSERT (frm:1810/:1677). Guards:
    - sundrycode required, must exist in SundryMast (frm loads picker)
    - duplicate (V_Type, SundryCode) blocked (frm:2135 count-check parity)
    - SNo = MAX+1 per V_Type
    AutoManual='A', U_AE='A' (VB6 literals).
    """
    sc = (sundrycode or "").strip()
    if not sc:
        raise ValueError("SundryCode zaroori hai")
    vt = vtype_for(kind, site)

    dup = db.query(
        "SELECT COUNT(*) FROM SundryType WHERE V_Type = ? AND SundryCode = ?",
        (vt, sc), cn=cn)[0][0]
    if dup:
        raise ValueError(f"Duplicate: {vt}/{sc} pehle se maujood hai")

    mast = db.query(
        "SELECT COUNT(*) FROM SundryMast WHERE Code = ?", (sc,), cn=cn)[0][0]
    if not mast:
        raise ValueError(f"SundryMast me '{sc}' nahi mila (picker se chuno)")

    sno = next_sno(vt, cn=cn)
    dt = appdate or datetime.datetime.now()
    return db.execute(
        f"INSERT INTO SundryType ({_COLS}) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "getdate(), 'A', 'A', ?, ?, ?)",
        (vt, dt, sc, sno, (dispname or sc)[:20],
         (calcformula or "")[:50], (peroramt or "A")[:1],
         (roundoff or "N")[:1], float(svalue), float(limit),
         (revcode or "")[:6], (nature or "")[:20], (calcsign or "+")[:1],
         (sysyn or "N")[:1], (grp or "N")[:1], user[:10], site[:2],
         (postyn or "Yes")[:5], site[:2]),
        cn=cn, commit=commit)
