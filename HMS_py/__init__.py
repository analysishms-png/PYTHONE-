"""
HMS_py - Hotel Management System (Python port of VB6 Analysis HMS).

This package root is a thin compatibility/adapter layer that keeps the
existing ``HMS_py.core.*`` / ``HMS_py.ui.*`` imports working against the
new domain-split layout at the repository root.

Repository layout:
  core/*.py  (legacy flat core modules)        <->  HMS_py.core.<module>
  ui/*.py    (legacy flat UI modules)          <->  HMS_py.ui.<module>

After refactoring (v0.2):
  core/shared/  core/front_office/  ...        <->  HMS_py.core.<domain>.<mod>
  ui/login/     ui/frontOffice/ ...            <->  HMS_py.ui.<feature>.<mod>

The only file we needed to keep at the old top level is this
``__init__.py`` so that ``HMS_py`` imports resolve; all other modules
moved into the domain subpackages below.
"""

from __future__ import annotations

import os
import sys

# Make sure the repository root (with the real core/ and ui/) is importable
# as the HMS_py top-level package. When running ``python -m HMS_py.main``
# from the repo root, sys.path already contains the repo root; this guard is
# defensive for IDE/PyInstaller runs.
_repo_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if _repo_root not in sys.path:
    sys.path.insert(0, _repo_root)

__all__ = ["shared", "core", "ui", "api", "config"]

__version__ = "0.2.0"

__doc__ = """
HMS_py - Hotel Management System (Python port of VB6 Analysis HMS).

Domain split (2026-11-03, refactor v0.2):
  - core/shared/    : environment, DB, error handling, runtime state
  - core/<domain>/  : business logic grouped by capability
  - ui/<feature>/   : PyQt6 leaf widgets + screens
  - env/            : environment-specific config files
"""
