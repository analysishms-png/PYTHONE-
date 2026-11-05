"""Read-only Season Master parity APIs and validators."""

from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
LIMITS = {"ratecode": 2}
SELECT_COLS = (
    "FromDate, ToDate, RateCode, Site_Code, U_Name, U_EntDt, U_AE, "
    "LogSite_Code"
)
WEEKEND_DAYS = (
    "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
)


def _text(value) -> str:
    return str(value if value is not None else "").strip()


def _query_read(sql: str, params=(), cn=None, table_name: str = ""):
    try:
        return db.query(sql, params, cn=cn)
    except Exception as exc:
        message = str(exc).lower()
        if "invalid object name" in message and table_name.lower() in message:
            return []
        raise


def _row_value(row, name: str, index: int, default=None):
    try:
        return getattr(row, name)
    except AttributeError:
        try:
            return row[index]
        except (IndexError, KeyError, TypeError):
            return default


def _site_scope(logsite_code=None) -> str:
    return _text(logsite_code) or SITE_CODE


def _date_value(value):
    if isinstance(value, datetime.datetime):
        return value.date()
    return value


def _map_row(row) -> dict:
    return {
        "fromdate": _date_value(_row_value(row, "FromDate", 0)),
        "todate": _date_value(_row_value(row, "ToDate", 1)),
        "ratecode": _text(_row_value(row, "RateCode", 2, "")).upper(),
        "site_code": _text(_row_value(row, "Site_Code", 3, "")),
        "u_name": _text(_row_value(row, "U_Name", 4, "")),
        "u_entdt": _date_value(_row_value(row, "U_EntDt", 5)),
        "u_ae": _text(_row_value(row, "U_AE", 6, "")),
        "logsite_code": _text(_row_value(row, "LogSite_Code", 7, "")),
    }


def normalize_year(value) -> int:
    text = _text(value)
    if len(text) == 1:
        text = "200" + text
    elif len(text) == 2:
        text = "20" + text
    elif len(text) == 3:
        text = "2" + text
    if len(text) != 4 or not text.isdigit():
        raise ValueError("Year four digits mein hona chahiye")
    year = int(text)
    if year < 2000 or year > 2999:
        raise ValueError("Year 2000 se 2999 ke beech hona chahiye")
    return year


def _parse_ddmm(value, year: int) -> datetime.date:
    if isinstance(value, datetime.datetime):
        return value.date()
    if isinstance(value, datetime.date):
        return value
    text = _text(value)
    if len(text) != 4 or not text.isdigit():
        raise ValueError("InValid Date (DDMM Required)")
    day = int(text[:2])
    month = int(text[2:])
    try:
        return datetime.date(year, month, day)
    except ValueError as exc:
        raise ValueError("InValid Date (DDMM Required)") from exc


def validate_rows(year, rows) -> list[dict]:
    selected_year = normalize_year(year)
    normalized = []
    for index, row in enumerate(rows, start=1):
        from_value = row.get("from_ddmm") or row.get("fromdate")
        to_value = row.get("to_ddmm") or row.get("todate")
        rate_value = row.get("ratecode")
        if not _text(from_value) and not _text(to_value) and not _text(rate_value):
            continue
        if not _text(from_value) or not _text(to_value) or not _text(rate_value):
            raise ValueError(f"Value Required In Row {index}")
        from_date = _parse_ddmm(from_value, selected_year)
        to_date = _parse_ddmm(to_value, selected_year)
        if to_date <= from_date:
            raise ValueError("To Date Must Be Greater Than From Date")
        rate_code = _text(rate_value).upper()
        if len(rate_code) != 1 or not ("A" <= rate_code <= "Z"):
            raise ValueError("Select Valid Rate Code")
        normalized.append({
            "fromdate": from_date.isoformat(),
            "todate": to_date.isoformat(),
            "ratecode": rate_code,
            "_from": from_date,
            "_to": to_date,
        })
    ordered = sorted(normalized, key=lambda item: item["_from"])
    for previous, current in zip(ordered, ordered[1:]):
        if current["_from"] <= previous["_to"]:
            raise ValueError("Date Already Feeded")
    for item in normalized:
        item.pop("_from", None)
        item.pop("_to", None)
    return normalized


def weekend_flags(value) -> dict[str, bool]:
    text = _text(value)
    text = (text + "       ")[:7]
    return {day: text[index] == "*" for index, day in enumerate(WEEKEND_DAYS)}


def list_years(logsite_code=None, cn=None) -> list[int]:
    site = _site_scope(logsite_code)
    rows = _query_read(
        "SELECT DISTINCT YEAR(FromDate) AS SYear, Site_Code, LogSite_Code "
        "FROM SeasonMast WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "ORDER BY YEAR(FromDate) DESC",
        (site,),
        cn=cn,
        table_name="SeasonMast",
    )
    years = []
    for row in rows:
        value = _row_value(row, "SYear", 0)
        try:
            year = int(value)
        except (TypeError, ValueError):
            continue
        if year not in years:
            years.append(year)
    return years


