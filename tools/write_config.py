"""Write the correct config.py content to HMS_py/core/shared/config.py."""
import base64
import os

# The docstring content (what we want at the top of the file)
HEADER = '''"""
Configuration + DB connection layer (VB6 Analysis.ini-compatible).

This is the single source of truth for:
  - where the Analysis.ini lives and how to read it
  - how to open a SQL Server connection (ODBC/pyodbc)
  - central site / company / year context helpers
  - how to safely create reports/temp/backup folders

Config mapping (from Analysis.ini [HMS] section, VB6 numbered keys):
    1 = server
    2 = reports path
    3 = temp path
    4 = printer flag
    5 = backup path
    6 = database
    7 = company code (e.g. KK)
    8 = site (e.g. Kanpur)
    9 = sidebar module list
    10 = image path

Import convention:
    from HMS_py.core.shared.config import load_config, connect
"""

'''

# The rest of the file content (functions and classes)
BODY = '''
from __future__ import annotations

import configparser
import os
from contextlib import contextmanager

import pyodbc

# Default values used only when Analysis.ini is missing in a clean install.
DEFAULT_CONFIG: dict[str, str] = {
    "server": "Localhost",
    "database": "Moondata2627",
    "reports": r"C:\\Drive\\HMS2526\\Reports",
    "temp": r"C:\\Drive\\HMS2526\\Temp",
    "backup": r"C:\\Backup",
    "image": r"C:\\Drive\\HMS2526\\Image",
    "company": "KK",
    "site": "Kanpur",
    "printer": "Prn",
    "modules": None,
}


def _candidate_ini_paths() -> list[str]:
    """Search order for Analysis.ini (project-local first, then live)."""
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
    candidates: list[str] = []
    env_path = os.environ.get("HMS_ANALYSIS_INI")
    if env_path:
        candidates.append(env_path)
    candidates.extend([
        os.path.join(project_root, "Analysis.ini"),
        os.path.join(os.getcwd(), "Analysis.ini"),
        r"C:\\Drive\\HMS2526\\Analysis.ini",
        os.path.join(project_root, "HMS_py", "Analysis.ini"),
    ])
    seen: set[str] = set()
    ordered: list[str] = []
    for p in candidates:
        norm = os.path.normpath(p)
        if norm and norm not in seen:
            ordered.append(norm)
            seen.add(norm)
    return ordered


def find_analysis_ini() -> str | None:
    """Return the path of the Analysis.ini we will actually use, or None."""
    for path in _candidate_ini_paths():
        if os.path.isfile(path):
            return path
    return None


def load_config(ini_path: str | None = None) -> dict[str, str]:
    """Read Analysis.ini [HMS] and return a flat dict.

    If the file or section is missing, returns DEFAULT_CONFIG verbatim.
    """
    ini_path = ini_path or find_analysis_ini() or os.environ.get("HMS_ANALYSIS_INI") or r"C:\\Drive\\HMS2526\\Analysis.ini"
    cp = configparser.ConfigParser()
    try:
        read = cp.read(ini_path, encoding="latin-1")
    except configparser.Error:
        return dict(DEFAULT_CONFIG)
    if not read or not cp.has_section("HMS"):
        return dict(DEFAULT_CONFIG)

    section = cp["HMS"]

    def _g(i: int) -> str:
        return section.get(str(i), "").strip()

    modules = [_m.strip() for _m in _g(9).split("#") if _m.strip()] or None
    return {
        "server": _g(1) or DEFAULT_CONFIG["server"],
        "database": _g(6) or DEFAULT_CONFIG["database"],
        "reports": _g(2) or DEFAULT_CONFIG["reports"],
        "temp": _g(3) or DEFAULT_CONFIG["temp"],
        "printer": _g(4) or DEFAULT_CONFIG["printer"],
        "backup": _g(5) or DEFAULT_CONFIG["backup"],
        "company": _g(7) or DEFAULT_CONFIG["company"],
        "site": _g(8) or DEFAULT_CONFIG["site"],
        "image": _g(10) or DEFAULT_CONFIG["image"],
        "modules": modules,
    }


def save_config(
    server: str | None = None,
    database: str | None = None,
    ini_path: str | None = None,
) -> str:
    """Update and persist [HMS] keys 1 (server) and 6 (database).

    Returns the path the config was written to.
    """
    ini_path = ini_path or find_analysis_ini() or os.path.join(
        os.path.dirname(os.path.abspath(__file__)), "..", "..", "Analysis.ini"
    )
    cp = configparser.ConfigParser()
    try:
        cp.read(ini_path, encoding="latin-1")
    except configparser.Error:
        cp = configparser.ConfigParser()
    if not cp.has_section("HMS"):
        cp.add_section("HMS")
    if server is not None:
        cp.set("HMS", "1", str(server).strip())
    if database is not None:
        cp.set("HMS", "6", str(database).strip())
    os.makedirs(os.path.dirname(os.path.abspath(ini_path)), exist_ok=True)
    with open(ini_path, "w", encoding="latin-1") as fh:
        cp.write(fh)
    return ini_path


def _driver_candidates() -> list[tuple[str, str]]:
    """ODBC driver + extra connection-string flags."""
    return [
        ("SQL Server Native Client 10.0", ""),
        ("ODBC Driver 17 for SQL Server", ""),
        ("ODBC Driver 18 for SQL Server", ";TrustServerCertificate=yes"),
        ("SQL Server", ""),
    ]


def connect(cfg: dict[str, str] | None = None) -> pyodbc.Connection:
    """Open a SQL Server ODBC connection, retrying across drivers.

    Raises RuntimeError if no ODBC driver can reach the server.
    """
    cfg = cfg or load_config()
    for drv_name, extra in _driver_candidates():
        conn_str = (
            f"DRIVER={{{drv_name}}};SERVER={cfg['server']};"
            f"DATABASE={cfg['database']};"
            f"Trusted_Connection=yes{extra};"
        )
        try:
            cn = pyodbc.connect(conn_str, timeout=5)
        except pyodbc.Error:
            continue
        cn.timeout = 30
        try:
            cur = cn.cursor()
            cur.execute("SET LOCK_TIMEOUT 5000")
            cur.close()
        except pyodbc.Error:
            pass
        return cn
    raise RuntimeError("No SQL Server ODBC driver could connect")


def ensure_paths(cfg: dict[str, str] | None = None) -> dict[str, bool]:
    """Create reports/temp folders if missing (best-effort, non-fatal)."""
    cfg = cfg or load_config()
    made = {"reports": False, "temp": False}
    for key in ("reports", "temp"):
        path = cfg.get(key)
        if path and not os.path.isdir(path):
            try:
                os.makedirs(path, exist_ok=True)
                made[key] = True
            except OSError:
                pass
    return made


def get_site_code(cfg: dict[str, str] | None = None, fallback: str = "KK") -> str:
    """Return the 2-char site code.

    Resolution order: HMS_SITE_CODE env var -> Analysis.ini key 7 -> fallback.
    Replaces the legacy hardcoded SITE_CODE = "KK" (BUG-014 fix).
    """
    env = os.environ.get("HMS_SITE_CODE", "").strip()
    if env:
        return env[:2].upper()
    cfg = cfg or load_config()
    return (cfg.get("company") or fallback)[:2].upper()


def _validate_identifier(name: str, kind: str = "identifier") -> str:
    """Reject SQL injection vectors in table/column names.

    Only ``[A-Za-z_][A-Za-z0-9_]*`` is allowed.
    """
    import re
    if not re.match(r"^[A-Za-z_][A-Za-z0-9_]*$", name):
        raise ValueError(f"Invalid {kind}: {name!r} -- only alphanumeric/underscore allowed")
    return name


def require_absent(
    table: str,
    pk_col: str,
    pk_val,
    label: str = "Code",
    cn: pyodbc.Connection | None = None,
) -> None:
    """Duplicate-code guard (VB6 CompMast.frm duplicate-check).

    Raises ValueError before INSERT when the primary key already exists.
    """
    _validate_identifier(table, "table")
    _validate_identifier(pk_col, "column")
    rows = query(
        f"SELECT 1 FROM [{table}] WHERE RTRIM([{pk_col}]) = ?",
        (str(pk_val).strip(),), cn=cn)
    if rows:
        raise ValueError(f"{label} {pk_val!r} Already Exists")


def query(
    sql: str,
    params: tuple | list | None = None,
    cn: pyodbc.Connection | None = None,
):
    """SELECT -> list[pyodbc.Row] (own connection is closed on exit)."""
    own = cn is None
    cn = cn or connect()
    try:
        cur = cn.cursor()
        cur.execute(sql, params or ())
        return cur.fetchall()
    finally:
        if own:
            cn.close()


def execute(
    sql: str,
    params: tuple | list | None = None,
    cn: pyodbc.Connection | None = None,
    commit: bool = True,
) -> int:
    """INSERT/UPDATE/DELETE -> rows affected.

    ``commit=False`` keeps the transaction open.
    """
    own = cn is None
    cn = cn or connect()
    try:
        cur = cn.cursor()
        cur.execute(sql, params or ())
        n = cur.rowcount
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            try:
                cn.rollback()
            except pyodbc.Error:
                pass
            cn.close()


@contextmanager
def transaction(cn: pyodbc.Connection | None = None):
    """VB6 BeginTrans/CommitTrans/RollbackTrans atomic-write block."""
    own = cn is None
    cn = cn or connect()
    cn.autocommit = False
    try:
        yield cn
        cn.commit()
    except Exception:
        try:
            cn.rollback()
        except pyodbc.Error:
            pass
        raise
    finally:
        if own:
            try:
                cn.close()
            except pyodbc.Error:
                pass
'''

full_content = HEADER + BODY

# Write the file directly (no base64 needed since the file content is clean)
output_path = os.path.join(
    os.path.dirname(os.path.abspath(__file__)),
    "..", "..", "HMS_py", "core", "shared", "config.py"
)
# Actually, the tools/ dir is at repo root. Write relative to repo root.
repo_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
output_path = os.path.join(repo_root, "HMS_py", "core", "shared", "config.py")

os.makedirs(os.path.dirname(output_path), exist_ok=True)
with open(output_path, "w", encoding="utf-8") as f:
    f.write(full_content)

print(f"Wrote: {output_path}")
print(f"Bytes: {len(full_content.encode('utf-8'))}")
