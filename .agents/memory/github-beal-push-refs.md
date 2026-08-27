---
name: Beal push refs
description: The workspace has an ambiguous local Beal branch and a separate remote-tracking ref; pushes must target the isolated local branch explicitly.
---

Use `refs/heads/beal/main` as the isolated Beal source and push it to the Beal remote's `refs/heads/main`. The workspace `main` branch contains unrelated ZeroBeacon history and must not be pushed to the Beal repository. Git's standard username/token credential flow works for this GitHub remote; a Bearer extra header may be rejected by Git's smart HTTP endpoint.

**Why:** The checkout contains two branches named `main` across different project histories, and an unqualified ref can resolve ambiguously or include thousands of unrelated files.

**How to apply:** Before a Beal push, compare `refs/heads/beal/main` with `refs/remotes/beal/main`, confirm the intended commit count, and use fully qualified refspecs.