"""
End-to-end test for the Stripe checkout.session.completed → email flow.

What this covers
----------------
* POST /webhook with a valid-looking checkout.session.completed event
  returns HTTP 200.
* send_api_key_email is called (mocked — no real Resend network traffic).
* It is called with the correct recipient address and a non-empty API key.
* The webhook also returns HTTP 400 when the Stripe signature is missing or
  the webhook secret is not configured.

All tests are fully offline:
  - stripe.Webhook.construct_event is patched so no real signature is needed.
  - send_api_key_email is patched so no real email is sent.
  - No RESEND_API_KEY or STRIPE_SECRET_KEY env vars are required.
"""

import json
import os
from unittest.mock import MagicMock, patch, AsyncMock

import pytest
from fastapi.testclient import TestClient


# ---------------------------------------------------------------------------
# Minimal Stripe event fixture
# ---------------------------------------------------------------------------

def _make_checkout_completed(
    email: str = "buyer@example.com",
    amount_total: int = 1000,          # cents → $10.00 → pro_10 tier
    session_id: str = "cs_test_abc123",
    customer_id: str = "cus_test_xyz",
) -> dict:
    """Return a minimal checkout.session.completed event dict."""
    return {
        "id": "evt_test_001",
        "type": "checkout.session.completed",
        "data": {
            "object": {
                "id": session_id,
                "object": "checkout.session",
                "customer": customer_id,
                "customer_details": {"email": email},
                "amount_total": amount_total,
                "payment_status": "paid",
            }
        },
    }


# ---------------------------------------------------------------------------
# Helpers — construct a fake signed payload (body bytes + header string).
# We don't need a real signature because we patch construct_event.
# ---------------------------------------------------------------------------

def _fake_payload(event: dict) -> bytes:
    return json.dumps(event).encode()


_FAKE_SIG = "t=1700000000,v1=fakesignature"
_FAKE_SECRET = "whsec_test_secret"

# ---------------------------------------------------------------------------
# Fixtures
# ---------------------------------------------------------------------------

@pytest.fixture()
def client(monkeypatch):
    """
    Return a TestClient for the FastAPI app with:
      - STRIPE_WEBHOOK_SECRET set to a fake value
      - RESEND_API_KEY set to a dummy (so emailer doesn't CRITICAL-log)
      - stripe.Webhook.construct_event patched to skip real signature check
    """
    monkeypatch.setenv("STRIPE_WEBHOOK_SECRET", _FAKE_SECRET)
    monkeypatch.setenv("RESEND_API_KEY", "re_dummy_key_for_tests")
    monkeypatch.setenv("ADMIN_SECRET", "test_admin")

    # Import app here so env vars are already set before the module resolves them.
    import zerobeacon_mf_1000_main as main_mod

    with TestClient(main_mod.app, raise_server_exceptions=True) as tc:
        yield tc


def _post_webhook(client: TestClient, event: dict) -> "Response":  # noqa: F821
    payload = _fake_payload(event)
    return client.post(
        "/webhook",
        content=payload,
        headers={
            "Content-Type": "application/json",
            "Stripe-Signature": _FAKE_SIG,
        },
    )


# ---------------------------------------------------------------------------
# Test 1 — returns HTTP 400 when STRIPE_WEBHOOK_SECRET is not configured
# ---------------------------------------------------------------------------

def test_webhook_returns_400_when_secret_not_configured(monkeypatch):
    monkeypatch.delenv("STRIPE_WEBHOOK_SECRET", raising=False)
    monkeypatch.setenv("RESEND_API_KEY", "re_dummy")
    monkeypatch.setenv("ADMIN_SECRET", "test_admin")

    import zerobeacon_mf_1000_main as main_mod

    with TestClient(main_mod.app, raise_server_exceptions=False) as tc:
        resp = tc.post(
            "/webhook",
            content=b'{"type":"checkout.session.completed"}',
            headers={"Content-Type": "application/json"},
        )
    assert resp.status_code == 400
    assert "webhook secret" in resp.json().get("error", "").lower()


# ---------------------------------------------------------------------------
# Test 2 — returns HTTP 400 when Stripe-Signature is invalid
# ---------------------------------------------------------------------------

