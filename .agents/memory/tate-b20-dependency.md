---
name: Tate-to-B20 dependency
description: How the final B20 descent separates Tate-certified local arithmetic from the Wiles descent skeleton.
---

The final B20 descent must derive every odd-prime exact-divisibility edge from
the canonical Frey model and the local Tate theorem. Wiles supplies only the
odd prime, residual-prime separation, quotient equation, preserved-form token,
and finite descent skeleton. The terminal 2-adic exponent-one certificate
remains a separate explicit data input.

**Why:** Duplicating exact-divisibility evidence inside Wiles data allowed the
final proof to bypass the independently audited Tate theorem, while treating
the terminal factor at 2 as implicit would overstate the odd-prime local result.

**How to apply:** Keep exact divisibility out of Wiles and per-edge Galois
witnesses. Certify the exact arithmetic plan from Tate before enriching it with
Galois, Hecke, and patching data, and keep the 2-adic certificate visible at the
final conditional boundary.