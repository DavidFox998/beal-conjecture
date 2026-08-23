"""Smoke tests — MCP tools/list must return exactly 1052 entries.

These tests guard the marketplace badge: smithery.yaml advertises
tools.count: 1052, so the live /mcp response must match.

In-process tests (always run):
  - POST /mcp  {"method": "tools/list"} → result.tools length == 1052
  - GET  /mcp                           → result.tools length == 1052

Live-endpoint tests (run when ZEROBEACON_URL is set):
  - Hits the deployed server and asserts 1052 tools.
  - On mismatch, fires the ALERT_WEBHOOK_URL so the operator is notified
    without tailing Fly.io logs.
"""
import json
import os
import json
import re
import urllib.request
import urllib.error

import pytest
from fastapi.testclient import TestClient

from core.catalog import CATALOG_VERSION, ENTERPRISE_TOOL_COUNT, SERVER_NAME
from zerobeacon_mf_1000_main import app

EXPECTED_COUNT = ENTERPRISE_TOOL_COUNT

client = TestClient(app, raise_server_exceptions=True)

# ── helpers ───────────────────────────────────────────────────────────────────

def _fire_alert(title: str, message: str, remediation: str) -> None:
    """POST a structured alert to ALERT_WEBHOOK_URL (Slack-compatible).

    No-ops silently when the env var is absent or the delivery fails,
    so the test assertion is always the canonical signal.
    """
    url = os.environ.get("ALERT_WEBHOOK_URL", "")
    if not url:
        return
    payload = {
        "text": f":rotating_light: *{title}*",
        "blocks": [
            {
                "type": "section",
                "text": {
                    "type": "mrkdwn",
                    "text": (
                        f":rotating_light: *{title}*\n"
                        f"*Detail:* {message}\n"
                        f"*Fix:* `{remediation}`"
                    ),
                },
            }
        ],
    }
    body = json.dumps(payload).encode()
    req = urllib.request.Request(
        url,
        data=body,
        headers={"Content-Type": "application/json"},
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=10):
            pass
    except Exception:
        pass  # alert delivery failure must never mask the test assertion


# ── In-process tests ──────────────────────────────────────────────────────────

def test_mcp_post_tools_list_count():
    """POST /mcp tools/list must return exactly 1052 tool entries (in-process)."""
    resp = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}},
    )
    assert resp.status_code == 200, f"POST /mcp returned {resp.status_code}: {resp.text}"
    body = resp.json()
    tools = body.get("result", {}).get("tools", [])
    assert len(tools) == EXPECTED_COUNT, (
        f"MCP tools/list returned {len(tools)} tools — expected {EXPECTED_COUNT}. "
        "Check that all 21 router modules are mounted in ROUTERS and that "
        "_build_tool_list() deduplication isn't discarding entries."
    )


def test_mcp_get_tools_list_count():
    """GET /mcp must return exactly 1052 tool entries (in-process)."""
    resp = client.get("/mcp")
    assert resp.status_code == 200, f"GET /mcp returned {resp.status_code}: {resp.text}"
    body = resp.json()
    tools = body.get("result", {}).get("tools", [])
    assert len(tools) == EXPECTED_COUNT, (
        f"GET /mcp returned {len(tools)} tools — expected {EXPECTED_COUNT}. "
        "Check that all 21 router modules are mounted in ROUTERS and that "
        "_build_tool_list() deduplication isn't discarding entries."
    )


def test_mcp_tool_names_unique():
    """All tool names in the tools/list response must be unique (no silent duplicates)."""
    resp = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}},
    )
    assert resp.status_code == 200
    tools = resp.json().get("result", {}).get("tools", [])
    names = [t["name"] for t in tools]
    unique_names = set(names)
    assert len(names) == len(unique_names), (
        f"tools/list contains {len(names) - len(unique_names)} duplicate tool names. "
        f"Duplicates: {[n for n in names if names.count(n) > 1][:10]}"
    )


def test_mcp_tools_list_includes_all_brain_router_tools():
    """Tools 1001–1050 must contain all 50 Brain Router entries."""
    resp = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}},
    )
    assert resp.status_code == 200
    names = {
        tool["name"]
        for tool in resp.json().get("result", {}).get("tools", [])
    }
    brain_tools = {name for name in names if name.startswith("mf_21_brain_")}
    assert len(brain_tools) == 50, (
        f"tools/list contains {len(brain_tools)} Brain Router tools — expected 50."
    )
    assert {
        "mf_21_brain_route",
        "mf_21_brain_think",
        "mf_21_brain_chain",
        "mf_21_brain_synaptic_fire",
        "mf_21_brain_heartbeat",
    } <= brain_tools


