---
name: Task completion evidence
description: How to distinguish queued planning records from work that is actually complete.
---

Treat proposed or pending task records as planning state, not as proof that work
is unfinished or complete. Maintain a compact evidence ledger with only two
outcomes—complete or not complete—and name the passing build/test or remaining
work for each item.

**Why:** The workspace can contain finished implementations whose queue records
remain open, while other records describe work that has only been proposed.
Using queue state alone makes completed work look stuck and encourages duplicate
implementation. Calling unfinished work “blocked” also obscures the simple
completion decision.

**How to apply:** Before starting a queued item, search the current code,
recent commits, and validation logs. Mark it verified only after a reproducible
check passes; otherwise leave it not complete and describe the remaining
verification or implementation work without creating a separate blocked status.