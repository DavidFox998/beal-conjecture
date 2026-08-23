---
name: Resend SMTP on Fly.io
description: Resend HTTP API is blocked by Cloudflare from Fly.io SJC IPs; SMTP works fine
---

# Resend email on Fly.io — must use SMTP not HTTP API

## The rule
Always use `smtp.resend.com:587` (STARTTLS) for Resend on this Fly.io deployment.
Never use the HTTP API (`api.resend.com`) from the Fly.io machine.

**Why:** Resend's HTTP endpoint is proxied through Cloudflare, which returns HTTP 403
error-code 1010 for Fly.io SJC machine IPs. This is an IP-range block, not a key problem.
The same key returns HTTP 200 from Replit but 403 from the Fly machine.
SMTP bypasses Cloudflare entirely — SMTP login (235 Authentication successful) confirmed
working from the live machine.

## SMTP credentials
- host: smtp.resend.com
- port: 587 (STARTTLS)
- username: `resend` (literal string, not the API key)
- password: RESEND_API_KEY env secret

## How to apply
- `validate_resend_key()` in `core/emailer.py` uses `smtplib.SMTP` login as its probe.
- `send_api_key_email()` uses `smtplib` + `MIMEMultipart` to send.
- If email sending is added anywhere else in the codebase, use SMTP, not `urllib` to api.resend.com.
- If a future Fly.io region change is made, re-verify that SMTP still works from the new region.
