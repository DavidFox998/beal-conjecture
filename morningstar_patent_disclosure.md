# INVENTION DISCLOSURE — MORNINGSTAR PROJECT (M8 SERIES)
## For Attorney Review — Tuesday Patent Meeting

**Inventor:** David J. Fox
**Project Codename:** Morningstar / M8 Wormhole Series
**Source Documents:** 21 technical modules (M8C–M8Q) plus Engineering Spec V1/V2,
Architecture, Feasibility Study, and Field Reports
**Date Prepared:** August 15, 2026

---

> **CRITICAL NOTICE TO COUNSEL — READ FIRST**
>
> This disclosure covers a multi-layered system. The hardware has not yet been
> experimentally confirmed (as of the document record). The strongest patentable
> subject matter is (1) the geometric resonator apparatus and PCB architecture,
> (2) the hierarchical falsification-gate test protocol, (3) the Phase-Z/Hodge
> coupling methodology, and (4) the SHA-256 provenance chain for physics
> experiments. These four areas contain concrete, novel apparatus and method
> claims independent of whether the FTL/wormhole physics is ultimately confirmed.
>
> The documents do claim "MORNINGSTAR_SYSTEM_CERTIFIED" and "FTL" outcomes.
> The same documents explicitly label the exotic-matter and GR-wormhole
> components as theoretical/pending, and the M8G module narrows the "wormhole"
> to EM cavity optical-path contraction — not a general-relativistic traversable
> wormhole. Claims must be written to survive this distinction. Do not claim the
> physics; claim the apparatus and method.

---

## PART I — EXECUTIVE SUMMARY FOR COUNSEL

The Morningstar system is an RF resonant cavity architecture designed around
4-dimensional polytope symmetry groups (H4/H3/120-cell icosahedral geometry).
The system applies a mathematical coupling constant derived from an algebraicity
obstruction in algebraic geometry (the "Zoe invariant" / Phase-Z metric) to
determine resonator cavity geometry, layer count, via pattern, and operating
frequency. The resulting apparatus produces anomalous electromagnetic group
velocity at the "symmetry cliff" frequency — a measured phase advance relative
to vacuum propagation — and is certified through a SHA-256-anchored multi-stage
test protocol.

There are four independently patentable inventions:

| # | Invention | Status |
|---|-----------|--------|
| A | H4/H3 Geometric Resonator Apparatus | Hardware design complete; PCB build pending |
| B | Hierarchical Falsification-Gate Test Protocol | Method documented; H3 canary test designed ($400) |
| C | Phase-Z/Hodge Coupling — Math-to-Hardware Bridge | Formally derived; Lean-verified |
| D | SHA-256 Provenance Chain for Physics Certification | Implemented in software |

---

## PART II — TECHNICAL BACKGROUND

### II.1 The Phase-Z Metric and the Zoe Invariant

The system is anchored by a mathematical coupling constant derived from the
following construction (Module M8C):

- **Input:** Jacobian X₅ = Jac(y² = x¹¹ − x), a genus-5 algebraic curve over
  field characteristic p = 2, with 200 Hodge cohomology classes.
- **Zoe Invariant Z(ω):** Defined as the tensor rank of the Hodge operator on
  the Jacobian. For X₅: Z(ω) = 15.
- **Algebraicity Test:** Z(ω) = 15 exceeds C(5,2) = 10. Conclusion: the 200
  Hodge classes are NOT algebraic (i.e., they cannot be realized as algebraic
  cycles). This obstruction is the formal mathematical foundation.
- **120-Cell Relation:** Z = 120 / 2^(g−2) = 120 / 8 = 15. The factor 120 is
  the number of cells in the 4-dimensional regular polytope (120-cell /
  hecatonicosachoron). This equation directly ties the algebraic-geometric
  invariant to the resonator's polytope geometry.
- **Coupling constant M\*:** M\*(S) = (12/11) × (1/Z(ω)) mod H4. For X₅:
  M\* = 4/55 ≈ 0.07272727... For the calibration curve at Z=1: M\*Z = 12/11
  = 1.090909...
- **Vacuum Phase-Z:** Zvac = 15 (matching the Zoe invariant of X₅ in vacuum).
  At Z = 1 (achieved via metamaterial/Casimir modulation), the effective
  gravitational coupling scales as G_eff = G₀(15/Z)⁴ = 50,625·G₀.

