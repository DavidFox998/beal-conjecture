import Beal.«Beal.General».TateEvenOverlapCompat

/-!
Transport an independently constructed quotient-of-localization
restriction from an explicit polynomial chart to an abstract
product-overlap chart. This does not supply a polynomial presentation
of the product overlap.
-/

namespace Beal.General

/-- First identify a polynomial chart with its unreduced quotient
of a localization, then apply the quotient of the localization map.
The product target is kept abstract rather than assigned a fictitious
polynomial presentation. -/
noncomputable def polynomialToAbstractProduct
    {P S T A : Type} [CommRing P] [CommRing S]
    [CommRing T] [CommRing A]
    (ψP : P ≃+* A) (ψS : S ≃+* A) (rS : S →+* T) :
    P →+* T :=
  rS.comp (ψP.trans ψS.symm).toRingHom

/-- The polynomial restriction agrees with the actual graded-quotient
restriction whenever the independently defined abstract restriction
square commutes. -/
theorem polynomialToAbstractProduct_compat
    {P S T A B : Type} [CommRing P] [CommRing S]
    [CommRing T] [CommRing A] [CommRing B]
    (ψP : P ≃+* A) (ψS : S ≃+* A) (ψT : T ≃+* B)
    (rS : S →+* T) (rA : A →+* B)
    (h : rA.comp ψS.toRingHom = ψT.toRingHom.comp rS) :
    ψT.toRingHom.comp
        (polynomialToAbstractProduct ψP ψS rS) =
      rA.comp ψP.toRingHom := by
  apply RingHom.ext
  intro p
  have hp := congrArg (fun φ => φ (ψS.symm (ψP p))) h
  simpa [polynomialToAbstractProduct] using hp.symm

/-- Paste an already-checked abstract restriction square with a
single-chart polynomial comparison, keeping the polynomial quotient
out of the abstract restriction theorem's statement. -/
theorem polynomialSourceSquare_paste
    {P S T A B : Type} [CommRing P] [CommRing S]
    [CommRing T] [CommRing A] [CommRing B]
    {ψP : P →+* A} {ψS : S →+* A} {ψT : T →+* B}
    {rS : S →+* T} {rA : A →+* B} {bridge : P →+* S}
    (h : rA.comp ψS = ψT.comp rS)
    (hb : ψS.comp bridge = ψP) :
    ψT.comp (rS.comp bridge) = rA.comp ψP := by
  apply RingHom.ext
  intro p
  have h1 := congrArg (fun φ => φ (bridge p)) h
  have h2 := congrArg (fun φ => φ p) hb
  simp only [RingHom.comp_apply] at h1 h2 ⊢
  exact h1.symm.trans (congrArg rA h2)

#print axioms polynomialToAbstractProduct_compat
#print axioms polynomialSourceSquare_paste

end Beal.General