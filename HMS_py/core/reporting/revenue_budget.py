"""Revenue Group ordering and Revenue Wise Budget persistence."""

from __future__ import annotations

import math
import re
from datetime import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
_MONTH_YEAR_RE = re.compile(r"^(?:[A-Za-z]{3}/\d{4}|\d{1,2}/\d{4})$")


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


def _map_rev_group(row) -> dict:
    sno = _row_value(row, "GroupSrNo", 0, 0)
    code = _row_value(row, "Code", 2, "")
    name = _row_value(row, "Name", 1, "")
    flag_amr = _row_value(row, "FlagAMR", 3, "")
    return {
        "sno": int(sno or 0),
        "code": _text(code),
        "name": _text(name),
        "flag_amr": _text(flag_amr),
    }


def revenue_group_list(cn=None) -> list[dict]:
    rows = _query_read(
        "SELECT GroupSrNo, Name, Code, FlagAMR FROM RevMast "
        "ORDER BY GroupSrNo, Code",
        cn=cn,
        table_name="RevMast",
    )
    return [_map_rev_group(row) for row in rows]


def revenue_group_get(code: str, cn=None) -> dict | None:
    rows = _query_read(
        "SELECT GroupSrNo, Name, Code, FlagAMR FROM RevMast WHERE Code = ?",
        (_text(code),),
        cn=cn,
        table_name="RevMast",
    )
    return _map_rev_group(rows[0]) if rows else None


def move_revenue_group(rows: list[dict], index: int, direction: int) -> list[dict]:
    if direction not in (-1, 1):
        raise ValueError("Direction -1 ya 1 hona chahiye")
    if not rows:
        return []
    if index < 0 or index >= len(rows):
        raise IndexError("Revenue row index invalid hai")
    target = index + direction
    if target < 0 or target >= len(rows):
        return [dict(row) for row in rows]
    result = [dict(row) for row in rows]
    result[index], result[target] = result[target], result[index]
    return result


def _group_codes(rows) -> list[str]:
    codes = []
    for row in rows:
        code = _text(row.get("code") if isinstance(row, dict) else row)
        if not code:
            raise ValueError("Rev Code zaroori hai")
        if len(code) > 6:
            raise ValueError("Rev Code max 6 chars")
        if code in codes:
            raise ValueError(f"Rev Code '{code}' duplicate hai")
        codes.append(code)
    return codes


def _run_transaction(work, cn=None, commit=True):
    own = cn is None
    connection = cn or db.connect()
    completed = False
    try:
        result = work(connection)
        if commit:
            connection.commit()
        completed = True
        return result
    except Exception:
        try:
            connection.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            if not commit and completed:
                try:
                    connection.rollback()
                except Exception:
                    pass
            try:
                connection.close()
            except Exception:
                pass


def revenue_group_save(rows: list[dict], cn=None, commit: bool = True) -> int:
    codes = _group_codes(rows)

    def work(connection):
        for position, code in enumerate(codes, start=1):
            db.execute(
                "UPDATE RevMast SET GroupSrNo = ? WHERE Code = ?",
                (position, code),
                cn=connection,
                commit=False,
            )
        return len(codes)

    _run_transaction(work, cn=cn, commit=commit)
    return len(codes)


def _map_budget(row) -> dict:
    return {
        "sno": int(_row_value(row, "SNo", 0, 0) or 0),
        "month_year": _text(_row_value(row, "Month_Year", 1, "")),
        "rev_code": _text(_row_value(row, "RevCode", 2, "")),
        "detail": _text(_row_value(row, "Detail", 3, "")),
        "budget": float(_row_value(row, "Budget", 4, 0) or 0),
        "header": _text(_row_value(row, "Header", 5, "")),
        "u_name": _text(_row_value(row, "U_Name", 6, "")),
        "u_ae": _text(_row_value(row, "U_AE", 8, "")),
        "site_code": _text(_row_value(row, "Site_Code", 9, "")),
        "logsite_code": _text(_row_value(row, "LogSite_Code", 10, "")),
    }


def budget_months(cn=None) -> list[str]:
    rows = _query_read(
        "SELECT DISTINCT Month_Year FROM BudgetDetails ORDER BY Month_Year",
        cn=cn,
        table_name="BudgetDetails",
    )
    return [_text(row[0] if not hasattr(row, "Month_Year") else row.Month_Year)
            for row in rows]


def _validate_month_year(month_year) -> str:
    value = _text(month_year)
    if not value or not _MONTH_YEAR_RE.fullmatch(value) or len(value) > 10:
        raise ValueError("Month_Year MMM/YYYY ya MM/YYYY format mein hona chahiye")
    try:
        datetime.strptime(value, "%b/%Y")
    except ValueError:
        try:
            datetime.strptime(value, "%m/%Y")
        except ValueError as exc:
            raise ValueError("Month_Year valid calendar month/year hona chahiye") from exc
    return value


def budget_list(month_year=None, cn=None, limit: int = 500) -> list[dict]:
    if month_year is None:
        return []
    month = _validate_month_year(month_year)
    limit = max(1, min(int(limit or 500), 10000))
    rows = _query_read(
        "SELECT TOP " + str(limit) + " SNo, Month_Year, RevCode, Detail, "
        "Budget, Header, U_Name, U_EntDT, U_AE, Site_Code, LogSite_Code "
        "FROM BudgetDetails WHERE Month_Year = ? ORDER BY Month_Year, SNo",
        (month,),
        cn=cn,
        table_name="BudgetDetails",
    )
    return [_map_budget(row) for row in rows]


