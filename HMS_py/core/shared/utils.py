
"""
DB operation shortcuts over pyodbc (shared domain helpers).

Import convention:
    from HMS_py.core.shared.utils import first_or_default, query_row, one_row
"""

from typing import Any


def first_or_default(rows: list[Any], default: Any = None) -> Any:
    """Return the first row or a sentinel default (avoids IndexError)."""
    return rows[0] if rows else default


def query_row(sql: str, params: tuple | None = None, cn=None):
    """SELECT -> a single row (or None)."""
    from .config import query
    return first_or_default(query(sql, params, cn))


def one_row(sql: str, params: tuple | None = None, cn=None):
    """Like query_row but raises if zero or more than one row returned."""
    from .config import query
    from .errors import NoRecordError, ValidationError
    rows = query(sql, params, cn)
    if not rows:
        raise NoRecordError("Expected exactly one row; got zero")
    if len(rows) > 1:
        raise ValidationError("Expected exactly one row; got multiple")
    return rows[0]
