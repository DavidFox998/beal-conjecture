"""
Offline unit tests for core.emailer.validate_resend_key.

The probe uses an SMTP STARTTLS login so that a successful authentication
confirms the Resend key is live without making a real network connection.
"""

import os
import smtplib
from unittest.mock import MagicMock, patch

from core.emailer import (
    _SMTP_HOST,
    _SMTP_PORT,
    _SMTP_USER,
    validate_resend_key,
)


def _fake_smtp() -> MagicMock:
    """Return an SMTP client mock that works as a context manager."""
    client = MagicMock()
    client.__enter__.return_value = client
    client.__exit__.return_value = False
    return client


def test_missing_key_returns_false(monkeypatch):
    monkeypatch.delenv("RESEND_API_KEY", raising=False)

    ok, reason = validate_resend_key()

    assert ok is False
    assert reason == "RESEND_API_KEY is not set"


def test_explicit_empty_string_returns_false():
    ok, reason = validate_resend_key(api_key_env="")

    assert ok is False
    assert reason == "RESEND_API_KEY is not set"


def test_whitespace_only_key_returns_false():
    ok, reason = validate_resend_key(api_key_env="   ")

    assert ok is False
    assert reason == "RESEND_API_KEY is not set"


def test_valid_key_authenticates_over_smtp():
    client = _fake_smtp()

    with patch("core.emailer.smtplib.SMTP", return_value=client) as smtp:
        ok, reason = validate_resend_key(api_key_env="re_valid_key")

    assert ok is True
    assert reason == "ok"
    smtp.assert_called_once_with(_SMTP_HOST, _SMTP_PORT, timeout=10)
    client.starttls.assert_called_once_with()
    client.login.assert_called_once_with(_SMTP_USER, "re_valid_key")


def test_probe_uses_smtp_to_avoid_cloudflare_http_user_agent_blocks():
    """The probe must stay on SMTP, not an HTTP endpoint that can return 403/1010."""
    client = _fake_smtp()

    with patch("core.emailer.smtplib.SMTP", return_value=client) as smtp:
        ok, reason = validate_resend_key(api_key_env="re_valid_key")

    assert (ok, reason) == (True, "ok")
    smtp.assert_called_once_with(_SMTP_HOST, _SMTP_PORT, timeout=10)


def test_authentication_error_returns_false():
    client = _fake_smtp()
    client.login.side_effect = smtplib.SMTPAuthenticationError(535, b"bad credentials")

    with patch("core.emailer.smtplib.SMTP", return_value=client):
        ok, reason = validate_resend_key(api_key_env="re_bad_key")

    assert ok is False
    assert reason == "SMTP authentication failed — invalid or expired key"


def test_connection_error_returns_false():
    error = smtplib.SMTPConnectError(421, "connection refused")

    with patch("core.emailer.smtplib.SMTP", side_effect=error):
        ok, reason = validate_resend_key(api_key_env="re_some_key")

    assert ok is False
    assert "SMTP connection error" in reason


def test_unexpected_error_returns_false():
    with patch("core.emailer.smtplib.SMTP", side_effect=OSError("network down")):
        ok, reason = validate_resend_key(api_key_env="re_some_key")

    assert ok is False
    assert reason == "OSError: network down"


def test_reads_rotated_environment_key_on_next_probe(monkeypatch):
    """A probe after rotation must authenticate with the new env value."""
    login_passwords: list[str] = []

    def make_client(*_args, **_kwargs):
        client = _fake_smtp()
        client.login.side_effect = (
            lambda _username, password: login_passwords.append(password)
        )
        return client

    monkeypatch.setenv("RESEND_API_KEY", "re_old_key")

    with patch("core.emailer.smtplib.SMTP", side_effect=make_client):
        first_ok, first_reason = validate_resend_key()

        monkeypatch.setenv("RESEND_API_KEY", "re_new_key")
        second_ok, second_reason = validate_resend_key()

    assert (first_ok, first_reason) == (True, "ok")
    assert (second_ok, second_reason) == (True, "ok")
    assert login_passwords == ["re_old_key", "re_new_key"]
    assert os.environ["RESEND_API_KEY"] == "re_new_key"
