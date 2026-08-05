"""
Tests: email sending in the Stripe webhook is dispatched to a background
task so the handler returns 200 OK without blocking on Resend I/O.

Relevant production code
------------------------
zerobeacon_mf_1000_main._send_email_in_background()
zerobeacon_mf_1000_main.stripe_webhook() — checkout.session.completed
zerobeacon_mf_1000_main.stripe_webhook() — customer.subscription.updated
"""

import asyncio
import io
import json
import contextlib
import importlib
import sys
import time
from unittest.mock import patch, AsyncMock, MagicMock

import pytest
from fastapi.testclient import TestClient


# ── helpers ───────────────────────────────────────────────────────────────────

def _fresh_main():
    """Reload main module to get a clean global state for every test."""
    if "zerobeacon_mf_1000_main" in sys.modules:
        del sys.modules["zerobeacon_mf_1000_main"]
    with patch("core.keystore.load"), \
         patch("core.emailer.validate_resend_key", return_value=(True, "ok")):
        import zerobeacon_mf_1000_main as m
    return m


def _make_checkout_event(email="user@example.com", amount_total=1000,
                         session_id="cs_live_test123"):
    """Build a minimal checkout.session.completed Stripe event dict."""
    return {
        "type": "checkout.session.completed",
        "data": {
            "object": {
                "customer_details": {"email": email},
                "amount_total": amount_total,  # cents
                "id": session_id,
                "customer": "cus_test999",
            }
        },
    }


def _make_subscription_updated_event(email="sub@example.com",
                                     amount=1000,
                                     customer_id="cus_sub999"):
    """Build a minimal customer.subscription.updated Stripe event dict."""
    return {
        "type": "customer.subscription.updated",
        "data": {
            "object": {
                "customer": customer_id,
                "customer_email": email,
                "plan": {"amount": amount},
            }
        },
    }


def _fake_stripe_construct(event_dict):
    """Return a mock stripe.Webhook.construct_event that yields event_dict."""
    return lambda payload, sig, secret: event_dict


# ── TestSendEmailInBackground ─────────────────────────────────────────────────

class TestSendEmailInBackground:
    """Unit tests for the _send_email_in_background coroutine."""

    def test_dispatches_via_to_thread(self):
        """send_api_key_email is called via asyncio.to_thread (non-blocking)."""
        main = _fresh_main()
        to_thread_calls = []

        async def tracking_to_thread(fn, *args, **kwargs):
            to_thread_calls.append(True)
            return fn(*args, **kwargs)

        with patch("zerobeacon_mf_1000_main.asyncio.to_thread",
                   side_effect=tracking_to_thread), \
             patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=True):
            asyncio.run(main._send_email_in_background(
                "a@b.com", "zbk_test", "pro_10", label="session=cs_test"
            ))

        assert to_thread_calls, (
            "asyncio.to_thread was not called — send_api_key_email is blocking "
            "the event loop directly."
        )

    def test_logs_critical_on_false_return(self):
        """CRITICAL is logged (with label) when send_api_key_email returns False."""
        main = _fresh_main()
        buf = io.StringIO()

        with patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=False), \
             contextlib.redirect_stdout(buf):
            asyncio.run(main._send_email_in_background(
                "x@y.com", "zbk_test", "pro_10", label="session=cs_test_abc"
            ))

        log = buf.getvalue()
        assert "CRITICAL" in log
        assert "x@y.com" in log
        assert "cs_test_abc" in log

    def test_logs_critical_on_exception(self):
        """CRITICAL is logged (with label) when send_api_key_email raises."""
        main = _fresh_main()
        buf = io.StringIO()

        with patch("zerobeacon_mf_1000_main.send_api_key_email",
                   side_effect=RuntimeError("connection refused")), \
             contextlib.redirect_stdout(buf):
            asyncio.run(main._send_email_in_background(
                "z@z.com", "zbk_test", "enterprise_1000",
                label="session=cs_exc_test"
            ))

        log = buf.getvalue()
        assert "CRITICAL" in log
        assert "connection refused" in log
        assert "cs_exc_test" in log

    def test_no_log_on_success(self):
        """No CRITICAL log is emitted when email delivery succeeds."""
        main = _fresh_main()
        buf = io.StringIO()

        with patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=True), \
             contextlib.redirect_stdout(buf):
            asyncio.run(main._send_email_in_background(
                "ok@ok.com", "zbk_ok", "pro_100", label="session=cs_ok"
            ))

        assert "CRITICAL" not in buf.getvalue()

    def test_label_appears_in_lookup_hint(self):
        """The log on failure includes a pointer to /success or /api/key/lookup."""
        main = _fresh_main()
        buf = io.StringIO()

        with patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=False), \
             contextlib.redirect_stdout(buf):
            asyncio.run(main._send_email_in_background(
                "hint@test.com", "zbk_hint", "pro_10", label="session=cs_hint"
            ))

        log = buf.getvalue()
        # Customer must be able to self-serve even when email fails
        assert "lookup" in log.lower() or "success" in log.lower(), (
            f"Log does not mention retrieval path: {log!r}"
        )


# ── TestWebhookEmailIsBackgrounded ────────────────────────────────────────────

# STRIPE_WEBHOOK_SECRET must be set or the handler short-circuits with 400
# before it even calls construct_event.
_WEBHOOK_ENV = {"STRIPE_WEBHOOK_SECRET": "whsec_test"}


