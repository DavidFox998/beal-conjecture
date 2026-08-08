"""
Transactional email sender for Zerobeacon MF 1000.

Uses Resend (https://resend.com) — set RESEND_API_KEY as a secret.
If the key is absent the function logs a warning and returns False without
crashing, so a missing secret never breaks the Stripe webhook.

Usage:
    from core.emailer import send_api_key_email
    send_api_key_email(email="user@example.com", api_key="zbk_...", tier="pro_10")
"""

import os
import json
import urllib.request
import urllib.error

from core.keystore import TIER_LABEL

_BASE_URL = "https://zerobeacon.ai"
_RESEND_URL = "https://api.resend.com/emails"


def validate_resend_key(api_key_env: str | None = None) -> tuple[bool, str]:
    """
    Probe the Resend API to confirm RESEND_API_KEY is valid and accepted.

    Uses POST /emails with a deliberately minimal payload so the probe works
    from any IP (including Fly.io), unlike GET /api-keys which Resend blocks
    from certain cloud-provider IP ranges.  HTTP 200 or 422 (authenticated
    but bad request data) both confirm the key is valid.

    Returns (True, "ok") on success, or (False, reason) when the key is
    missing, invalid, or expired.  Never raises — safe to call from startup
    hooks or background tasks.

    Args:
        api_key_env: override the env-var lookup (used in tests).
    """
    if api_key_env is None:
        api_key_env = os.environ.get("RESEND_API_KEY", "").strip()

    if not api_key_env:
        return False, "RESEND_API_KEY is not set"

    # Send a minimal payload to POST /emails.
    # Resend returns 422 when the key authenticates but the request data is
    # invalid (e.g. unverified domain), and 200 if the email is actually
    # accepted.  Both confirm the key is live.  401/403 means the key itself
    # is rejected.
    probe_payload = json.dumps({
        "from": "_probe_@_invalid_.example",
        "to":   ["_probe_@_invalid_.example"],
        "subject": "_zerobeacon_key_probe_",
        "html": ".",
    }).encode()

    req = urllib.request.Request(
        _RESEND_URL,
        data=probe_payload,
        headers={
            "Authorization":  f"Bearer {api_key_env}",
            "Content-Type":   "application/json",
        },
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            # 200 = accepted (key valid and domain verified)
            return True, "ok"
    except urllib.error.HTTPError as e:
        if e.code == 422:
            # Authenticated but bad request data — key itself is valid
            return True, "ok"
        if e.code == 401:
            return False, "invalid or expired key (HTTP 401)"
        if e.code == 403:
            return False, "key rejected by Resend (HTTP 403) — check key permissions and IP allowlists"
        return False, f"HTTP {e.code} from Resend"
    except Exception as exc:
        return False, f"{type(exc).__name__}: {exc}"


def send_api_key_email(
    email: str,
    api_key: str,
    tier: str,
    *,
    max_retries: int = 1,
    retry_delay_seconds: float = 2.0,
) -> bool:
    """
    Send the customer their API key by email.

    Automatically retries up to ``max_retries`` additional times (default 1)
    after a short delay when the first attempt fails.  This ensures the
    customer receives their key even if Resend has a brief transient error at
    the moment the Stripe webhook fires.

    Returns True on success, False if every attempt fails (logs each error).
    Never raises — callers (webhook handlers) must not crash due to email issues.
    """
    import time as _time

    api_key_env = os.environ.get("RESEND_API_KEY", "").strip()
    # Resend allows sending from onboarding@resend.dev on free plans without domain
    # verification. Set EMAIL_FROM to your own verified domain address when ready.
    from_addr   = os.environ.get("EMAIL_FROM", "onboarding@resend.dev").strip()

    if not api_key_env:
        print("[emailer] CRITICAL: email delivery failed — RESEND_API_KEY is not set (skipping email to " + email + ")", flush=True)
        return False

    tier_label    = TIER_LABEL.get(tier, tier)
    check_url     = f"{_BASE_URL}/key/check"
    docs_url      = f"{_BASE_URL}/docs"
    pricing_url   = f"{_BASE_URL}/pricing"

    subject = f"Your Zerobeacon API key ({tier_label})"

    html_body = f"""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <style>
    body {{ font-family: system-ui, -apple-system, sans-serif; background:#0a0a0f;
            color:#e6e6ff; padding:40px 20px; max-width:600px; margin:0 auto; }}
    h1   {{ font-size:1.5rem; color:#88ffcc; margin-bottom:.5rem; }}
    .sub {{ color:#8899cc; font-size:.9rem; margin-bottom:1.5rem; }}
    .card{{ background:#111118; border:1px solid #2a2a3a; border-radius:12px;
            padding:24px 28px; margin-bottom:1.5rem; }}
    .label{{ color:#8899cc; font-size:.78rem; text-transform:uppercase;
             letter-spacing:.06em; margin-bottom:6px; }}
    .key  {{ background:#0a0f0a; border:1px solid #2a4a2a; border-radius:8px;
             padding:12px 16px; font-family:monospace; font-size:.88rem;
             color:#88ffcc; word-break:break-all; margin-bottom:1.2rem; }}
    .links{{ font-size:.85rem; color:#8899cc; }}
    .links a{{ color:#88aaff; text-decoration:none; }}
    .footer{{ color:#445; font-size:.75rem; margin-top:2rem; }}
  </style>
</head>
<body>
  <h1>🔑 Your Zerobeacon API key is ready</h1>
  <p class="sub">Thank you for your payment. Here is everything you need to get started.</p>

  <div class="card">
    <div class="label">Your API Key</div>
    <div class="key">{api_key}</div>

    <div class="label">Tier</div>
    <p style="margin-bottom:1.2rem;font-size:.92rem">{tier_label}</p>

    <div class="label">How to use it</div>
    <p style="font-size:.85rem;color:#aabbdd;line-height:1.7;margin:0">
      Add the following header to every API request:<br>
      <span style="font-family:monospace;color:#88aaff">X-API-Key: {api_key}</span><br><br>
      Example:<br>
      <span style="font-family:monospace;color:#88aaff;font-size:.82rem">
        curl -H "X-API-Key: {api_key}" \\<br>
        &nbsp;&nbsp;{_BASE_URL}/api/mf/03/delivery_proof
      </span>
    </p>
  </div>

  <div class="links">
    <p>Useful links:</p>
    <ul style="line-height:2">
      <li><a href="{check_url}">Verify your key — GET /key/check</a></li>
      <li><a href="{docs_url}">Full API docs (1000 tools)</a></li>
      <li><a href="{pricing_url}">Pricing &amp; tier comparison</a></li>
    </ul>
  </div>

  <p class="footer">
    Keep this key private — treat it like a password. If you believe it has been
    compromised, reply to this email to request a replacement.
  </p>
</body>
</html>"""

    text_body = (
        f"Your Zerobeacon API key ({tier_label})\n\n"
        f"API Key: {api_key}\n"
        f"Tier:    {tier_label}\n\n"
        f"Add this header to every API request:\n"
        f"  X-API-Key: {api_key}\n\n"
        f"Verify your key: {check_url}\n"
        f"API docs:        {docs_url}\n"
        f"Pricing:         {pricing_url}\n\n"
        f"Keep this key private — treat it like a password."
    )

    payload = json.dumps({
        "from":    from_addr,
        "to":      [email],
        "subject": subject,
        "html":    html_body,
        "text":    text_body,
    }).encode()

    total_attempts = 1 + max_retries
    for attempt in range(1, total_attempts + 1):
        req = urllib.request.Request(
            _RESEND_URL,
            data=payload,
            headers={
                "Authorization": f"Bearer {api_key_env}",
                "Content-Type":  "application/json",
            },
            method="POST",
        )
        try:
            with urllib.request.urlopen(req, timeout=10) as resp:
                status = resp.status
                print(f"[emailer] sent to {email} tier={tier} status={status} attempt={attempt}", flush=True)
                if status in (200, 201):
                    return True
                # Unexpected 2xx-variant — treat as failure and retry
                print(f"[emailer] unexpected status {status} on attempt {attempt} (recipient={email})", flush=True)
        except urllib.error.HTTPError as e:
            body = ""
            try:
                body = e.read().decode()
            except Exception:
                pass
            print(f"[emailer] HTTP error {e.code} sending to {email} attempt={attempt}: {body}", flush=True)
            # Only a small set of 4xx codes are transient and worth retrying:
            #   429 Too Many Requests (rate limit) — retryable, honour Retry-After
            #   408 Request Timeout    — transient, retryable
            # Every other 4xx (400, 401, 403, 404, 405, 410, 413, 415, 422 …)
            # indicates a permanent client-side or auth error — do not retry.
            _RETRYABLE_4XX = {408, 429}
            if 400 <= e.code < 500 and e.code not in _RETRYABLE_4XX:
                print(
                    f"[emailer] CRITICAL: email delivery failed permanently — "
                    f"HTTP {e.code} from Resend (recipient={email})",
                    flush=True,
                )
                return False
            # For 429 honour Retry-After if provided; otherwise fall through
            # to the standard inter-attempt delay below.
            if e.code == 429:
                retry_after_raw = e.headers.get("Retry-After") if e.headers else None
                if retry_after_raw:
                    try:
                        retry_delay_seconds = float(retry_after_raw)
                        print(
                            f"[emailer] 429 rate-limited; honouring Retry-After={retry_delay_seconds}s "
                            f"for {email}",
                            flush=True,
                        )
                    except ValueError:
                        pass
        except Exception as exc:
            print(f"[emailer] error sending to {email} attempt={attempt}: {exc}", flush=True)

        if attempt < total_attempts:
            print(
                f"[emailer] retrying email to {email} in {retry_delay_seconds}s "
                f"(attempt {attempt}/{total_attempts})",
                flush=True,
            )
            _time.sleep(retry_delay_seconds)

    print(
        f"[emailer] CRITICAL: email delivery failed after {total_attempts} attempt(s) — "
        f"recipient={email} tier={tier}",
        flush=True,
    )
    return False
