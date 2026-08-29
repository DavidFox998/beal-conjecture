---
name: GitHub connector workflow scope
description: The connected GitHub OAuth scope can manage repository code but may not write files under .github/workflows.
---

The connected GitHub integration may return HTTP 403 for `.github/workflows/*`
even when it has full `repo` access and can create branches, blobs, pull
requests, and ordinary repository files.

**Why:** GitHub treats workflow-file mutation as a separate permission boundary;
the integration's reported OAuth scope may omit that permission and its
reauthorization context may not offer it.

**How to apply:** Publish ordinary source files through the connector when
needed, explicitly report any workflow file that could not be included, and do
not claim the pushed commit is exact. Do not weaken the workflow or retry
destructive low-level writes; use a credential/integration with workflow scope
for that file.