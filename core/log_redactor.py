"""
core/log_redactor.py — API-key redaction for all Python logging output.

Uses setLogRecordFactory to intercept every LogRecord at creation time —
before any logger, handler, or propagation decision runs.  This covers:
  - All named child loggers (uvicorn, stripe, httpx, app-specific)
  - Child loggers with propagate=False and their own handlers
  - Future loggers added after installation
  - Any structured logging sink (Sentry, DataDog, ELK, etc.)

A root-logger Filter is NOT used here because filters attached to a logger
object are not inherited by child loggers — they only apply to records
emitted directly on that logger.  The record factory is global.

Note: print() is not a logging call and is not intercepted.  Every print()
call in this codebase that outputs a key already truncates it to ≤16 chars.

Usage (called once at app startup, before any request is handled):
    from core.log_redactor import install_redaction_filter
    install_redaction_filter()
"""

import logging
import re

# Matches zbk_ keys of realistic length (12–64 hex chars after the prefix)
_KEY_RE = re.compile(r'\bzbk_[0-9a-fA-F]{12,64}\b')
_REDACTED_SUFFIX = "…[REDACTED]"

# Capture the factory that is active at import time so the chain is preserved
# even if other libraries also replace the factory later.
_upstream_factory = logging.getLogRecordFactory()
_installed: bool = False


def _redact_str(text: str) -> str:
    """Replace full zbk_... tokens with a safe 12-char prefix + marker."""
    return _KEY_RE.sub(lambda m: m.group()[:12] + _REDACTED_SUFFIX, text)


def _redacting_record_factory(*args, **kwargs) -> logging.LogRecord:
    """
    Drop-in replacement for the default LogRecord factory.

    Redacts zbk_... tokens from the message template and from any string
    arguments.  Non-string arguments (int, float, etc.) are left untouched
    so format specifiers such as %d and %f continue to work correctly.
    """
    record = _upstream_factory(*args, **kwargs)

    # Always redact the format-string template
    record.msg = _redact_str(str(record.msg))

    # Redact only string args; leave numeric / other types intact
    if record.args:
        if isinstance(record.args, dict):
            record.args = {
                k: (_redact_str(v) if isinstance(v, str) else v)
                for k, v in record.args.items()
            }
        else:
            record.args = tuple(
                _redact_str(a) if isinstance(a, str) else a
                for a in record.args
            )

    return record


def install_redaction_filter() -> None:
    """
    Register _redacting_record_factory as the global LogRecord factory.

    Idempotent — safe to call multiple times; installs at most once.
    """
    global _installed
    if _installed:
        return
    logging.setLogRecordFactory(_redacting_record_factory)
    _installed = True
