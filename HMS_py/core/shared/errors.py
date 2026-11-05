"""
Error taxonomy + logging + retry decorators for HMS_py.

Import convention:
    from HMS_py.core.shared.errors import HMSError, log_error, retry_on
"""

from __future__ import annotations

import logging
import time
from functools import wraps

_LOGGER = logging.getLogger("hms.core.shared.errors")


class HMSError(Exception):
    """Base class for all domain exceptions in this package."""

    def __init__(self, message: str, *, code: str = "HMS-0000", details: dict | None = None):
        super().__init__(message)
        self.message = message
        self.code = code
        self.details = details or {}

    def __str__(self) -> str:
        base = f"{self.code}: {self.message}"
        if self.details:
            base += f" ({self.details})"
        return base


class ConfigError(HMSError):
    """Configuration (Analysis.ini / env) is wrong or missing."""


class DBError(HMSError):
    """SQL Server / ODBC / schema problem."""


class DuplicateRecordError(HMSError):
    """Unique-key / duplicate-code violation (code already exists)."""


class ValidationError(HMSError):
    """User-entered data failed validation rules."""


class AuthorizationError(HMSError):
    """User not authenticated / lacks permission."""


class NoRecordError(HMSError):
    """A lookup returned no row."""


class RaceConditionError(HMSError):
    """A write lost a race to another session."""


def log_error(exc: Exception, *, extra: dict | None = None) -> None:
    """Log an exception with its typed code at ERROR level."""
    if isinstance(exc, HMSError):
        _LOGGER.error(f"{exc.code} {exc.message}", extra=extra or {}, exc_info=True)
    else:
        _LOGGER.error(f"Untyped error: {exc!r}", extra=extra or {}, exc_info=True)


def retry_on(
    *,
    exc_types: tuple[type[Exception], ...] = (HMSError,),
    max_attempts: int = 3,
    delay: float = 0.3,
    backoff: float = 2.0,
    logger: logging.Logger | None = None,
):
    """Retry a call that may transiently fail."""
    if exc_types is None:
        exc_types = (HMSError,)
    def decorator(func):
        @wraps(func)
        def wrapper(*args, **kwargs):
            attempt = 0
            current_delay = delay
            while True:
                try:
                    return func(*args, **kwargs)
                except exc_types as exc:
                    attempt += 1
                    if attempt >= max_attempts:
                        if logger is None:
                            logger = _LOGGER
                        logger.error(f"Giving up after {attempt} attempts "
                                     f"on {func.__name__}: {exc}", exc_info=True)
                        raise
                    sleep = current_delay * (backoff ** (attempt - 1))
                    if logger is None:
                        logger = _LOGGER
                    logger.warning(f"Attempt {attempt}/{max_attempts} on {func.__name__} "
                                   f"failed ({exc}); retrying in {sleep:.2f}s")
                    time.sleep(sleep)
        return wrapper
    return decorator
