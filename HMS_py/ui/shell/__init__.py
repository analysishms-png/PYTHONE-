"""HMS_py.ui.shell package.

The shell.py module contains the app entry flow (Login -> Company select -> Main window).
This __init__.py makes HMS_py.ui.shell importable both as a module and package.
"""

from HMS_py.ui.shell.shell import run_flow, main

__all__ = ["run_flow", "main"]
