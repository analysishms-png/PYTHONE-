"""
Runtime context / state management.

Import convention:
    from HMS_py.core.shared.state import current_context, set_context, reset_context
"""

from __future__ import annotations


class Context:
    """Everything a UI or business module needs to know about the current run."""

    def __init__(
        self,
        user: str = "",
        company: str = "",
        site_code: str = "",
        db_connection=None,
        ini_path: str | None = None,
        session_id: str = "",
    ):
        self.user = user
        self.company = company
        self.site_code = site_code
        self.db_connection = db_connection
        self.ini_path = ini_path
        self.session_id = session_id
        self._start_dt = __import__("datetime").datetime.now()

    @property
    def is_logged_in(self) -> bool:
        return bool(self.user)

    def copy(self) -> "Context":
        import datetime
        new = Context(
            user=self.user,
            company=self.company,
            site_code=self.site_code,
            db_connection=self.db_connection,
            ini_path=self.ini_path,
            session_id=self.session_id,
        )
        new._start_dt = self._start_dt
        return new


import threading

_local = threading.local()


def _get_current() -> Context:
    ctx = getattr(_local, "context", None)
    if ctx is None:
        ctx = Context()
        _local.context = ctx
    return ctx


def set_context(ctx: Context | None) -> None:
    """Install a Context for the current thread (call at login)."""
    if ctx is None:
        _local.context = None
    else:
        _local.context = ctx


def current_context() -> Context:
    """Return the Context for the current thread (never raises)."""
    return _get_current()


def reset_context() -> None:
    """Clear the context (logout / end of session)."""
    _local.context = None