def test_webhook_returns_400_on_bad_signature(client):
    import stripe

    event = _make_checkout_completed()
    payload = _fake_payload(event)

    # Do NOT patch construct_event — let the real signature check fail.
    resp = client.post(
        "/webhook",
        content=payload,
        headers={
            "Content-Type": "application/json",
            "Stripe-Signature": "t=0,v1=badsig",
        },
    )
    assert resp.status_code == 400


# ---------------------------------------------------------------------------
# Test 3 — happy path: send_api_key_email is called with correct args
# ---------------------------------------------------------------------------

def test_checkout_completed_triggers_email(client):
    """
    A valid checkout.session.completed event must:
      1. Return HTTP 200 immediately.
      2. Invoke send_api_key_email with the buyer's email and a non-empty key.
    """
    email = "happybuyer@example.com"
    event = _make_checkout_completed(email=email, amount_total=1000)

    import stripe
    import zerobeacon_mf_1000_main as main_mod

    with (
        patch.object(stripe.Webhook, "construct_event", return_value=event),
        patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
    ):
        resp = _post_webhook(client, event)

    assert resp.status_code == 200, f"Expected 200, got {resp.status_code}: {resp.text}"

    # Background task should have fired before TestClient returns.
    assert mock_send.called, "send_api_key_email was never called"
    call_kwargs = mock_send.call_args
    # Could be positional or keyword — normalise.
    args   = call_kwargs.args   if call_kwargs.args   else ()
    kwargs = call_kwargs.kwargs if call_kwargs.kwargs else {}

    called_email   = kwargs.get("email",   args[0] if len(args) > 0 else None)
    called_api_key = kwargs.get("api_key", args[1] if len(args) > 1 else None)

    assert called_email == email, (
        f"send_api_key_email called with wrong email: {called_email!r}"
    )
    assert called_api_key, "send_api_key_email called with empty/None api_key"
    assert called_api_key.startswith("zbk_"), (
        f"Expected api_key to start with 'zbk_', got: {called_api_key!r}"
    )


# ---------------------------------------------------------------------------
# Test 4 — tier mapping: $100 payment → pro_100 tier email
# ---------------------------------------------------------------------------

@pytest.mark.parametrize("amount_cents,expected_tier", [
    (1000,   "pro_10"),
    (10000,  "pro_100"),
    (100000, "enterprise_1000"),
])
def test_checkout_tier_mapping(client, amount_cents, expected_tier):
    """send_api_key_email must receive the tier that matches the payment amount."""
    event = _make_checkout_completed(
        email="tiertester@example.com",
        amount_total=amount_cents,
    )

    import stripe
    import zerobeacon_mf_1000_main as main_mod

    with (
        patch.object(stripe.Webhook, "construct_event", return_value=event),
        patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
    ):
        resp = _post_webhook(client, event)

    assert resp.status_code == 200
    assert mock_send.called, "send_api_key_email was never called"

    call_kwargs = mock_send.call_args
    args   = call_kwargs.args   if call_kwargs.args   else ()
    kwargs = call_kwargs.kwargs if call_kwargs.kwargs else {}
    called_tier = kwargs.get("tier", args[2] if len(args) > 2 else None)
    assert called_tier == expected_tier, (
        f"For ${amount_cents/100:.0f} expected tier={expected_tier!r}, got {called_tier!r}"
    )


# ---------------------------------------------------------------------------
# Test 5 — free-tier ($0) payment must NOT issue an email
# ---------------------------------------------------------------------------

def test_free_tier_payment_does_not_trigger_email(client):
    """
    A $0 / free checkout must not send an email — the customer has no paid key.
    """
    event = _make_checkout_completed(
        email="freetier@example.com",
        amount_total=0,
    )

    import stripe
    import zerobeacon_mf_1000_main as main_mod

    with (
        patch.object(stripe.Webhook, "construct_event", return_value=event),
        patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
    ):
        resp = _post_webhook(client, event)

    assert resp.status_code == 200
    assert not mock_send.called, (
        "send_api_key_email should NOT be called for a free-tier payment"
    )


# ---------------------------------------------------------------------------
# Test 6 — email failure must NOT prevent HTTP 200 (webhook must still ACK)
# ---------------------------------------------------------------------------

