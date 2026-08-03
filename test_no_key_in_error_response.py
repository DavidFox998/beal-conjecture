#!/usr/bin/env python3
"""
Security test: verify that API keys are never reflected in error responses,
server logs, or stdout/stderr across all three tier-gate surfaces.

Coverage:
  1. HTTP middleware (tier_gate) — /api/mf/* REST routes  [4xx response bodies]
  2. FastAPI Depends gate (require_tier) — isolated, no middleware [4xx response bodies]
  3. MCP tier gate — /mcp tools/call  [JSON-RPC error bodies]
  4. /key/check endpoint  [401/404 response bodies]
  5. 5xx exception path — key must not appear in unhandled-error response
  6. stdout/logging capture — print() and logging calls must not emit full keys

Run:
    pytest test_no_key_in_error_response.py -v
"""

import io
import logging
import sys
import pytest
from fastapi import FastAPI, Depends as _Depends
from fastapi.testclient import TestClient

# ── isolate keystore so tests never touch production files ───────────────────
import core.keystore as keystore
from pathlib import Path

keystore.KEY_PATH     = Path("/tmp/test_no_key_in_error_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_no_key_in_error_sessions.json")
keystore._store       = {}
keystore._session_map = {}

from zerobeacon_mf_1000_main import app  # noqa: E402

client = TestClient(app, raise_server_exceptions=True)


# ── helpers ───────────────────────────────────────────────────────────────────

def _issue(tier: str, email: str = "keyleak@example.com") -> str:
    return keystore.issue_key(tier, email)


def _body_contains_key(response_body: str, api_key: str) -> bool:
    """Return True if the full API key string appears anywhere in the response."""
    return api_key in response_body


def _safe_prefix(key: str) -> str:
    """Return a safe key prefix for use in assertion messages (never full key)."""
    return key[:12] + "…"


# ── 1. Middleware / REST surface (/api/mf/*) ─────────────────────────────────

class TestKeyNotLeakedInRestErrorResponses:
    """
    The tier_gate HTTP middleware returns 403 when a key is insufficient.
    The full key value must never appear in the JSON response body.
    """

    def test_unknown_key_on_pro_route_does_not_echo_key(self):
        fake_key = "zbk_deadbeefdeadbeefdeadbeefdeadbeef"
        resp = client.get("/api/mf/03/delivery_proof",
                          headers={"X-API-Key": fake_key})
        assert resp.status_code == 403, (
            f"Expected 403, got {resp.status_code}"
        )
        assert not _body_contains_key(resp.text, fake_key), (
            f"403 body must not contain the submitted key "
            f"(prefix: {_safe_prefix(fake_key)})"
        )

    def test_free_key_on_pro_route_does_not_echo_key(self):
        free_key = _issue("free", "free_rest@example.com")
        resp = client.get("/api/mf/03/delivery_proof",
                          headers={"X-API-Key": free_key})
        assert resp.status_code == 403, f"Expected 403, got {resp.status_code}"
        assert not _body_contains_key(resp.text, free_key), (
            f"403 body must not contain the submitted free-tier key "
            f"(prefix: {_safe_prefix(free_key)})"
        )

    def test_free_key_on_enterprise_route_does_not_echo_key(self):
        free_key = _issue("free", "free_ent@example.com")
        resp = client.get(
            "/api/mf/17/tier5_everyday_lindelof_mu0_delta_23_dot",
            headers={"X-API-Key": free_key},
        )
        assert resp.status_code == 403, f"Expected 403, got {resp.status_code}"
        assert not _body_contains_key(resp.text, free_key), (
            f"403 body must not contain submitted key "
            f"(prefix: {_safe_prefix(free_key)})"
        )

    def test_pro10_key_on_enterprise_route_does_not_echo_key(self):
        pro_key = _issue("pro_10", "pro10_ent@example.com")
        resp = client.get(
            "/api/mf/17/tier5_everyday_lindelof_mu0_delta_23_dot",
            headers={"X-API-Key": pro_key},
        )
        assert resp.status_code == 403, f"Expected 403, got {resp.status_code}"
        assert not _body_contains_key(resp.text, pro_key), (
            f"403 body must not contain submitted key "
            f"(prefix: {_safe_prefix(pro_key)})"
        )

    def test_missing_key_on_pro_route_response_has_no_key_field(self):
        resp = client.get("/api/mf/03/delivery_proof")
        assert resp.status_code == 403, f"Expected 403, got {resp.status_code}"
        assert "zbk_" not in resp.text, (
            "403 body (no key) must not contain any zbk_ token"
        )

    def test_error_response_body_has_no_api_key_field(self):
        fake_key = "zbk_c0ffee00c0ffee00c0ffee00c0ffee00"
        resp = client.get("/api/mf/03/delivery_proof",
                          headers={"X-API-Key": fake_key})
        assert resp.status_code == 403
        body = resp.json()
        assert "api_key"   not in body, f"Field 'api_key' must not appear in 403 body"
        assert "x_api_key" not in body, f"Field 'x_api_key' must not appear in 403 body"
        assert "key"        not in body, f"Field 'key' must not appear in 403 body"


