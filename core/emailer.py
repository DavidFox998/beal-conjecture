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
_RESEND_VALIDATE_URL = "https://api.resend.com/api-keys"


def validate_resend_key(api_key_env: str | None = None) -> tuple[bool, str]:
    """
    Probe the Resend API to confirm RESEND_API_KEY is valid and accepted.

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

    req = urllib.request.Request(
        _RESEND_VALIDATE_URL,
        headers={"Authorization": f"Bearer {api_key_env}"},
        method="GET",
    )
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            if resp.status == 200:
                return True, "ok"
            return False, f"unexpected status {resp.status}"
    except urllib.error.HTTPError as e:
        if e.code in (401, 403):
            return False, f"invalid or expired key (HTTP {e.code})"
        return False, f"HTTP {e.code} from Resend validation endpoint"
    except Exception as exc:
        return False, f"{type(exc).__name__}: {exc}"


def send_api_key_email(email: str, api_key: str, tier: str) -> bool:
    """
    Send the customer their API key by email.

    Returns True on success, False on any failure (logs the error).
    Never raises — callers (webhook handlers) must not crash due to email issues.
    """
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
            print(f"[emailer] sent to {email} tier={tier} status={status}", flush=True)
            return status in (200, 201)
    except urllib.error.HTTPError as e:
        body = ""
        try:
            body = e.read().decode()
        except Exception:
            pass
        print(f"[emailer] HTTP error {e.code} sending to {email}: {body}", flush=True)
        print(f"[emailer] CRITICAL: email delivery failed — HTTP {e.code} from Resend (recipient={email})", flush=True)
        return False
    except Exception as exc:
        print(f"[emailer] error sending to {email}: {exc}", flush=True)
        print(f"[emailer] CRITICAL: email delivery failed — {type(exc).__name__}: {exc} (recipient={email})", flush=True)
        return False
