"""ItemRate master operations for the Menu Item Rate form."""
from __future__ import annotations

import datetime

from HMS_py.core import db


SITE_CODE = db.get_site_code()
USER = db.get_user()
LIMITS = {"itemcode": 8, "restcode": 6, "party": 8}
SELECT_COLS = (
    "ItemCode, RestCode, Rate, Site_Code, U_Name, U_EntDt, U_AE, "
    "AppDate, LogSite_Code, MRP, Party"
)


def _text(value) -> str:
    return str(value if value is not None else "").strip()


def _date(value) -> datetime.date:
    if isinstance(value, datetime.datetime):
        return value.date()
    if isinstance(value, datetime.date):
        return value
    text = _text(value)
    try:
        return datetime.date.fromisoformat(text[:10])
    except ValueError as exc:
        raise ValueError("AppDate valid date hona chahiye") from exc


def _row_value(row, name, index, default=None):
    try:
        value = getattr(row, name)
    except AttributeError:
        try:
            value = row[index]
        except (IndexError, KeyError, TypeError):
            return default
    return default if value is None else value


def _map(row) -> dict:
    return {
        "itemcode": _text(_row_value(row, "ItemCode", 0, "")),
        "restcode": _text(_row_value(row, "RestCode", 1, "")),
        "rate": float(_row_value(row, "Rate", 2, 0) or 0),
        "site_code": _text(_row_value(row, "Site_Code", 3, "")),
        "u_name": _text(_row_value(row, "U_Name", 4, "")),
        "u_entdt": _row_value(row, "U_EntDt", 5),
        "u_ae": _text(_row_value(row, "U_AE", 6, "")),
        "appdate": _date(_row_value(row, "AppDate", 7)),
        "logsite_code": _text(_row_value(row, "LogSite_Code", 8, "")),
        "mrp": float(_row_value(row, "MRP", 9, 0) or 0),
        "party": _text(_row_value(row, "Party", 10, "")),
    }


def _validate(record: dict, allow_past: bool = False) -> dict:
    result = dict(record)
    itemcode = _text(result.get("itemcode"))
    restcode = _text(result.get("restcode"))
    party = _text(result.get("party"))
    if not itemcode:
        raise ValueError("ItemCode zaroori hai")
    if len(itemcode) > LIMITS["itemcode"]:
        raise ValueError(f"ItemCode max {LIMITS['itemcode']} chars")
    if not restcode:
        raise ValueError("RestCode zaroori hai")
    if len(restcode) > LIMITS["restcode"]:
        raise ValueError(f"RestCode max {LIMITS['restcode']} chars")
    if len(party) > LIMITS["party"]:
        raise ValueError(f"Party max {LIMITS['party']} chars")
    try:
        appdate = _date(result.get("appdate"))
        result["rate"] = float(result.get("rate") or 0)
        result["mrp"] = float(result.get("mrp") or 0)
    except (TypeError, ValueError) as exc:
        raise ValueError("Rate, MRP aur AppDate valid hona chahiye") from exc
    if not allow_past and appdate < datetime.date.today():
        raise ValueError("AppDate current date se pehle nahi ho sakta")
    result.update({"itemcode": itemcode, "restcode": restcode,
                   "party": party, "appdate": appdate})
    return result


def _where(itemcode=None, restcode=None, appdate=None, include_site=True):
    clauses = []
    params = []
    if include_site:
        clauses.append("(LogSite_Code = ? OR LogSite_Code = 'HO')")
        params.append(SITE_CODE)
    if itemcode is not None:
        clauses.append("ItemCode = ?")
        params.append(_text(itemcode))
    if restcode is not None:
        clauses.append("RestCode = ?")
        params.append(_text(restcode))
    if appdate is not None:
        clauses.append("AppDate = ?")
        params.append(_date(appdate))
    return (" WHERE " + " AND ".join(clauses) if clauses else "",
            tuple(params))


def list_rates(itemcode=None, restcode=None, appdate=None, cn=None) -> list[dict]:
    where, params = _where(itemcode, restcode, appdate)
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM ItemRate{where} "
        "ORDER BY ItemCode, RestCode, AppDate DESC", params, cn=cn)
    return [_map(row) for row in rows]