# ── 2. MCP tier gate (/mcp tools/call) ───────────────────────────────────────

class TestKeyNotLeakedInMcpErrorResponses:

    def _call(self, tool: str, api_key: str | None = None):
        headers = {"X-API-Key": api_key} if api_key else {}
        return client.post(
            "/mcp",
            json={
                "jsonrpc": "2.0", "id": 1, "method": "tools/call",
                "params": {
                    "name": tool,
                    "arguments": {"p": 82843, "agent_id": "test",
                                  "payload": "", "amount": 0.0},
                },
            },
            headers=headers,
        )

    def test_unknown_key_on_pro_mcp_tool_does_not_echo_key(self):
        fake_key = "zbk_baadf00dbaadf00dbaadf00dbaadf00d"
        resp = self._call("mf_03_delivery_proof", fake_key)
        assert resp.status_code == 200  # JSON-RPC always 200
        body = resp.json()
        assert "error" in body, "Expected JSON-RPC error"
        assert not _body_contains_key(resp.text, fake_key), (
            f"MCP error body must not contain submitted key "
            f"(prefix: {_safe_prefix(fake_key)})"
        )

    def test_free_key_on_pro_mcp_tool_does_not_echo_key(self):
        free_key = _issue("free", "free_mcp@example.com")
        resp = self._call("mf_03_delivery_proof", free_key)
        assert resp.status_code == 200
        body = resp.json()
        assert "error" in body, "Expected JSON-RPC error"
        assert not _body_contains_key(resp.text, free_key), (
            f"MCP error body must not contain submitted free-tier key "
            f"(prefix: {_safe_prefix(free_key)})"
        )

    def test_no_key_on_pro_mcp_tool_response_has_no_zbk_token(self):
        resp = self._call("mf_03_delivery_proof")
        assert resp.status_code == 200
        assert "zbk_" not in resp.text, (
            "MCP error body (no key) must not contain any zbk_ token"
        )

    def test_mcp_error_detail_has_no_api_key_field(self):
        fake_key = "zbk_1234567890abcdef1234567890abcdef"
        resp = self._call("mf_03_delivery_proof", fake_key)
        assert resp.status_code == 200
        body = resp.json()
        assert "error" in body
        err_data = body["error"].get("data", {})
        assert "api_key"   not in err_data, "'api_key' must not be in error.data"
        assert "x_api_key" not in err_data, "'x_api_key' must not be in error.data"


# ── 3. /key/check surface ────────────────────────────────────────────────────

class TestKeyNotLeakedInKeyCheckErrorResponses:

    def test_unknown_key_404_does_not_echo_key(self):
        fake_key = "zbk_cafecafecafecafecafecafecafecafe"
        resp = client.get("/key/check", headers={"X-API-Key": fake_key})
        assert resp.status_code == 404, f"Expected 404, got {resp.status_code}"
        assert not _body_contains_key(resp.text, fake_key), (
            f"/key/check 404 must not echo back the key "
            f"(prefix: {_safe_prefix(fake_key)})"
        )

    def test_no_key_401_has_no_zbk_token(self):
        resp = client.get("/key/check")
        assert resp.status_code == 401, f"Expected 401, got {resp.status_code}"
        assert "zbk_" not in resp.text, (
            "/key/check 401 must not contain any zbk_ token"
        )


