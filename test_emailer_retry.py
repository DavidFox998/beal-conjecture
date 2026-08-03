#!/usr/bin/env python3
"""
Tests for the retry logic in send_api_key_email().

Covers:
  1. Transient 5xx on attempt 1 → retries → succeeds on attempt 2  → True
  2. HTTP 429 on attempt 1 (Retry-After header present) → retries → succeeds → True
  3. Permanent 4xx (401, 403, 400, 422) on attempt 1 → no retry → False
  4. Two consecutive transient failures → exhausts retries → False + CRITICAL log
  5. Network error on attempt 1 → retries → succeeds on attempt 2  → True
  6. CRITICAL log emitted when all attempts are exhausted

Run:
    pytest test_emailer_retry.py -v
"""

import os
import time
import urllib.error
import urllib.request
from http.client import HTTPMessage
from unittest.mock import MagicMock, patch, call

import pytest


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _make_http_error(code: int, retry_after: str | None = None) -> urllib.error.HTTPError:
    """Build a urllib.error.HTTPError for a given HTTP status code."""
    headers = HTTPMessage()
    if retry_after is not None:
        headers["Retry-After"] = retry_after
    return urllib.error.HTTPError(
        url="https://api.resend.com/emails",
        code=code,
        msg=f"HTTP {code}",
        hdrs=headers,
        fp=None,
    )


def _make_ok_response(status: int = 200):
    """Return a mock context-manager response with the given status code."""
    resp = MagicMock()
    resp.status = status
    resp.__enter__ = MagicMock(return_value=resp)
    resp.__exit__ = MagicMock(return_value=False)
    return resp


def _call_send(max_retries: int = 1, retry_delay_seconds: float = 0.0, **kwargs):
    """
    Call send_api_key_email with test defaults; delay is 0 so tests run fast.
    Imports the module fresh each call so environment patches take effect.
    """
    from core.emailer import send_api_key_email

    defaults = dict(email="test@example.com", api_key="zbk_test", tier="pro_10")
    defaults.update(kwargs)
    return send_api_key_email(
        **defaults,
        max_retries=max_retries,
        retry_delay_seconds=retry_delay_seconds,
    )


# ---------------------------------------------------------------------------
# Test: RESEND_API_KEY absent
# ---------------------------------------------------------------------------

class TestResendKeyAbsent:
    def test_returns_false_immediately_when_key_not_set(self):
        env = {k: v for k, v in os.environ.items() if k != "RESEND_API_KEY"}
        with patch.dict(os.environ, env, clear=True):
            result = _call_send()
        assert result is False

    def test_critical_log_when_key_not_set(self, capsys):
        env = {k: v for k, v in os.environ.items() if k != "RESEND_API_KEY"}
        with patch.dict(os.environ, env, clear=True):
            _call_send()
        out = capsys.readouterr().out
        assert "[emailer] CRITICAL:" in out
        assert "RESEND_API_KEY is not set" in out


# ---------------------------------------------------------------------------
# Test: Transient server-side errors (5xx) → retry succeeds
# ---------------------------------------------------------------------------

