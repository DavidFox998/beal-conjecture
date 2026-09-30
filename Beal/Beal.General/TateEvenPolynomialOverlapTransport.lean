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

#print axioms polynomialToAbstractProduct_compat

end Beal.General