# ── 4. require_tier Depends — isolated, no middleware ─────────────────────────

from core.tier_guard import require_tier as _require_tier

_isolated_app = FastAPI()

@_isolated_app.get(
    "/test-tier-gate",
    dependencies=[_Depends(_require_tier("pro_10"))],
)
def _test_tier_route():
    return {"ok": True}

_isolated_client = TestClient(_isolated_app, raise_server_exceptions=True)


class TestRequireTierDependsNoKeyLeak:
    """
    require_tier() tested on a non-/api/mf/ route so the production middleware
    is absent — exercises the Depends error path independently.
    """

    def test_unknown_key_depends_403_does_not_echo_key(self):
        fake_key = "zbk_facade00facade00facade00facade0"
        resp = _isolated_client.get(
            "/test-tier-gate", headers={"X-API-Key": fake_key}
        )
        assert resp.status_code == 403, f"require_tier Depends must return 403; got {resp.status_code}"
        assert not _body_contains_key(resp.text, fake_key), (
            f"require_tier Depends 403 must not contain submitted key "
            f"(prefix: {_safe_prefix(fake_key)})"
        )

    def test_free_key_depends_403_does_not_echo_key(self):
        free_key = _issue("free", "depends_free@example.com")
        resp = _isolated_client.get(
            "/test-tier-gate", headers={"X-API-Key": free_key}
        )
        assert resp.status_code == 403, f"require_tier Depends must return 403; got {resp.status_code}"
        assert not _body_contains_key(resp.text, free_key), (
            f"require_tier Depends 403 must not contain submitted free-tier key "
            f"(prefix: {_safe_prefix(free_key)})"
        )

    def test_depends_403_detail_has_no_api_key_field(self):
        fake_key = "zbk_badbadbadbadbadbadbadbadbadbadba"
        resp = _isolated_client.get(
            "/test-tier-gate", headers={"X-API-Key": fake_key}
        )
        assert resp.status_code == 403
        body = resp.json()
        detail = body.get("detail", {})
        if isinstance(detail, dict):
            assert "api_key"   not in detail, "'api_key' must not be in Depends 403 detail"
            assert "x_api_key" not in detail, "'x_api_key' must not be in Depends 403 detail"

    def test_no_key_depends_403_has_no_zbk_token(self):
        resp = _isolated_client.get("/test-tier-gate")
        assert resp.status_code == 403
        assert "zbk_" not in resp.text, "Depends 403 (no key) must not contain any zbk_ token"


# ── 5. 5xx exception path ─────────────────────────────────────────────────────

@_isolated_app.get(
    "/test-crash-after-auth",
    dependencies=[_Depends(_require_tier("pro_10"))],
)
def _test_crash_route():
    raise RuntimeError("intentional crash for test")

# raise_server_exceptions=False so 500 is returned as a response (not re-raised)
_crashing_client = TestClient(_isolated_app, raise_server_exceptions=False)


