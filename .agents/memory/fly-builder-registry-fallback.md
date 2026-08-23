---
name: Fly builder registry fallback
description: How to deploy when Fly Depot has an internal registry authorization failure.
---

If Fly app status authentication works but a remote Depot build fails while
pushing to `registry.fly.io` with an `_api.internal` HTTP 401, deploy using the
non-Depot remote builder (`--depot=false`).

**Why:** The failure is in the Depot-to-Fly internal registry path, not the
app's Fly API authentication or Dockerfile. Retrying through the alternate
remote builder has successfully completed the same release.

**How to apply:** Validate the app and run tests first. Use the non-Depot flag
for the deploy, then verify the live health endpoint and public discovery
surfaces. Do not rotate a working Fly token solely because the Depot registry
returned this error.