def test_email_failure_still_returns_200(client):
    """
    Even when send_api_key_email returns False (Resend down), the webhook
    must return 200 so Stripe does not retry unnecessarily.  The key is
    already stored in the keystore; the customer can retrieve it another way.
    """
    event = _make_checkout_completed(email="unlucky@example.com", amount_total=1000)

    import stripe
    import zerobeacon_mf_1000_main as main_mod

    with (
        patch.object(stripe.Webhook, "construct_event", return_value=event),
        patch.object(main_mod, "send_api_key_email", return_value=False),
    ):
        resp = _post_webhook(client, event)

    assert resp.status_code == 200, (
        f"Webhook must return 200 even when email fails; got {resp.status_code}"
    )


# ---------------------------------------------------------------------------
# Helpers — subscription.updated event fixture
# ---------------------------------------------------------------------------

def _make_subscription_updated(
    email: str = "resub@example.com",
    amount_cents: int = 1000,          # plan.amount in cents
    customer_id: str = "cus_resub_xyz",
) -> dict:
    """Return a minimal customer.subscription.updated event dict."""
    return {
        "id": "evt_test_sub_001",
        "type": "customer.subscription.updated",
        "data": {
            "object": {
                "id": "sub_test_001",
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
# Test 7 — subscription.updated: re-subscriber gets a FRESH key, not the old one
# ---------------------------------------------------------------------------

def test_subscription_updated_sends_fresh_key_email(client):
    """
    A customer.subscription.updated event for a re-subscribing customer must:
      1. Return HTTP 200.
      2. Call send_api_key_email with the customer's email.
      3. The emailed key must be a newly-issued zbk_ key — NOT the old key that
         was active before the re-subscription.

    Setup: seed an old pro_10 key for the same Stripe customer, then fire
    subscription.updated.  Assert the emailed key differs from the seeded one.
    The keystore is reset to a clean state before and after the test so other
    tests are not polluted.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "resub@example.com"
    customer_id = "cus_resub_fresh_001"

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed an old key so we can prove the new one is different.
        old_key = keystore.issue_key(
            "pro_10", email,
            stripe_customer_id=customer_id,
        )

        event = _make_subscription_updated(
            email=email,
            amount_cents=1000,
            customer_id=customer_id,
        )

        with (
            patch.object(stripe.Webhook, "construct_event", return_value=event),
            patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
        ):
            resp = _post_webhook(client, event)

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 12 — subscription.deleted: email-fallback revokes legacy keys that
#            carry no stripe_customer_id
# ---------------------------------------------------------------------------

def test_subscription_deleted_revokes_legacy_key_via_email_fallback(client):
    """
    When a key was issued before stripe_customer_id tracking was added it
    carries no customer ID in its record.  A customer.subscription.deleted
    event must still downgrade that key to 'free' via the revoke_by_email
    fallback path.

    Setup:
      - Seed a pro_10 key for the customer's email WITHOUT a stripe_customer_id.
      - Fire a customer.subscription.deleted event that includes the matching
        email (customer_email field) but a real customer ID that does NOT match
        anything in the store — so revoke_by_customer_id finds nothing.
      - Assert the webhook returns HTTP 200.
      - Assert the legacy key's tier is now 'free'.
      - Assert check_access returns False for pro_10 on that key.

    The test is fully offline — no real Stripe signature or network traffic.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "legacy@example.com"
    customer_id = "cus_legacy_001"   # present in the event but not on the key record

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed a legacy key — no stripe_customer_id stored.
        legacy_key = keystore.issue_key("pro_10", email)   # no stripe_customer_id kwarg

        # Pre-condition: key must not carry a customer ID.
        record_before = keystore.lookup(legacy_key)
        assert record_before is not None
        assert "stripe_customer_id" not in record_before, (
            "Pre-condition failed: legacy key must not have a stripe_customer_id"
        )

        # Pre-condition: key must grant paid access before the event.
        allowed_before, _ = keystore.check_access(legacy_key, "pro_10")
        assert allowed_before, (
            "Pre-condition: legacy key must grant pro_10 access before cancellation"
        )

        event = _make_subscription_deleted(
            customer_id=customer_id,
            email=email,
        )

        with patch.object(stripe.Webhook, "construct_event", return_value=event):
            resp = _post_webhook(client, event)

        # ── assertions ───────────────────────────────────────────────────────

        assert resp.status_code == 200, (
            f"subscription.deleted must return 200 so Stripe ACKs; "
            f"got {resp.status_code}: {resp.text}"
        )

        # The key record must still exist but its tier must now be 'free'.
        record_after = keystore.lookup(legacy_key)
        assert record_after is not None, (
            "Legacy key record was removed; expected it to be downgraded to 'free', not deleted"
        )
        assert record_after["tier"] == "free", (
            f"Expected legacy key tier='free' after email-fallback revocation, "
            f"got tier={record_after['tier']!r}"
        )

        # Access check must now deny any paid-tier request.
        allowed_after, reason = keystore.check_access(legacy_key, "pro_10")
        assert not allowed_after, (
            f"Cancelled legacy key must not grant pro_10 access; "
            f"check_access returned allowed=True "
            f"(tier={keystore.tier_of(legacy_key)!r}, reason={reason!r})"
        )

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)

    assert resp.status_code == 200, (
        f"Expected 200 from subscription.updated, got {resp.status_code}: {resp.text}"
    )
    assert mock_send.called, (
        "send_api_key_email was never called for subscription.updated"
    )

    call_kwargs = mock_send.call_args
    args   = call_kwargs.args   if call_kwargs.args   else ()
    kwargs = call_kwargs.kwargs if call_kwargs.kwargs else {}

    called_email   = kwargs.get("email",   args[0] if len(args) > 0 else None)
    called_api_key = kwargs.get("api_key", args[1] if len(args) > 1 else None)

    assert called_email == email, (
        f"send_api_key_email called with wrong email: {called_email!r}"
    )
    assert called_api_key, (
        "send_api_key_email called with empty/None api_key for re-subscriber"
    )
    assert called_api_key.startswith("zbk_"), (
        f"Expected fresh key to start with 'zbk_', got: {called_api_key!r}"
    )
    assert called_api_key != old_key, (
        f"Re-subscriber received their OLD key ({old_key[:12]}…) instead of a freshly "
        f"issued one — the handler must always issue a new key on re-subscription"
    )


# ---------------------------------------------------------------------------
# Test 8 — subscription.updated: email resolved via Customer.retrieve fallback
# ---------------------------------------------------------------------------

def test_subscription_updated_resolves_email_via_stripe_customer(client):
    """
    When customer_email is absent from the subscription object, the handler
    must call stripe.Customer.retrieve and use the email from there.
    The webhook must still return 200 and send_api_key_email must be called
    with the resolved email.
    """
    resolved_email = "retrieved@example.com"
    customer_id    = "cus_noemail_001"

    event = _make_subscription_updated(
        email="",            # blank — forces Customer.retrieve fallback
        amount_cents=10000,  # $100 → pro_100
        customer_id=customer_id,
    )
    # Blank the customer_email in the event object too
    event["data"]["object"]["customer_email"] = ""

    import stripe
    import zerobeacon_mf_1000_main as main_mod

    fake_customer = MagicMock()
    fake_customer.get = lambda key, default=None: (
        resolved_email if key == "email" else default
    )

    with (
        patch.object(stripe.Webhook, "construct_event", return_value=event),
        patch.object(stripe.Customer, "retrieve", return_value=fake_customer),
        patch.object(main_mod, "send_api_key_email", return_value=True) as mock_send,
    ):
        resp = _post_webhook(client, event)

    assert resp.status_code == 200, (
        f"Expected 200 when email resolved via Customer.retrieve, got {resp.status_code}: {resp.text}"
    )
    assert mock_send.called, (
        "send_api_key_email was not called when email resolved via Customer.retrieve"
    )

    call_kwargs  = mock_send.call_args
    args         = call_kwargs.args   if call_kwargs.args   else ()
    kwargs       = call_kwargs.kwargs if call_kwargs.kwargs else {}
    called_email = kwargs.get("email", args[0] if len(args) > 0 else None)

    assert called_email == resolved_email, (
        f"Expected email={resolved_email!r}, got {called_email!r}"
    )


# ---------------------------------------------------------------------------
# Helpers — customer.subscription.deleted event fixture
# ---------------------------------------------------------------------------

def _make_subscription_deleted(
    customer_id: str = "cus_cancel_xyz",
    email: str = "cancelled@example.com",
) -> dict:
    """Return a minimal customer.subscription.deleted event dict."""
    return {
        "id": "evt_test_del_001",
        "type": "customer.subscription.deleted",
        "data": {
            "object": {
                "id": "sub_cancel_001",
                "object": "subscription",
                "customer": customer_id,
                "customer_email": email,
                "status": "canceled",
            }
        },
    }


# ---------------------------------------------------------------------------
# Test 9 — subscription.deleted: key is revoked the moment cancellation fires
# ---------------------------------------------------------------------------

def test_subscription_deleted_revokes_key_immediately(client):
    """
    A customer.subscription.deleted webhook must:
      1. Return HTTP 200.
      2. Downgrade the customer's key to 'free' in the keystore immediately.
      3. The previously-valid key must no longer grant paid access
         (check_access returns False for any paid tier).

    The test is fully offline — no real Stripe signature or network traffic.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "cancelled@example.com"
    customer_id = "cus_cancel_001"

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed an active paid key for the customer.
        paid_key = keystore.issue_key(
            "pro_10", email,
            stripe_customer_id=customer_id,
        )

        # Confirm the key grants paid access before the cancellation event.
        allowed_before, _ = keystore.check_access(paid_key, "pro_10")
        assert allowed_before, "Pre-condition: key must grant pro_10 access before cancellation"

        event = _make_subscription_deleted(
            customer_id=customer_id,
            email=email,
        )

        with patch.object(stripe.Webhook, "construct_event", return_value=event):
            resp = _post_webhook(client, event)

        # ── assertions ───────────────────────────────────────────────────────

        assert resp.status_code == 200, (
            f"subscription.deleted must return 200 so Stripe ACKs; got {resp.status_code}: {resp.text}"
        )

        # The key record must still exist but its tier must now be 'free'.
        record = keystore.lookup(paid_key)
        assert record is not None, (
            "Key record was removed from the keystore; expected it to be downgraded to 'free', not deleted"
        )
        assert record["tier"] == "free", (
            f"Expected key tier='free' after cancellation, got tier={record['tier']!r}"
        )

        # Access check must now deny any paid-tier request.
        allowed_after, reason = keystore.check_access(paid_key, "pro_10")
        assert not allowed_after, (
            f"Cancelled key must not grant pro_10 access; check_access returned allowed=True "
            f"(tier={keystore.tier_of(paid_key)!r}, reason={reason!r})"
        )

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 12 — subscription.deleted: email-fallback revokes legacy keys that
#            carry no stripe_customer_id
# ---------------------------------------------------------------------------

def test_subscription_deleted_revokes_legacy_key_via_email_fallback(client):
    """
    When a key was issued before stripe_customer_id tracking was added it
    carries no customer ID in its record.  A customer.subscription.deleted
    event must still downgrade that key to 'free' via the revoke_by_email
    fallback path.

    Setup:
      - Seed a pro_10 key for the customer's email WITHOUT a stripe_customer_id.
      - Fire a customer.subscription.deleted event that includes the matching
        email (customer_email field) but a real customer ID that does NOT match
        anything in the store — so revoke_by_customer_id finds nothing.
      - Assert the webhook returns HTTP 200.
      - Assert the legacy key's tier is now 'free'.
      - Assert check_access returns False for pro_10 on that key.

    The test is fully offline — no real Stripe signature or network traffic.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "legacy@example.com"
    customer_id = "cus_legacy_001"   # present in the event but not on the key record

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed a legacy key — no stripe_customer_id stored.
        legacy_key = keystore.issue_key("pro_10", email)   # no stripe_customer_id kwarg

        # Pre-condition: key must not carry a customer ID.
        record_before = keystore.lookup(legacy_key)
        assert record_before is not None
        assert "stripe_customer_id" not in record_before, (
            "Pre-condition failed: legacy key must not have a stripe_customer_id"
        )

        # Pre-condition: key must grant paid access before the event.
        allowed_before, _ = keystore.check_access(legacy_key, "pro_10")
        assert allowed_before, (
            "Pre-condition: legacy key must grant pro_10 access before cancellation"
        )

        event = _make_subscription_deleted(
            customer_id=customer_id,
            email=email,
        )

        with patch.object(stripe.Webhook, "construct_event", return_value=event):
            resp = _post_webhook(client, event)

        # ── assertions ───────────────────────────────────────────────────────

        assert resp.status_code == 200, (
            f"subscription.deleted must return 200 so Stripe ACKs; "
            f"got {resp.status_code}: {resp.text}"
        )

        # The key record must still exist but its tier must now be 'free'.
        record_after = keystore.lookup(legacy_key)
        assert record_after is not None, (
            "Legacy key record was removed; expected it to be downgraded to 'free', not deleted"
        )
        assert record_after["tier"] == "free", (
            f"Expected legacy key tier='free' after email-fallback revocation, "
            f"got tier={record_after['tier']!r}"
        )

        # Access check must now deny any paid-tier request.
        allowed_after, reason = keystore.check_access(legacy_key, "pro_10")
        assert not allowed_after, (
            f"Cancelled legacy key must not grant pro_10 access; "
            f"check_access returned allowed=True "
            f"(tier={keystore.tier_of(legacy_key)!r}, reason={reason!r})"
        )

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 10 — subscription.deleted: missing customer ID returns 200 and skips
# ---------------------------------------------------------------------------

def test_subscription_deleted_missing_customer_id_returns_200(client):
    """
    When the subscription.deleted event has no customer ID the handler
    must still return HTTP 200 (nothing to revoke — skip gracefully).
    """
    import stripe

    event = _make_subscription_deleted(customer_id="", email="ghost@example.com")
    event["data"]["object"]["customer"] = ""   # explicitly blank

    with patch.object(stripe.Webhook, "construct_event", return_value=event):
        resp = _post_webhook(client, event)

    assert resp.status_code == 200, (
        f"subscription.deleted with missing customer ID must return 200; got {resp.status_code}"
    )


# ---------------------------------------------------------------------------
# Test 11 — cancel → re-subscribe at lower tier: old key must stay rejected
# ---------------------------------------------------------------------------

def test_cancel_then_resubscribe_lower_tier_old_key_rejected(client):
    """
    Sequence: pro_100 key issued → subscription.deleted fires (→ free) →
    subscription.updated fires at pro_10 (→ fresh key issued).

    Assertions:
      1. The original pro_100 key is downgraded to 'free' after deletion.
      2. The original pro_100 key cannot grant pro_100 *or* pro_10 access after
         the re-subscription (it is still free-tier, not silently upgraded).
      3. The new key emailed on re-subscription grants pro_10 access.
      4. The new key does NOT grant pro_100 access (lower tier only).
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "resubscriber@example.com"
    customer_id = "cus_resub_lower_tier_001"

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    new_key_from_email: list[str] = []

    try:
        # ── Step 1: seed a pro_100 key for the customer ───────────────────────
        old_key = keystore.issue_key(
            "pro_100", email,
            stripe_customer_id=customer_id,
        )

        # Pre-condition: old key grants pro_100 access before any events.
        allowed_before, _ = keystore.check_access(old_key, "pro_100")
        assert allowed_before, "Pre-condition: seeded pro_100 key must grant pro_100 access"

        # ── Step 2: fire subscription.deleted (cancellation) ──────────────────
        deleted_event = _make_subscription_deleted(
            customer_id=customer_id,
            email=email,
        )
        with patch.object(stripe.Webhook, "construct_event", return_value=deleted_event):
            del_resp = _post_webhook(client, deleted_event)

        assert del_resp.status_code == 200, (
            f"subscription.deleted must return 200; got {del_resp.status_code}: {del_resp.text}"
        )

        # Old key must now be free-tier.
        record_after_cancel = keystore.lookup(old_key)
        assert record_after_cancel is not None, "Key record must still exist after cancellation"
        assert record_after_cancel["tier"] == "free", (
            f"Expected tier='free' after cancellation, got {record_after_cancel['tier']!r}"
        )

        # ── Step 3: fire subscription.updated at pro_10 (re-subscription) ─────
        updated_event = _make_subscription_updated(
            email=email,
            amount_cents=1000,   # $10 → pro_10
            customer_id=customer_id,
        )

        def _capture_key(email, api_key, **kwargs):  # noqa: ANN001
            new_key_from_email.append(api_key)
            return True

        with (
            patch.object(stripe.Webhook, "construct_event", return_value=updated_event),
            patch.object(main_mod, "send_api_key_email", side_effect=_capture_key) as mock_send,
        ):
            upd_resp = _post_webhook(client, updated_event)

        # ── Assertions that require the live keystore (must run inside try) ──

        assert upd_resp.status_code == 200, (
            f"subscription.updated must return 200; got {upd_resp.status_code}: {upd_resp.text}"
        )
        assert mock_send.called, (
            "send_api_key_email must be called on re-subscription"
        )
        assert new_key_from_email, "No new key was captured from send_api_key_email"

        new_key = new_key_from_email[0]
        assert new_key.startswith("zbk_"), (
            f"Re-subscription key must start with 'zbk_', got {new_key!r}"
        )
        assert new_key != old_key, (
            f"Re-subscriber received their old key ({old_key[:12]}…) — a fresh key must be issued"
        )

        # Old key must remain free-tier and grant NO paid access.
        old_record = keystore.lookup(old_key)
        assert old_record is not None, "Old key record must still exist in keystore"
        assert old_record["tier"] == "free", (
            f"Old key must remain 'free' after re-subscription; got tier={old_record['tier']!r}"
        )

        old_allowed_pro100, reason100 = keystore.check_access(old_key, "pro_100")
        assert not old_allowed_pro100, (
            f"Old pro_100 key must NOT grant pro_100 access after cancel+resubscribe "
            f"(tier={old_record['tier']!r}, reason={reason100!r})"
        )

        old_allowed_pro10, reason10 = keystore.check_access(old_key, "pro_10")
        assert not old_allowed_pro10, (
            f"Old pro_100 key must NOT grant pro_10 access after cancel+resubscribe "
            f"(tier={old_record['tier']!r}, reason={reason10!r})"
        )

        # New key must grant pro_10 access but NOT pro_100 access.
        new_record = keystore.lookup(new_key)
        assert new_record is not None, "New key must exist in keystore after re-subscription"
        assert new_record["tier"] == "pro_10", (
            f"New key must be tier='pro_10', got {new_record['tier']!r}"
        )

        new_allowed_pro10, _ = keystore.check_access(new_key, "pro_10")
        assert new_allowed_pro10, (
            "New key must grant pro_10 access after re-subscribing at pro_10"
        )

        new_allowed_pro100, reason_new100 = keystore.check_access(new_key, "pro_100")
        assert not new_allowed_pro100, (
            f"New pro_10 key must NOT grant pro_100 access "
            f"(tier={new_record['tier']!r}, reason={reason_new100!r})"
        )

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 11b — mid-cycle downgrade: pro_100 → pro_10 without prior cancellation
# ---------------------------------------------------------------------------

def test_mid_cycle_downgrade_pro100_to_pro10_revokes_higher_access(client):
    """
    A direct mid-cycle plan downgrade (subscription.updated from pro_100 to
    pro_10, with NO prior subscription.deleted) must immediately strip the
    customer's existing key of enterprise access via downgrade_by_customer_id.

    Assertions:
      1. Pre-condition: seeded pro_100 key grants pro_100 access.
      2. After subscription.updated fires at pro_10, the original key's stored
         tier is 'pro_10', not 'pro_100'.
      3. The original key can NOT grant pro_100 access (higher tier blocked).
      4. The original key CAN still grant pro_10 access (downgraded in-place,
         not revoked).

    The test is fully offline — no real Stripe signature or network traffic.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "enterprise_downgrader@example.com"
    customer_id = "cus_enterprise_downgrade_001"

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # ── Step 1: seed a pro_100 key for the customer ───────────────────────
        old_key = keystore.issue_key(
            "pro_100", email,
            stripe_customer_id=customer_id,
        )

        # Pre-condition: old key must grant pro_100 access before any event.
        allowed_before, _ = keystore.check_access(old_key, "pro_100")
        assert allowed_before, (
            "Pre-condition: seeded pro_100 key must grant pro_100 access before downgrade"
        )

        # ── Step 2: fire subscription.updated at pro_10 (mid-cycle downgrade) ─
        # $10/month = 1000 cents → tier resolved to 'pro_10' by the handler.
        updated_event = _make_subscription_updated(
            email=email,
            amount_cents=1000,   # $10 → pro_10
            customer_id=customer_id,
        )

        def _noop_email(email, api_key, **kwargs):  # noqa: ANN001
            return True

        with (
            patch.object(stripe.Webhook, "construct_event", return_value=updated_event),
            patch.object(main_mod, "send_api_key_email", side_effect=_noop_email),
        ):
            resp = _post_webhook(client, updated_event)

        assert resp.status_code == 200, (
            f"subscription.updated must return 200; got {resp.status_code}: {resp.text}"
        )

        # ── Assertions on the original key ────────────────────────────────────

        old_record = keystore.lookup(old_key)
        assert old_record is not None, "Original key record must still exist after downgrade"

        # Tier must be updated in-place to pro_10.
        assert old_record["tier"] == "pro_10", (
            f"Expected original key tier='pro_10' after mid-cycle downgrade, "
            f"got tier={old_record['tier']!r}"
        )

        # Must NOT grant the higher pro_100 tier.
        allowed_pro100, reason100 = keystore.check_access(old_key, "pro_100")
        assert not allowed_pro100, (
            f"Downgraded key must NOT grant pro_100 access "
            f"(tier={old_record['tier']!r}, reason={reason100!r})"
        )

        # MUST still grant the new (lower) pro_10 tier — key is downgraded,
        # not revoked.
        allowed_pro10, reason10 = keystore.check_access(old_key, "pro_10")
        assert allowed_pro10, (
            f"Downgraded key MUST grant pro_10 access after downgrade "
            f"(tier={old_record['tier']!r}, reason={reason10!r})"
        )

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)


# ---------------------------------------------------------------------------
# Test 12 — subscription.deleted: email-fallback revokes legacy keys that
#            carry no stripe_customer_id
# ---------------------------------------------------------------------------

def test_subscription_deleted_revokes_legacy_key_via_email_fallback(client):
    """
    When a key was issued before stripe_customer_id tracking was added it
    carries no customer ID in its record.  A customer.subscription.deleted
    event must still downgrade that key to 'free' via the revoke_by_email
    fallback path.

    Setup:
      - Seed a pro_10 key for the customer's email WITHOUT a stripe_customer_id.
      - Fire a customer.subscription.deleted event that includes the matching
        email (customer_email field) but a real customer ID that does NOT match
        anything in the store — so revoke_by_customer_id finds nothing.
      - Assert the webhook returns HTTP 200.
      - Assert the legacy key's tier is now 'free'.
      - Assert check_access returns False for pro_10 on that key.

    The test is fully offline — no real Stripe signature or network traffic.
    """
    import stripe
    import zerobeacon_mf_1000_main as main_mod
    from core import keystore

    email       = "legacy@example.com"
    customer_id = "cus_legacy_001"   # present in the event but not on the key record

    # ── isolate keystore state ────────────────────────────────────────────────
    original_store = dict(keystore._store)
    keystore._store.clear()

    try:
        # Seed a legacy key — no stripe_customer_id stored.
        legacy_key = keystore.issue_key("pro_10", email)   # no stripe_customer_id kwarg

        # Pre-condition: key must not carry a customer ID.
        record_before = keystore.lookup(legacy_key)
        assert record_before is not None
        assert "stripe_customer_id" not in record_before, (
            "Pre-condition failed: legacy key must not have a stripe_customer_id"
        )

        # Pre-condition: key must grant paid access before the event.
        allowed_before, _ = keystore.check_access(legacy_key, "pro_10")
        assert allowed_before, (
            "Pre-condition: legacy key must grant pro_10 access before cancellation"
        )

        event = _make_subscription_deleted(
            customer_id=customer_id,
            email=email,
        )

        with patch.object(stripe.Webhook, "construct_event", return_value=event):
            resp = _post_webhook(client, event)

        # ── assertions ───────────────────────────────────────────────────────

        assert resp.status_code == 200, (
            f"subscription.deleted must return 200 so Stripe ACKs; "
            f"got {resp.status_code}: {resp.text}"
        )

        # The key record must still exist but its tier must now be 'free'.
        record_after = keystore.lookup(legacy_key)
        assert record_after is not None, (
            "Legacy key record was removed; expected it to be downgraded to 'free', not deleted"
        )
        assert record_after["tier"] == "free", (
            f"Expected legacy key tier='free' after email-fallback revocation, "
            f"got tier={record_after['tier']!r}"
        )

        # Access check must now deny any paid-tier request.
        allowed_after, reason = keystore.check_access(legacy_key, "pro_10")
        assert not allowed_after, (
            f"Cancelled legacy key must not grant pro_10 access; "
            f"check_access returned allowed=True "
            f"(tier={keystore.tier_of(legacy_key)!r}, reason={reason!r})"
        )

    finally:
        # Restore original keystore state so other tests are unaffected.
        keystore._store.clear()
        keystore._store.update(original_store)
