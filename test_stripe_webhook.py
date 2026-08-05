#!/usr/bin/env python3
"""
Tests for the /webhook (Stripe) endpoint.

Verifies:
  1. Missing STRIPE_WEBHOOK_SECRET → 400
  2. Bad signature → 400
  3. checkout.session.completed at $10 → pro_10 key issued + email sent
  4. checkout.session.completed at $100 → pro_100 key issued
  5. checkout.session.completed at $1000 → enterprise_1000 key issued
  6. checkout.session.completed at $5 (free tier) → no key issued
  7. checkout.session.completed key is stored and retrievable by session_id
  8. customer.subscription.updated → key issued + email sent
  9. Unknown event type → 200 received:True, no key issued
 10. customer.subscription.deleted → existing paid key downgraded to free

Run:
    pytest test_stripe_webhook.py -v
"""

import json
import os
from unittest.mock import MagicMock, patch

import pytest
from fastapi.testclient import TestClient

# ── isolate keystore so tests never touch real files ─────────────────────────
import core.keystore as keystore
from pathlib import Path

keystore.KEY_PATH     = Path("/tmp/test_webhook_api_keys.json")
keystore.SESSION_PATH = Path("/tmp/test_webhook_api_sessions.json")
keystore._store       = {}
keystore._session_map = {}

# ── import app after keystore is patched ─────────────────────────────────────
from zerobeacon_mf_1000_main import app  # noqa: E402

client = TestClient(app, raise_server_exceptions=True)

# ── helpers ───────────────────────────────────────────────────────────────────

FAKE_SECRET    = "whsec_test_secret"
FAKE_SIGNATURE = "t=1234567890,v1=fakesig"


def _make_checkout_event(amount_cents: int, email: str = "buyer@example.com",
                         session_id: str = "cs_test_abc123") -> dict:
    return {
        "type": "checkout.session.completed",
        "data": {
            "object": {
                "id": session_id,
                "amount_total": amount_cents,
                "customer_details": {"email": email},
            }
        },
    }


def _make_subscription_event(amount_cents: int,
                              email: str = "sub@example.com") -> dict:
    return {
        "type": "customer.subscription.updated",
        "data": {
            "object": {
                "customer_email": email,
                "plan": {"amount": amount_cents},
            }
        },
    }


def _make_subscription_deleted_event(
        stripe_customer_id: str = "cus_test_cancel",
        customer_email: str | None = None,
) -> dict:
    """
    Real-shaped customer.subscription.deleted event.
    Stripe subscription objects carry `customer` (a customer ID), not
    `customer_email`.  `customer_email` is accepted as an optional field
    to simulate the rare case where the gateway forwards it; omitting it
    is the normal production shape.
    """
    obj: dict = {"customer": stripe_customer_id}
    if customer_email is not None:
        obj["customer_email"] = customer_email
    return {
        "type": "customer.subscription.deleted",
        "data": {"object": obj},
    }


def _post(event: dict, secret: str = FAKE_SECRET,
          sig: str = FAKE_SIGNATURE):
    """
    POST to /webhook with a mocked stripe.Webhook.construct_event that
    returns `event` directly (skips real HMAC verification) and a mocked
    send_api_key_email to avoid real network calls.
    """
    body = json.dumps(event).encode()

    with patch("stripe.Webhook.construct_event", return_value=event), \
         patch("zerobeacon_mf_1000_main.send_api_key_email") as mock_email:
        resp = client.post(
            "/webhook",
            content=body,
            headers={
                "Stripe-Signature": sig,
                "Content-Type": "application/json",
            },
        )
    return resp, mock_email


# ── tests ─────────────────────────────────────────────────────────────────────

