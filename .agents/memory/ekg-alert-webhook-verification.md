---
name: EKG alert webhook verification
description: Operational rules for the cold-start beat-rate Slack alert — what to check and how to re-verify.
---

# EKG Alert Webhook Verification

## Alert step design (correct pattern)
The `ekg-coldstart-beat-rate` Slack alert in `.github/workflows/heartbeat-ekg-smoke.yml`:
- Uses `jq -nc --arg key value '...'` to build the JSON payload — NOT a heredoc with `${{ }}` expressions
- GitHub context values (`github.repository`, `github.run_id`) are passed via step `env:` block as `GH_REPO` / `GH_RUN_ID`, then used as `${GH_REPO}` / `${GH_RUN_ID}` in the shell script
- This avoids both the backslash-in-JSON bug (HTTP 400 from Slack) and the GitHub expression parser error

**Why:** In a heredoc, `\${{ github.repository }}` expands to the value but leaves a leading `\` — making `\DavidFox998/...` an invalid JSON escape. Using env vars eliminates this.

## Re-verification procedure
1. Temporarily raise `required_ticks` in `test_beat_fires_at_200ms_rate_cold_start` from 5 to an impossible value (e.g. 1000)
2. Push to main — `ekg-coldstart-beat-rate` runs on push (not on schedule)
3. Fetch job logs via GitHub API; confirm `Fire Slack alert on cold-start beat-rate failure` shows `[success]` and log contains `Slack alert delivered (HTTP 200)`
4. Restore threshold to 5 and push

## Primary vs cold-start alerts
Both `heartbeat-ekg-smoke` and `ekg-coldstart-beat-rate` have their own Slack alert steps — verify independently; a working primary alert does not imply the cold-start alert works.
