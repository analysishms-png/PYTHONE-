"""HMS_py ui package.

The UI modules were split into domain sub-packages (`front_office`, `billing`,
`pos`, `misc`, `reporting`, `housekeeping`, `inventory`, `hr`, `sms`, `epabx`,
`login`, `main_window`, `shell`) but a lot of existing code still imports them
flat, e.g. ``from HMS_py.ui import p2_masters``.

To keep those imports working without duplicating every module at package
level, this module implements :pep:`562` module-level ``__getattr__``: a flat
name is looked up in each sub-package on first access and cached in
``globals()``.
"""

from __future__ import annotations

import importlib
import importlib.util

# Order matters only for ambiguous names; each module name is unique today.
_SUBPACKAGES = (
    "front_office",
    "billing",
    "pos",
    "misc",
    "reporting",
    "housekeeping",
    "inventory",
    "hr",
    "sms",
    "epabx",
    "login",
    "main_window",
    "shell",
)


def _find(name: str) -> str | None:  # noqa: D103 - see module docstring
    """Return the fully-qualified sub-module path for a flat UI module name."""
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


# Make `import HMS_py.ui.<flat>` / `from HMS_py.ui.<flat> import X` resolve to
# the domain sub-package module as well (module __getattr__ only covers
# `from HMS_py.ui import <flat>`).
from HMS_py._flat_alias import install_aliases as _install_aliases

_install_aliases(__name__, _SUBPACKAGES)
