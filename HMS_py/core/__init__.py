"""HMS_py core package.

Domain modules live in sub-packages (`front_office`, `billing`, `pos`,
`inventory`, `reporting`, `setup`, `security`, `hr`, `messaging`, `epabx`,
`api`, `shared`) after the domain split. A lot of existing code still imports
them flat, e.g. ``from HMS_py.core import acgroup``.

:pep:`562` module-level ``__getattr__`` resolves such flat names against the
sub-packages on first access and caches the module in ``globals()``.
"""

from __future__ import annotations

import importlib
import importlib.util

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

# Domain packages
from . import front_office  # noqa: F401

__version__ = "0.2.0"

# Resolution order for flat imports. First hit wins, so domain-specific
# packages come before the shared bucket. `front_office` is first because the
# old flat modules that still collide (`state`) were the FO masters.
_SUBPACKAGES = (
    "front_office",
    "billing",
    "pos",
    "inventory",
    "reporting",
    "setup",
    "security",
    "hr",
    "messaging",
    "epabx",
    "api",
    "shared",
)


def _find(name: str) -> str | None:
    """Return the fully-qualified sub-module path for a flat core module name."""
    for pkg in _SUBPACKAGES:
        fq = f"{__name__}.{pkg}.{name}"
        try:
            spec = importlib.util.find_spec(fq)
        except (ImportError, AttributeError, ValueError):
            spec = None
        if spec is not None:
            return fq
    return None


def __getattr__(name: str):
    if name.startswith("__"):
        raise AttributeError(name)
    fq = _find(name)
    if fq is None:
        raise AttributeError(f"module {__name__!r} has no attribute {name!r}")
    mod = importlib.import_module(fq)
    globals()[name] = mod
    return mod


def __dir__():
    return sorted(set(globals()) | set(_SUBPACKAGES))


# Make `import HMS_py.core.<flat>` / `from HMS_py.core.<flat> import X` resolve
# to the domain sub-package module as well.
from HMS_py._flat_alias import install_aliases as _install_aliases

_install_aliases(__name__, _SUBPACKAGES)
