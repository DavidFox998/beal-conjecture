---
name: ZeroBeacon API git remote
description: The correct GitHub remote for the ZeroBeacon API workspace is zerobeacon, not brothers-desert-proof.
---

The `origin` remote in the ZeroBeacon API workspace must point to:
`https://github.com/DavidFox998/zerobeacon.git`

**Why:** The workspace was previously misconfigured with `origin` pointing to `brothers-desert-proof` (the Lean math proof repo). API code commits were landing in the wrong repo for an extended period. Fixed by running `git remote set-url origin`.

**How to apply:** Before any `git push`, verify with `git remote get-url origin`. If it shows `brothers-desert-proof`, run:
```
git remote set-url origin https://x-access-token:${GH_PUSH_TOKEN}@github.com/DavidFox998/zerobeacon.git
```
The Fly.io app name is `zerobeacon-mf-1000`; the Smithery server name is `davidjfox998/zerobeacon-1050`; the public URL is `https://zerobeacon.ai`.