def get(itemcode: str, restcode: str, appdate, cn=None) -> dict | None:
    where, params = _where(itemcode, restcode, appdate)
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM ItemRate{where}", params, cn=cn)
    return _map(rows[0]) if rows else None


def exists(itemcode: str, restcode: str, appdate, cn=None) -> bool:
    where, params = _where(itemcode, restcode, appdate)
    return bool(db.query(f"SELECT 1 FROM ItemRate{where}", params, cn=cn))


def _canonical_conflict(existing: dict, record: dict) -> bool:
    return (existing.get("party", "") != record.get("party", "")
            or existing.get("logsite_code", "") not in
            ("", record.get("site_code", SITE_CODE), SITE_CODE))


def save_batch(rows, cn=None, commit: bool = True,
               allow_past: bool = False) -> int:
    normalized = [_validate(row, allow_past=allow_past) for row in rows]
    if not normalized:
        return 0
    own = cn is None
    connection = cn or db.connect()
    try:
        for record in normalized:
            where, params = _where(
                record["itemcode"], record["restcode"], record["appdate"])
            existing_rows = db.query(
                f"SELECT {SELECT_COLS} FROM ItemRate{where}", params,
                cn=connection)
            if existing_rows:
                existing = _map(existing_rows[0])
                if _canonical_conflict(existing, record):
                    raise ValueError(
                        "canonical key already belongs to another party/site")
                db.execute(
                    "UPDATE ItemRate SET Rate = ?, MRP = ?, Party = ?, "
                    "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
                    "WHERE ItemCode = ? AND RestCode = ? AND AppDate = ?",
                    (record["rate"], record["mrp"], record["party"], USER,
                     record["itemcode"], record["restcode"],
                     record["appdate"]),
                    cn=connection, commit=False,
                )
            else:
                db.execute(
                    "INSERT INTO ItemRate (ItemCode, RestCode, Rate, "
                    "Site_Code, U_Name, U_EntDt, U_AE, AppDate, "
                    "LogSite_Code, MRP, Party) VALUES (?, ?, ?, ?, ?, "
                    "getdate(), 'A', ?, ?, ?, ?)",
                    (record["itemcode"], record["restcode"], record["rate"],
                     SITE_CODE, USER, record["appdate"], SITE_CODE,
                     record["mrp"], record["party"]),
                    cn=connection, commit=False,
                )
        if commit:
            connection.commit()
        return len(normalized)
    except Exception:
        connection.rollback()
        raise
    finally:
        if own:
            connection.close()


def effective_rate(itemcode: str, restcode: str, on_date, party=None,
                   cn=None) -> float:
    selected_date = _date(on_date)
    party_value = _text(party)

    def _lookup(party_clause, party_param):
        clauses = [
            "ItemCode = ?", "RestCode = ?", "AppDate <= ?",
            party_clause, "(LogSite_Code = ? OR LogSite_Code = 'HO')",
        ]
        query_params = (
            SITE_CODE, _text(itemcode), _text(restcode), selected_date,
            party_param,
        )
        rows = db.query(
            f"SELECT Rate FROM ItemRate WHERE {' AND '.join(clauses)} "
            "ORDER BY AppDate DESC", query_params, cn=cn)
        return float(_row_value(rows[0], "Rate", 0, 0) or 0) if rows else 0.0

    if party_value:
        rate = _lookup("Party = ?", party_value)
        if rate:
            return rate
    return _lookup("Party = ''", "")


def delete(itemcode: str, restcode: str, appdate, cn=None,
           commit: bool = True) -> int:
    own = cn is None
    connection = cn or db.connect()
    try:
        result = db.execute(
            "DELETE FROM ItemRate WHERE ItemCode = ? AND RestCode = ? "
            "AND AppDate = ?",
            (_text(itemcode), _text(restcode), _date(appdate)),
            cn=connection, commit=False,
        )
        if commit:
            connection.commit()
        return result
    except Exception:
        connection.rollback()
        raise
    finally:
        if own:
            connection.close()
