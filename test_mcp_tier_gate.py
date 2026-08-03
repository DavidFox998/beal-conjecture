#!/usr/bin/env python3
"""
Tests for the /mcp tier gate.

Verifies that:
  1. tools/call on a PRO tool with no key → JSON-RPC error code -32001
  2. tools/call on a PRO tool with a valid pro_10 key → success
  3. tools/call on a FREE tool with no key → success
  4. tools/call on a PRO tool with a free-tier key → JSON-RPC error -32001
  5. tools/call on a PRO tool with a higher-tier (pro_100) key → success
  6. tools/list returns a non-empty list (no auth required)

Run:
    pytest test_mcp_tier_gate.py -v
"""

import pytest
from fastapi.testclient import TestClient

# ── isolate keystore state so tests don't touch production files ──────────────
import core.keystore as keystore

# Point keystore at /tmp for tests so we never read/write real key files
from pathlib import Path
keystore.KEY_PATH     = Path("/tmp/test_api_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_api_sessions.json")
# Clear in-memory state
keystore._store       = {}
keystore._session_map = {}

# Now import the app (keystore is already patched before app init runs)
from zerobeacon_mf_1000_main import app  # noqa: E402

# ── helpers ───────────────────────────────────────────────────────────────────

client = TestClient(app, raise_server_exceptions=True)

FREE_TOOL = "mf_01_beacon"          # block 01 → tier "free"
PRO_TOOL  = "mf_03_delivery_proof"  # block 03 → tier "pro_10"

JSONRPC_CALL = lambda tool, api_key=None: {  # noqa: E731
    "jsonrpc": "2.0",
    "id": 1,
    "method": "tools/call",
    "params": {
        "name": tool,
        "arguments": {"p": 82843, "agent_id": "test", "payload": "", "amount": 0.0},
    },
}


def _headers(api_key: str | None) -> dict:
    if api_key:
        return {"X-API-Key": api_key}
    return {}


def _issue(tier: str, email: str = "test@example.com") -> str:
    """Issue a test key in memory only (no Stripe, no email)."""
    return keystore.issue_key(tier, email)


# ── tests ─────────────────────────────────────────────────────────────────────

class TestMcpTierGate:

    def test_pro_tool_no_key_returns_error_32001(self):
        """A caller with no API key must not reach a PRO tool."""
        resp = client.post("/mcp", json=JSONRPC_CALL(PRO_TOOL))
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" in body, f"Expected error, got: {body}"
        assert body["error"]["code"] == -32001, (
            f"Expected code -32001, got {body['error']['code']}"
        )

    def test_pro_tool_with_valid_pro10_key_returns_success(self):
        """A caller with a valid pro_10 key must succeed on a PRO tool."""
        key = _issue("pro_10")
        resp = client.post("/mcp", json=JSONRPC_CALL(PRO_TOOL), headers=_headers(key))
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" not in body, f"Unexpected error: {body.get('error')}"
        assert "result" in body, f"Expected result, got: {body}"

    def test_free_tool_no_key_returns_success(self):
        """Free-tier tools must be reachable without any API key."""
        resp = client.post("/mcp", json=JSONRPC_CALL(FREE_TOOL))
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" not in body, f"Unexpected error: {body.get('error')}"
        assert "result" in body, f"Expected result, got: {body}"

    def test_pro_tool_with_free_tier_key_returns_error_32001(self):
        """A free-tier key must not unlock PRO tools."""
        key = _issue("free")
        resp = client.post("/mcp", json=JSONRPC_CALL(PRO_TOOL), headers=_headers(key))
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" in body, f"Expected error, got: {body}"
        assert body["error"]["code"] == -32001, (
            f"Expected code -32001, got {body['error']['code']}"
        )

    def test_pro_tool_with_higher_tier_key_returns_success(self):
        """A pro_100 key (rank > pro_10) must also unlock PRO tools."""
        key = _issue("pro_100")
        resp = client.post("/mcp", json=JSONRPC_CALL(PRO_TOOL), headers=_headers(key))
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" not in body, f"Unexpected error: {body.get('error')}"
        assert "result" in body, f"Expected result, got: {body}"

    def test_tools_list_requires_no_auth(self):
        """tools/list must work without any key (it's discovery-only)."""
        resp = client.post("/mcp", json={
            "jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}
        })
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" not in body
        tools = body["result"]["tools"]
        assert len(tools) > 0, "Expected at least one tool in tools/list"

    def test_unknown_key_on_pro_tool_returns_error_32001(self):
        """An API key that doesn't exist in the keystore must be rejected."""
        resp = client.post(
            "/mcp",
            json=JSONRPC_CALL(PRO_TOOL),
            headers=_headers("zbk_notarealkey00000000000000000000"),
        )
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" in body
        assert body["error"]["code"] == -32001

    def test_api_key_in_json_body_is_ignored(self):
        """
        A valid pro_10 key stuffed into params.arguments must be ignored.
        Only the X-API-Key header is authoritative; the body fallback was
        removed to prevent key leakage in logs and transport bypass.
        """
        key = _issue("pro_10")
        # Embed the key inside the tool arguments — no header
        payload = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "tools/call",
            "params": {
                "name": PRO_TOOL,
                "arguments": {
                    "p": 82843,
                    "agent_id": "test",
                    "payload": "",
                    "amount": 0.0,
                    "api_key": key,   # ← body-stuffed key; must NOT unlock the tool
                },
            },
        }
        resp = client.post("/mcp", json=payload)   # no X-API-Key header
        assert resp.status_code == 200, resp.text
        body = resp.json()
        assert "error" in body, (
            "Expected access-denied error when key is in body only, got: "
            + str(body)
        )
        assert body["error"]["code"] == -32001, (
            f"Expected -32001, got {body['error']['code']}"
        )