def test_mcp_tools_have_required_fields():
    """Every tool entry must carry name, description, and inputSchema."""
    resp = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}},
    )
    assert resp.status_code == 200
    tools = resp.json().get("result", {}).get("tools", [])
    missing = [
        t.get("name", "<unnamed>")
        for t in tools
        if not t.get("name") or not t.get("description") or not t.get("inputSchema")
    ]
    assert not missing, (
        f"{len(missing)} tool(s) are missing name/description/inputSchema: "
        f"{missing[:10]}"
    )


def test_smithery_server_card_reports_live_tool_total():
    """The local discovery card and MCP registry must agree before release."""
    response = client.get("/.well-known/mcp/server-card.json")
    assert response.status_code == 200
    card = response.json()
    assert card["name"] == SERVER_NAME
    assert card["version"] == CATALOG_VERSION
    assert card["tools"]["count"] == EXPECTED_COUNT


def test_mcp_listing_metadata_is_concise_and_schema_driven():
    """Marketplace tool cards must be useful without formula or sales boilerplate."""
    response = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}},
    )
    tools = response.json()["result"]["tools"]
    assert len(tools) == EXPECTED_COUNT

    for tool in tools:
        description = tool["description"]
        schema = tool["inputSchema"]
        assert "operation." in description
        assert "equation:" not in description
        assert "Stripe" not in description
        assert schema["type"] == "object"
        assert schema["additionalProperties"] is False
        for property_schema in schema["properties"].values():
            assert property_schema.get("description")

    brain_route = next(tool for tool in tools if tool["name"] == "mf_21_brain_route")
    assert "intent" in brain_route["inputSchema"]["properties"]


def test_mcp_setup_resources_and_prompt_are_available():
    """Clients can retrieve genuine onboarding material from the MCP endpoint."""
    initialize = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "initialize", "params": {}},
    ).json()
    capabilities = initialize["result"]["capabilities"]
    assert {"tools", "resources", "prompts"} <= capabilities.keys()
    assert initialize["result"]["serverInfo"]["version"] == CATALOG_VERSION

    resources = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": 2, "method": "resources/list", "params": {}},
    ).json()["result"]["resources"]
    assert len(resources) == 2

    guide = client.post(
        "/mcp",
        json={
            "jsonrpc": "2.0",
            "id": 3,
            "method": "resources/read",
            "params": {"uri": "zerobeacon://guides/getting-started"},
        },
    ).json()
    assert "mf_01_beacon" in guide["result"]["contents"][0]["text"]

    prompt = client.post(
        "/mcp",
        json={
            "jsonrpc": "2.0",
            "id": 4,
            "method": "prompts/get",
            "params": {
                "name": "choose-operation",
                "arguments": {"goal": "verify a delivery"},
            },
        },
    ).json()
    assert "verify a delivery" in prompt["result"]["messages"][0]["content"]["text"]


def test_mcp_tool_calls_match_the_advertised_schema_and_result_shape():
    """A client must receive a standard CallToolResult and strict argument checks."""
    success = client.post(
        "/mcp",
        json={
            "jsonrpc": "2.0",
            "id": 5,
            "method": "tools/call",
            "params": {"name": "mf_01_beacon", "arguments": {}},
        },
    ).json()["result"]
    assert success["isError"] is False
    assert success["ok"] is True
    assert success["content"][0]["type"] == "text"
    assert json.loads(success["content"][0]["text"]) == success["structuredContent"]
    assert success["structuredContent"]["ok"] is True

    invalid = client.post(
        "/mcp",
        json={
            "jsonrpc": "2.0",
            "id": 6,
            "method": "tools/call",
            "params": {
                "name": "mf_01_beacon",
                "arguments": {"not_in_schema": "reject me"},
            },
        },
    ).json()["result"]
    assert invalid["isError"] is True
    assert invalid["structuredContent"]["error"] == "invalid_arguments"
    assert "not_in_schema" in invalid["structuredContent"]["message"]


