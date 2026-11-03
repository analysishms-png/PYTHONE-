"""HMS_py.core.db — compatibility shim.

The DB layer now lives in HMS_py.core.shared.db (domain-centric refactor).
This module re-exports its public API so existing imports keep working:

    from HMS_py.core import db
    from HMS_py.core.db import load_config, connect, query, execute, ...

Prefer importing from HMS_py.core.shared.db in new code.
"""
from __future__ import annotations

from HMS_py.core.shared.db import (  # noqa: F401
    CONN_STR,
    DEFAULT_CONFIG,
    CONN_STR,
    connect,
    ensure_paths,
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
    execute,
    _validate_identifier,
)