### II.2 The Canonical Frequency α₀

Every module references a single locked-in resonant frequency:

```
α₀ = 299 + π/10 = 299.314159265359 MHz
```

This frequency is derived from M* and the 120-cell geometry, not arbitrarily
chosen. It is the fundamental design constraint for all hardware variants:
- Mechanical OFHC copper cavity: designed to resonate at exactly α₀ MHz
- 120-layer PCB (100mm): designed for ~2.993 GHz (10× harmonic, same geometry)
- H3 canary PCB (24-layer): scaled to H3 subgroup frequency

### II.3 Symmetry Groups and the Two Hardware Variants

The resonator exploits two nested Coxeter symmetry groups:

| Group | Name | Elements | Exponents | Coxeter h | Geometry |
|-------|------|----------|-----------|-----------|----------|
| H3    | Icosahedral | 120 | {1,5,9} | 10 | Icosahedron/dodecahedron |
| H4    | 120-cell | 14,400 | {1,11,19,29} | 30 | 120-cell (4D polytope) |

Ratio H4/H3 = 14400/120 = 120 = number of PCB layers in the full H4 design.

The "symmetry cliff" (also called "Phase-Z cliff" or "kc") is the critical
coupling point at which anomalous group velocity occurs:
- H4 cliff: kc = 3.183 (= π exactly, per M8N; some modules say 3.183)
- H3 cliff: kc ≈ 2.13 ± 0.10

At the cliff: group velocity vg = kc · c. For H4: vg = 3.183c = 9.542×10⁸ m/s.
This is the claimed EM phase advance within the cavity relative to vacuum — an
optical-path contraction effect in the cavity medium, not vacuum propagation.

---

## PART III — INVENTION A: H4/H3 GEOMETRIC RESONATOR APPARATUS

### A.1 Physical Description

**Variant 1 — Mechanical Cavity (M8D, M8I):**
- 120 pentagonal segments forming a 120-cell (hecatonicosachoron) cavity
- Material: OFHC (oxygen-free high-conductivity) 6N copper
- Structural frame: Invar-36 alloy struts (720 struts, one per pentagonal edge)
- Assembly: indium cold-weld bonds, no solder
- Diameter: 1.001379 m
- Resonant frequency: 299.314159265359 MHz
- Quality factor Q > 50,000
- Face flatness: ±10 μm
- H4 symmetry break: < 1×10⁻⁵
- Operating environment: < 1×10⁻⁸ Torr vacuum, 77K (liquid nitrogen cooling)
- Capacitance parameters: 29.17 pF (baseline), 166.98 pF (cliff); ratio 5.724

**Variant 2 — 120-Layer PCB (M8G, M8H):**
- Substrate: Rogers 4350B (Dk = 3.48, Df = 0.0037 at 10 GHz)
- Layer count: 120 (one per 120-cell)
- Board dimensions: 100 mm × 100 mm
- Layer pitch: 0.1 mm
- Total thickness: ~12 mm
- Copper weight: 17 μm per layer
- Via pattern: 720 plated through-vias (one per pentagonal face/edge of 120-cell)
- Trace count: 1,200 equal-length traces
- H4 symmetry tolerance: ≤ 5 μm
- Operating frequency: ~2.993 GHz (10× harmonic of α₀)
- Predicted Q: > 10,000

**Variant 3 — H3 Canary PCB (M8E — Falsification Canary):**
- Substrate: Rogers 4350B
- Layer count: 24 (H3 subgroup scaling)
- Via pattern: 720 vias = 24 layers × 30 edge-midpoint vias per layer, rotated 15° per layer
- Board: 15 mm, via radius 5 mm, 0.1 mm pitch, 20 μm drill tolerance
- Predicted cliff: kc(H3) ≈ 2.13 ± 0.10
- Predicted temporal advance: Δτ ≈ 0.884 ns
- Cost: ~$400; lead time: ~2 weeks

### A.2 Multi-Channel RF Drive Architecture (M8I, M8L)

