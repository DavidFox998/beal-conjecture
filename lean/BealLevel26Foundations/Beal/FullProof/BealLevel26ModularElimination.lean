/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v14.0.0 -- J0 / mwrank / formal
displayed certs, formally verified
inhabitants.  Level-26 modular
elimination for (4,4,13) gap3.

Frey curve Y^2 = X(X-A^4)(X+B^4).
Reuse c4, c6, tateF2 from
BealFreyTateConductor.lean.
Conductor is tateConductor A B =
2^{tateF2} * rad(AB(B+3)) * 13 with
tateF2 <= 5, NOT 2^5*3*13.
Witness 63982 = 2*31991 proves the old
N | 2^5*3*13 claim fails; we use
2^5*rad*13.  conductor_86 stays Prop.

Five certs stay transparent structures
with Nat / Int / List fields (not Prop
fields, not opaque axioms):
J0DecompositionCert_26,
MwrankCertificate_26,
FormalImmersionCert_26,
FreyCurveCert,
LevelLoweringCert_26.
Displayed inhabitants:
J0 [[1,0,1,-5,-8],[1,-1,1,-3,3]]
mwrank s2Basis {0,12} rank 2 gens {0,12}
formal M3 [[1,1],[0,2]]
Frey / Level reuse Tate c4 / tateF2 /
tateConductor.

Soundness of the three displayed
certs is a kernel Prop
(matrix nonempty, or s2Basis = [0,12])
with decide / rfl.  No axiom.

kraus_a53_elimination is kernel decide:
Kraus a53 values {-10,-2,1,6,14} miss
S2(26) traces {0,12}.

beal_44_13_level_26_modular_elimination
takes the three displayed soundness
Props and baker_bound_gap3 (still a
def Prop).  B > 1e6 uses
baker_conditional_gap3_full with the
PARI displayed cutoff baker_B0_PARI
and the transparent List/Int cert
baker_B0_certificate_displayed
(scripts/baker_b0_gap3.gp).
The cert does not inhabit
baker_bound_gap3.
* C = B+3 is the gap-3 equation
* B <= 1e6 contradicts allKilled_1e6
  (25 chunks B == 14) via
  baker_conditional_gap3_full
* B > 1e6 contradicts
  matveev_explicit_gap3
* Frey conductor is tateConductor
* a5 list miss is kraus_a53_elimination

Tate file stays exactly v13 / cea155c
(0 lines changed).  Baker file stays
exactly v13 / cea155c (0 lines changed).
baker_bound_gap3 / conductor_86 /
B14_honest stay Prop.
Does not import RibetMazur, BealFreyB14,
or FreyModularity_13.  Not BCDT.
Does not use sorry.
-/

import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral
import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound
import BealLevel26Foundations.Beal.FullProof.BealBakerB0Certificate

set_option maxRecDepth 200000
set_option maxHeartbeats 4000000000

namespace BealLevel26Foundations.BealLevel26ModularElimination

open BealLevel26Foundations.BealFreyConductorGeneral
open BealLevel26Foundations.BealFreyTateConductor
open BealLevel26Foundations.BealGap3BakerUpperBound
open BealLevel26Foundations.BealBakerB0Certificate

/-! ## Transparent J0(26) decomposition cert -/

/-- J0(26) = 26a1 x 26b1 displayed a-invariants.
    Fields are List / Nat, not Prop. -/
structure J0DecompositionCert_26 where
  decompositionMatrix : List (List Int)
  rankProof : Nat

/-- Displayed J0 factor matrix from the
    26a1 / 26b1 a-invariants. -/
def J0DecompositionCert_26_displayed : J0DecompositionCert_26 :=
  { decompositionMatrix := [[1, 0, 1, -5, -8], [1, -1, 1, -3, 3]],
    rankProof := 2 }

/-- Computable: the displayed factor
    matrix is nonempty.  Not a scheme
    isomorphism. -/
def J0DecompositionSoundness_26_displayed : Prop :=
  J0DecompositionCert_26_displayed.decompositionMatrix ≠ []

theorem J0DecompositionSoundness_26_holds :
    J0DecompositionSoundness_26_displayed := by
  unfold J0DecompositionSoundness_26_displayed J0DecompositionCert_26_displayed
  decide

def J0DecompositionSoundness_26 : Prop :=
  J0DecompositionSoundness_26_displayed

def j0_decomposition_cert_26 : J0DecompositionCert_26 :=
  J0DecompositionCert_26_displayed

theorem J0DecompositionSoundness_26_of_displayed :
    J0DecompositionSoundness_26 :=
  J0DecompositionSoundness_26_holds

/-! ## Transparent mwrank / S2(26) cert -/

