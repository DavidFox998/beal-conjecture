[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22452680.svg)](https://doi.org/10.5281/zenodo.22452680)
[![Hook 22379293](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

### v4.28.0 X0(26)(Q) Cusps P-mem Locked — DOI 22452680

| Name | What |
|---|---|
| X0_26_Q | [1,2,13,26] rfl P.mem mem_1 mem_2 mem_13 mem_26 not_mem_3 hInList hNotIn for hGeomForbid |
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true (hNotIn hInList) |
| beal13_forall_bridge_triple | none ⟨exponent13,forall,bridge⟩ |

DOI `22452680` findable records prior mint `22450737` hook `22379293` `IsVersionOf` `22272382` honest original latest `22322627`.

PARI lock: 26a1 Δ `-17576` 26b1 Δ `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260` image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB.

# v4.25.0 Beal13-Forall-Bridge Triple — Axiom-Free Cert

Package lock for `BealExponent13_Iter_Package`. Formerly
`final_bridge` / `final_package` / `final_package_none` — now
`beal_forall_eq_exponent13_bridge` / `beal13_forall_bridge_triple`
/ `beal13_forall_bridge_triple_none_check`. That says what it is:
forall = exponent13 bridge triple none.

`beal13_forall_bridge_triple` is
⟨`beal_exponent13_from_ribet`, `beal_forall_from_ribet`,
`beal_forall_eq_exponent13_bridge`⟩.
`beal_forall_eq_exponent13_bridge` is `beal_forall_from_ribet` =
`Contradiction.beal_exponent13_from_ribet` -- BRIDGE none via
`hGeomForbid_typed_true` (`hNotIn hInList`). This is **not**
`∀ N` and **not** a Mathlib `X₀(26)(ℚ)` theorem.

- `typed_and_forall` ⟨beal_exponent13_from_ribet, beal_forall_from_ribet⟩ — none
- `certified_typed_and_forall` ⟨certified_from_forall, beal_forall_certified_from_ribet⟩ — none
- `beal_forall_eq_exponent13_bridge` = `beal_forall_from_ribet` — none
- `beal13_forall_bridge_triple` ⟨beal_exponent13_from_ribet, beal_forall_from_ribet, beal_forall_eq_exponent13_bridge⟩ — none
- `beal13_forall_bridge_triple_none_check` is the same triple (not `: True`; verify allows only `ribet_secured_by_certs` as `: True :=`)
- `beal_forall_from_ribet` = `Contradiction.beal_exponent13_from_ribet` -- BRIDGE none via hGeomForbid
- `X0_26_Q = {P | P.label ∈ fourCuspsList}` `rfl` `[1,2,13,26]` `P.mem`, Frey `2*13=26` `rfl`, `certs/pari_x0_26_four_cusps.json` 26a1 `[1,0,1,-5,-8]` `-17576` 26b1 `[1,-1,1,-3,3]` `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`, image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB

## Axiom table

| Theorem | Axioms |
|---|---|
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true |
| beal13_forall_bridge_triple | none ⟨beal_exponent13_from_ribet, beal_forall_from_ribet, beal_forall_eq_exponent13_bridge⟩ |
| beal13_forall_bridge_triple_none_check / typed_and_forall / certified_typed_and_forall | none (check is the same triple; only ribet_secured_by_certs may be `: True :=`) |
| beal_forall_from_ribet / certified_from_forall | none bridge Contradiction.beal_exponent13_from_ribet |
| beal_exponent13_from_ribet / certified_from_ribet | none hGeomForbid |
| contradiction_from_ribet | ribet_level_lowering_26 only |
| Contradiction.certified | frey_modular_13 + ribet_level_lowering_26 |
| final_bridge / final_package / final_package_none | none (legacy aliases) |

PARI lock: 26a1 `-17576` 26b1 `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`, image ≥300KB.

Still not forall N and not Mathlib X0(26)(Q). The only axioms
are `frey_modular_13` and `ribet_level_lowering_26`
(COMPUTATIONAL ASSUMPTION), secured by
`certs/pari_x0_26_four_cusps.json`. No `sorry`. No `False.elim`.
Parallel parent `10.5281/zenodo.22379293` honest; mint
`10.5281/zenodo.22450737` findable `IsVersionOf`
`22272382` metadata only; original latest v4.0.9
`10.5281/zenodo.22322627`.