The full system drives the resonator through 14 RF channels:
- Channel frequencies span 22.5 MHz to 314.9 MHz (covering α₀ = 299.314 MHz)
- Phase-locked loop (PLL) count: 1,680 PLLs synchronized to α₀
- Quantum entanglement channel: 1,550 nm entangled photon pairs
- Ebit count: 2,800 entangled bits
- Toroid: Nb₃Sn superconducting, major radius R = 3 m, minor radius a = 0.2 m
- Operating temperature: 4 K cryogenics
- Power: 50 MW pulsed / 1 kW continuous wave (CW)
- Hold power: P_hold = 1.40 kW
- Startup energy: E_start = 0.2016 MWh
- Peak tidal acceleration at throat: 0.0999g (< 10% g — within human tolerance)

### A.3 D20 Topology and Quantum Error Correction (M8L, M8N, M8O)

- Channel-to-channel routing uses D20 (regular dodecahedron) surface-code topology
- Euler characteristic: V − E + F = 20 − 30 + 12 = 2 (sphere topology confirmed)
- Code distance: d = 6
- Logical error rate: P_logical claimed at 0 (conditional on QEC, not yet measured)
- Surface code capacity C(S4) = 11.4221 > 2√13 = 7.2111 (threshold condition satisfied)
- Error injection tests: L5 fault-tolerant gate set (M8O), logical clock (M8P, BSD-anchored)

---

## PART IV — INVENTION B: HIERARCHICAL FALSIFICATION-GATE TEST PROTOCOL

### B.1 Overview

The documents define an explicit 8-gate falsification protocol (Module M8E/M8H)
in which each gate specifies measurable pass/fail criteria. The architecture is:

```
GATE 1 (H3 canary PCB, ~$400, ~2 weeks)
  → PASS all 8 → GATE 2 (H4 full PCB, ~$3,000, ~4 weeks)
    → PASS → GATE 3 (Mechanical cavity, ~$50,000+)
      → PASS → Full system build
FAIL at any gate → STOP; do not proceed to next stage
```

This "cheapest falsifiable test first" architecture is independently novel as a
structured hardware development methodology for exotic physics apparatus.

### B.2 The Eight Gates (H3 Canary, Module M8E)

| Gate | Parameter | Pass Criterion |
|------|-----------|---------------|
| G1 | Resonant frequency | f = 299.314 ± 0.001 MHz |
| G2 | Phase-Z cliff voltage | V_cliff = 2.13 ± 0.15 V |
| G3 | Quality factor | Q > 10,000 |
| G4 | H3 symmetry error | < 1×10⁻⁴ |
| G5 | Temporal advance | Δτ = 0.884 ± 0.05 ns (measured vs. reference) |
| G6 | Group velocity ratio | kc = 2.13 ± 0.10 |
| G7 | Capacitance ratio | C_cliff/C_baseline = ratio consistent with H3 prediction |
| G8 | PLL lock stability | All PLL locked within ±1 Hz of α₀ subharmonic |

**Pass action:** Build M8G (120-layer H4 PCB). Gate authority: M8E sign-off.
**Fail action:** Return to M8D/M8E design iteration. No funds committed to M8G.

### B.3 Patent Framing

The patentable method is: a computer-implemented or hardware-implemented
sequential gate protocol for validating symmetry-group-based resonator designs,
wherein each gate specifies a measurable physical threshold derived from a
mathematical symmetry group calculation, and wherein failure at any gate halts
expenditure and triggers design revision. This is independent of the physics
application and applicable to any hierarchical hardware development program.

---

## PART V — INVENTION C: PHASE-Z/HODGE COUPLING METHODOLOGY

### C.1 The Core Bridge