class TestKeyNotLeakedIn5xxResponse:
    """
    When a tier-gated route raises an unhandled exception, the resulting 500
    must not contain the API key that was submitted in the request.
    """

    def test_500_from_crashing_route_does_not_echo_key(self):
        valid_key = _issue("pro_10", "crash_test@example.com")
        resp = _crashing_client.get(
            "/test-crash-after-auth", headers={"X-API-Key": valid_key}
        )
        assert resp.status_code == 500, f"Expected 500 from crashing route, got {resp.status_code}"
        assert not _body_contains_key(resp.text, valid_key), (
            f"500 response body must not contain the submitted API key "
            f"(prefix: {_safe_prefix(valid_key)})"
        )

    def test_500_response_has_no_api_key_field(self):
        valid_key = _issue("pro_10", "crash_field@example.com")
        resp = _crashing_client.get(
            "/test-crash-after-auth", headers={"X-API-Key": valid_key}
        )
        assert resp.status_code == 500
        try:
            body = resp.json()
        except Exception:
            return  # non-JSON 500 body — no key field possible
        assert "api_key"   not in body, "'api_key' must not be in 500 body"
        assert "x_api_key" not in body, "'x_api_key' must not be in 500 body"

    def test_403_gate_denial_response_does_not_echo_unknown_key(self):
        """Gate rejects unknown key with 403; body must not contain the key."""
        unknown_key = "zbk_deadc0dedeadc0dedeadc0dedeadc0de"
        resp = _crashing_client.get(
            "/test-crash-after-auth", headers={"X-API-Key": unknown_key}
        )
        assert not _body_contains_key(resp.text, unknown_key), (
            f"Response body must not contain submitted key "
            f"(prefix: {_safe_prefix(unknown_key)}, status: {resp.status_code})"
        )


# ── 6. Log-record factory redaction ───────────────────────────────────────────
#
# install_redaction_filter() uses setLogRecordFactory, which runs at record
# creation time — before any logger, handler, or propagation decision fires.
# This covers child loggers with their own handlers and propagate=False loggers,
# neither of which would be reached by a root-logger Filter.
#
# The production app calls install_redaction_filter() at import time
# (in zerobeacon_mf_1000_main.py), so by the time this module is imported
# the factory is already active.

import logging as _logging


def _capture_via_child_logger(logger_name: str, msg: str, *args) -> list[str]:
    """
    Log `msg % args` through a named child logger that has its own handler
    and propagate=False, then return the formatted log lines captured.
    """
    captured: list[str] = []

    class _Capture(_logging.Handler):
        def emit(self, record: _logging.LogRecord) -> None:
            captured.append(record.getMessage())

    logger = _logging.getLogger(logger_name)
    logger.setLevel(_logging.DEBUG)
    logger.propagate = False      # does NOT propagate to root — Filter on root would miss this
    h = _Capture()
    logger.addHandler(h)
    try:
        logger.info(msg, *args)
    finally:
        logger.removeHandler(h)
        logger.propagate = True

    return captured


