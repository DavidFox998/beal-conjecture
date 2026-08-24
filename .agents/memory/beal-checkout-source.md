---
name: Beal checkout source
description: How to find the current Beal development when this workspace also contains an older embedded copy.
---

## Rule

For current Beal B14–B20 work, use the `beal/main` revision rather than assuming
the workspace's embedded `beal-conjecture/` directory is current.

**Why:** The embedded copy can retain an older module layout while the remote
development has newer B14 and B20 files. Applying changes to the embedded copy
would create a disconnected patch that does not affect the active Beal branch.

**How to apply:** Before editing or building a Beal task, compare the requested
module names with the fetched `beal/main` tree. If they differ, use a temporary
worktree of that revision for inspection and validation, and do not overwrite
the unrelated workspace root.