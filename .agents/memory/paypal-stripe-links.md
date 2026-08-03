---
name: PayPal and Stripe links
description: Canonical payment links for Zerobeacon MF 1000 — use these everywhere, never invent variants
---

# Canonical Payment Links

**Why:** The PayPal handle was previously set to `davidjfox998` in error. The owner confirmed the correct handle is `davidfox223`. Any future code generation, router rebuild, or description update must use the values below.

## Correct values

| Field | Value |
|---|---|
| PayPal handle | `davidfox223` |
| PayPal base | `https://paypal.me/davidfox223` |
| PayPal $10 | `https://paypal.me/davidfox223/10` |
| PayPal $100 | `https://paypal.me/davidfox223/100` |
| PayPal $1000 | `https://paypal.me/davidfox223/1000` |
| Stripe checkout | `https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01` |
| Site | `https://zerobeacon-mf-1000.fly.dev` |

## How to apply

- `core/beacon.py` — `PAYPAL_ME`, `PAYPAL_LINK_10/100/1000`, `PAYPAL_EMAIL`
- `generate_routers.py` — `PAYPAL_ME` constant used in all router generation
- All 20 router files — every `paypal=` field in responses and `description=` strings
- Main app HTML — landing page and pricing page links

**Never use:** `davidjfox998` — this was wrong and has been globally replaced.