def test_rapidapi_exports_only_catalog_paths_with_clean_operation_copy():
    """Marketplace imports must not advertise MCP, admin, webhook, or debug paths."""
    for spec_path in (
        "/openapi-rapidapi.json",
        "/openapi-rapidapi-pro-plus.json",
        "/openapi-rapidapi-enterprise.json",
        "/openapi-rapidapi-all.json",
    ):
        response = client.get(spec_path)
        assert response.status_code == 200
        spec = response.json()
        assert spec["paths"]
        assert all(path.startswith("/api/mf/") for path in spec["paths"])
        for path_item in spec["paths"].values():
            for operation in path_item.values():
                if not isinstance(operation, dict):
                    continue
                description = operation.get("description", "")
                assert "operation." in description
                assert "equation:" not in description
                assert "Stripe" not in description


def test_mcp_jsonrpc_envelope():
    """POST /mcp tools/list response must include jsonrpc='2.0' and id echo."""
    req_id = 42
    resp = client.post(
        "/mcp",
        json={"jsonrpc": "2.0", "id": req_id, "method": "tools/list", "params": {}},
    )
    assert resp.status_code == 200
    body = resp.json()
    assert body.get("jsonrpc") == "2.0", f"jsonrpc field wrong: {body.get('jsonrpc')}"
    assert body.get("id") == req_id, f"id not echoed: got {body.get('id')}, want {req_id}"
    assert "result" in body, "response missing 'result' key"
    assert "tools" in body["result"], "result missing 'tools' key"


# ── Live-endpoint smoke tests (skipped when ZEROBEACON_URL not set) ────────────

_live_url = os.getenv("ZEROBEACON_URL", "").rstrip("/")
_skip_live = pytest.mark.skipif(
    not _live_url,
    reason="ZEROBEACON_URL not set — skipping live-endpoint smoke tests",
)


@_skip_live
def test_live_mcp_post_tools_list_count():
    """Live POST /mcp tools/list must return exactly 1052 entries.

    Fires ALERT_WEBHOOK_URL on mismatch so the operator is notified
    without tailing Fly.io logs.
    """
    import requests  # noqa: PLC0415

    resp = requests.post(
        f"{_live_url}/mcp",
        json={"jsonrpc": "2.0", "id": 1, "method": "tools/list", "params": {}},
        timeout=30,
    )
    assert resp.status_code == 200, (
        f"Live POST /mcp returned {resp.status_code}. URL: {_live_url}/mcp"
    )
    body = resp.json()
    tools = body.get("result", {}).get("tools", [])
    count = len(tools)
    if count != EXPECTED_COUNT:
        _fire_alert(
            title=f"MCP tools/list count mismatch — got {count}, expected {EXPECTED_COUNT}",
            message=(
                f"The live /mcp endpoint at {_live_url} returned {count} tools. "
                f"The smithery.yaml badge advertises {EXPECTED_COUNT}. "
                "A router may have failed to mount or _build_tool_list() "
                "is dropping entries via deduplication."
            ),
            remediation=(
                f"1. Check Fly.io logs: fly logs --app zerobeacon-mf-1000\n"
                f"2. Confirm all 21 routers mounted at startup.\n"
                f"3. Redeploy: fly deploy --app zerobeacon-mf-1000"
            ),
        )
    assert count == EXPECTED_COUNT, (
        f"Live MCP tools/list returned {count} tools — expected {EXPECTED_COUNT}. "
        f"URL: {_live_url}/mcp"
    )


@_skip_live
def test_live_mcp_get_tools_list_count():
    """Live GET /mcp must return exactly 1052 entries.

    Fires ALERT_WEBHOOK_URL on mismatch so the operator is notified
    without tailing Fly.io logs.
    """
    import requests  # noqa: PLC0415

    resp = requests.get(f"{_live_url}/mcp", timeout=30)
    assert resp.status_code == 200, (
        f"Live GET /mcp returned {resp.status_code}. URL: {_live_url}/mcp"
    )
    body = resp.json()
    tools = body.get("result", {}).get("tools", [])
    count = len(tools)
    if count != EXPECTED_COUNT:
        _fire_alert(
            title=f"MCP tools/list count mismatch — got {count}, expected {EXPECTED_COUNT}",
            message=(
                f"The live GET /mcp endpoint at {_live_url} returned {count} tools. "
                f"The smithery.yaml badge advertises {EXPECTED_COUNT}. "
                "A router may have failed to mount."
            ),
            remediation=(
                "fly logs --app zerobeacon-mf-1000 to check startup errors, "
                "then fly deploy --app zerobeacon-mf-1000 to redeploy."
            ),
        )
    assert count == EXPECTED_COUNT, (
        f"Live GET /mcp returned {count} tools — expected {EXPECTED_COUNT}. "
        f"URL: {_live_url}/mcp"
    )