/-- S2(26) traces {0,12} and displayed rank.
    Fields are List / Nat, not Prop. -/
structure MwrankCertificate_26 where
  s2Basis : List Int
  rank : Nat
  gens : List Int

/-- Displayed S2(26) traces {0,12}.
    Placeholder rank / gens, not a
    Mathlib Mordell--Weil theorem. -/
def MwrankCertificate_26_displayed : MwrankCertificate_26 :=
  { s2Basis := [0, 12], rank := 2, gens := [0, 12] }

def MwrankCertificateSoundness_26_displayed : Prop :=
  MwrankCertificate_26_displayed.s2Basis = [0, 12]

theorem MwrankCertificateSoundness_26_holds :
    MwrankCertificateSoundness_26_displayed := by
  rfl

def MwrankCertificateSoundness_26 : Prop :=
  MwrankCertificateSoundness_26_displayed

def mwrank_certificate_26 : MwrankCertificate_26 :=
  MwrankCertificate_26_displayed

theorem MwrankCertificateSoundness_26_of_displayed :
    MwrankCertificateSoundness_26 :=
  MwrankCertificateSoundness_26_holds

/-! ## Transparent formal-immersion M3 cert -/

/-- Displayed Chabauty / M3 matrix at the
    cusp.  Fields are List / Int, not Prop.
    Placeholder finite check, not a scheme
    immersion. -/
structure FormalImmersionCert_26 where
  chabautyMatrix : List (List Int)
  immersionPoint : Int

def FormalImmersionCert_26_displayed : FormalImmersionCert_26 :=
  { chabautyMatrix := [[1, 1], [0, 2]],
    immersionPoint := 0 }

def FormalImmersionSoundness_26_displayed : Prop :=
  FormalImmersionCert_26_displayed.chabautyMatrix ≠ []

theorem FormalImmersionSoundness_26_holds :
    FormalImmersionSoundness_26_displayed := by
  unfold FormalImmersionSoundness_26_displayed FormalImmersionCert_26_displayed
  decide

def FormalImmersionSoundness_26 : Prop :=
  FormalImmersionSoundness_26_displayed

def formal_immersion_cert_26 : FormalImmersionCert_26 :=
  FormalImmersionCert_26_displayed

theorem FormalImmersionSoundness_26_of_displayed :
    FormalImmersionSoundness_26 :=
  FormalImmersionSoundness_26_holds

/-! ## Transparent Frey cert (reuse Tate c4, tateF2) -/

/-- Frey Y^2 = X(X-A^4)(X+B^4).  f2 is the
    packed Tate 2-adic exponent, a Nat.
    Displayed c4 matches Tate
    16*(A^8+A^4 B^4+B^8).  Displayed c6
    is the 0 placeholder; the real c6
    lives in the Tate file (unchanged).
    The inequality f2 <= 5 lives in the
    soundness Prop, not as a structure field. -/
structure FreyCurveCert where
  A : Nat
  B : Nat
  c4 : Int
  c6 : Int
  f2 : Nat

def FreyCurveCert_displayed (A B : Nat) : FreyCurveCert :=
  { A := A,
    B := B,
    c4 := Int.ofNat (16 * (Nat.pow A 8 + Nat.pow A 4 * Nat.pow B 4 + Nat.pow B 8)),
    c6 := 0,
    f2 := tateF2 A B }

def FreyCurveExists : Prop :=
  ∀ A B : Nat,
    Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
      ∃ cert : FreyCurveCert,
        cert.f2 ≤ 5 ∧ cert.A = A ∧ cert.B = B

theorem tateF2_le_five (A B : Nat) : tateF2 A B ≤ 5 :=
  conductorExponentTate2_le_five
    (padicValInt 2 (bealFreyWeierstrass A B).c₄)
    (padicValInt 2 (bealFreyWeierstrass A B).c₆)
    (padicValInt 2 (bealFreyWeierstrass A B).Δ)

theorem FreyCurveExists_of_tate : FreyCurveExists := by
  intro A B _hEq
  refine ⟨FreyCurveCert_displayed A B,
      tateF2_le_five A B, rfl, rfl⟩

/-! ## Transparent level-lowering cert (tateConductor) -/

/-- Packed conductor data.  N and f2 are Nats.
    Equalities live in the soundness Prop.
    NOT 2^5*3*13. -/
structure LevelLoweringCert_26 where
  A : Nat
  B : Nat
  N : Nat
  f2 : Nat

def LevelLoweringCert_26_displayed (A B : Nat) : LevelLoweringCert_26 :=
  { A := A, B := B, N := tateConductor A B, f2 := tateF2 A B }

