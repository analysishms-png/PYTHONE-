"""Venue Feature Master CRUD (VB6: FrmVenueFeat 'VenueFeature').

Schema evidence (moondata.sql + live probe): FeatureMast table.
  Code varchar(5) PK, Name varchar(20), Status varchar(10),
  Site_Code varchar(2), U_Name varchar(10), U_EntDt datetime,
  U_AE varchar(1), LogSite_Code varchar(2).

VB6 evidence (FrmVenueFeat.frm):
  fill:   select * FROM FeatureMast Where LogSite_Code in ('<site>','HO')
          order by Name
  insert: Insert Into FeatureMast(Code,Name,Status,Site_Code,U_Name,
          U_EntDt,U_AE,LogSite_Code) Values(...)
          Code auto: Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1
  update: UPDATE FeatureMast SET Name='...'
  delete: Delete From FeatureMast Where Code='<code>'
  dupes:  Select Count(*) ... and Name='X'
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
LIMITS = {"code": 5, "name": 20, "status": 10}
SELECT_COLS = "Code, Name, Status, U_Name, U_EntDt, U_AE"


def _map(r) -> dict:
    try:
        return {
            "code": r.Code, "name": (r.Name or "").strip(),
            "status": (r.Status or "").strip(),
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        bc, bn, st, un, _, uae = r
        return {
            "code": bc, "name": (bn or "").strip(),
            "status": (st or "").strip(),
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Feature Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Feature Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Feature Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Feature Name max {LIMITS['name']} chars")
    if len(rec.get("status", "")) > LIMITS["status"]:
        raise ValueError(f"Status max {LIMITS['status']} chars")


def list_all(cn=None) -> list[dict]:
    """VB6 fill: LogSite_Code in (site,'HO') ORDER BY Name."""
    rows = db.query(
        "SELECT " + SELECT_COLS + " FROM FeatureMast "
        "WHERE LogSite_Code IN (?, 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT " + SELECT_COLS + " FROM FeatureMast WHERE Code = ?",
        (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM FeatureMast WHERE Code = ?", (code,), cn=cn))


def next_code(cn=None) -> str:
    """VB6 auto-code: 'F' + max(CAST(SUBSTRING(Code,3,3)),1)+1."""
    rows = db.query(
        "SELECT IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS n "
        "FROM FeatureMast", cn=cn)
    n = rows[0].n if rows and getattr(rows[0], "n", None) is not None else 2
    return f"F{n:02d}"[:LIMITS["code"]]


def name_used(name: str, exclude: str = "", cn=None) -> bool:
    """VB6 duplicate guard: Count(*) ... and Name='X'."""
    q = ("SELECT Count(*) AS c FROM FeatureMast "
         "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND Name = ?")
    params = [SITE_CODE, name]
    if exclude:
        q += " AND Code <> ?"
        params.append(exclude)
    return bool(db.query(q, tuple(params), cn=cn)[0].c)


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    db.require_absent("FeatureMast", "Code", rec["code"], "Feature Code")
    if name_used(rec["name"], cn=cn):
        raise ValueError(f"Feature Name '{rec['name']}' pehle se maujood hai")
    return db.execute(
        "INSERT INTO FeatureMast (Code, Name, Status, Site_Code, U_Name, "
        "U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("status", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    if name_used(rec["name"], exclude=code, cn=cn):
        raise ValueError(f"Feature Name '{rec['name']}' pehle se maujood hai")
    return db.execute(
        "UPDATE FeatureMast SET Name = ?, Status = ?, U_Name = ?, "
        "U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("status", ""), USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6: Delete From FeatureMast Where Code='<code>'."""
    return db.execute(
        "DELETE FROM FeatureMast WHERE Code = ?", (code,),
        cn=cn, commit=commit)