def budget_get(month_year, sno: int, cn=None) -> dict | None:
    month = _validate_month_year(month_year)
    rows = _query_read(
        "SELECT SNo, Month_Year, RevCode, Detail, Budget, Header, U_Name, "
        "U_EntDT, U_AE, Site_Code, LogSite_Code FROM BudgetDetails "
        "WHERE Month_Year = ? AND SNo = ?",
        (month, int(sno)),
        cn=cn,
        table_name="BudgetDetails",
    )
    return _map_budget(rows[0]) if rows else None


def _normalize_budget_rows(rows) -> list[dict]:
    normalized = []
    seen = set()
    for row in rows:
        sno_text = _text(row.get("sno"))
        try:
            sno = int(sno_text)
        except ValueError as exc:
            raise ValueError("Budget SNo number hona chahiye") from exc
        if sno < 1 or sno in seen:
            raise ValueError("Budget SNo unique aur positive hona chahiye")
        seen.add(sno)
        header = _text(row.get("header"))
        rev_code = _text(row.get("rev_code"))
        detail = _text(row.get("detail"))
        budget_text = _text(row.get("budget"))
        if not header:
            if not rev_code:
                raise ValueError(f"RevCode zaroori hai (SNo {sno})")
            if not detail:
                raise ValueError(f"Detail zaroori hai (SNo {sno})")
        if len(rev_code) > 6:
            raise ValueError(f"RevCode max 6 chars (SNo {sno})")
        if len(detail) > 50:
            raise ValueError(f"Detail max 50 chars (SNo {sno})")
        if len(header) > 50:
            raise ValueError(f"Header max 50 chars (SNo {sno})")
        try:
            budget = float(budget_text or 0)
        except (TypeError, ValueError) as exc:
            raise ValueError(f"Budget number hona chahiye (SNo {sno})") from exc
        if not math.isfinite(budget) or budget < 0:
            raise ValueError(f"Budget non-negative number hona chahiye (SNo {sno})")
        normalized.append({
            "sno": sno,
            "rev_code": rev_code,
            "detail": detail,
            "budget": budget,
            "header": header,
        })
    return normalized


def budget_save(month_year, rows, cn=None, commit: bool = True) -> int:
    month = _validate_month_year(month_year)
    lines = _normalize_budget_rows(rows)

    def work(connection):
        db.execute(
            "DELETE FROM BudgetDetails WHERE Month_Year = ? AND LogSite_Code = ?",
            (month, SITE_CODE),
            cn=connection,
            commit=False,
        )
        for line in lines:
            db.execute(
                "INSERT INTO BudgetDetails (SNo, Month_Year, RevCode, Detail, "
                "Budget, Header, U_Name, U_EntDT, U_AE, Site_Code, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), ?, ?, ?)",
                (
                    line["sno"], month, line["rev_code"], line["detail"],
                    line["budget"], line["header"], USER, "A", SITE_CODE,
                    SITE_CODE,
                ),
                cn=connection,
                commit=False,
            )
        return len(lines)

    _run_transaction(work, cn=cn, commit=commit)
    return len(lines)


def budget_delete(month_year, cn=None, commit: bool = True) -> int:
    month = _validate_month_year(month_year)

    def work(connection):
        return db.execute(
            "DELETE FROM BudgetDetails WHERE Month_Year = ? AND LogSite_Code = ?",
            (month, SITE_CODE),
            cn=connection,
            commit=False,
        )

    return _run_transaction(work, cn=cn, commit=commit)


def budget_revenue_options(cn=None) -> list[dict]:
    rows = _query_read(
        "SELECT Name, Code FROM RevMast WHERE Type = 'Cr' AND LogSite_Code = ? "
        "AND ((FlagType = 'FOM' AND FieldType = 'C' AND FlagAMR <> 'Header') "
        "OR (FlagAMR = 'Header' AND FlagType = 'POS')) "
        "ORDER BY Name, Code",
        (SITE_CODE,),
        cn=cn,
        table_name="RevMast",
    )
    return [
        {"name": _text(row[0]), "code": _text(row[1])}
        for row in rows
    ]


class _RevenueBudgetAPI:
    @staticmethod
    def revenue_group_list(cn=None):
        return revenue_group_list(cn=cn)

    @staticmethod
    def revenue_group_get(code, cn=None):
        return revenue_group_get(code, cn=cn)

    @staticmethod
    def revenue_group_save(rows, cn=None, commit=True):
        return revenue_group_save(rows, cn=cn, commit=commit)

    @staticmethod
    def move_revenue_group(rows, index, direction):
        return move_revenue_group(rows, index, direction)

    @staticmethod
    def budget_months(cn=None):
        return budget_months(cn=cn)

    @staticmethod
    def budget_list(month_year=None, cn=None, limit=500):
        return budget_list(month_year, cn=cn, limit=limit)

    @staticmethod
    def budget_get(month_year, sno, cn=None):
        return budget_get(month_year, sno, cn=cn)

    @staticmethod
    def budget_save(month_year, rows, cn=None, commit=True):
        return budget_save(month_year, rows, cn=cn, commit=commit)

    @staticmethod
    def budget_delete(month_year, cn=None, commit=True):
        return budget_delete(month_year, cn=cn, commit=commit)

    @staticmethod
    def budget_revenue_options(cn=None):
        return budget_revenue_options(cn=cn)


REVENUEBUDGET_API = _RevenueBudgetAPI()
