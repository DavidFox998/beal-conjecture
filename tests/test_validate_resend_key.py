"""
Unit tests for core.emailer.validate_resend_key.

All tests are fully offline — urllib.request.urlopen is patched so no real
network calls are made.  The tests verify that the POST /emails probe
correctly classifies responses:

  HTTP 200          → (True, "ok")
  HTTP 422          → (True, "ok")   ← key valid, payload rejected (expected)
  HTTP 401          → (False, "invalid or expired key (HTTP 401)")
  HTTP 403          → (False, "invalid or expired key (HTTP 403)")
  Other HTTP error  → (False, "HTTP <N> from Resend validation endpoint")
  Missing key       → (False, "RESEND_API_KEY is not set")
  Network exception → (False, "<ExcType>: <msg>")
"""

import json
import urllib.error
import urllib.request
from io import BytesIO
from unittest.mock import MagicMock, patch

import pytest

# ---------------------------------------------------------------------------
# The module under test.  Import via the package so relative imports inside
# core.emailer resolve correctly.
# ---------------------------------------------------------------------------
from core.emailer import validate_resend_key, _RESEND_VALIDATE_URL


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

class _FakeHTTPResponse:
    """Minimal stand-in for http.client.HTTPResponse inside a `with` block."""

    def __init__(self, status: int, body: bytes = b"{}"):
        self.status = status
        self._body = body

    def read(self) -> bytes:
        return self._body

    def __enter__(self):
        return self

    def __exit__(self, *_):
        pass


def _make_http_error(code: int, msg: str = "error") -> urllib.error.HTTPError:
    return urllib.error.HTTPError(
        url=_RESEND_VALIDATE_URL,
        code=code,
        msg=msg,
        hdrs=None,   # type: ignore[arg-type]
        fp=BytesIO(b"{}"),
    )


# ---------------------------------------------------------------------------
# Tests: key missing / empty
# ---------------------------------------------------------------------------

def test_missing_key_returns_false(monkeypatch):
    monkeypatch.delenv("RESEND_API_KEY", raising=False)
    ok, reason = validate_resend_key()
    assert ok is False
    assert "not set" in reason


def test_explicit_empty_string_returns_false():
    ok, reason = validate_resend_key(api_key_env="")
    assert ok is False
    assert "not set" in reason


def test_whitespace_only_key_returns_false():
    ok, reason = validate_resend_key(api_key_env="   ")
    assert ok is False
    assert "not set" in reason


# ---------------------------------------------------------------------------
# Tests: valid key responses
# ---------------------------------------------------------------------------

def test_http_200_is_valid():
    with patch("urllib.request.urlopen", return_value=_FakeHTTPResponse(200)):
        ok, reason = validate_resend_key(api_key_env="re_valid_key")
    assert ok is True
    assert reason == "ok"


def test_http_422_is_valid():
    """422 = auth passed, payload was rejected (expected for our probe body)."""
    with patch("urllib.request.urlopen", side_effect=_make_http_error(422)):
        ok, reason = validate_resend_key(api_key_env="re_valid_key")
    assert ok is True
    assert reason == "ok"


# ---------------------------------------------------------------------------
# Tests: invalid key responses
# ---------------------------------------------------------------------------

def test_http_401_is_invalid():
    with patch("urllib.request.urlopen", side_effect=_make_http_error(401)):
        ok, reason = validate_resend_key(api_key_env="re_bad_key")
    assert ok is False
    assert "401" in reason


def test_http_403_is_invalid():
    with patch("urllib.request.urlopen", side_effect=_make_http_error(403)):
        ok, reason = validate_resend_key(api_key_env="re_bad_key")
    assert ok is False
    assert "403" in reason


# ---------------------------------------------------------------------------
# Tests: other HTTP errors → not treated as "key valid"
# ---------------------------------------------------------------------------

def test_http_500_is_not_treated_as_valid():
    with patch("urllib.request.urlopen", side_effect=_make_http_error(500)):
        ok, reason = validate_resend_key(api_key_env="re_some_key")
    assert ok is False
    assert "500" in reason


def test_http_429_is_not_treated_as_valid():
    with patch("urllib.request.urlopen", side_effect=_make_http_error(429)):
        ok, reason = validate_resend_key(api_key_env="re_some_key")
    assert ok is False
    assert "429" in reason


# ---------------------------------------------------------------------------
# Tests: network / unexpected exceptions
# ---------------------------------------------------------------------------

def test_network_exception_returns_false():
    with patch("urllib.request.urlopen", side_effect=OSError("connection refused")):
        ok, reason = validate_resend_key(api_key_env="re_some_key")
    assert ok is False
    assert "OSError" in reason or "connection refused" in reason


# ---------------------------------------------------------------------------
# Tests: request shape — POST to /emails with JSON body and auth header
# ---------------------------------------------------------------------------

def test_uses_post_method():
    """validate_resend_key must use POST, not GET."""
    captured: list[urllib.request.Request] = []

    def fake_urlopen(req, timeout=10):
        captured.append(req)
        raise _make_http_error(422)  # valid-key path

    with patch("urllib.request.urlopen", side_effect=fake_urlopen):
        validate_resend_key(api_key_env="re_test")

    assert captured, "urlopen was not called"
    assert captured[0].get_method() == "POST"


def test_posts_to_emails_endpoint():
    """Must target /emails, not /api-keys."""
    captured: list[urllib.request.Request] = []

    def fake_urlopen(req, timeout=10):
        captured.append(req)
        raise _make_http_error(422)

    with patch("urllib.request.urlopen", side_effect=fake_urlopen):
        validate_resend_key(api_key_env="re_test")

    assert captured[0].full_url == "https://api.resend.com/emails"


def test_sends_bearer_auth_header():
    """Authorization header must be present and use Bearer scheme."""
    captured: list[urllib.request.Request] = []

    def fake_urlopen(req, timeout=10):
        captured.append(req)
        raise _make_http_error(422)

    with patch("urllib.request.urlopen", side_effect=fake_urlopen):
        validate_resend_key(api_key_env="re_mytoken")

    auth = captured[0].get_header("Authorization")
    assert auth == "Bearer re_mytoken"


def test_sends_json_content_type():
    """Content-Type must be application/json."""
    captured: list[urllib.request.Request] = []

    def fake_urlopen(req, timeout=10):
        captured.append(req)
        raise _make_http_error(422)

    with patch("urllib.request.urlopen", side_effect=fake_urlopen):
        validate_resend_key(api_key_env="re_test")

    ct = captured[0].get_header("Content-type")
    assert ct == "application/json"


def test_body_is_valid_json():
    """Request body must be parseable JSON (probe payload)."""
    captured: list[urllib.request.Request] = []

    def fake_urlopen(req, timeout=10):
        captured.append(req)
        raise _make_http_error(422)

    with patch("urllib.request.urlopen", side_effect=fake_urlopen):
        validate_resend_key(api_key_env="re_test")

    body = captured[0].data
    assert body is not None
    parsed = json.loads(body)
    assert isinstance(parsed, dict)
