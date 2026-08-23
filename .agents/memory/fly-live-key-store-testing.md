---
name: Fly live key-store testing
description: Constraints for testing a new ZeroBeacon API key against the running Fly process.
---

Keys written through a separate Fly machine-exec process are persisted but are not recognized by the already-running app until it reloads its key store. A test key must be removed from persistent storage and the app restarted again to revoke its in-memory copy.

**Why:** The production service retains its key store in process memory, while machine-exec commands run in a different process. The machine-exec environment also intentionally excludes the deployment-only admin secret, so it cannot use the app's protected live key-issuance route.

**How to apply:** For an end-to-end paid-access smoke test, create a dedicated temporary key on the mounted volume, restart and wait for the health check, test through the gateway, delete the connection and key, then restart once more and verify the removed key is rejected. Expect the single Fly machine to auto-stop when idle; start it before machine exec.