def list_rows(year, logsite_code=None, cn=None) -> list[dict]:
    selected_year = normalize_year(year)
    site = _site_scope(logsite_code)
    rows = _query_read(
        f"SELECT {SELECT_COLS} FROM SeasonMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "AND YEAR(FromDate) = ? ORDER BY FromDate",
        (site, selected_year),
        cn=cn,
        table_name="SeasonMast",
    )
    return [_map_row(row) for row in rows]


def get_weekend(logsite_code=None, cn=None) -> str | None:
    site = _site_scope(logsite_code)
    rows = _query_read(
        "SELECT Weekend FROM SeasonMast1 WHERE LogSite_Code = ?",
        (site,),
        cn=cn,
        table_name="SeasonMast1",
    )
    if not rows:
        return None
    value = _row_value(rows[0], "Weekend", 0, "")
    text = "" if value is None else str(value)
    return text or None


def list_all(cn=None, logsite_code=None) -> list[dict]:
    site = _site_scope(logsite_code)
    rows = _query_read(
        f"SELECT {SELECT_COLS} FROM SeasonMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY FromDate",
        (site,),
        cn=cn,
        table_name="SeasonMast",
    )
    return [_map_row(row) for row in rows]


def get(code, cn=None) -> dict | None:
    site = _site_scope()
    rows = _query_read(
        f"SELECT {SELECT_COLS} FROM SeasonMast "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') AND RateCode = ?",
        (site, _text(code)),
        cn=cn,
        table_name="SeasonMast",
    )
    return _map_row(rows[0]) if rows else None


def exists(code, cn=None) -> bool:
    return bool(get(code, cn=cn))


def _weekend_text(value) -> str:
    if isinstance(value, dict):
        return "".join(
            "*" if value.get(day, False) else " "
            for day in WEEKEND_DAYS
        )
    return (_text(value) + "       ")[:7]


def save_year(year, rows, weekend="", logsite_code=None, cn=None,
              commit: bool = True) -> int:
    selected_year = normalize_year(year)
    normalized = validate_rows(selected_year, rows)
    site = _site_scope(logsite_code)
    weekend_value = _weekend_text(weekend)
    own = cn is None
    connection = cn or db.connect()
    try:
        db.execute(
            "DELETE FROM SeasonMast WHERE YEAR(FromDate) = ? "
            "AND (LogSite_Code = ? OR LogSite_Code = 'HO')",
            (selected_year, site), cn=connection, commit=False,
        )
        for row in normalized:
            db.execute(
                "INSERT INTO SeasonMast (FromDate, ToDate, RateCode, "
                "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, getdate(), ?, ?)",
                (datetime.date.fromisoformat(row["fromdate"]),
                 datetime.date.fromisoformat(row["todate"]),
                 row["ratecode"], SITE_CODE, USER, "A", site),
                cn=connection, commit=False,
            )
        db.execute(
            "DELETE FROM SeasonMast1 WHERE (LogSite_Code = ? "
            "OR LogSite_Code = 'HO')",
            (site,), cn=connection, commit=False,
        )
        db.execute(
            "INSERT INTO SeasonMast1 (Weekend, Site_Code, U_Name, "
            "U_EntDt, U_AE, LogSite_Code) VALUES (?, ?, ?, getdate(), ?, ?)",
            (weekend_value, SITE_CODE, USER, "A", site),
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


def save_weekend(weekend, logsite_code=None, cn=None,
                 commit: bool = True) -> int:
    site = _site_scope(logsite_code)
    own = cn is None
    connection = cn or db.connect()
    try:
        db.execute(
            "DELETE FROM SeasonMast1 WHERE (LogSite_Code = ? "
            "OR LogSite_Code = 'HO')",
            (site,), cn=connection, commit=False,
        )
        db.execute(
            "INSERT INTO SeasonMast1 (Weekend, Site_Code, U_Name, "
            "U_EntDt, U_AE, LogSite_Code) VALUES (?, ?, ?, getdate(), ?, ?)",
            (_weekend_text(weekend), SITE_CODE, USER, "A", site),
            cn=connection, commit=False,
        )
        if commit:
            connection.commit()
        return 1
    except Exception:
        connection.rollback()
        raise
    finally:
        if own:
            connection.close()


replace_year = save_year


def insert(*args, **kwargs):
    raise PermissionError("Season Master is read-only in this parity slice")


def update(*args, **kwargs):
    raise PermissionError("Season Master is read-only in this parity slice")


def delete(*args, **kwargs):
    raise PermissionError("Season Master is read-only in this parity slice")
