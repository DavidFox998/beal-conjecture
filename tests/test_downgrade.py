"""
End-to-end downgrade test: enterprise → pro_10 via subscription.updated.

What this covers
----------------
* A customer holds an active enterprise_1000 key.
* A customer.subscription.updated event arrives at pro_10 tier ($10/month).
* The handler calls downgrade_by_customer_id before issuing the new key.
* After the webhook, the OLD enterprise key must no longer pass the tier guard
  for enterprise_1000 (or any paid tier above pro_10).
* The newly-issued key must have tier pro_10.
* The test is fully offline — stripe.Webhook.construct_event and
  send_api_key_email are both patched; no network traffic occurs.
"""

import json
from unittest.mock import MagicMock, patch

import pytest
from fastapi.testclient import TestClient


# ---------------------------------------------------------------------------
# Shared fake-webhook helpers
# ---------------------------------------------------------------------------

_FAKE_SIG    = "t=1700000000,v1=fakesignature"
_FAKE_SECRET = "whsec_test_secret"


def _fake_payload(event: dict) -> bytes:
    return json.dumps(event).encode()


def _post_webhook(client: TestClient, event: dict):
    return client.post(
        "/webhook",
        content=_fake_payload(event),
        headers={
            "Content-Type": "application/json",
            "Stripe-Signature": _FAKE_SIG,
        },
    )


# ---------------------------------------------------------------------------
# Fixture
# ---------------------------------------------------------------------------

@pytest.fixture()
def client(monkeypatch):
    """TestClient with env vars set before the app module resolves them."""
    monkeypatch.setenv("STRIPE_WEBHOOK_SECRET", _FAKE_SECRET)
    monkeypatch.setenv("RESEND_API_KEY", "re_dummy_key_for_tests")
    monkeypatch.setenv("ADMIN_SECRET", "test_admin")

    import zerobeacon_mf_1000_main as main_mod

    with TestClient(main_mod.app, raise_server_exceptions=True) as tc:
        yield tc


# ---------------------------------------------------------------------------
# Event fixture builders
# ---------------------------------------------------------------------------

def _make_subscription_updated(
    email: str,
    amount_cents: int,
    customer_id: str,
) -> dict:
    """Minimal customer.subscription.updated Stripe event."""
    return {
        "id": "evt_downgrade_001",
        "type": "customer.subscription.updated",
        "data": {
            "object": {
                "id": "sub_downgrade_001",
                "object": "subscription",
                "customer": customer_id,
                "customer_email": email,
                "plan": {
                    "amount": amount_cents,
                },
                "status": "active",
            }
        },
    }


# ---------------------------------------------------------------------------
# Test 1 — Old enterprise key loses enterprise access after downgrade to pro_10
# ---------------------------------------------------------------------------