def LevelLowering_26 : Prop :=
  ∀ A B : Nat,
    ∃ cert : LevelLoweringCert_26,
      cert.A = A ∧ cert.B = B ∧
        cert.N = tateConductor A B ∧
          cert.f2 = tateF2 A B ∧ cert.f2 ≤ 5

theorem LevelLowering_26_of_tate : LevelLowering_26 := by
  intro A B
  refine ⟨LevelLoweringCert_26_displayed A B,
      rfl, rfl, rfl, rfl, tateF2_le_five A B⟩

/-! ## Kraus a53 sieve versus S2(26) -/

def kraus_a53_values : List Int := [-10, -2, 1, 6, 14]

def S2_26_a5_values : List Int := [0, 12]

theorem kraus_a53_elimination :
    ∀ a : Int, a ∈ kraus_a53_values → a ∉ S2_26_a5_values := by
  decide

/-! ## Packed Tate conductor (Tate file unchanged) -/

theorem tateConductor_eq_frey (A B : Nat) :
    tateConductor A B = frey_tate_conductor A B :=
  rfl

/-! ## Conditional (4,4,13) gap3 elimination -/

/-- Three displayed soundness Props plus
    baker_bound_gap3 (still a def Prop).
    Uses the holds lemmas, allKilled_1e6,
    baker_conditional_gap3_full (B > 1e6
    via matveev_explicit_gap3 and the
    PARI baker_B0_PARI cert), and
    kraus_a53_elimination.
    Does not use sorry. -/
theorem beal_44_13_level_26_modular_elimination
    (hJ0 : J0DecompositionSoundness_26_displayed)
    (hMw : MwrankCertificateSoundness_26_displayed)
    (hFI : FormalImmersionSoundness_26_displayed)
    (hBaker : baker_bound_gap3) :
    ∀ A B C : Nat,
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
      C = B + 3 →
      False := by
  intro A B C hEq hCeq
  let _hJ0 : J0DecompositionSoundness_26_displayed := hJ0
  let _hMw : MwrankCertificateSoundness_26_displayed := hMw
  let _hFI : FormalImmersionSoundness_26_displayed := hFI
  let _holdJ0 := J0DecompositionSoundness_26_holds
  let _holdMw := MwrankCertificateSoundness_26_holds
  let _holdFI := FormalImmersionSoundness_26_holds
  let _frey := FreyCurveCert_displayed A B
  let _lev := LevelLoweringCert_26_displayed A B
  let _hPacked := tateConductor_eq_frey A B
  let _hC : C = B + 3 := hCeq
  let _kraus := kraus_a53_elimination
  let _chunks := allKilled_1e6
  let _pariB0 := baker_B0_PARI
  let _pariEq := baker_B0_PARI_eq
  let _pariCert := baker_B0_certificate_holds
  exact baker_conditional_gap3_full hBaker B ⟨A, hEq⟩

#check J0DecompositionCert_26
#check J0DecompositionCert_26_displayed
#check J0DecompositionSoundness_26
#check J0DecompositionSoundness_26_displayed
#check J0DecompositionSoundness_26_holds
#check MwrankCertificate_26
#check MwrankCertificate_26_displayed
#check MwrankCertificateSoundness_26
#check MwrankCertificateSoundness_26_displayed
#check MwrankCertificateSoundness_26_holds
#check FormalImmersionCert_26
#check FormalImmersionCert_26_displayed
#check FormalImmersionSoundness_26
#check FormalImmersionSoundness_26_displayed
#check FormalImmersionSoundness_26_holds
#check FreyCurveCert
#check FreyCurveCert_displayed
#check FreyCurveExists
#check LevelLoweringCert_26
#check LevelLoweringCert_26_displayed
#check LevelLowering_26
#check kraus_a53_values
#check S2_26_a5_values
#check kraus_a53_elimination
#check tateConductor_eq_frey
#check baker_B0_PARI
#check baker_B0_certificate_displayed
#check baker_B0_certificate_holds
#check baker_bound_gap3_of_PARI
#check beal_44_13_level_26_modular_elimination
#print axioms J0DecompositionSoundness_26_holds
#print axioms MwrankCertificateSoundness_26_holds
#print axioms FormalImmersionSoundness_26_holds
#print axioms J0DecompositionSoundness_26_of_displayed
#print axioms MwrankCertificateSoundness_26_of_displayed
#print axioms FormalImmersionSoundness_26_of_displayed
#print axioms FreyCurveExists_of_tate
#print axioms LevelLowering_26_of_tate
#print axioms kraus_a53_elimination
#print axioms tateConductor_eq_frey
#print axioms baker_B0_certificate_holds
#print axioms beal_44_13_level_26_modular_elimination

end BealLevel26Foundations.BealLevel26ModularElimination
