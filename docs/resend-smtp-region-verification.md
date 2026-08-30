# Resend SMTP region verification

## Verification record

**Date:** 2026-08-30  
**Application:** `zerobeacon-mf-1000`  
**Fly target region:** `sjc`  
**Configured region:** `fly.toml` `primary_region = "sjc"`  
**Machine state:** one started machine in `sjc`

The probe was executed inside the live Fly machine in the target region. It
used `core.emailer.validate_resend_key()` and did not send an email.

| Scenario | Result | Sanitized probe result |
| --- | --- | --- |
| Real `RESEND_API_KEY` over SMTP STARTTLS | Pass | `ok=True`, `reason=ok` |
| Deliberately invalid credential | Pass | `ok=False`, `SMTP authentication failed — invalid or expired key` |
| Representative refused connection | Pass | `ok=False`, `ConnectionRefusedError` |

The successful login confirms that SMTP reachability and authentication still
work from the deployed region. The two failure cases confirm that the probe
does not treat an authentication failure or a network failure as a valid key.
No secret value was printed or recorded.

## Recheck after a future region change

After changing the Fly placement, run the same probe from the new machine and
update this record with the observed region and sanitized results. Keep the
Resend path on `smtp.resend.com:587` with STARTTLS; do not switch the probe to
the Cloudflare-fronted HTTP endpoint.