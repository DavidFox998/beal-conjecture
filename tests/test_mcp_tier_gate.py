"""
MCP /mcp endpoint tier-gate tests — Task #253.

Verifies that tools/call requests to POST /mcp return a human-readable
error message in the MCP tool result body (not a JSON-RPC transport error)
when the caller's API key is missing, invalid, or below the required tier.

MCP tool response format for errors (per MCP spec):
  {
    "jsonrpc": "2.0", "id": ...,
    "result": {
      "content": [{"type": "text", "text": "<message>"}],
      "isError": true,
      ...
    }
  }

This is distinct from a JSON-RPC error ({"error": {...}}) which MCP clients
render as transport failures rather than visible tool output.

Header contract (keep in sync with smithery.yaml configSchema):
  configSchema property │ HTTP header forwarded by Smithery │ FastAPI param
  ─────────────────────┼───────────────────────────────────┼──────────────
  apiKey               │ api-key                           │ api_key
"""

import pytest
from fastapi.testclient import TestClient

import zerobeacon_mf_1000_main as main_mod
from core import keystore

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------

MCP_URL = "/mcp"

# A PRO-tier tool (MF-03 block, tools 101–150).
PRO_TOOL = "mf_03_delivery_proof"

# A FREE-tier tool (MF-01 block, tools 1–50).
FREE_TOOL = "mf_01_beacon"


def _call(client, tool_name: str, headers: dict | None = None) -> dict:
    """POST a tools/call request and return the parsed JSON response."""
    payload = {
        "jsonrpc": "2.0",
        "id": 1,
        "method": "tools/call",
        "params": {"name": tool_name, "arguments": {}},
    }
    return client.post(MCP_URL, json=payload, headers=headers or {}).json()


# ---------------------------------------------------------------------------
# Fixtures
# ---------------------------------------------------------------------------

@pytest.fixture(autouse=True)
def isolated_keystore():
    """Snapshot and restore the in-memory keystore around every test."""
    snapshot = dict(keystore._store)
    yield
    keystore._store.clear()
    keystore._store.update(snapshot)


@pytest.fixture(scope="module")
def client():
    with TestClient(main_mod.app, raise_server_exceptions=True) as tc:
        yield tc


@pytest.fixture()
def pro_key():
    """Issue a live PRO key valid for one test."""
    return keystore.issue_key("pro_10", "mcp-test@example.com")


# ---------------------------------------------------------------------------
# Test 1 — No key → MCP error result (not JSON-RPC error), message visible
# ---------------------------------------------------------------------------

def test_mcp_no_key_returns_tool_result_with_message(client):
    """Missing key must return an MCP tool result (result.isError=true) with a
    human-readable message, NOT a JSON-RPC transport error."""
    body = _call(client, PRO_TOOL)

    # Must be a result, not a JSON-RPC error
    assert "result" in body, (
        f"Expected result key; got: {body}"
    )
    assert "error" not in body or body.get("result") is not None, (
        f"Got a JSON-RPC transport error instead of tool result: {body}"
    )

    result = body["result"]
    assert result.get("isError") is True, (
        f"Expected isError=True in result: {result}"
    )
    assert result.get("ok") is False, (
        f"Expected ok=False in result: {result}"
    )
    assert result.get("error") == "tier_required", (
        f"Expected error='tier_required': {result}"
    )

    # Message must be visible in content[0].text
    content = result.get("content", [])
    assert content, f"Expected non-empty content list: {result}"
    text = content[0].get("text", "")
    assert "zerobeacon.ai" in text, (
        f"Signup URL missing from message text: {text!r}"
    )
    assert "zerobeacon.ai" in result.get("signup", ""), (
        f"Missing signup field: {result}"
    )


# ---------------------------------------------------------------------------
# Test 2 — Invalid/unrecognised key → MCP error result with message
# ---------------------------------------------------------------------------

def test_mcp_invalid_key_returns_tool_result_with_message(client):
    """An unrecognised key must produce the same MCP error result."""
    body = _call(client, PRO_TOOL, headers={"X-API-Key": "zbk_notarealkeyXXXXXXXXXXXXXXXX"})

    result = body.get("result", {})
    assert result.get("isError") is True, (
        f"Expected isError=True for invalid key: {result}"
    )
    assert result.get("error") == "tier_required", (
        f"Expected error='tier_required': {result}"
    )
    content = result.get("content", [])
    text = content[0].get("text", "") if content else ""
    assert "zerobeacon.ai" in text, (
        f"Signup URL missing from message: {text!r}"
    )


# ---------------------------------------------------------------------------
# Test 3 — Smithery api-key header is accepted at /mcp
# ---------------------------------------------------------------------------

def test_mcp_smithery_api_key_header_accepted(client, pro_key):
    """Smithery sends configSchema apiKey as 'api-key' (kebab-case).
    /mcp must accept that header and grant PRO access."""
    body = _call(client, PRO_TOOL, headers={"api-key": pro_key})

    # Should succeed — no isError, result has tool data
    result = body.get("result", {})
    assert result.get("isError") is not True, (
        f"Expected successful tool result with Smithery api-key header; got: {result}"
    )
    assert "error" not in body, (
        f"Got JSON-RPC error with valid Smithery api-key header: {body}"
    )


# ---------------------------------------------------------------------------
# Test 4 — Native X-API-Key header still works at /mcp
# ---------------------------------------------------------------------------

def test_mcp_native_x_api_key_header_accepted(client, pro_key):
    """Direct MCP clients send X-API-Key; /mcp must still accept it."""
    body = _call(client, PRO_TOOL, headers={"X-API-Key": pro_key})

    result = body.get("result", {})
    assert result.get("isError") is not True, (
        f"Expected successful tool result with X-API-Key header; got: {result}"
    )
    assert "error" not in body, (
        f"Got JSON-RPC error with valid X-API-Key header: {body}"
    )


# ---------------------------------------------------------------------------
# Test 5 — FREE tool is open with no key at /mcp
# ---------------------------------------------------------------------------

def test_mcp_free_tool_open_without_key(client):
    """FREE tools must be callable via /mcp without any API key."""
    body = _call(client, FREE_TOOL)

    result = body.get("result", {})
    assert result.get("isError") is not True, (
        f"FREE tool should not require a key at /mcp; got: {result}"
    )
    assert "error" not in body, (
        f"Got JSON-RPC error for FREE tool at /mcp: {body}"
    )


# ---------------------------------------------------------------------------
# Test 6 — Error body includes Stripe and RapidAPI purchase links
# ---------------------------------------------------------------------------

def test_mcp_error_includes_purchase_links(client):
    """The error message must include Stripe and RapidAPI links for conversion."""
    body = _call(client, PRO_TOOL)
    result = body.get("result", {})
    content = result.get("content", [])
    text = content[0].get("text", "") if content else ""

    assert "stripe.com" in text or "buy.stripe.com" in text, (
        f"Stripe link missing from error message: {text!r}"
    )
    assert "rapidapi.com" in text, (
        f"RapidAPI link missing from error message: {text!r}"
    )