class TestStripeWebhook:

    def setup_method(self):
        """Reset keystore between tests."""
        keystore._store       = {}
        keystore._session_map = {}

    # 1. Missing secret → 400 ------------------------------------------------

    def test_missing_webhook_secret_returns_400(self):
        """If STRIPE_WEBHOOK_SECRET is unset the endpoint must refuse."""
        body = json.dumps(_make_checkout_event(1000)).encode()
        with patch.dict(os.environ, {}, clear=False):
            old = os.environ.pop("STRIPE_WEBHOOK_SECRET", None)
            try:
                resp = client.post(
                    "/webhook",
                    content=body,
                    headers={"Stripe-Signature": FAKE_SIGNATURE,
                             "Content-Type": "application/json"},
                )
            finally:
                if old is not None:
                    os.environ["STRIPE_WEBHOOK_SECRET"] = old

        assert resp.status_code == 400
        assert "no webhook secret" in resp.json().get("error", "")

    # 2. Bad signature → 400 --------------------------------------------------

    def test_bad_signature_returns_400(self):
        """A tampered payload must be rejected with 400."""
        import stripe as _stripe
        body = b'{"tampered": true}'
        exc = _stripe.error.SignatureVerificationError(
            "bad sig", sig_header=FAKE_SIGNATURE
        )
        with patch("stripe.Webhook.construct_event", side_effect=exc), \
             patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp = client.post(
                "/webhook",
                content=body,
                headers={"Stripe-Signature": FAKE_SIGNATURE,
                         "Content-Type": "application/json"},
            )
        assert resp.status_code == 400
        assert "invalid signature" in resp.json().get("error", "")

    # 3. checkout $10 → pro_10 ------------------------------------------------

    def test_checkout_10_dollars_issues_pro10_key(self):
        """$10 checkout → tier pro_10, key issued, email sent."""
        event = _make_checkout_event(1000, email="ten@example.com",
                                     session_id="cs_test_010")
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        assert resp.json() == {"received": True}

        key = keystore.lookup_by_session("cs_test_010")
        assert key is not None, "API key should have been issued for $10 checkout"

        record = keystore.lookup(key)
        assert record["tier"] == "pro_10", f"Expected pro_10, got {record['tier']}"

        mock_email.assert_called_once()
        call_kwargs = mock_email.call_args[1]
        assert call_kwargs["email"] == "ten@example.com"
        assert call_kwargs["tier"] == "pro_10"

    # 4. checkout $100 → pro_100 ----------------------------------------------

    def test_checkout_100_dollars_issues_pro100_key(self):
        """$100 checkout → tier pro_100, key issued, email sent."""
        event = _make_checkout_event(10000, email="hundred@example.com",
                                     session_id="cs_test_100")
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        key = keystore.lookup_by_session("cs_test_100")
        assert key is not None, "API key should have been issued for $100 checkout"
        assert keystore.lookup(key)["tier"] == "pro_100"

        mock_email.assert_called_once()
        call_kwargs = mock_email.call_args[1]
        assert call_kwargs["email"] == "hundred@example.com"
        assert call_kwargs["tier"] == "pro_100"

    # 5. checkout $1000 → enterprise_1000 ------------------------------------

    def test_checkout_1000_dollars_issues_enterprise_key(self):
        """$1000 checkout → tier enterprise_1000, key issued, email sent."""
        event = _make_checkout_event(100000, email="big@example.com",
                                     session_id="cs_test_1000")
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        key = keystore.lookup_by_session("cs_test_1000")
        assert key is not None, "API key should have been issued for $1000 checkout"
        assert keystore.lookup(key)["tier"] == "enterprise_1000"

        mock_email.assert_called_once()
        call_kwargs = mock_email.call_args[1]
        assert call_kwargs["email"] == "big@example.com"
        assert call_kwargs["tier"] == "enterprise_1000"

    # 6. checkout $5 → free tier, no key issued -------------------------------

    def test_checkout_free_tier_amount_issues_no_key(self):
        """Payments below $9 map to free; no API key should be issued."""
        event = _make_checkout_event(500, email="cheap@example.com",
                                     session_id="cs_test_free")
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        key = keystore.lookup_by_session("cs_test_free")
        assert key is None, "No key should be issued for free-tier checkout"
        mock_email.assert_not_called()

    # 7. key is retrievable by session_id -------------------------------------

    def test_issued_key_retrievable_by_session_id(self):
        """Key issued from webhook must be findable via lookup_by_session."""
        session_id = "cs_test_retrieve_xyz"
        event = _make_checkout_event(1000, email="retrieve@example.com",
                                     session_id=session_id)
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            _post(event)

        key = keystore.lookup_by_session(session_id)
        assert key is not None
        # The /success page should also find it
        record = keystore.lookup(key)
        assert record["email"] == "retrieve@example.com"

    # 8. subscription.updated → key issued ------------------------------------

    def test_subscription_updated_issues_key_and_emails(self):
        """customer.subscription.updated must issue a key, persist it, and send email."""
        event = _make_subscription_event(1000, email="sub@example.com")
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        assert resp.json() == {"received": True}

        # A key must exist in the keystore for this email
        matching = [
            (k, v) for k, v in keystore._store.items()
            if v.get("email") == "sub@example.com"
        ]
        assert matching, "No API key was persisted for sub@example.com after subscription.updated"
        key, record = matching[0]
        assert record["tier"] == "pro_10", (
            f"Expected tier pro_10, got {record['tier']}"
        )

        mock_email.assert_called_once()
        call_kwargs = mock_email.call_args[1]
        assert call_kwargs["email"] == "sub@example.com"
        assert call_kwargs["tier"] == "pro_10"
        assert call_kwargs["api_key"] == key

    # 9. Unknown event type → received:True, nothing issued -------------------

    def test_unknown_event_type_is_acknowledged_without_side_effects(self):
        """Unhandled event types must return 200 received:True and issue no keys."""
        event = {
            "type": "payment_method.attached",
            "data": {"object": {}},
        }
        before = dict(keystore._store)
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        assert resp.json() == {"received": True}
        assert keystore._store == before, "No keys should be issued for unknown events"
        mock_email.assert_not_called()

    # 10. subscription.deleted (real shape: customer ID only) → key revoked ------

    def test_subscription_deleted_by_customer_id_downgrades_key(self):
        """
        Real Stripe event shape: only `customer` ID present, no customer_email.
        The handler must call stripe.Customer.retrieve to get the email, then
        downgrade the matching paid key to free.
        """
        cid   = "cus_test_cancel_001"
        email = "cancel@example.com"
        api_key = keystore.issue_key("pro_10", email, stripe_customer_id=cid)
        assert keystore.lookup(api_key)["tier"] == "pro_10"

        event = _make_subscription_deleted_event(stripe_customer_id=cid)

        fake_customer = MagicMock()
        fake_customer.get = lambda k, *a: email if k == "email" else (a[0] if a else None)

        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}), \
             patch("stripe.Customer.retrieve", return_value=fake_customer):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        assert resp.json() == {"received": True}

        record = keystore.lookup(api_key)
        assert record is not None, "Key record should still exist after cancellation"
        assert record["tier"] == "free", (
            f"Expected tier 'free' after cancellation, got '{record['tier']}'"
        )
        # No confirmation email is sent on cancellation
        mock_email.assert_not_called()

    def test_subscription_deleted_customer_lookup_failure_returns_500(self):
        """
        If stripe.Customer.retrieve raises a StripeError (transient network
        issue), the handler must return 500 so Stripe retries the event.
        Acknowledging with 200 would permanently drop it and leave the
        customer's paid key active.
        """
        import stripe as _stripe
        cid     = "cus_test_cancel_transient"
        api_key = keystore.issue_key("pro_10", "transient@example.com", stripe_customer_id=cid)

        event = _make_subscription_deleted_event(stripe_customer_id=cid)
        err   = _stripe.error.StripeError("network timeout")

        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}), \
             patch("stripe.Customer.retrieve", side_effect=err):
            resp, mock_email = _post(event)

        assert resp.status_code == 500, (
            "Transient customer-lookup failure must return 500 so Stripe retries"
        )
        # Key must NOT have been downgraded — the event will be retried
        assert keystore.lookup(api_key)["tier"] == "pro_10"
        mock_email.assert_not_called()

    def test_subscription_deleted_null_email_still_revokes_by_customer_id(self):
        """
        If the Stripe customer has no email (edge case), the handler must still
        revoke access using the customer ID and return 200 (not crash).
        """
        cid     = "cus_test_cancel_noemail"
        api_key = keystore.issue_key("pro_100", "noemail@example.com", stripe_customer_id=cid)

        event        = _make_subscription_deleted_event(stripe_customer_id=cid)
        fake_customer = MagicMock()
        fake_customer.get = lambda k, *a: None  # email is None

        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}), \
             patch("stripe.Customer.retrieve", return_value=fake_customer):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        # Key revoked by customer ID even though email resolution returned None
        assert keystore.lookup(api_key)["tier"] == "free"
        mock_email.assert_not_called()

    def test_subscription_deleted_does_not_affect_other_customer_same_email(self):
        """
        Two customers can share an email address (e.g. re-subscription).
        Cancelling cus_A must not revoke the key that belongs to cus_B.
        """
        email   = "shared@example.com"
        cid_a   = "cus_test_cancel_A"
        cid_b   = "cus_test_cancel_B"
        key_a   = keystore.issue_key("pro_10",  email, stripe_customer_id=cid_a)
        key_b   = keystore.issue_key("pro_100", email, stripe_customer_id=cid_b)

        event = _make_subscription_deleted_event(stripe_customer_id=cid_a,
                                                  customer_email=email)

        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        assert keystore.lookup(key_a)["tier"] == "free",  "cus_A key must be revoked"
        assert keystore.lookup(key_b)["tier"] == "pro_100", "cus_B key must be untouched"
        mock_email.assert_not_called()

    def test_subscription_deleted_no_matching_keys_is_a_noop(self):
        """
        customer.subscription.deleted for a customer with no paid keys must
        return 200 and leave the keystore unchanged.
        """
        cid   = "cus_test_cancel_nobody"
        event = _make_subscription_deleted_event(stripe_customer_id=cid,
                                                  customer_email="nobody@example.com")
        before = dict(keystore._store)

        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp, mock_email = _post(event)

        assert resp.status_code == 200
        assert resp.json() == {"received": True}
        assert keystore._store == before
        mock_email.assert_not_called()

    # 11. Re-subscription: old (downgraded) key stays free; new key grants access ----

    def test_resubscription_old_key_stays_free_new_key_grants_paid_access(self):
        """
        Full re-subscription lifecycle:
          1. Issue a paid key for a customer.
          2. Fire subscription.deleted  → key downgraded to free.
          3. Fire checkout.session.completed (same email, new session) → new paid key issued.
          4. Old key must still be free-tier and must NOT pass a paid-tier access check.
          5. New key must be pro_10 and MUST pass the same access check.
        """
        email     = "resub@example.com"
        cid       = "cus_test_resub_001"
        old_session = "cs_test_resub_old"
        new_session = "cs_test_resub_new"

        # ── Step 1: issue a paid key ──────────────────────────────────────────
        old_key = keystore.issue_key("pro_10", email,
                                     session_id=old_session,
                                     stripe_customer_id=cid)
        assert keystore.lookup(old_key)["tier"] == "pro_10"
        allowed, _ = keystore.check_access(old_key, "pro_10")
        assert allowed, "Old key must grant pro_10 access before cancellation"

        # ── Step 2: fire subscription.deleted → downgrade ────────────────────
        deleted_event = _make_subscription_deleted_event(stripe_customer_id=cid)
        fake_customer = MagicMock()
        fake_customer.get = lambda k, *a: email if k == "email" else (a[0] if a else None)

        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}), \
             patch("stripe.Customer.retrieve", return_value=fake_customer):
            resp, mock_email = _post(deleted_event)

        assert resp.status_code == 200
        assert keystore.lookup(old_key)["tier"] == "free", \
            "Old key must be downgraded to free after subscription.deleted"
        mock_email.assert_not_called()

        # ── Step 3: fire checkout.session.completed for the same email ───────
        checkout_event = _make_checkout_event(
            1000,  # $10 → pro_10
            email=email,
            session_id=new_session,
        )
        with patch.dict(os.environ, {"STRIPE_WEBHOOK_SECRET": FAKE_SECRET}):
            resp2, mock_email2 = _post(checkout_event)

        assert resp2.status_code == 200

        # ── Step 4: old key is still free, fails paid-tier check ─────────────
        old_record = keystore.lookup(old_key)
        assert old_record is not None, "Old key record must still exist"
        assert old_record["tier"] == "free", \
            f"Old key must remain free after re-subscription, got {old_record['tier']}"
        denied, reason = keystore.check_access(old_key, "pro_10")
        assert not denied, (
            f"Old (free) key must NOT pass pro_10 access check; check_access returned "
            f"allowed={denied}, reason={reason!r}"
        )

        # ── Step 5: new key is pro_10, passes paid-tier check ────────────────
        new_key = keystore.lookup_by_session(new_session)
        assert new_key is not None, "New key must have been issued for new checkout session"
        assert new_key != old_key, "New key must be a different key from the old one"

        new_record = keystore.lookup(new_key)
        assert new_record["tier"] == "pro_10", \
            f"New key must be pro_10, got {new_record['tier']}"
        allowed2, _ = keystore.check_access(new_key, "pro_10")
        assert allowed2, "New key must grant pro_10 access after re-subscription"

        # Email must have been sent for the new checkout
        mock_email2.assert_called_once()
        call_kw = mock_email2.call_args[1]
        assert call_kw["email"] == email
        assert call_kw["tier"]  == "pro_10"
        assert call_kw["api_key"] == new_key
