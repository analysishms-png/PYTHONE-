"""HMS_py.core - compatibility shim for flat imports.
Re-exports HMS_py.core package contents for `from core import X` compatibility.
"""
from HMS_py.core.shared import db as db  # noqa: F401
from HMS_py.core.shared.db import (  # noqa: F401
    CONN_STR,
    DEFAULT_CONFIG,
    connect,
    ensure_paths,
    execute,
    find_analysis_ini,
    get_comp_code,
    get_context,
    get_site_code,
    get_user,
    get_vprefix,
    load_config,
    next_vno,
    query,
    require_absent,
    save_config,
    transaction,
    _validate_identifier,
)