class TestLogRecordFactoryRedaction:
    """
    Verify that install_redaction_filter() (setLogRecordFactory) redacts
    zbk_... tokens globally — including from child loggers that have their
    own handlers and do NOT propagate to the root logger.
    """

    def test_factory_redacts_key_in_format_string_arg(self):
        """
        A zbk_ key passed as a %s argument to a named child logger must be
        scrubbed even when the logger has its own handler and propagate=False.
        """
        canary = "zbk_aabbccddeeff00112233445566778899"
        lines = _capture_via_child_logger(
            "test.child.factory",
            "key issued: %s for user@example.com",
            canary,
        )
        assert lines, "Expected at least one log line"
        assert canary not in lines[0], (
            "Full API key must not appear in child-logger output after factory redaction"
        )
        assert "zbk_aabbccdd" in lines[0], (
            "Key prefix (first 12 chars) must still appear in log output"
        )
        assert "[REDACTED]" in lines[0], (
            "Redaction marker must appear in log output"
        )

    def test_factory_redacts_key_embedded_in_message_string(self):
        """An f-string log message with an embedded zbk_ key must be redacted."""
        canary = "zbk_99887766554433221100ffeeddccbbaa"
        lines = _capture_via_child_logger(
            "test.child.fstring",
            f"request headers contained X-API-Key: {canary}",
        )
        assert lines
        assert canary not in lines[0], (
            "Full key must be redacted from f-string log message"
        )

    def test_factory_preserves_integer_format_arg(self):
        """
        A %d integer argument must not be coerced to string by the factory.
        The formatted message must contain the integer value correctly.
        """
        lines = _capture_via_child_logger(
            "test.child.int",
            "loaded %d keys from keystore",
            42,
        )
        assert lines
        assert "42" in lines[0], (
            "Integer argument must be preserved through factory redaction; "
            f"got: {lines[0]!r}"
        )

    def test_factory_redacts_child_logger_with_own_handler_propagate_false(self):
        """
        This test explicitly verifies the scenario that a root-logger Filter
        cannot cover: a named logger with propagate=False and its own handler.
        The factory is the only mechanism that can redact records in this path.
        """
        canary = "zbk_deadbeefdeadbeefdeadbeefdeadbeef"
        captured: list[str] = []

        class _Capture(_logging.Handler):
            def emit(self, record: _logging.LogRecord) -> None:
                captured.append(record.getMessage())

        isolated_logger = _logging.getLogger("test.isolated.nopropagate")
        isolated_logger.setLevel(_logging.DEBUG)
        isolated_logger.propagate = False
        h = _Capture()
        isolated_logger.addHandler(h)

        try:
            isolated_logger.warning("api_key header value: %s", canary)
        finally:
            isolated_logger.removeHandler(h)
            isolated_logger.propagate = True

        assert captured, "Expected captured log output"
        assert canary not in captured[0], (
            "Factory redaction must cover loggers with propagate=False "
            f"(prefix: {_safe_prefix(canary)})"
        )

    def test_factory_redacts_uvicorn_style_logger(self):
        """
        Simulate a uvicorn-style logger (named 'uvicorn.access') emitting a
        request-trace line that contains an API key header value.
        """
        canary = "zbk_facade00facade00facade00facade00"
        lines = _capture_via_child_logger(
            "uvicorn.access",
            'GET /api/mf/03/tool HTTP/1.1 - X-API-Key: %s',
            canary,
        )
        assert lines
        assert canary not in lines[0], (
            "uvicorn-style access log must not contain full API key"
        )

    def test_keystore_issue_stdout_does_not_contain_full_key(self, capsys):
        """
        keystore.issue_key() prints a truncated key (first 12 chars + ellipsis).
        Verify stdout never contains the full key value.
        """
        new_key = keystore.issue_key("pro_10", "stdout_test@example.com")
        captured = capsys.readouterr()
        assert new_key not in captured.out, (
            "keystore.issue_key() must not print the full API key to stdout; "
            f"only the prefix ({_safe_prefix(new_key)}) is permitted"
        )
        # Confirm the truncated prefix IS present (proves truncation is active)
        assert new_key[:12] in captured.out, (
            "keystore.issue_key() should print the key prefix to stdout for audit trails"
        )

    def test_rest_request_stdout_does_not_contain_submitted_key(self, capsys):
        """
        Making an authenticated REST request must not cause the full API key
        to appear in stdout (via print() in middleware, keystore, or tier guard).
        """
        valid_key = _issue("pro_10", "stdout_req@example.com")
        capsys.readouterr()  # clear any prior output

        client.get("/api/mf/03/delivery_proof", headers={"X-API-Key": valid_key})
        captured = capsys.readouterr()

        assert valid_key not in captured.out, (
            "Full API key must not appear in stdout during a REST request "
            f"(prefix: {_safe_prefix(valid_key)})"
        )
        assert valid_key not in captured.err, (
            "Full API key must not appear in stderr during a REST request "
            f"(prefix: {_safe_prefix(valid_key)})"
        )

    def test_rest_403_stdout_does_not_contain_rejected_key(self, capsys):
        """
        A rejected request (insufficient tier) must not cause the submitted
        key to appear in stdout or stderr.
        """
        free_key = _issue("free", "stdout_403@example.com")
        capsys.readouterr()

        client.get("/api/mf/03/delivery_proof", headers={"X-API-Key": free_key})
        captured = capsys.readouterr()

        assert free_key not in captured.out, (
            "Rejected key must not appear in stdout "
            f"(prefix: {_safe_prefix(free_key)})"
        )
        assert free_key not in captured.err, (
            "Rejected key must not appear in stderr "
            f"(prefix: {_safe_prefix(free_key)})"
        )