def test_downgrade_enterprise_to_pro10_revokes_enterprise_access(client):
    """
    Scenario: a customer holds an enterprise_1000 key and their subscription
    is updated to the pro_10 plan ($10/month).

    Expected outcomes
    -----------------
    1. The webhook returns HTTP 200.
    2. The OLD enterprise_1000 key can no longer pass the enterprise_1000 tier guard.
    3. A NEW key is issued and sent via email.
    4. The new key's tier is pro_10.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "enterprise.downgrade@example.com"
    customer_id = "cus_downgrade_ent_001"

    # Isolate keystore so the test doesn't affect other tests.
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # ── seed an active enterprise key ────────────────────────────────────
        old_key = keystore.issue_key(
            "enterprise_1000", email,
            stripe_customer_id=customer_id,
        )

        # Pre-condition: old key grants enterprise access before the event.
        allowed_before, _ = keystore.check_access(old_key, "enterprise_1000")
        assert allowed_before, (
            "Pre-condition failed: enterprise key must grant enterprise_1000 access "
            "before the downgrade event is fired."
        )

        # ── fire the subscription.updated webhook at pro_10 tier ─────────────
        event = _make_subscription_updated(
            email=email,
            amount_cents=1000,   # $10/month → pro_10
            customer_id=customer_id,
        )

        with (
            patch.object(stripe.Webhook, "construct_event", return_value=event),
            patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
        ):
            resp = _post_webhook(client, event)

        # ── HTTP ACK ─────────────────────────────────────────────────────────
        assert resp.status_code == 200, (
            f"subscription.updated must return 200; got {resp.status_code}: {resp.text}"
        )

        # ── old key must no longer grant enterprise access ────────────────────
        allowed_enterprise, reason_enterprise = keystore.check_access(
            old_key, "enterprise_1000"
        )
        assert not allowed_enterprise, (
            f"OLD enterprise key must NOT pass enterprise_1000 tier guard after "
            f"downgrade to pro_10. check_access returned allowed=True "
            f"(tier={keystore.tier_of(old_key)!r}, reason={reason_enterprise!r})"
        )

        # ── old key must not grant pro_100 access either ──────────────────────
        allowed_pro100, reason_pro100 = keystore.check_access(old_key, "pro_100")
        assert not allowed_pro100, (
            f"OLD enterprise key must NOT pass pro_100 tier guard after downgrade. "
            f"(tier={keystore.tier_of(old_key)!r}, reason={reason_pro100!r})"
        )

        # ── a new key must have been emailed ──────────────────────────────────
        assert mock_send.called, (
            "send_api_key_email was not called after subscription.updated — "
            "the customer must receive their new key."
        )

        call_kwargs = mock_send.call_args
        args   = call_kwargs.args   if call_kwargs.args   else ()
        kwargs = call_kwargs.kwargs if call_kwargs.kwargs else {}

        new_key   = kwargs.get("api_key", args[1] if len(args) > 1 else None)
        new_tier  = kwargs.get("tier",    args[2] if len(args) > 2 else None)
        called_email = kwargs.get("email", args[0] if len(args) > 0 else None)

        assert called_email == email, (
            f"send_api_key_email called with wrong email: {called_email!r}"
        )
        assert new_key, "send_api_key_email was called with an empty/None api_key"
        assert new_key.startswith("zbk_"), (
            f"New key must start with 'zbk_'; got {new_key!r}"
        )
        assert new_key != old_key, (
            f"New key ({new_key[:12]}…) is the same as the old enterprise key — "
            "a fresh key must be issued on re-subscription."
        )

        # ── new key must carry pro_10 tier ────────────────────────────────────
        assert new_tier == "pro_10", (
            f"Expected emailed key tier='pro_10', got {new_tier!r}"
        )

        new_key_record = keystore.lookup(new_key)
        assert new_key_record is not None, (
            f"New key {new_key[:12]}… was not found in the keystore."
        )
        assert new_key_record["tier"] == "pro_10", (
            f"Keystore record for new key has tier={new_key_record['tier']!r}, expected 'pro_10'."
        )

        # ── new key grants pro_10 access ──────────────────────────────────────
        allowed_new, _ = keystore.check_access(new_key, "pro_10")
        assert allowed_new, (
            f"New pro_10 key must pass the pro_10 tier guard; check_access returned False."
        )

    finally:
        # Restore keystore so other tests are not polluted.
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 2 — Downgrade via email fallback (no stripe_customer_id on old key)
# ---------------------------------------------------------------------------

def test_downgrade_via_email_fallback_revokes_old_key(client):
    """
    Keys issued before stripe_customer_id tracking (no 'stripe_customer_id'
    field) must also be downgraded by the email fallback path.

    Scenario: old key has no customer-ID field; subscription.updated arrives
    with the same email.  The handler calls downgrade_by_email as a fallback,
    and the old key must lose its high-tier access.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "email.fallback.downgrade@example.com"
    customer_id = "cus_downgrade_email_001"

    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed a pro_100 key WITHOUT a stripe_customer_id (legacy key).
        old_key = "zbk_" + "a" * 32   # deterministic for inspection
        keystore._store[old_key] = {
            "tier": "pro_100",
            "email": email,
            "created_at": 1_700_000_000,
            # deliberately no "stripe_customer_id" key
        }

        # Pre-condition.
        allowed_before, _ = keystore.check_access(old_key, "pro_100")
        assert allowed_before, "Pre-condition: legacy pro_100 key must grant pro_100 access."

        event = _make_subscription_updated(
            email=email,
            amount_cents=1000,   # → pro_10
            customer_id=customer_id,
        )

        with (
            patch.object(stripe.Webhook, "construct_event", return_value=event),
            patch.object(main_mod, "send_api_key_email", return_value=True),
        ):
            resp = _post_webhook(client, event)

        assert resp.status_code == 200, (
            f"subscription.updated must return 200; got {resp.status_code}: {resp.text}"
        )

        # Legacy key must no longer pass pro_100 guard.
        allowed_after, reason = keystore.check_access(old_key, "pro_100")
        assert not allowed_after, (
            f"Legacy pro_100 key must NOT pass pro_100 guard after email-fallback downgrade. "
            f"(tier={keystore.tier_of(old_key)!r}, reason={reason!r})"
        )

    finally:
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 3 — Upgrading does NOT downgrade the existing key
# ---------------------------------------------------------------------------

def test_upgrade_does_not_downgrade_existing_key(client):
    """
    When subscription.updated moves a customer to a HIGHER tier (pro_10 →
    enterprise_1000), the handler must not call downgrade_by_customer_id on
    the old key — the old key should remain unchanged (it's about to be
    superseded by the new key, but must not be wrongly downgraded).

    This guards against an off-by-one in the tier comparison inside
    downgrade_by_customer_id: it must only act when old_rank > new_rank.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "upgrader@example.com"
    customer_id = "cus_upgrade_001"

    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed an existing pro_10 key.
        old_key = keystore.issue_key(
            "pro_10", email,
            stripe_customer_id=customer_id,
        )

        # Fire subscription.updated at enterprise_1000 ($1000/month).
        event = _make_subscription_updated(
            email=email,
            amount_cents=100_000,   # $1000 → enterprise_1000
            customer_id=customer_id,
        )

        with (
            patch.object(stripe.Webhook, "construct_event", return_value=event),
            patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
        ):
            resp = _post_webhook(client, event)

        assert resp.status_code == 200, (
            f"subscription.updated (upgrade) must return 200; got {resp.status_code}"
        )

        # Old pro_10 key must NOT have been downgraded (downgrade_by_customer_id
        # only acts when old_rank > new_rank; here old_rank(pro_10=1) < new_rank(ent=3)).
        old_tier_after = keystore.tier_of(old_key)
        assert old_tier_after == "pro_10", (
            f"An upgrade event must not downgrade the old pro_10 key; "
            f"got tier={old_tier_after!r} after the event."
        )

        # A new enterprise key must have been issued and emailed.
        assert mock_send.called, "send_api_key_email must be called on upgrade too."
        call_kwargs = mock_send.call_args
        args   = call_kwargs.args   if call_kwargs.args   else ()
        kwargs = call_kwargs.kwargs if call_kwargs.kwargs else {}
        new_tier = kwargs.get("tier", args[2] if len(args) > 2 else None)
        assert new_tier == "enterprise_1000", (
            f"Upgraded key must have tier='enterprise_1000'; got {new_tier!r}"
        )

    finally:
        keystore._store.clear()
        keystore._store.update(original_store)