class TestWebhookEmailIsBackgrounded:
    """
    Integration tests: the webhook handler creates a background task instead
    of awaiting email delivery, so Stripe always gets a fast 200 OK.
    """

    def test_checkout_webhook_issues_key_even_when_email_fails(self):
        """
        Key is issued to the keystore before email fires — customer is not
        left without a key if email delivery fails.
        """
        main = _fresh_main()
        event = _make_checkout_event(amount_total=1000)  # $10 → pro_10
        keys_issued = []

        def capture_issue(tier, email, **kw):
            keys_issued.append({"tier": tier, "email": email})
            return "zbk_captured"

        with patch.dict("os.environ", _WEBHOOK_ENV), \
             patch("stripe.Webhook.construct_event",
                   side_effect=_fake_stripe_construct(event)), \
             patch("core.keystore.issue_key", side_effect=capture_issue), \
             patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=False):

            client = TestClient(main.app)
            resp = client.post(
                "/webhook",
                content=b"{}",
                headers={"Stripe-Signature": "t=1,v1=sig"},
            )

        assert resp.status_code == 200, f"Expected 200, got {resp.status_code}: {resp.text}"
        assert keys_issued, "issue_key was never called — key was not persisted"
        assert keys_issued[0]["tier"] == "pro_10"

    def test_subscription_updated_webhook_issues_key_even_when_email_fails(self):
        """
        customer.subscription.updated: key issued regardless of email outcome.
        """
        main = _fresh_main()
        event = _make_subscription_updated_event(amount=1000)
        keys_issued = []

        def capture_issue(tier, email, **kw):
            keys_issued.append({"tier": tier, "email": email})
            return "zbk_sub_captured"

        with patch.dict("os.environ", _WEBHOOK_ENV), \
             patch("stripe.Webhook.construct_event",
                   side_effect=_fake_stripe_construct(event)), \
             patch("core.keystore.issue_key", side_effect=capture_issue), \
             patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=False):

            client = TestClient(main.app)
            resp = client.post(
                "/webhook",
                content=b"{}",
                headers={"Stripe-Signature": "t=1,v1=sig"},
            )

        assert resp.status_code == 200, f"Expected 200, got {resp.status_code}: {resp.text}"
        assert keys_issued, "issue_key was never called for subscription.updated"
        assert keys_issued[0]["tier"] == "pro_10"

    def test_email_background_task_logs_critical_and_session_id_on_failure(self):
        """
        When the background email task fails, CRITICAL is logged with enough
        context (session_id prefix) for support to identify the customer.
        """
        main = _fresh_main()
        event = _make_checkout_event(
            amount_total=1000, session_id="cs_live_abc123xyz"
        )

        buf = io.StringIO()
        with patch.dict("os.environ", _WEBHOOK_ENV), \
             patch("stripe.Webhook.construct_event",
                   side_effect=_fake_stripe_construct(event)), \
             patch("core.keystore.issue_key", return_value="zbk_fail_test"), \
             patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=False), \
             contextlib.redirect_stdout(buf):
            client = TestClient(main.app)
            client.post(
                "/webhook",
                content=b"{}",
                headers={"Stripe-Signature": "t=1,v1=sig"},
            )

        log = buf.getvalue()
        assert "CRITICAL" in log, f"No CRITICAL in log: {log!r}"
        assert "cs_live_abc" in log, (
            f"session_id prefix not found in log: {log!r}"
        )

    def test_email_dispatched_via_create_task_not_awaited(self):
        """
        send_api_key_email is wrapped in asyncio.create_task so the webhook
        handler does not block waiting for it to complete.
        """
        main = _fresh_main()
        event = _make_checkout_event(amount_total=1000)

        tasks_created = []
        real_create_task = asyncio.create_task

        def recording_create_task(coro, **kw):
            tasks_created.append(coro.__qualname__ if hasattr(coro, "__qualname__") else str(coro))
            return real_create_task(coro, **kw)

        with patch.dict("os.environ", _WEBHOOK_ENV), \
             patch("stripe.Webhook.construct_event",
                   side_effect=_fake_stripe_construct(event)), \
             patch("core.keystore.issue_key", return_value="zbk_task_test"), \
             patch("zerobeacon_mf_1000_main.asyncio.create_task",
                   side_effect=recording_create_task), \
             patch("zerobeacon_mf_1000_main.send_api_key_email",
                   return_value=True):

            client = TestClient(main.app)
            resp = client.post(
                "/webhook",
                content=b"{}",
                headers={"Stripe-Signature": "t=1,v1=sig"},
            )

        assert resp.status_code == 200
        assert tasks_created, (
            "asyncio.create_task was never called — email is being awaited "
            "synchronously, which can cause Stripe webhook timeouts."
        )

    def test_resend_endpoint_still_synchronous(self):
        """
        /api/key/resend is a user-facing endpoint — it returns the email
        delivery result synchronously so the customer sees success/failure
        immediately.  It must NOT be backgrounded.
        """
        main = _fresh_main()
        call_log = []

        def recording_email(email, api_key, tier, **kw):
            call_log.append("called")
            return True

        with patch("zerobeacon_mf_1000_main.send_api_key_email",
                   side_effect=recording_email), \
             patch("core.keystore.lookup_by_session",
                   return_value="zbk_resend_r"), \
             patch("core.keystore.lookup",
                   return_value={"email": "r@r.com", "tier": "pro_10",
                                 "api_key": "zbk_resend_r"}), \
             patch("core.keystore.resend_get", return_value=0), \
             patch("core.keystore.resend_increment", return_value=1):

            client = TestClient(main.app)
            resp = client.post(
                "/api/key/resend",
                json={"session_id": "cs_live_resend_test"},
            )

        # send_api_key_email must have been called (synchronously) before response
        assert call_log, "/api/key/resend did not call send_api_key_email"
        assert resp.status_code == 200, (
            f"Expected 200 from /api/key/resend, got {resp.status_code}: {resp.text}"
        )