class TestTransientServerError:
    def test_5xx_on_first_attempt_retries_and_succeeds(self):
        """First attempt raises 503; second attempt succeeds → True."""
        ok_resp = _make_ok_response(200)
        side_effects = [_make_http_error(503), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is True

    def test_urlopen_called_twice_on_transient_failure(self):
        """urlopen must be called exactly twice when first attempt is 5xx."""
        ok_resp = _make_ok_response(200)
        side_effects = [_make_http_error(500), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects) as mock_open:
                _call_send(max_retries=1, retry_delay_seconds=0)

        assert mock_open.call_count == 2


# ---------------------------------------------------------------------------
# Test: HTTP 429 Too Many Requests → retryable
# ---------------------------------------------------------------------------

class TestHttp429Retryable:
    def test_429_retries_and_succeeds(self):
        """429 is transient — function must retry and return True on success."""
        ok_resp = _make_ok_response(200)
        side_effects = [_make_http_error(429), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is True

    def test_429_with_retry_after_header_honours_delay(self, capsys):
        """When Retry-After header is present its value is logged."""
        ok_resp = _make_ok_response(200)
        side_effects = [_make_http_error(429, retry_after="5"), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                with patch("time.sleep"):  # don't actually sleep
                    result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is True
        out = capsys.readouterr().out
        assert "Retry-After=5" in out or "honouring" in out


# ---------------------------------------------------------------------------
# Test: Permanent 4xx errors → no retry
# ---------------------------------------------------------------------------

class TestPermanent4xxNoRetry:
    # All 4xx except 408 and 429 are permanent — no retry
    @pytest.mark.parametrize("code", [400, 401, 403, 404, 405, 410, 413, 415, 422])
    def test_permanent_4xx_does_not_retry(self, code):
        """Permanent 4xx codes must stop immediately without a second attempt."""
        side_effects = [_make_http_error(code)]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects) as mock_open:
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is False
        assert mock_open.call_count == 1, (
            f"Expected urlopen called once for permanent HTTP {code}, "
            f"got {mock_open.call_count}"
        )

    @pytest.mark.parametrize("code", [400, 401, 403, 404, 413, 422])
    def test_permanent_4xx_emits_critical_log(self, code, capsys):
        """Permanent 4xx must emit a CRITICAL log line."""
        side_effects = [_make_http_error(code)]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                _call_send(max_retries=1, retry_delay_seconds=0)

        out = capsys.readouterr().out
        assert "[emailer] CRITICAL:" in out


# ---------------------------------------------------------------------------
# Test: HTTP 408 Request Timeout → retryable (like 429)
# ---------------------------------------------------------------------------

class TestHttp408Retryable:
    def test_408_retries_and_succeeds(self):
        """408 Request Timeout is transient — function must retry and return True."""
        ok_resp = _make_ok_response(200)
        side_effects = [_make_http_error(408), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is True

    def test_408_urlopen_called_twice(self):
        """urlopen must be called exactly twice when first attempt is 408."""
        ok_resp = _make_ok_response(200)
        side_effects = [_make_http_error(408), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects) as mock_open:
                _call_send(max_retries=1, retry_delay_seconds=0)

        assert mock_open.call_count == 2


# ---------------------------------------------------------------------------
# Test: All retries exhausted → False + CRITICAL log
# ---------------------------------------------------------------------------

class TestAllRetriesExhausted:
    def test_two_5xx_exhausts_retries_returns_false(self):
        """Two 5xx responses exhaust the retry budget → False."""
        side_effects = [_make_http_error(503), _make_http_error(503)]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is False

    def test_exhausted_retries_emits_critical_log(self, capsys):
        """After exhausting retries a CRITICAL log line must be emitted."""
        side_effects = [_make_http_error(503), _make_http_error(503)]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                _call_send(max_retries=1, retry_delay_seconds=0)

        out = capsys.readouterr().out
        assert "[emailer] CRITICAL:" in out
        assert "2 attempt" in out


# ---------------------------------------------------------------------------
# Test: Network error (exception) → retry
# ---------------------------------------------------------------------------

class TestNetworkError:
    def test_network_error_on_first_attempt_retries_and_succeeds(self):
        """A plain network exception is transient — retry must succeed."""
        ok_resp = _make_ok_response(200)
        side_effects = [ConnectionResetError("connection reset"), ok_resp]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is True

    def test_network_error_exhausted_returns_false(self):
        """Two network errors exhaust the retry budget → False."""
        side_effects = [
            ConnectionResetError("connection reset"),
            ConnectionResetError("connection reset"),
        ]

        with patch.dict(os.environ, {"RESEND_API_KEY": "re_test"}, clear=False):
            with patch("urllib.request.urlopen", side_effect=side_effects):
                result = _call_send(max_retries=1, retry_delay_seconds=0)

        assert result is False
