#!/usr/bin/env python3
"""
Audit: confirm no endpoint silently accepts api_key from the request body.

The body-key fallback was removed from the /mcp tier gate. This test suite
extends that audit to every other tier-gating surface in the app:

  • HTTP middleware on REST /api/mf/* routes
  • /key/check  (header-only by design via FastAPI Header dependency)
  • /api/key/lookup, /api/key/resend  (body fields are session_id only)

Run:
    pytest test_no_body_api_key.py -v
"""

import pytest
from fastapi.testclient import TestClient

# ── isolate keystore so tests never touch production files ───────────────────
import core.keystore as keystore
from pathlib import Path

keystore.KEY_PATH     = Path("/tmp/test_no_body_api_key_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_no_body_api_key_sessions.json")
keystore._store       = {}
keystore._session_map = {}

from zerobeacon_mf_1000_main import app  # noqa: E402

client = TestClient(app, raise_server_exceptions=True)


def _issue(tier: str, email: str = "audit@example.com") -> str:
    return keystore.issue_key(tier, email)


# ── REST middleware surface (/api/mf/*) ──────────────────────────────────────

class TestRestMiddlewareBodyBypass:
    """
    The HTTP middleware reads api_key ONLY from the X-API-Key header.
    Putting the key anywhere else (query string, JSON body field) must NOT
    grant access to a gated route.
    """

    def test_pro_route_requires_header_key(self):
        """GET /api/mf/03/delivery_proof → 403 with no header key."""
        resp = client.get("/api/mf/03/delivery_proof")
        assert resp.status_code == 403, (
            f"Expected 403 without key, got {resp.status_code}: {resp.text}"
        )

    def test_pro_route_grants_access_with_header_key(self):
        """GET /api/mf/03/delivery_proof → 200 with valid header key."""
        key = _issue("pro_10")
        resp = client.get("/api/mf/03/delivery_proof",
                          headers={"X-API-Key": key})
        assert resp.status_code == 200, (
            f"Expected 200 with valid key, got {resp.status_code}: {resp.text}"
        )

    def test_pro_route_query_param_key_is_rejected(self):
        """
        A key passed as ?api_key=... query param must NOT grant access.
        The middleware only reads X-API-Key from headers.
        """
        key = _issue("pro_10", "qp@example.com")
        resp = client.get(f"/api/mf/03/delivery_proof?api_key={key}")
        assert resp.status_code == 403, (
            f"Query-param key must not bypass the tier gate; "
            f"got {resp.status_code}: {resp.text}"
        )

    def test_pro_route_post_body_key_is_rejected(self):
        """
        A key embedded in a POST body field must NOT grant access to gated tools.
        The middleware checks headers before the body parser runs.
        """
        key = _issue("pro_10", "body@example.com")
        resp = client.post(
            "/api/mf/03/delivery_proof",
            json={"api_key": key, "p": 82843},
            # intentionally no X-API-Key header
        )
        assert resp.status_code == 403, (
            f"Body-field api_key must not bypass the tier gate; "
            f"got {resp.status_code}: {resp.text}"
        )


# ── /key/check surface ───────────────────────────────────────────────────────

class TestKeyCheckHeaderOnly:
    """
    /key/check uses a FastAPI Header dependency — the key cannot come from
    the body or query string.
    """

    def test_key_check_no_key_returns_401(self):
        resp = client.get("/key/check")
        assert resp.status_code == 401, resp.text

    def test_key_check_with_valid_header_returns_200(self):
        key = _issue("pro_10", "check@example.com")
        resp = client.get("/key/check", headers={"X-API-Key": key})
        assert resp.status_code == 200, resp.text
        data = resp.json()
        assert data["valid"] is True
        assert data["tier"] == "pro_10"

    def test_key_check_query_param_is_ignored(self):
        """Key in query string must not satisfy the Header dependency."""
        key = _issue("pro_10", "checkqp@example.com")
        resp = client.get(f"/key/check?x_api_key={key}")
        assert resp.status_code == 401, (
            f"Query-param key must not satisfy /key/check; "
            f"got {resp.status_code}: {resp.text}"
        )


# ── /api/key/lookup surface ──────────────────────────────────────────────────

class TestKeyLookupBodyFieldsOnly:
    """
    /api/key/lookup accepts session_id from the body — not api_key.
    Sending an api_key field in the body must have no privileged effect.
    """

    def test_lookup_with_unknown_session_returns_404(self):
        """Baseline: unknown session_id → 404."""
        resp = client.post("/api/key/lookup",
                           json={"session_id": "cs_test_unknown_9999"})
        assert resp.status_code == 404, resp.text

    def test_lookup_body_api_key_field_has_no_effect(self):
        """
        Stuffing a valid api_key into the lookup body must not bypass the
        session_id check or return key data for a different session.
        """
        key = _issue("pro_10", "lookup@example.com")
        resp = client.post(
            "/api/key/lookup",
            json={
                "session_id": "cs_test_not_a_real_session",
                "api_key": key,   # ← extra field; must be silently ignored
            },
        )
        # Still 404 because the session_id doesn't exist
        assert resp.status_code == 404, (
            f"Body api_key field must not influence lookup result; "
            f"got {resp.status_code}: {resp.text}"
        )


# ── /api/key/resend surface ──────────────────────────────────────────────────

class TestKeyResendBodyFieldsOnly:
    """
    /api/key/resend accepts session_id — not api_key.
    An api_key field in the body must have no effect on authentication.
    """

    def test_resend_unknown_session_returns_404(self):
        resp = client.post("/api/key/resend",
                           json={"session_id": "cs_test_no_such_session"})
        assert resp.status_code == 404, resp.text

    def test_resend_body_api_key_field_has_no_effect(self):
        """Extra api_key body field must not influence session lookup."""
        key = _issue("pro_10", "resend@example.com")
        resp = client.post(
            "/api/key/resend",
            json={
                "session_id": "cs_test_no_such_session",
                "api_key": key,   # ← must be ignored
            },
        )
        assert resp.status_code == 404, (
            f"Body api_key must not influence resend; "
            f"got {resp.status_code}: {resp.text}"
        )
