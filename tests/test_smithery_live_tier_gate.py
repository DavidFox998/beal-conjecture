"""Live Smithery gateway verification for MCP tier-gate responses.

This intentionally exercises Smithery's published connection layer instead of
calling the ZeroBeacon origin directly.  It creates an unconfigured temporary
connection, so the PRO tool call represents a Smithery user with no API key.

Run with the account credential available to the Smithery CLI:
    SMITHERY_API_KEY=... python -m pytest -q tests/test_smithery_live_tier_gate.py
"""

from __future__ import annotations

import json
import os
import subprocess
import uuid

import pytest


SMITHERY_SERVER = "davidjfox998/zerobeacon-1050"
PRO_TOOL = "mf_03_delivery_proof"
FREE_TOOL = "mf_01_beacon"
UPGRADE_URL = "https://zerobeacon.ai/upgrade"
STRIPE_CHECKOUT_URL = "https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01"

pytestmark = pytest.mark.skipif(
    not os.environ.get("SMITHERY_API_KEY"),
    reason="requires SMITHERY_API_KEY to create a temporary Smithery connection",
)


def _smithery(*args: str, check: bool = True) -> subprocess.CompletedProcess[str]:
    """Run the supported Smithery CLI without exposing credentials in output."""
    result = subprocess.run(
        ["npx", "-y", "smithery", *args],
        check=False,
        capture_output=True,
        text=True,
        env=os.environ.copy(),
        timeout=180,
    )
    if check and result.returncode != 0:
        raise AssertionError(
            f"Smithery CLI command {' '.join(args[:3])} failed "
            f"with exit status {result.returncode}."
        )
    return result


def _tool_result(result: subprocess.CompletedProcess[str]) -> dict:
    """Read the JSON result printed by ``smithery tool call``."""
    for line in reversed(result.stdout.splitlines()):
        if not line.lstrip().startswith("{"):
            continue
        payload = json.loads(line)
        return payload.get("result", payload)
    raise AssertionError("Smithery CLI did not return a JSON tool result.")


def test_smithery_tier_error_is_visible_and_free_tool_still_works():
    """Verify the published Smithery gateway displays paid-access guidance.

    The temporary connection deliberately has an empty config, so no ZeroBeacon
    API key can be sent through Smithery.  Cleanup is checked explicitly to
    avoid leaving account connections behind after either assertion fails.
    """
    connection_id = f"tier-gate-check-{uuid.uuid4().hex[:12]}"
    created = False

    try:
        _smithery(
            "mcp",
            "add",
            SMITHERY_SERVER,
            "--id",
            connection_id,
            "--name",
            "Temporary ZeroBeacon tier-gate verification",
            "--config",
            "{}",
        )
        created = True

        paid_call = _smithery("tool", "call", connection_id, PRO_TOOL, "{}")
        paid = _tool_result(paid_call)
        paid_text = (paid.get("content") or [{}])[0].get("text", "")

        assert paid.get("isError") is True
        assert paid.get("ok") is False
        assert paid.get("error") == "tier_required"
        assert "PRO ($10/mo) required" in paid_text
        assert UPGRADE_URL in paid_text
        assert STRIPE_CHECKOUT_URL in paid_text

        free_call = _smithery("tool", "call", connection_id, FREE_TOOL, "{}")
        free = _tool_result(free_call)

        assert free.get("isError") is not True
        assert free.get("ok") is True
        assert free.get("tool") == "beacon"
        assert free["structuredContent"]["ok"] is True
        assert json.loads(free["content"][0]["text"]) == free["structuredContent"]
    finally:
        if created:
            removed = _smithery("mcp", "remove", connection_id, check=False)
            assert removed.returncode == 0, (
                "Smithery could not remove the temporary tier-gate connection."
            )
            absent = _smithery("tool", "list", connection_id, check=False)
            assert absent.returncode != 0, (
                "Smithery still reports the temporary tier-gate connection as available."
            )