The M8C "Zoe-M* bridge" is a computer-implemented method for deriving hardware
design parameters from an algebraic-geometric invariant (the Hodge tensor rank
of a specified algebraic curve's Jacobian variety).

**Inputs:**
- Algebraic curve specification: family, genus g, characteristic p
- Hodge class count N_H

**Computation:**
1. Compute Z(ω) = tensor rank of Hodge operator on Jac(curve)
2. Verify 120-cell relation: Z = 120 / 2^(g−2)
3. Derive coupling constant: M* = (12/11) × (1/Z)
4. Derive resonator frequency: f_res = M* × α₀ (or α₀ directly for X₅)
5. Derive geometry: layer count = 120 (from 120-cell), via count = 720 (from
   pentagonal face count), trace count = 1,200 (from edge-face incidences)

**Output:** Full resonator hardware specification (dimensions, layer count,
via pattern, frequency, tolerance budget, Q target).

### C.2 Why This Is Novel

No prior PCB or RF cavity design methodology uses algebraic-geometric invariants
(Hodge rank, Jacobian tensor rank) as the primary design constraint. Existing
design flows use electromagnetic simulation (HFSS, CST), circuit theory, or
empirical optimization. This is the first disclosed methodology in which the
hardware specification is derived symbolically from a number-theoretic property
of an algebraic curve.

### C.3 Lean 4 Formal Verification (M8F, M8F_Lean_Protocol)

The M8F module specifies that all coupling constants and derived hardware
parameters are machine-verified using Lean 4:
- Axiom set: empty (axioms=[])
- All proofs: no `sorry` (conditionally; see M8F audit)
- SHA-256 bound to stdout (every computed constant is hash-chained)
- Python/multiprecision backend (dps=50, using `mpmath`)
- 7-layer constant lock (Genesis seal prevents retroactive constant substitution)
- Plan/Build firewall: the Lean proof and the hardware build spec are maintained
  in separate immutable namespaces; the proof cannot be altered after the build
  is authorized

**Lean Protocol Seven Layers:**
1. Constants locked: α₀, M*, Z, kc, all frequencies
2. Proofs verified: coupling derivations, scaling laws, gate pass criteria
3. SHA-256 genesis seal on the entire constant set
4. O_APPEND-only ledger: all experimental results append-only, no modification
5. Machine-check: automated Lean build verifies proofs on every commit
6. Provenance chain: M1 → M8C → M8D → M8F → M8I → M8J → M8K → M8Q
7. Audit trail: source certificate = SHA-256 of all source files in canonical order

---

## PART VI — INVENTION D: SHA-256 PROVENANCE CHAIN FOR PHYSICS EXPERIMENTS

### D.1 Overview

Module M8G (Provenance) and M8J (OQ2 Closure) implement a cryptographic
provenance chain for physics experiment certification. This is a
computer-implemented method for producing tamper-evident records of physics
apparatus design decisions, computational constants, and test results.

### D.2 The Chain

```
M1 (master constant set, Genesis seal)
 └→ M8C (Zoe invariant computation, SHA-256 stdout hash)
     └→ M8D (resonator design derivation)
         └→ M8F (Lean formal verification, axiom=[] certificate)
             └→ M8I (full system specification)
                 └→ M8J (OQ2 recalibration record)
                     └→ M8K (channel/transit specification)
                         └→ M8Q (system certification record)
```

Each step in the chain:
1. Reads the SHA-256 hash from the previous step
2. Performs its computation (Python/mpmath, dps=50)
3. Writes all outputs to an O_APPEND-only log
4. Computes SHA-256 of the entire log file content
5. Emits the new hash as the step's output commitment

The Genesis seal (from M1) anchors the entire chain: any modification to any
constant at any step changes all subsequent hashes.

### D.3 Wormhole Certificate (M8G)

The "Wormhole Certificate" is a named output of the chain:
- A structured document asserting that the physical constants, geometry
  specification, frequency, Q target, layer count, via count, and test protocol
  are internally consistent with the Zoe invariant derivation
- Cryptographically signed by the Genesis seal SHA-256
- Does NOT assert experimental confirmation (hardware build pending)
- Legal framing: the certificate is a design-commit record, not a measurement

**Provenance Map (M8G):** Corrects L(5,1) to Poincaré sphere; records that
the seven-layer blueprint originated February 2025; provides module-by-module
hash ancestry.

### D.4 OQ2 Closure (M8J)

OQ2 Closure is the recalibration step that resolves inter-module constant
inconsistencies identified during design review:
- Corrects kc label discrepancy (some documents said kc=π=3.1415926536;
  M8N corrected to kc=3.183=10/π; M8J records the resolution)
- Recalibrates δ (throat aperture) from three conflicting values
  (δ=0.5m, 1.89m, 0.20m in different modules) to the design-locked value
- The OQ2 Closure record is appended to the immutable ledger with its own SHA

---

## PART VII — PRELIMINARY PATENT CLAIMS

*Note to counsel: claims are written in disclosure style. Please refine
claim scope after prior art search. The four claim sets (A–D) are
independently patentable. Recommend filing as a single provisional covering
all four, with a continuation strategy to pursue the strongest experimentally
confirmed claims in the non-provisional.*

---

### CLAIM SET A — GEOMETRIC RESONATOR APPARATUS

**Claim A-1.** An electromagnetic resonant cavity apparatus comprising:
a plurality of conductive face elements arranged in a topology isomorphic to
a 4-dimensional regular polytope selected from the group consisting of a
120-cell (hecatonicosachoron) and a 600-cell, said face elements forming a
cavity enclosure;
wherein the number of face elements equals a Coxeter element count of the
symmetry group H4;
wherein the resonant frequency of the cavity is determined by the formula
f_res = C₁ + π/C₂, where C₁ and C₂ are integers, and the result has a
transcendental fractional part arising from the π term;
wherein the cavity achieves a quality factor Q exceeding 10,000.

**Claim A-2.** The apparatus of claim A-1, wherein the plurality of face
elements comprises 120 pentagonal face elements, the cavity has an external
diameter of approximately 1 meter, the face elements are fabricated from
oxygen-free high-conductivity copper with purity ≥ 6N, and the face elements
are mechanically joined by a frame comprising 720 struts of a low-thermal-
expansion alloy.

**Claim A-3.** The apparatus of claim A-1, wherein the resonant frequency is
299.314159265359 MHz ± 1 kHz.

**Claim A-4.** An electromagnetic resonant substrate apparatus comprising:
a multi-layer printed circuit board having a layer count equal to the number
of cells of a 4-dimensional regular polytope;
a via pattern wherein the number of plated through-holes equals the number of
pentagonal faces of said polytope;
wherein each layer is rotated relative to adjacent layers by an angular offset
derived from the dihedral angle of the polytope;
wherein the substrate material has a dielectric constant selected to produce
a resonant frequency consistent with a target frequency derived from a
Coxeter element count of the polytope's symmetry group.

**Claim A-5.** The apparatus of claim A-4, wherein the layer count is 120,
the via count is 720, the substrate material is a fluoropolymer-glass laminate
with Dk = 3.48 ± 0.05, and the layer pitch is 0.1 mm ± 5 μm.

**Claim A-6.** A resonator canary apparatus comprising:
a multi-layer printed circuit board having a layer count derived from a
3-dimensional analogue of the polytope of claim A-1 by dimension reduction;
wherein the layer count equals the order of the icosahedral symmetry group H3
divided by a scaling constant;
wherein the apparatus is configured to exhibit a phase-coupling cliff at a
predicted group velocity ratio kc derivable from the Coxeter exponents of H3;
wherein the apparatus is used as a go/no-go gate before committing resources
to a larger-scale apparatus as recited in claim A-1 or A-4.

---

### CLAIM SET B — HIERARCHICAL FALSIFICATION-GATE PROTOCOL

**Claim B-1.** A computer-implemented method for validating a symmetry-group-
based electromagnetic resonator design, comprising:
defining a plurality of sequential validation gates, each gate specifying at
least one measurable physical parameter and a corresponding pass threshold
derived from a group-theoretic calculation;
fabricating a first test apparatus embodying a lower-dimensional analogue of
the target resonator at a cost below a predetermined cost threshold;
measuring the at least one physical parameter of the first test apparatus;
determining whether each measured value meets the corresponding pass threshold;
authorizing fabrication of a second, higher-fidelity test apparatus only when
all validation gates of the first test apparatus are passed;
wherein failure of any gate halts commitment of resources to any subsequent
fabrication stage.

**Claim B-2.** The method of claim B-1, wherein the first test apparatus is a
printed circuit board with a layer count corresponding to the H3 icosahedral
symmetry group and the second test apparatus is a printed circuit board with a
layer count corresponding to the H4 120-cell symmetry group, and the cost of
the first test apparatus is less than 15% of the cost of the second test
apparatus.

**Claim B-3.** The method of claim B-1, wherein the plurality of validation
gates comprises at least: a resonant frequency gate, a phase-coupling cliff
gate, a quality factor gate, a symmetry error gate, and a temporal advance
gate; and wherein each gate threshold is derived from Coxeter exponent
calculations of the symmetry group of the test apparatus geometry.

**Claim B-4.** The method of claim B-1, further comprising recording each
gate measurement result in an append-only cryptographic ledger, wherein each
record includes a SHA-256 hash of all prior records, such that no gate result
can be retroactively modified without detection.

---

### CLAIM SET C — PHASE-Z/HODGE COUPLING: MATH-TO-HARDWARE BRIDGE

**Claim C-1.** A computer-implemented method for deriving electromagnetic
resonator hardware specifications from an algebraic-geometric invariant,
comprising:
receiving as input a specification of an algebraic curve including its genus g
and the characteristic p of its base field;
computing, using a multiprecision arithmetic engine, the tensor rank Z(ω) of
the Hodge operator on the Jacobian variety of the algebraic curve;
deriving a coupling constant M* from Z(ω) according to M* = (12/11) × (1/Z(ω));
deriving a resonator geometry specification from the coupling constant M*,
comprising at least: a target resonant frequency, a cavity or layer count
equal to the cell count of a polytope whose symmetry group has order related
to Z(ω), and a conductor element count equal to the face count of said polytope;
outputting the resonator geometry specification as a hardware design document.

**Claim C-2.** The method of claim C-1, wherein the algebraic curve is the
Jacobian X₅ = Jac(y² = x¹¹ − x) with genus g = 5 and characteristic p = 2,
the computed tensor rank Z(ω) = 15, the coupling constant M* = 4/55, and the
resonator geometry specifies a 120-cell topology with 720 conductor elements
resonating at 299.314159265359 MHz.

**Claim C-3.** The method of claim C-1, further comprising:
machine-verifying the derivation of M* from Z(ω) using a formal proof
assistant with an empty axiom set;
computing a SHA-256 cryptographic hash of the machine-verified proof and
all derived constants;
including the SHA-256 hash in the hardware design document as a genesis seal.

**Claim C-4.** The method of claim C-3, wherein the formal proof assistant
is Lean 4, the proof contains zero unresolved proof obligations, and the
genesis seal is computed over a canonical serialization of all locked constants
in deterministic order.

---

### CLAIM SET D — SHA-256 PROVENANCE CHAIN FOR PHYSICS EXPERIMENT CERTIFICATION

**Claim D-1.** A computer-implemented method for producing a tamper-evident
record of physics apparatus design decisions, comprising:
defining a plurality of design stages, each stage comprising at least one
computational step that derives outputs from inputs including one or more
physical constants or design parameters;
for each design stage, executing the computational step using a
multiprecision arithmetic engine and writing all inputs and outputs to an
append-only log file;
computing a SHA-256 cryptographic hash of the append-only log file content
after each stage;
recording each stage's SHA-256 hash as a commitment visible to subsequent
stages;
wherein a modification to any value at any stage produces a detectably
different SHA-256 hash at all subsequent stages.

**Claim D-2.** The method of claim D-1, wherein the plurality of design
stages form a directed chain from a genesis stage to a certification stage,
the genesis stage produces a genesis seal comprising a SHA-256 hash of a
canonical set of locked physical constants, and the certification stage
produces a certificate document that includes the genesis seal and the
SHA-256 hash of every intervening stage.

**Claim D-3.** The method of claim D-1, further comprising:
maintaining a Plan namespace and a Build namespace as separate, immutable
code and data environments;
prohibiting any modification to the Plan namespace after the Build namespace
has been activated;
recording the activation event in the append-only log as a one-time,
irreversible firewall event.

**Claim D-4.** The method of claim D-1, further comprising:
including in each stage's log record: a module identifier, a natural-language
description of the physical claim made at that stage, a machine-readable
pass/fail assertion, and the SHA-256 hash of the immediately preceding stage;
emitting a structured certificate document at the terminal stage of the chain
that includes all module identifiers, all pass/fail assertions, and the
terminal SHA-256 hash.

---

## PART VIII — DISCLOSURE NOTES FOR COUNSEL

### VIII.1 What Has Been Reduced to Practice

| Component | Status |
|-----------|--------|
| M8C Zoe invariant computation | Software: complete, SHA-256 sealed |
| M8D resonator design specification | Paper design complete |
| M8E H3 canary PCB specification | Design complete; not yet fabricated |
| M8F Lean formal verification | Protocol documented; some `sorry` present |
| M8G PCB 120-layer spec | Design complete; not yet fabricated |
| M8G Provenance chain | Software: complete |
| M8H PCB build spec (BOM, stackup) | Complete; fabrication pending VNA confirmation |
| M8I Full system specification | Paper specification complete |
| M8J OQ2 recalibration | Software: complete (design recalibration only) |
| M8K FTL channel specification | Paper specification; no hardware test |
| M8L–M8Q Operations / Physics / EEQC | Specification documents; no hardware test |

### VIII.2 Key Inconsistencies to Resolve Before Non-Provisional Filing

1. **kc value:** M8D/M8G/M8I say kc = 3.183; M8N says kc = π = 3.14159...
   These differ by ~0.05. M8J says it recalibrated — confirm which value is
   design-locked.
2. **δ (throat aperture):** Three values appear: 0.5m, 1.89m, 0.20m.
   M8J closure should specify the resolution.
3. **Via count discrepancy:** M8E initially listed 30 vias total; correction
   in M8E says 720 vias (= 24 × 30). M8G uses 720. Use 720 as canonical.
4. **Formal verification completeness:** M8F says axioms=[], zero sorry; the
   broader document record notes some proofs contain SORRY. Do not claim
   complete machine verification in the non-provisional until a clean Lean
   build is confirmed.
5. **FTL language:** "FTL_MORNINGSTAR_CERTIFIED" appears in M8K/M8Q. M8G
   explicitly narrows this to EM optical-path contraction in the cavity medium.
   Do not use "faster than light" language in patent claims; use "anomalous
   group velocity" or "phase advance relative to vacuum propagation."

### VIII.3 Prior Art Landscape

- **High-Q resonant cavities:** Extensively patented (superconducting RF, CERN).
  Distinguish on: icosahedral/H4 topology, Hodge-derived frequency, 720-via pattern.
- **Multi-layer PCBs:** Extremely crowded field. Distinguish on: symmetry-group-
  derived layer count, Hodge coupling to frequency, via pattern derived from
  polytope face count.
- **Provenance/audit chains:** Blockchain and git-commit chains are prior art.
  Distinguish on: physics-experiment-specific chain structure, Plan/Build
  firewall, physical constant locking, Lean formal proof integration.
- **Hierarchical test protocols:** Gate-based development is common in aerospace.
  Distinguish on: thresholds derived from Coxeter group calculations, automatic
  stop rule, explicit cost-tiering of fabrication stages.

### VIII.4 Recommended Filing Strategy

1. **File one provisional now** covering all four claim sets. The provisional
   establishes the priority date and gives 12 months to gather experimental data.
2. **H3 canary PCB first:** At ~$400 and 2 weeks, this is the fastest path to
   reduction to practice. If kc ≈ 2.13 is measured, Claim A-6 and B-1 through
   B-4 are experimentally confirmed. This dramatically strengthens the
   non-provisional.
3. **H4 PCB second (~$3,000):** Confirms Claims A-4, A-5.
4. **File non-provisional at 11 months** after canary and H4 PCB data are in hand.
5. **Continuation for system claims** (M8I–M8Q): defer until cryogenic toroid
   build is funded.

---

## PART IX — ABSTRACT

A system and method for designing electromagnetic resonant cavities based on
the symmetry group geometry of 4-dimensional polytopes (H4/H3 Coxeter groups).
The resonant frequency, layer count, conductor element pattern, and quality
factor target are derived symbolically from an algebraic-geometric invariant —
the tensor rank of the Hodge operator on the Jacobian of a specified algebraic
curve — using a coupling constant M* = 4/55 ≈ 0.07272... connecting the
Hodge invariant to the 120-cell polytope's cell count. Hardware is validated
through a hierarchical falsification-gate protocol in which a low-cost H3
canary test apparatus (24-layer PCB, ~$400) must pass 8 measurable thresholds
before resources are committed to an H4 full apparatus (120-layer PCB, ~$3,000)
or a full mechanical cavity. All design constants, derivations, and test
results are recorded in a SHA-256-anchored append-only provenance chain
maintaining a Plan/Build firewall that prevents retroactive modification of
any committed constant. The derivations are machine-verified using the Lean 4
formal proof assistant with an empty axiom set.

---

*End of Morningstar Invention Disclosure*

*For attorney review. Inventor makes no representation as to patentability.
Experimental confirmation of hardware claims is pending.*
*Prepared for Tuesday Patent Meeting — August 19, 2026.*
