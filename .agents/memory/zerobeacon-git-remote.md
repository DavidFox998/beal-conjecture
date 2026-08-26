---
name: Workspace and Beal git boundaries
description: Keep the ZeroBeacon workspace history separate from the Beal repository; the embedded Beal source is not an independent checkout.
---

The `origin` remote in the ZeroBeacon API workspace must point to:
`https://github.com/DavidFox998/zerobeacon.git`

The Beal source under the workspace's `.worktrees` directory can be tracked as
a subtree of the ZeroBeacon workspace rather than as an independent Git
checkout. Never push that workspace `main` branch to `beal-conjecture`.

**Why:** The workspace was previously misconfigured with `origin` pointing to
the wrong proof repository. Later, the embedded Beal tree's commits had no
merge base with the live Beal `main`; force-pushing them would have replaced
the Beal repository with unrelated ZeroBeacon history and nested the actual
Lean source below the workspace path.

**How to apply:** Before any push, verify both `git rev-parse --show-toplevel`
and the destination URL. Publish Beal changes from a proper clone based on the
live `beal-conjecture/main`, with Beal files at repository root. If histories
have no merge base, do not force-push; reconstruct the intended source commits
on the real Beal base.

The Fly.io app name is `zerobeacon-mf-1000`; the Smithery server name is
`davidjfox998/zerobeacon-1050`; the public URL is `https://zerobeacon.ai`.
