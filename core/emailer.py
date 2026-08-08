"""
Transactional email sender for Zerobeacon MF 1000.

Uses Resend via SMTP (smtp.resend.com:587 / STARTTLS) rather than the
Resend HTTP API.  Resend's HTTP API endpoint (api.resend.com) is routed
through Cloudflare, which blocks certain cloud-provider IP ranges (Fly.io
included) with error 1010.  SMTP takes a direct network path that is not
affected by this restriction.

SMTP credentials
    host:     smtp.resend.com
    port:     587  (STARTTLS)
    username: resend          (literal string)
    password: $RESEND_API_KEY

Set RESEND_API_KEY as a Fly.io secret.  Set EMAIL_FROM to your own
verified Resend domain address when ready; default is onboarding@resend.dev
(works on Resend free plan without domain verification).

Usage:
    from core.emailer import send_api_key_email
    send_api_key_email(email="user@example.com", api_key="zbk_...", tier="pro_10")
"""

import os
import smtplib
import time as _time
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

from core.keystore import TIER_LABEL

_BASE_URL        = "https://zerobeacon.ai"
_SMTP_HOST       = "smtp.resend.com"
_SMTP_PORT       = 587
_SMTP_USER       = "resend"          # Resend requires this literal username


def validate_resend_key(api_key_env: str | None = None) -> tuple[bool, str]:
    """
    Probe Resend via SMTP login to confirm RESEND_API_KEY is valid.

    Uses SMTP STARTTLS to smtp.resend.com:587.  A successful login (SMTP 235)
    means the key is live.  This avoids the Resend HTTP API endpoint
    (api.resend.com) which Cloudflare blocks for certain cloud-provider IPs.

    Returns (True, "ok") on success, or (False, reason) on failure.
    Never raises — safe to call from startup hooks or background tasks.

    Args:
        api_key_env: override the env-var lookup (used in tests).
    """
    if api_key_env is None:
        api_key_env = os.environ.get("RESEND_API_KEY", "").strip()

    if not api_key_env:
        return False, "RESEND_API_KEY is not set"

    try:
        with smtplib.SMTP(_SMTP_HOST, _SMTP_PORT, timeout=10) as s:
            s.starttls()
            s.login(_SMTP_USER, api_key_env)
        return True, "ok"
    except smtplib.SMTPAuthenticationError:
        return False, "SMTP authentication failed — invalid or expired key"
    except smtplib.SMTPConnectError as exc:
        return False, f"SMTP connection error: {exc}"
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
    Send the customer their API key by email via Resend SMTP.

    Automatically retries up to ``max_retries`` additional times (default 1)
    after a short delay when the first attempt fails.

    Returns True on success, False if every attempt fails (logs each error).
    Never raises — callers (webhook handlers) must not crash due to email issues.
    """
    api_key_env = os.environ.get("RESEND_API_KEY", "").strip()
    from_addr   = os.environ.get("EMAIL_FROM", "onboarding@resend.dev").strip()

    if not api_key_env:
        print(
            "[emailer] CRITICAL: email delivery failed — RESEND_API_KEY is not set "
            f"(skipping email to {email})",
            flush=True,
        )
        return False

    tier_label  = TIER_LABEL.get(tier, tier)
    check_url   = f"{_BASE_URL}/key/check"
    docs_url    = f"{_BASE_URL}/docs"
    pricing_url = f"{_BASE_URL}/pricing"
    subject     = f"Your Zerobeacon API key ({tier_label})"

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

    msg = MIMEMultipart("alternative")
    msg["Subject"] = subject
    msg["From"]    = from_addr
    msg["To"]      = email
    msg.attach(MIMEText(text_body, "plain"))
    msg.attach(MIMEText(html_body, "html"))

    total_attempts = 1 + max_retries
    for attempt in range(1, total_attempts + 1):
        try:
            with smtplib.SMTP(_SMTP_HOST, _SMTP_PORT, timeout=15) as s:
                s.starttls()
                s.login(_SMTP_USER, api_key_env)
                s.sendmail(from_addr, [email], msg.as_string())
            print(
                f"[emailer] sent to {email} tier={tier} attempt={attempt}",
                flush=True,
            )
            return True

        except smtplib.SMTPAuthenticationError as exc:
            print(
                f"[emailer] CRITICAL: SMTP authentication failed — invalid or expired key "
                f"(recipient={email}): {exc}",
                flush=True,
            )
            return False   # auth errors are permanent; no point retrying

        except smtplib.SMTPRecipientsRefused as exc:
            print(
                f"[emailer] CRITICAL: recipient refused by Resend — {email}: {exc}",
                flush=True,
            )
            return False   # bad address; permanent

        except smtplib.SMTPSenderRefused as exc:
            print(
                f"[emailer] CRITICAL: sender refused by Resend — from={from_addr}: {exc}",
                flush=True,
            )
            return False   # domain not verified; permanent

        except Exception as exc:
            print(
                f"[emailer] error sending to {email} attempt={attempt}: "
                f"{type(exc).__name__}: {exc}",
                flush=True,
            )

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
