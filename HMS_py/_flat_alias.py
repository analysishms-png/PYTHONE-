"""Legacy flat-import compatibility for the split `HMS_py` packages.

The original code base had every module at the top of its package::

    HMS_py/core/fa_voucher.py
    HMS_py/ui/desktop_style.py

The domain split moved them into sub-packages::

    HMS_py/core/billing/fa_voucher.py
    HMS_py/ui/main_window/desktop_style.py

but thousands of lines of existing code still do ``from HMS_py.core import
fa_voucher`` or ``from HMS_py.ui.desktop_style import ...``.

This module installs one :class:`importlib.abc.MetaPathFinder` per package that
transparently maps the old flat name onto the real sub-package module. The
alias and the real module are the *same* module object, so monkeypatching and
isinstance checks keep working.

Usage (once, from the package ``__init__``)::

    from HMS_py._flat_alias import install_aliases
    install_aliases(__name__, __name__ + ".", ("front_office", "billing", ...))
"""

from __future__ import annotations

import importlib
import importlib.abc
import importlib.util
import sys


class _AliasLoader(importlib.abc.Loader):
    """Load an alias name by returning the already-importable real module."""

    def __init__(self, real_name: str) -> None:
        self.real_name = real_name

    def create_module(self, spec):  # noqa: D102 - importlib protocol
        return importlib.import_module(self.real_name)

    def exec_module(self, module):  # noqa: D102 - importlib protocol
        # Module body already executed by import_module().
        return None


class FlatAliasFinder(importlib.abc.MetaPathFinder):
    """Resolve ``<package>.<flat>`` to ``<package>.<subpkg>.<flat>``."""

    def __init__(self, package: str, subpackages: tuple[str, ...]) -> None:
        self.package = package
        self.prefix = package + "."
        self.subpackages = subpackages

    def find_spec(self, fullname, path=None, target=None):  # noqa: D102
        if not fullname.startswith(self.prefix):
            return None
        rest = fullname[len(self.prefix):]
        if not rest or "." in rest:
            # Nested paths are handled by the normal machinery; the alias
            # finder only covers one flat level.
            return None
        for pkg in self.subpackages:
            real = f"{self.prefix}{pkg}.{rest}"
            if real in sys.modules:
                spec = sys.modules[real].__spec__
            else:
                try:
                    spec = importlib.util.find_spec(real)
                except (ImportError, AttributeError, ValueError):
                    spec = None
            if spec is None:
                continue
            return importlib.util.spec_from_loader(
                fullname, _AliasLoader(real))
        return None


def install_aliases(package: str, subpackages: tuple[str, ...]) -> FlatAliasFinder:
    """Install (or refresh) the flat-alias finder for *package*."""
    for finder in sys.meta_path:
        if isinstance(finder, FlatAliasFinder) and finder.package == package:
            finder.subpackages = subpackages
            return finder
    finder = FlatAliasFinder(package, subpackages)
    sys.meta_path.append(finder)
    return finder
